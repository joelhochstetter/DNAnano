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
	<24.435358, 34.931759, 34.823910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.637863, 35.210140, 35.027611>,  <24.759367, 35.377171, 35.149834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.637863, 35.210140, 35.027611>,  <24.435358, 34.931759, 34.823910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.637863, 35.210140, 35.027611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719129, -0.666627, 0.196118,
		0.475973, 0.266932, -0.837972,
		0.506265, 0.695956, 0.509255,
		24.789743, 35.418926, 35.180386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.178522, 34.886059, 34.682293>,  <24.435358, 34.931759, 34.823910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.178522, 34.886059, 34.682293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.144043, 35.018089, 35.058296>,  <25.123356, 35.097309, 35.283897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.144043, 35.018089, 35.058296>,  <25.178522, 34.886059, 34.682293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.144043, 35.018089, 35.058296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848237, -0.470569, 0.243021,
		0.522555, 0.818299, -0.239422,
		-0.086199, 0.330078, 0.940010,
		25.118183, 35.117111, 35.340298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.575500, 35.469009, 34.321030>,  <25.178522, 34.886059, 34.682293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.575500, 35.469009, 34.321030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.732817, 35.567173, 33.966606>,  <25.827206, 35.626072, 33.753952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.732817, 35.567173, 33.966606>,  <25.575500, 35.469009, 34.321030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.732817, 35.567173, 33.966606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162409, 0.930020, 0.329677,
		0.904956, -0.273562, 0.325912,
		0.393292, 0.245412, -0.886055,
		25.850803, 35.640797, 33.700790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.132189, 35.824791, 34.372272>,  <25.575500, 35.469009, 34.321030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.132189, 35.824791, 34.372272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.965401, 35.962509, 34.035797>,  <25.865328, 36.045139, 33.833912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.965401, 35.962509, 34.035797>,  <26.132189, 35.824791, 34.372272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.965401, 35.962509, 34.035797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264909, 0.931333, 0.249884,
		0.869459, -0.118643, -0.479546,
		-0.416971, 0.344300, -0.841186,
		25.840309, 36.065800, 33.783440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.564739, 35.292950, 34.802647>,  <26.132189, 35.824791, 34.372272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.564739, 35.292950, 34.802647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.696386, 34.944893, 34.655930>,  <26.775375, 34.736061, 34.567898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.696386, 34.944893, 34.655930>,  <26.564739, 35.292950, 34.802647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.696386, 34.944893, 34.655930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882236, 0.144862, 0.447967,
		-0.336660, -0.471032, 0.815346,
		0.329120, -0.870140, -0.366792,
		26.795122, 34.683849, 34.545891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.890436, 34.940269, 35.334816>,  <26.564739, 35.292950, 34.802647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.890436, 34.940269, 35.334816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.031731, 34.841587, 34.973850>,  <27.116507, 34.782375, 34.757271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.031731, 34.841587, 34.973850>,  <26.890436, 34.940269, 35.334816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.031731, 34.841587, 34.973850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933551, 0.030187, 0.357170,
		-0.060877, -0.968619, 0.240980,
		0.353236, -0.246710, -0.902418,
		27.137701, 34.767574, 34.703125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.449316, 34.427956, 35.523727>,  <26.890436, 34.940269, 35.334816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.449316, 34.427956, 35.523727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.502609, 34.575169, 35.155640>,  <27.534586, 34.663498, 34.934788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.502609, 34.575169, 35.155640>,  <27.449316, 34.427956, 35.523727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.502609, 34.575169, 35.155640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979365, 0.093475, 0.179183,
		0.151962, -0.925102, -0.347986,
		0.133234, 0.368034, -0.920217,
		27.542580, 34.685577, 34.879574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.220562, 34.524822, 35.447083>,  <27.449316, 34.427956, 35.523727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.220562, 34.524822, 35.447083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.109535, 34.733894, 35.124653>,  <28.042919, 34.859337, 34.931194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.109535, 34.733894, 35.124653>,  <28.220562, 34.524822, 35.447083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.109535, 34.733894, 35.124653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951189, 0.267324, -0.154196,
		0.134889, -0.809532, -0.571369,
		-0.277568, 0.522681, -0.806077,
		28.026264, 34.890697, 34.882828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.542850, 34.162872, 34.899769>,  <28.220562, 34.524822, 35.447083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.542850, 34.162872, 34.899769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.479244, 34.556866, 34.872860>,  <28.441080, 34.793262, 34.856716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.479244, 34.556866, 34.872860>,  <28.542850, 34.162872, 34.899769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.479244, 34.556866, 34.872860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985884, 0.154804, -0.063788,
		-0.052416, -0.076466, -0.995694,
		-0.159015, 0.984982, -0.067273,
		28.431540, 34.852360, 34.852676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.038671, 34.429947, 34.341263>,  <28.542850, 34.162872, 34.899769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.038671, 34.429947, 34.341263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.943293, 34.726379, 34.592319>,  <28.886065, 34.904240, 34.742954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.943293, 34.726379, 34.592319>,  <29.038671, 34.429947, 34.341263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.943293, 34.726379, 34.592319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964726, 0.254999, 0.065420,
		-0.111566, 0.621102, -0.775749,
		-0.238448, 0.741086, 0.627642,
		28.871758, 34.948704, 34.780613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.220638, 35.141869, 34.099651>,  <29.038671, 34.429947, 34.341263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.220638, 35.141869, 34.099651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.215218, 35.141457, 34.499615>,  <29.211966, 35.141209, 34.739594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.215218, 35.141457, 34.499615>,  <29.220638, 35.141869, 34.099651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.215218, 35.141457, 34.499615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948902, 0.315295, 0.013188,
		-0.315280, 0.948993, -0.003293,
		-0.013554, -0.001033, 0.999908,
		29.211151, 35.141148, 34.799587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.561750, 35.358540, 33.433212>,  <29.220638, 35.141869, 34.099651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.561750, 35.358540, 33.433212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.737108, 35.453629, 33.086502>,  <29.842323, 35.510681, 32.878475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.737108, 35.453629, 33.086502>,  <29.561750, 35.358540, 33.433212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.737108, 35.453629, 33.086502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898130, -0.079128, 0.432552,
		0.034242, -0.968104, -0.248197,
		0.438394, 0.237725, -0.866774,
		29.868626, 35.524944, 32.826469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.140661, 34.868420, 33.358612>,  <29.561750, 35.358540, 33.433212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.140661, 34.868420, 33.358612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.195148, 35.198032, 33.138645>,  <30.227840, 35.395802, 33.006664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.195148, 35.198032, 33.138645>,  <30.140661, 34.868420, 33.358612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.195148, 35.198032, 33.138645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957035, 0.033977, 0.287976,
		0.255987, -0.565518, -0.784002,
		0.136218, 0.824036, -0.549918,
		30.236013, 35.445244, 32.973671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.822838, 34.843983, 33.249374>,  <30.140661, 34.868420, 33.358612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.822838, 34.843983, 33.249374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.730038, 35.219360, 33.147003>,  <30.674358, 35.444588, 33.085579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.730038, 35.219360, 33.147003>,  <30.822838, 34.843983, 33.249374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.730038, 35.219360, 33.147003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934479, 0.288072, 0.209197,
		0.270046, -0.190628, -0.943788,
		-0.232000, 0.938443, -0.255931,
		30.660439, 35.500893, 33.070225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.256340, 34.338993, 32.747604>,  <30.822838, 34.843983, 33.249374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.256340, 34.338993, 32.747604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.146404, 34.333092, 32.363052>,  <31.080442, 34.329552, 32.132320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.146404, 34.333092, 32.363052>,  <31.256340, 34.338993, 32.747604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.146404, 34.333092, 32.363052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910910, 0.316037, -0.265261,
		0.307744, -0.948632, -0.073422,
		-0.274839, -0.014752, -0.961377,
		31.063951, 34.328667, 32.074638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.715660, 33.909027, 32.255432>,  <31.256340, 34.338993, 32.747604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.715660, 33.909027, 32.255432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.572857, 34.228237, 32.061234>,  <31.487175, 34.419762, 31.944715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.572857, 34.228237, 32.061234>,  <31.715660, 33.909027, 32.255432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.572857, 34.228237, 32.061234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933566, 0.322407, -0.156549,
		0.031597, -0.509131, -0.860109,
		-0.357009, 0.798022, -0.485495,
		31.465754, 34.467644, 31.915585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.996519, 33.981686, 31.561161>,  <31.715660, 33.909027, 32.255432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.996519, 33.981686, 31.561161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.887753, 34.353329, 31.661413>,  <31.822493, 34.576317, 31.721565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.887753, 34.353329, 31.661413>,  <31.996519, 33.981686, 31.561161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.887753, 34.353329, 31.661413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956937, 0.288575, -0.031569,
		-0.101657, 0.231254, -0.967568,
		-0.271915, 0.929110, 0.250631,
		31.806177, 34.632061, 31.736603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.177166, 34.492832, 31.087427>,  <31.996519, 33.981686, 31.561161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.177166, 34.492832, 31.087427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.165058, 34.687771, 31.436501>,  <32.157795, 34.804733, 31.645945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.165058, 34.687771, 31.436501>,  <32.177166, 34.492832, 31.087427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.165058, 34.687771, 31.436501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914937, 0.365049, -0.172131,
		-0.402460, 0.793240, -0.456943,
		-0.030266, 0.487350, 0.872682,
		32.155979, 34.833977, 31.698305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.535393, 35.142376, 30.886799>,  <32.177166, 34.492832, 31.087427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.535393, 35.142376, 30.886799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.529106, 35.108776, 31.285336>,  <32.525333, 35.088615, 31.524458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.529106, 35.108776, 31.285336>,  <32.535393, 35.142376, 30.886799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.529106, 35.108776, 31.285336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894603, 0.443882, 0.051529,
		-0.446586, 0.892140, 0.068167,
		-0.015713, -0.083994, 0.996342,
		32.524391, 35.083576, 31.584238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.842117, 35.731495, 31.261604>,  <32.535393, 35.142376, 30.886799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.842117, 35.731495, 31.261604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.900101, 35.467949, 31.556870>,  <32.934891, 35.309822, 31.734028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.900101, 35.467949, 31.556870>,  <32.842117, 35.731495, 31.261604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.900101, 35.467949, 31.556870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813304, 0.504222, 0.290338,
		-0.563491, 0.558264, 0.608949,
		0.144960, -0.658864, 0.738163,
		32.943588, 35.270290, 31.778318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.206772, 36.244080, 31.745768>,  <32.842117, 35.731495, 31.261604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.206772, 36.244080, 31.745768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.274799, 35.863197, 31.847256>,  <33.315617, 35.634666, 31.908148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.274799, 35.863197, 31.847256>,  <33.206772, 36.244080, 31.745768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.274799, 35.863197, 31.847256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778138, 0.287738, 0.558308,
		-0.604631, 0.102481, 0.789885,
		0.170064, -0.952210, 0.253720,
		33.325817, 35.577534, 31.923372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.116669, 36.066422, 32.500130>,  <33.206772, 36.244080, 31.745768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.116669, 36.066422, 32.500130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.380405, 35.825901, 32.319595>,  <33.538647, 35.681587, 32.211277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.380405, 35.825901, 32.319595>,  <33.116669, 36.066422, 32.500130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.380405, 35.825901, 32.319595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748763, 0.470867, 0.466517,
		-0.068001, -0.645535, 0.760697,
		0.659340, -0.601305, -0.451334,
		33.578209, 35.645508, 32.184196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.557243, 35.704227, 32.950756>,  <33.116669, 36.066422, 32.500130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.557243, 35.704227, 32.950756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.766365, 35.733231, 32.611012>,  <33.891838, 35.750633, 32.407166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.766365, 35.733231, 32.611012>,  <33.557243, 35.704227, 32.950756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.766365, 35.733231, 32.611012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814459, 0.251664, 0.522802,
		0.251664, -0.965094, 0.072512,
		-0.522802, -0.072512, 0.849365,
		33.923206, 35.754986, 32.356201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.222317, 35.312309, 32.881935>,  <33.557243, 35.704227, 32.950756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.222317, 35.312309, 32.881935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.220093, 35.661209, 32.686321>,  <34.218758, 35.870548, 32.568954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.220093, 35.661209, 32.686321>,  <34.222317, 35.312309, 32.881935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.220093, 35.661209, 32.686321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805560, 0.293661, 0.514623,
		0.592488, -0.391085, -0.704280,
		-0.005558, 0.872248, -0.489033,
		34.218426, 35.922882, 32.539612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.357357, 34.768269, 33.508823>,  <34.222317, 35.312309, 32.881935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.357357, 34.768269, 33.508823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.515976, 34.990295, 33.801304>,  <34.611145, 35.123512, 33.976791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.515976, 34.990295, 33.801304>,  <34.357357, 34.768269, 33.508823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.515976, 34.990295, 33.801304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271758, -0.831778, 0.484039,
		0.876870, 0.006767, -0.480679,
		0.396543, 0.555068, 0.731200,
		34.634937, 35.156815, 34.020664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.065250, 34.553020, 33.517529>,  <34.357357, 34.768269, 33.508823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.065250, 34.553020, 33.517529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.880520, 34.685871, 33.846504>,  <34.769680, 34.765579, 34.043892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.880520, 34.685871, 33.846504>,  <35.065250, 34.553020, 33.517529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.880520, 34.685871, 33.846504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021238, -0.931123, 0.364085,
		0.886716, 0.150677, 0.437071,
		-0.461826, 0.332123, 0.822442,
		34.741974, 34.785507, 34.093235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.342701, 34.219410, 34.172852>,  <35.065250, 34.553020, 33.517529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.342701, 34.219410, 34.172852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.961525, 34.297520, 34.265606>,  <34.732819, 34.344383, 34.321259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.961525, 34.297520, 34.265606>,  <35.342701, 34.219410, 34.172852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.961525, 34.297520, 34.265606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049328, -0.854599, 0.516940,
		0.299114, 0.481175, 0.824015,
		-0.952942, 0.195271, 0.231887,
		34.675644, 34.356102, 34.335171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.932487, 34.449135, 33.797813>,  <35.342701, 34.219410, 34.172852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.932487, 34.449135, 33.797813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.214870, 34.165913, 33.790974>,  <36.384300, 33.995979, 33.786869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.214870, 34.165913, 33.790974>,  <35.932487, 34.449135, 33.797813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.214870, 34.165913, 33.790974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703449, 0.703766, -0.099361,
		0.082384, 0.058118, 0.994904,
		0.705955, -0.708051, -0.017096,
		36.426659, 33.953499, 33.785847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.583832, 34.530228, 34.262459>,  <35.932487, 34.449135, 33.797813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.583832, 34.530228, 34.262459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.692299, 34.307919, 33.948112>,  <36.757381, 34.174534, 33.759502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.692299, 34.307919, 33.948112>,  <36.583832, 34.530228, 34.262459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.692299, 34.307919, 33.948112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880926, 0.472299, -0.030041,
		0.387860, -0.684145, 0.617665,
		0.271170, -0.555769, -0.785867,
		36.773651, 34.141190, 33.712353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.320637, 34.242516, 34.346497>,  <36.583832, 34.530228, 34.262459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.320637, 34.242516, 34.346497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.227535, 34.265068, 33.958138>,  <37.171673, 34.278599, 33.725121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.227535, 34.265068, 33.958138>,  <37.320637, 34.242516, 34.346497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.227535, 34.265068, 33.958138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842587, 0.510234, -0.172363,
		0.485668, -0.858185, -0.166266,
		-0.232753, 0.056382, -0.970900,
		37.157711, 34.281982, 33.666866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.918747, 34.072987, 33.928905>,  <37.320637, 34.242516, 34.346497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.918747, 34.072987, 33.928905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.697350, 34.258720, 33.652348>,  <37.564510, 34.370163, 33.486412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.697350, 34.258720, 33.652348>,  <37.918747, 34.072987, 33.928905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.697350, 34.258720, 33.652348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831935, 0.347162, -0.432853,
		0.039037, -0.814782, -0.578452,
		-0.553498, 0.464338, -0.691398,
		37.531300, 34.398022, 33.444927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.213589, 33.977867, 33.293301>,  <37.918747, 34.072987, 33.928905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.213589, 33.977867, 33.293301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.024437, 34.328140, 33.254185>,  <37.910946, 34.538303, 33.230713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.024437, 34.328140, 33.254185>,  <38.213589, 33.977867, 33.293301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.024437, 34.328140, 33.254185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853067, 0.427206, -0.299620,
		-0.220595, -0.225107, -0.949034,
		-0.472880, 0.875684, -0.097792,
		37.882572, 34.590847, 33.224846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.119450, 34.365799, 32.720440>,  <38.213589, 33.977867, 33.293301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.119450, 34.365799, 32.720440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.180683, 34.672424, 32.969898>,  <38.217422, 34.856400, 33.119576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.180683, 34.672424, 32.969898>,  <38.119450, 34.365799, 32.720440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.180683, 34.672424, 32.969898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716458, 0.348564, -0.604311,
		-0.680627, 0.539331, -0.495852,
		0.153087, 0.766567, 0.623650,
		38.226608, 34.902393, 33.156994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.326660, 35.077457, 32.255501>,  <38.119450, 34.365799, 32.720440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.326660, 35.077457, 32.255501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.452744, 35.041210, 32.633373>,  <38.528393, 35.019463, 32.860096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.452744, 35.041210, 32.633373>,  <38.326660, 35.077457, 32.255501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.452744, 35.041210, 32.633373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897442, 0.352164, -0.265664,
		-0.308609, 0.931541, 0.192333,
		0.315210, -0.090621, 0.944685,
		38.547306, 35.014023, 32.916779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.841415, 35.664562, 32.512722>,  <38.326660, 35.077457, 32.255501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.841415, 35.664562, 32.512722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.982567, 35.350262, 32.715927>,  <39.067257, 35.161682, 32.837852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.982567, 35.350262, 32.715927>,  <38.841415, 35.664562, 32.512722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.982567, 35.350262, 32.715927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933399, 0.257806, -0.249604,
		0.065156, 0.562262, 0.824389,
		0.352875, -0.785747, 0.508017,
		39.088428, 35.114536, 32.868332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.340729, 35.836628, 33.097103>,  <38.841415, 35.664562, 32.512722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.340729, 35.836628, 33.097103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.438473, 35.489532, 32.923985>,  <39.497120, 35.281277, 32.820114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.438473, 35.489532, 32.923985>,  <39.340729, 35.836628, 33.097103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.438473, 35.489532, 32.923985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951191, 0.301252, -0.066951,
		0.188477, -0.395315, 0.899001,
		0.244359, -0.867740, -0.432799,
		39.511780, 35.229210, 32.794144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.036163, 35.478970, 33.032936>,  <39.340729, 35.836628, 33.097103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.036163, 35.478970, 33.032936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.315170, 35.712696, 33.198849>,  <40.482574, 35.852932, 33.298397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.315170, 35.712696, 33.198849>,  <40.036163, 35.478970, 33.032936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.315170, 35.712696, 33.198849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562804, -0.805017, 0.187617,
		0.443538, 0.102577, -0.890366,
		0.697514, 0.584317, 0.414786,
		40.524426, 35.887993, 33.323284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.009022, 34.928696, 33.425991>,  <40.036163, 35.478970, 33.032936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.009022, 34.928696, 33.425991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.624531, 34.880604, 33.525257>,  <39.393837, 34.851749, 33.584816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.624531, 34.880604, 33.525257>,  <40.009022, 34.928696, 33.425991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.624531, 34.880604, 33.525257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264874, -0.652927, 0.709597,
		0.076720, 0.747817, 0.659457,
		-0.961226, -0.120233, 0.248170,
		39.336163, 34.844532, 33.599709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.848976, 34.911297, 34.212612>,  <40.009022, 34.928696, 33.425991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.848976, 34.911297, 34.212612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.565514, 34.684250, 34.044983>,  <39.395435, 34.548023, 33.944405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.565514, 34.684250, 34.044983>,  <39.848976, 34.911297, 34.212612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.565514, 34.684250, 34.044983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045295, -0.629335, 0.775813,
		-0.704102, 0.530800, 0.471690,
		-0.708652, -0.567617, -0.419073,
		39.352917, 34.513966, 33.919262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.241940, 35.130573, 34.517773>,  <39.848976, 34.911297, 34.212612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.241940, 35.130573, 34.517773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.302948, 35.116890, 34.912857>,  <39.339554, 35.108681, 35.149906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.302948, 35.116890, 34.912857>,  <39.241940, 35.130573, 34.517773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.302948, 35.116890, 34.912857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871286, -0.467060, -0.150718,
		0.466474, 0.883564, -0.041435,
		0.152522, -0.034205, 0.987708,
		39.348705, 35.106628, 35.209171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.912792, 35.376736, 34.799625>,  <39.241940, 35.130573, 34.517773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.912792, 35.376736, 34.799625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.793785, 35.080341, 35.040432>,  <39.722382, 34.902504, 35.184917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.793785, 35.080341, 35.040432>,  <39.912792, 35.376736, 34.799625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.793785, 35.080341, 35.040432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862797, -0.478644, -0.162733,
		0.408734, 0.471001, 0.781726,
		-0.297521, -0.740985, 0.602016,
		39.704529, 34.858047, 35.221035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.493866, 35.065681, 35.067047>,  <39.912792, 35.376736, 34.799625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.493866, 35.065681, 35.067047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.230713, 34.766582, 35.102974>,  <40.072823, 34.587124, 35.124531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.230713, 34.766582, 35.102974>,  <40.493866, 35.065681, 35.067047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.230713, 34.766582, 35.102974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704806, -0.653310, -0.276467,
		0.265406, -0.118578, 0.956817,
		-0.657881, -0.747747, 0.089818,
		40.033348, 34.542259, 35.129921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.903679, 34.637974, 35.537819>,  <40.493866, 35.065681, 35.067047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.903679, 34.637974, 35.537819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.636665, 34.425652, 35.328957>,  <40.476460, 34.298260, 35.203640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.636665, 34.425652, 35.328957>,  <40.903679, 34.637974, 35.537819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.636665, 34.425652, 35.328957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724558, -0.624623, -0.291310,
		-0.171524, -0.572792, 0.801554,
		-0.667529, -0.530806, -0.522159,
		40.436405, 34.266411, 35.172310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.939671, 33.891865, 35.753529>,  <40.903679, 34.637974, 35.537819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.939671, 33.891865, 35.753529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.904408, 33.986225, 35.366421>,  <40.883251, 34.042843, 35.134155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.904408, 33.986225, 35.366421>,  <40.939671, 33.891865, 35.753529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.904408, 33.986225, 35.366421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807059, -0.552545, -0.208205,
		-0.583852, -0.799403, -0.141675,
		-0.088158, 0.235901, -0.967770,
		40.877960, 34.056995, 35.076088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.915264, 33.222740, 35.363716>,  <40.939671, 33.891865, 35.753529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.915264, 33.222740, 35.363716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.068474, 33.542473, 35.178516>,  <41.160400, 33.734310, 35.067398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.068474, 33.542473, 35.178516>,  <40.915264, 33.222740, 35.363716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.068474, 33.542473, 35.178516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895802, -0.443748, -0.025020,
		-0.225452, -0.405169, -0.886007,
		0.383027, 0.799328, -0.462995,
		41.183380, 33.782272, 35.039619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.580215, 33.136074, 35.320564>,  <40.915264, 33.222740, 35.363716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.580215, 33.136074, 35.320564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.740116, 32.862854, 35.076061>,  <41.836056, 32.698921, 34.929359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.740116, 32.862854, 35.076061>,  <41.580215, 33.136074, 35.320564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.740116, 32.862854, 35.076061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765418, 0.615649, -0.187379,
		0.504312, -0.392965, 0.768927,
		0.399756, -0.683048, -0.611262,
		41.860043, 32.657940, 34.892681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.244404, 33.172020, 35.605270>,  <41.580215, 33.136074, 35.320564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.244404, 33.172020, 35.605270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.231007, 33.054848, 35.223053>,  <42.222969, 32.984543, 34.993721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.231007, 33.054848, 35.223053>,  <42.244404, 33.172020, 35.605270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.231007, 33.054848, 35.223053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569149, 0.780323, -0.259164,
		0.821552, -0.552528, 0.140586,
		-0.033493, -0.292932, -0.955547,
		42.220959, 32.966969, 34.936390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.778774, 33.192249, 35.144688>,  <42.244404, 33.172020, 35.605270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.778774, 33.192249, 35.144688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.522705, 33.197521, 34.837440>,  <42.369064, 33.200684, 34.653091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.522705, 33.197521, 34.837440>,  <42.778774, 33.192249, 35.144688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.522705, 33.197521, 34.837440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488025, 0.779163, -0.393366,
		0.593305, -0.626683, -0.505230,
		-0.640172, 0.013179, -0.768119,
		42.330654, 33.201473, 34.607006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.868359, 33.762180, 34.584999>,  <42.778774, 33.192249, 35.144688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.868359, 33.762180, 34.584999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.806194, 34.008621, 34.276127>,  <42.768894, 34.156487, 34.090801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.806194, 34.008621, 34.276127>,  <42.868359, 33.762180, 34.584999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.806194, 34.008621, 34.276127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643354, -0.656304, -0.394160,
		-0.749629, 0.435531, 0.498366,
		-0.155411, 0.616099, -0.772185,
		42.759571, 34.193451, 34.044472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.134876, 33.762863, 34.478413>,  <42.868359, 33.762180, 34.584999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.134876, 33.762863, 34.478413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.328529, 33.836288, 34.136204>,  <42.444721, 33.880344, 33.930878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.328529, 33.836288, 34.136204>,  <42.134876, 33.762863, 34.478413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.328529, 33.836288, 34.136204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526253, -0.720057, -0.452301,
		-0.699050, 0.669195, -0.252005,
		0.484135, 0.183563, -0.855522,
		42.473770, 33.891357, 33.879547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.544548, 33.942707, 33.976574>,  <42.134876, 33.762863, 34.478413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.544548, 33.942707, 33.976574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.850536, 33.890587, 33.724274>,  <42.034130, 33.859314, 33.572895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.850536, 33.890587, 33.724274>,  <41.544548, 33.942707, 33.976574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.850536, 33.890587, 33.724274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586068, -0.546968, -0.597788,
		-0.267105, 0.826951, -0.494781,
		0.764970, -0.130303, -0.630747,
		42.080029, 33.851498, 33.535049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.274063, 33.900284, 33.379410>,  <41.544548, 33.942707, 33.976574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.274063, 33.900284, 33.379410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.623676, 33.743633, 33.264381>,  <41.833443, 33.649643, 33.195366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.623676, 33.743633, 33.264381>,  <41.274063, 33.900284, 33.379410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.623676, 33.743633, 33.264381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475443, -0.567432, -0.672291,
		0.100114, 0.724325, -0.682152,
		0.874032, -0.391630, -0.287567,
		41.885887, 33.626144, 33.178112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.247765, 33.793507, 32.676025>,  <41.274063, 33.900284, 33.379410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.247765, 33.793507, 32.676025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.539982, 33.550484, 32.800720>,  <41.715313, 33.404671, 32.875538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.539982, 33.550484, 32.800720>,  <41.247765, 33.793507, 32.676025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.539982, 33.550484, 32.800720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336725, -0.717661, -0.609572,
		0.594074, 0.340348, -0.728862,
		0.730543, -0.607557, 0.311740,
		41.759144, 33.368217, 32.894241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.534245, 33.561413, 32.030125>,  <41.247765, 33.793507, 32.676025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.534245, 33.561413, 32.030125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.574448, 33.305153, 32.334618>,  <41.598568, 33.151398, 32.517311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.574448, 33.305153, 32.334618>,  <41.534245, 33.561413, 32.030125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.574448, 33.305153, 32.334618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283563, -0.751817, -0.595284,
		0.953672, -0.156026, -0.257228,
		0.100509, -0.640646, 0.761230,
		41.604599, 33.112961, 32.562988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.542862, 33.026882, 31.677065>,  <41.534245, 33.561413, 32.030125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.542862, 33.026882, 31.677065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.567631, 32.842632, 32.031239>,  <41.582493, 32.732082, 32.243744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.567631, 32.842632, 32.031239>,  <41.542862, 33.026882, 31.677065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.567631, 32.842632, 32.031239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177413, -0.878089, -0.444393,
		0.982187, -0.129572, -0.136089,
		0.061918, -0.460621, 0.885435,
		41.586205, 32.704445, 32.296867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.141575, 32.513672, 31.702936>,  <41.542862, 33.026882, 31.677065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.141575, 32.513672, 31.702936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.811966, 32.436787, 31.916117>,  <41.614201, 32.390656, 32.044025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.811966, 32.436787, 31.916117>,  <42.141575, 32.513672, 31.702936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.811966, 32.436787, 31.916117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247718, -0.723771, -0.644042,
		0.509525, -0.662729, 0.548793,
		-0.824026, -0.192210, 0.532950,
		41.564758, 32.379124, 32.076000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.010098, 31.865250, 31.884544>,  <42.141575, 32.513672, 31.702936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.010098, 31.865250, 31.884544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.629635, 31.985291, 31.913504>,  <41.401356, 32.057316, 31.930880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.629635, 31.985291, 31.913504>,  <42.010098, 31.865250, 31.884544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.629635, 31.985291, 31.913504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278371, -0.732367, -0.621409,
		-0.133467, -0.611209, 0.780135,
		-0.951155, 0.300104, 0.072396,
		41.344288, 32.075321, 31.935223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.749786, 31.314589, 31.820759>,  <42.010098, 31.865250, 31.884544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.749786, 31.314589, 31.820759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.437782, 31.549891, 31.735405>,  <41.250580, 31.691072, 31.684193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.437782, 31.549891, 31.735405>,  <41.749786, 31.314589, 31.820759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.437782, 31.549891, 31.735405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322552, -0.670170, -0.668456,
		-0.536225, -0.452579, 0.712485,
		-0.780015, 0.588256, -0.213382,
		41.203777, 31.726368, 31.671391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.214409, 30.875277, 31.758009>,  <41.749786, 31.314589, 31.820759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.214409, 30.875277, 31.758009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.071918, 31.206387, 31.584621>,  <40.986423, 31.405052, 31.480589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.071918, 31.206387, 31.584621>,  <41.214409, 30.875277, 31.758009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.071918, 31.206387, 31.584621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407372, -0.555072, -0.725219,
		-0.840924, -0.081757, 0.534942,
		-0.356223, 0.827775, -0.433468,
		40.965050, 31.454720, 31.454580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.677090, 30.656893, 31.526480>,  <41.214409, 30.875277, 31.758009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.677090, 30.656893, 31.526480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.697018, 31.000776, 31.323141>,  <40.708973, 31.207108, 31.201138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.697018, 31.000776, 31.323141>,  <40.677090, 30.656893, 31.526480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.697018, 31.000776, 31.323141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452613, -0.434278, -0.778809,
		-0.890314, 0.268885, 0.367480,
		0.049821, 0.859711, -0.508345,
		40.711964, 31.258690, 31.170637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.039509, 30.721176, 31.243914>,  <40.677090, 30.656893, 31.526480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.039509, 30.721176, 31.243914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.282188, 30.946554, 31.019613>,  <40.427795, 31.081781, 30.885033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.282188, 30.946554, 31.019613>,  <40.039509, 30.721176, 31.243914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.282188, 30.946554, 31.019613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400552, -0.392629, -0.827890,
		-0.686639, 0.726890, -0.012518,
		0.606700, 0.563447, -0.560752,
		40.464199, 31.115589, 30.851387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.310150, 30.035145, 31.448795>,  <40.039509, 30.721176, 31.243914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.310150, 30.035145, 31.448795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.156628, 29.708166, 31.620598>,  <40.064514, 29.511980, 31.723679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.156628, 29.708166, 31.620598>,  <40.310150, 30.035145, 31.448795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.156628, 29.708166, 31.620598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784670, 0.533923, 0.314991,
		-0.486810, -0.216123, -0.846349,
		-0.383808, -0.817446, 0.429504,
		40.041485, 29.462933, 31.749449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.579010, 29.842125, 31.258446>,  <40.310150, 30.035145, 31.448795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.579010, 29.842125, 31.258446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.674934, 29.750906, 31.635908>,  <39.732487, 29.696175, 31.862385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.674934, 29.750906, 31.635908>,  <39.579010, 29.842125, 31.258446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.674934, 29.750906, 31.635908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702865, 0.629725, 0.330797,
		-0.669681, -0.742591, -0.009274,
		0.239807, -0.228047, 0.943656,
		39.746876, 29.682491, 31.919004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.085007, 30.196470, 30.589823>,  <39.579010, 29.842125, 31.258446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.085007, 30.196470, 30.589823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.136223, 29.862028, 30.803188>,  <39.166954, 29.661364, 30.931208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.136223, 29.862028, 30.803188>,  <39.085007, 30.196470, 30.589823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.136223, 29.862028, 30.803188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769392, -0.423125, -0.478541,
		0.625812, -0.349131, -0.697472,
		0.128044, -0.836105, 0.533415,
		39.174637, 29.611197, 30.963213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.257072, 29.554127, 30.190729>,  <39.085007, 30.196470, 30.589823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.257072, 29.554127, 30.190729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.992325, 29.502264, 30.486059>,  <38.833477, 29.471146, 30.663258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.992325, 29.502264, 30.486059>,  <39.257072, 29.554127, 30.190729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.992325, 29.502264, 30.486059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677024, -0.319456, -0.663013,
		0.321827, -0.938689, 0.123656,
		-0.661866, -0.129657, 0.738325,
		38.793766, 29.463367, 30.707556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.057648, 28.881775, 30.077675>,  <39.257072, 29.554127, 30.190729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.057648, 28.881775, 30.077675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.793690, 29.103136, 30.280962>,  <38.635315, 29.235952, 30.402933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.793690, 29.103136, 30.280962>,  <39.057648, 28.881775, 30.077675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.793690, 29.103136, 30.280962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711273, -0.242132, -0.659897,
		-0.242132, -0.796944, 0.553401,
		0.659897, -0.553401, -0.508216,
		38.595722, 29.269156, 30.433428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.337482, 28.576714, 30.228960>,  <39.057648, 28.881775, 30.077675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.337482, 28.576714, 30.228960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.293510, 28.972181, 30.188068>,  <38.267128, 29.209461, 30.163534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.293510, 28.972181, 30.188068>,  <38.337482, 28.576714, 30.228960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.293510, 28.972181, 30.188068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646072, -0.149235, -0.748545,
		-0.755319, -0.016238, 0.655156,
		-0.109927, 0.988669, -0.102230,
		38.260532, 29.268782, 30.157400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.692562, 28.660332, 29.961609>,  <38.337482, 28.576714, 30.228960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.692562, 28.660332, 29.961609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.873138, 29.009811, 29.889112>,  <37.981483, 29.219500, 29.845613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.873138, 29.009811, 29.889112>,  <37.692562, 28.660332, 29.961609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.873138, 29.009811, 29.889112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449073, 0.046944, -0.892261,
		-0.771060, 0.484196, 0.413548,
		0.451442, 0.873700, -0.181243,
		38.008572, 29.271921, 29.834740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.123798, 29.145439, 29.747128>,  <37.692562, 28.660332, 29.961609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.123798, 29.145439, 29.747128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.479362, 29.262087, 29.605820>,  <37.692699, 29.332075, 29.521034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.479362, 29.262087, 29.605820>,  <37.123798, 29.145439, 29.747128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.479362, 29.262087, 29.605820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380696, 0.041367, -0.923774,
		-0.254777, 0.955639, 0.147790,
		0.888909, 0.291620, -0.353269,
		37.746037, 29.349573, 29.499840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.861992, 29.474661, 29.163593>,  <37.123798, 29.145439, 29.747128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.861992, 29.474661, 29.163593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.257847, 29.474783, 29.106159>,  <37.495361, 29.474855, 29.071699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.257847, 29.474783, 29.106159>,  <36.861992, 29.474661, 29.163593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.257847, 29.474783, 29.106159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142568, 0.120826, -0.982383,
		0.017049, 0.992674, 0.119617,
		0.989638, 0.000305, -0.143584,
		37.554737, 29.474874, 29.063084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.000187, 30.057182, 28.863913>,  <36.861992, 29.474661, 29.163593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.000187, 30.057182, 28.863913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.300869, 29.811272, 28.768427>,  <37.481277, 29.663725, 28.711136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.300869, 29.811272, 28.768427>,  <37.000187, 30.057182, 28.863913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.300869, 29.811272, 28.768427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068542, 0.287175, -0.955423,
		0.655924, 0.734562, 0.173734,
		0.751709, -0.614776, -0.238713,
		37.526382, 29.626839, 28.696814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.470047, 30.348356, 28.413391>,  <37.000187, 30.057182, 28.863913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.470047, 30.348356, 28.413391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.569263, 29.967838, 28.340170>,  <37.628796, 29.739527, 28.296238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.569263, 29.967838, 28.340170>,  <37.470047, 30.348356, 28.413391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.569263, 29.967838, 28.340170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177927, 0.141007, -0.973889,
		0.952269, 0.274138, -0.134286,
		0.248045, -0.951297, -0.183053,
		37.643677, 29.682449, 28.285254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.066555, 30.273144, 27.920813>,  <37.470047, 30.348356, 28.413391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.066555, 30.273144, 27.920813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.854687, 29.934719, 27.896698>,  <37.727566, 29.731665, 27.882229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.854687, 29.934719, 27.896698>,  <38.066555, 30.273144, 27.920813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.854687, 29.934719, 27.896698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010227, 0.064699, -0.997852,
		0.848143, -0.529147, -0.025617,
		-0.529668, -0.846059, -0.060286,
		37.695786, 29.680901, 27.878613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.248096, 29.945662, 27.254547>,  <38.066555, 30.273144, 27.920813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.248096, 29.945662, 27.254547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.907787, 29.755655, 27.344479>,  <37.703602, 29.641651, 27.398438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.907787, 29.755655, 27.344479>,  <38.248096, 29.945662, 27.254547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.907787, 29.755655, 27.344479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326553, 0.142626, -0.934356,
		0.411766, -0.868342, -0.276460,
		-0.850771, -0.475015, 0.224831,
		37.652557, 29.613152, 27.411928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.037449, 29.512983, 26.636534>,  <38.248096, 29.945662, 27.254547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.037449, 29.512983, 26.636534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.692005, 29.525606, 26.837805>,  <37.484741, 29.533180, 26.958567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.692005, 29.525606, 26.837805>,  <38.037449, 29.512983, 26.636534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.692005, 29.525606, 26.837805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485296, 0.218451, -0.846621,
		-0.136637, -0.975337, -0.173341,
		-0.863608, 0.031558, 0.503176,
		37.432922, 29.535072, 26.988758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.625961, 29.056271, 26.210829>,  <38.037449, 29.512983, 26.636534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.625961, 29.056271, 26.210829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.397606, 29.307608, 26.422213>,  <37.260593, 29.458410, 26.549044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.397606, 29.307608, 26.422213>,  <37.625961, 29.056271, 26.210829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.397606, 29.307608, 26.422213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402722, 0.346599, -0.847162,
		-0.715474, -0.696457, 0.055179,
		-0.570887, 0.628344, 0.528461,
		37.226341, 29.496111, 26.580751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.997303, 28.965921, 25.990986>,  <37.625961, 29.056271, 26.210829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.997303, 28.965921, 25.990986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.985043, 29.331749, 26.152290>,  <36.977688, 29.551247, 26.249073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.985043, 29.331749, 26.152290>,  <36.997303, 28.965921, 25.990986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.985043, 29.331749, 26.152290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501358, 0.334960, -0.797773,
		-0.864697, -0.226632, 0.448261,
		-0.030651, 0.914571, 0.403263,
		36.975845, 29.606121, 26.273270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.318619, 29.166927, 25.953527>,  <36.997303, 28.965921, 25.990986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.318619, 29.166927, 25.953527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.519810, 29.511776, 25.978054>,  <36.640526, 29.718685, 25.992769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.519810, 29.511776, 25.978054>,  <36.318619, 29.166927, 25.953527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.519810, 29.511776, 25.978054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592556, 0.395613, -0.701690,
		-0.629200, 0.316599, 0.709839,
		0.502976, 0.862123, 0.061317,
		36.670704, 29.770412, 25.996449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.910873, 29.746185, 26.077578>,  <36.318619, 29.166927, 25.953527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.910873, 29.746185, 26.077578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.217804, 29.966572, 25.946342>,  <36.401962, 30.098804, 25.867601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.217804, 29.966572, 25.946342>,  <35.910873, 29.746185, 26.077578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.217804, 29.966572, 25.946342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549023, 0.300104, -0.780071,
		-0.331333, 0.778699, 0.532772,
		0.767328, 0.550968, -0.328090,
		36.448002, 30.131863, 25.847916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.687195, 30.423735, 25.942215>,  <35.910873, 29.746185, 26.077578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.687195, 30.423735, 25.942215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.021179, 30.415510, 25.722246>,  <36.221569, 30.410576, 25.590265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.021179, 30.415510, 25.722246>,  <35.687195, 30.423735, 25.942215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.021179, 30.415510, 25.722246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425037, 0.610643, -0.668175,
		0.349544, 0.791639, 0.501126,
		0.834962, -0.020560, -0.549923,
		36.271667, 30.409342, 25.557270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.754501, 31.071350, 25.862343>,  <35.687195, 30.423735, 25.942215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.754501, 31.071350, 25.862343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.961803, 30.906548, 25.562565>,  <36.086185, 30.807665, 25.382698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.961803, 30.906548, 25.562565>,  <35.754501, 31.071350, 25.862343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.961803, 30.906548, 25.562565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426569, 0.634992, -0.644068,
		0.741251, 0.653479, 0.153336,
		0.518252, -0.412008, -0.749443,
		36.117279, 30.782946, 25.337732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.870781, 31.591923, 25.475880>,  <35.754501, 31.071350, 25.862343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.870781, 31.591923, 25.475880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.933693, 31.280914, 25.232330>,  <35.971439, 31.094309, 25.086201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.933693, 31.280914, 25.232330>,  <35.870781, 31.591923, 25.475880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.933693, 31.280914, 25.232330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402571, 0.512514, -0.758463,
		0.901776, 0.364405, -0.232399,
		0.157280, -0.777520, -0.608872,
		35.980877, 31.047659, 25.049669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.062031, 31.933575, 24.886456>,  <35.870781, 31.591923, 25.475880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.062031, 31.933575, 24.886456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.910881, 31.579224, 24.778799>,  <35.820190, 31.366613, 24.714205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.910881, 31.579224, 24.778799>,  <36.062031, 31.933575, 24.886456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.910881, 31.579224, 24.778799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527958, 0.444971, -0.723368,
		0.760575, -0.131244, -0.635846,
		-0.377871, -0.885876, -0.269142,
		35.797520, 31.313461, 24.698057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.014046, 31.985308, 24.148035>,  <36.062031, 31.933575, 24.886456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.014046, 31.985308, 24.148035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.794975, 31.654682, 24.199949>,  <35.663532, 31.456306, 24.231098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.794975, 31.654682, 24.199949>,  <36.014046, 31.985308, 24.148035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.794975, 31.654682, 24.199949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489983, 0.191110, -0.850525,
		0.678211, -0.529404, -0.509668,
		-0.547674, -0.826564, 0.129786,
		35.630672, 31.406713, 24.238886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.074062, 31.589731, 23.461983>,  <36.014046, 31.985308, 24.148035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.074062, 31.589731, 23.461983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.741329, 31.460735, 23.642672>,  <35.541691, 31.383337, 23.751085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.741329, 31.460735, 23.642672>,  <36.074062, 31.589731, 23.461983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.741329, 31.460735, 23.642672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472925, -0.014155, -0.880989,
		0.290506, -0.946467, -0.140740,
		-0.831834, -0.322492, 0.451720,
		35.491779, 31.363989, 23.778187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.827507, 31.043011, 23.015659>,  <36.074062, 31.589731, 23.461983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.827507, 31.043011, 23.015659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.514503, 31.179050, 23.224277>,  <35.326702, 31.260675, 23.349449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.514503, 31.179050, 23.224277>,  <35.827507, 31.043011, 23.015659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.514503, 31.179050, 23.224277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514152, 0.119493, -0.849335,
		-0.351181, -0.932766, 0.081359,
		-0.782509, 0.340101, 0.521547,
		35.279751, 31.281080, 23.380741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.203957, 30.720701, 22.787237>,  <35.827507, 31.043011, 23.015659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.203957, 30.720701, 22.787237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.062485, 31.049282, 22.966181>,  <34.977604, 31.246431, 23.073547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.062485, 31.049282, 22.966181>,  <35.203957, 30.720701, 22.787237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.062485, 31.049282, 22.966181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557144, 0.199162, -0.806179,
		-0.751335, -0.534368, 0.387229,
		-0.353675, 0.821453, 0.447357,
		34.956383, 31.295717, 23.100388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.513157, 30.795481, 22.472942>,  <35.203957, 30.720701, 22.787237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.513157, 30.795481, 22.472942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.616043, 31.145916, 22.636068>,  <34.677776, 31.356176, 22.733944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.616043, 31.145916, 22.636068>,  <34.513157, 30.795481, 22.472942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.616043, 31.145916, 22.636068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357393, 0.478333, -0.802164,
		-0.897836, 0.060581, 0.436143,
		0.257218, 0.876086, 0.407813,
		34.693207, 31.408741, 22.758411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.867973, 31.271307, 22.368702>,  <34.513157, 30.795481, 22.472942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.867973, 31.271307, 22.368702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.168758, 31.533144, 22.399839>,  <34.349228, 31.690247, 22.418522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.168758, 31.533144, 22.399839>,  <33.867973, 31.271307, 22.368702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.168758, 31.533144, 22.399839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446368, 0.592512, -0.670586,
		-0.485084, 0.469509, 0.737736,
		0.751963, 0.654592, 0.077844,
		34.394348, 31.729523, 22.423193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.514614, 31.846306, 22.267172>,  <33.867973, 31.271307, 22.368702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.514614, 31.846306, 22.267172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.897396, 31.957840, 22.234928>,  <34.127064, 32.024761, 22.215582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.897396, 31.957840, 22.234928>,  <33.514614, 31.846306, 22.267172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.897396, 31.957840, 22.234928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259258, 0.696271, -0.669323,
		-0.130504, 0.661407, 0.738586,
		0.956950, 0.278834, -0.080608,
		34.184483, 32.041489, 22.210745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.559372, 32.482723, 22.447638>,  <33.514614, 31.846306, 22.267172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.559372, 32.482723, 22.447638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.872772, 32.428551, 22.205057>,  <34.060814, 32.396049, 22.059509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.872772, 32.428551, 22.205057>,  <33.559372, 32.482723, 22.447638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.872772, 32.428551, 22.205057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321296, 0.747081, -0.581926,
		0.531879, 0.650791, 0.541827,
		0.783501, -0.135427, -0.606453,
		34.107822, 32.387924, 22.023121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.791908, 33.144230, 22.354099>,  <33.559372, 32.482723, 22.447638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.791908, 33.144230, 22.354099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.931850, 32.938217, 22.041090>,  <34.015816, 32.814610, 21.853285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.931850, 32.938217, 22.041090>,  <33.791908, 33.144230, 22.354099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.931850, 32.938217, 22.041090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443690, 0.644584, -0.622615,
		0.825070, 0.565022, -0.003005,
		0.349854, -0.515035, -0.782522,
		34.036808, 32.783707, 21.806334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.053333, 33.592571, 21.866394>,  <33.791908, 33.144230, 22.354099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.053333, 33.592571, 21.866394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.011330, 33.278572, 21.622179>,  <33.986130, 33.090172, 21.475649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.011330, 33.278572, 21.622179>,  <34.053333, 33.592571, 21.866394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.011330, 33.278572, 21.622179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393377, 0.596648, -0.699475,
		0.913361, 0.166723, -0.371450,
		-0.105006, -0.784994, -0.610540,
		33.979828, 33.043076, 21.439016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.255779, 33.797562, 21.161272>,  <34.053333, 33.592571, 21.866394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.255779, 33.797562, 21.161272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.031605, 33.470352, 21.109499>,  <33.897099, 33.274029, 21.078434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.031605, 33.470352, 21.109499>,  <34.255779, 33.797562, 21.161272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.031605, 33.470352, 21.109499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347996, 0.374412, -0.859485,
		0.751538, -0.436645, -0.494502,
		-0.560437, -0.818020, -0.129434,
		33.863472, 33.224945, 21.070669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.375214, 33.582836, 20.522648>,  <34.255779, 33.797562, 21.161272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.375214, 33.582836, 20.522648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.022171, 33.432949, 20.636202>,  <33.810345, 33.343018, 20.704334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.022171, 33.432949, 20.636202>,  <34.375214, 33.582836, 20.522648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.022171, 33.432949, 20.636202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399180, 0.278405, -0.873582,
		0.248300, -0.884356, -0.395299,
		-0.882611, -0.374707, 0.283890,
		33.757389, 33.320534, 20.721367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.130447, 33.250866, 19.859350>,  <34.375214, 33.582836, 20.522648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.130447, 33.250866, 19.859350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.819950, 33.288719, 20.108669>,  <33.633652, 33.311432, 20.258261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.819950, 33.288719, 20.108669>,  <34.130447, 33.250866, 19.859350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.819950, 33.288719, 20.108669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581494, 0.274471, -0.765852,
		-0.243552, -0.956927, -0.158027,
		-0.776239, 0.094633, 0.623296,
		33.587078, 33.317108, 20.295658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.658184, 32.930447, 19.483107>,  <34.130447, 33.250866, 19.859350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.658184, 32.930447, 19.483107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.469414, 33.168236, 19.743532>,  <33.356152, 33.310909, 19.899788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.469414, 33.168236, 19.743532>,  <33.658184, 32.930447, 19.483107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.469414, 33.168236, 19.743532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582419, 0.344176, -0.736431,
		-0.661872, -0.726733, 0.183809,
		-0.471925, 0.594476, 0.651063,
		33.327835, 33.346581, 19.938850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.929142, 33.039013, 19.186911>,  <33.658184, 32.930447, 19.483107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.929142, 33.039013, 19.186911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.978283, 33.333378, 19.453245>,  <33.007767, 33.509998, 19.613047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.978283, 33.333378, 19.453245>,  <32.929142, 33.039013, 19.186911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.978283, 33.333378, 19.453245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476147, 0.632363, -0.611065,
		-0.870742, -0.241968, 0.428088,
		0.122849, 0.735913, 0.665838,
		33.015137, 33.554153, 19.652996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.325115, 33.323383, 19.118093>,  <32.929142, 33.039013, 19.186911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.325115, 33.323383, 19.118093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.577854, 33.589642, 19.276937>,  <32.729496, 33.749397, 19.372244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.577854, 33.589642, 19.276937>,  <32.325115, 33.323383, 19.118093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.577854, 33.589642, 19.276937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231965, 0.651246, -0.722545,
		-0.739572, 0.364419, 0.565891,
		0.631843, 0.665641, 0.397110,
		32.767406, 33.789333, 19.396070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.890005, 33.889709, 19.082996>,  <32.325115, 33.323383, 19.118093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.890005, 33.889709, 19.082996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.270287, 34.013424, 19.091972>,  <32.498455, 34.087654, 19.097359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.270287, 34.013424, 19.091972>,  <31.890005, 33.889709, 19.082996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.270287, 34.013424, 19.091972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191503, 0.642488, -0.741981,
		-0.243905, 0.701106, 0.670045,
		0.950703, 0.309289, 0.022442,
		32.555496, 34.106209, 19.098705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.858877, 34.500668, 19.048136>,  <31.890005, 33.889709, 19.082996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.858877, 34.500668, 19.048136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.229465, 34.423397, 18.918932>,  <32.451820, 34.377037, 18.841410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.229465, 34.423397, 18.918932>,  <31.858877, 34.500668, 19.048136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.229465, 34.423397, 18.918932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103321, 0.694721, -0.711820,
		0.361906, 0.692854, 0.623680,
		0.926471, -0.193172, -0.323010,
		32.507408, 34.365444, 18.822029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.117931, 35.149929, 19.036406>,  <31.858877, 34.500668, 19.048136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.117931, 35.149929, 19.036406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.337566, 34.914234, 18.799324>,  <32.469349, 34.772816, 18.657074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.337566, 34.914234, 18.799324>,  <32.117931, 35.149929, 19.036406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.337566, 34.914234, 18.799324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043819, 0.687905, -0.724476,
		0.834613, 0.423775, 0.351903,
		0.549091, -0.589237, -0.592705,
		32.502293, 34.737465, 18.621513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.535839, 35.637978, 18.711136>,  <32.117931, 35.149929, 19.036406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.535839, 35.637978, 18.711136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.601963, 35.324013, 18.472277>,  <32.641636, 35.135632, 18.328962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.601963, 35.324013, 18.472277>,  <32.535839, 35.637978, 18.711136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.601963, 35.324013, 18.472277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049588, 0.598096, -0.799889,
		0.984995, 0.161839, 0.059948,
		0.165307, -0.784914, -0.597146,
		32.651554, 35.088539, 18.293133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.771553, 36.073555, 18.191469>,  <32.535839, 35.637978, 18.711136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.771553, 36.073555, 18.191469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.703651, 35.707546, 18.045094>,  <32.662910, 35.487942, 17.957268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.703651, 35.707546, 18.045094>,  <32.771553, 36.073555, 18.191469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.703651, 35.707546, 18.045094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104025, 0.385890, -0.916661,
		0.979980, -0.117544, -0.160693,
		-0.169758, -0.915026, -0.365937,
		32.652725, 35.433037, 17.935312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.236099, 35.908726, 17.575359>,  <32.771553, 36.073555, 18.191469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.236099, 35.908726, 17.575359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.901810, 35.691120, 17.545403>,  <32.701237, 35.560558, 17.527428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.901810, 35.691120, 17.545403>,  <33.236099, 35.908726, 17.575359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.901810, 35.691120, 17.545403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175711, 0.394123, -0.902105,
		0.520277, -0.740753, -0.424968,
		-0.835726, -0.544016, -0.074894,
		32.651093, 35.527916, 17.522934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.297180, 35.345760, 17.130581>,  <33.236099, 35.908726, 17.575359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.297180, 35.345760, 17.130581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.918739, 35.475182, 17.136314>,  <32.691677, 35.552834, 17.139753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.918739, 35.475182, 17.136314>,  <33.297180, 35.345760, 17.130581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.918739, 35.475182, 17.136314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054672, 0.203170, -0.977616,
		-0.319227, -0.924139, -0.209909,
		-0.946100, 0.323557, 0.014332,
		32.634911, 35.572250, 17.140614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.020882, 35.272335, 16.444399>,  <33.297180, 35.345760, 17.130581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.020882, 35.272335, 16.444399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.707760, 35.482437, 16.577862>,  <32.519886, 35.608498, 16.657940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.707760, 35.482437, 16.577862>,  <33.020882, 35.272335, 16.444399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.707760, 35.482437, 16.577862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247042, 0.229807, -0.941360,
		-0.571129, -0.819328, -0.050134,
		-0.782804, 0.525253, 0.333658,
		32.472919, 35.640015, 16.677959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.400356, 35.239468, 15.949245>,  <33.020882, 35.272335, 16.444399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.400356, 35.239468, 15.949245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.267036, 35.550381, 16.162693>,  <32.187046, 35.736927, 16.290762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.267036, 35.550381, 16.162693>,  <32.400356, 35.239468, 15.949245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.267036, 35.550381, 16.162693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450170, 0.366100, -0.814443,
		-0.828409, -0.511670, 0.227889,
		-0.333296, 0.777280, 0.533619,
		32.167049, 35.783566, 16.322779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.650721, 35.281166, 15.849669>,  <32.400356, 35.239468, 15.949245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.650721, 35.281166, 15.849669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.758944, 35.646004, 15.972885>,  <31.823877, 35.864906, 16.046814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.758944, 35.646004, 15.972885>,  <31.650721, 35.281166, 15.849669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.758944, 35.646004, 15.972885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484745, 0.405519, -0.774969,
		-0.831758, 0.060352, 0.551848,
		0.270556, 0.912092, 0.308038,
		31.840111, 35.919632, 16.065296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.015064, 35.760048, 15.975570>,  <31.650721, 35.281166, 15.849669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.015064, 35.760048, 15.975570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.333303, 35.982651, 15.879803>,  <31.524246, 36.116215, 15.822343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.333303, 35.982651, 15.879803>,  <31.015064, 35.760048, 15.975570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.333303, 35.982651, 15.879803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511383, 0.405013, -0.757926,
		-0.324828, 0.725438, 0.606817,
		0.795597, 0.556511, -0.239417,
		31.571983, 36.149605, 15.807978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.810009, 36.467636, 15.924347>,  <31.015064, 35.760048, 15.975570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.810009, 36.467636, 15.924347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.111374, 36.403496, 15.669267>,  <31.292192, 36.365013, 15.516218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.111374, 36.403496, 15.669267>,  <30.810009, 36.467636, 15.924347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.111374, 36.403496, 15.669267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516734, 0.455374, -0.724997,
		0.406644, 0.875741, 0.260226,
		0.753410, -0.160348, -0.637700,
		31.337397, 36.355392, 15.477957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.968100, 37.058327, 15.519616>,  <30.810009, 36.467636, 15.924347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.968100, 37.058327, 15.519616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.063740, 36.717922, 15.332590>,  <31.121124, 36.513680, 15.220374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.063740, 36.717922, 15.332590>,  <30.968100, 37.058327, 15.519616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.063740, 36.717922, 15.332590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547452, 0.279555, -0.788762,
		0.801953, 0.444562, -0.399044,
		0.239099, -0.851008, -0.467566,
		31.135469, 36.462620, 15.192320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.977766, 37.466114, 16.277622>,  <30.968100, 37.058327, 15.519616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.977766, 37.466114, 16.277622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.092396, 37.848545, 16.302254>,  <31.161175, 38.078003, 16.317032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.092396, 37.848545, 16.302254>,  <30.977766, 37.466114, 16.277622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.092396, 37.848545, 16.302254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398441, 0.177389, -0.899877,
		-0.871274, 0.233348, 0.431776,
		0.286576, 0.956077, 0.061579,
		31.178370, 38.135368, 16.320726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.437716, 37.909504, 15.978016>,  <30.977766, 37.466114, 16.277622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.437716, 37.909504, 15.978016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.796165, 38.085522, 15.954974>,  <31.011236, 38.191132, 15.941149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.796165, 38.085522, 15.954974>,  <30.437716, 37.909504, 15.978016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.796165, 38.085522, 15.954974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159824, 0.198900, -0.966900,
		-0.414020, 0.875672, 0.248569,
		0.896127, 0.440043, -0.057605,
		31.065004, 38.217533, 15.937693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.487026, 37.930687, 15.202389>,  <30.437716, 37.909504, 15.978016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.487026, 37.930687, 15.202389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.555805, 38.307926, 15.088552>,  <30.597073, 38.534271, 15.020249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.555805, 38.307926, 15.088552>,  <30.487026, 37.930687, 15.202389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.555805, 38.307926, 15.088552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638833, 0.113161, 0.760978,
		0.749885, -0.312655, -0.583027,
		0.171947, 0.943102, -0.284592,
		30.607389, 38.590858, 15.003174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.153387, 37.989647, 15.145541>,  <30.487026, 37.930687, 15.202389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.153387, 37.989647, 15.145541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.011881, 38.359352, 15.202928>,  <30.926977, 38.581177, 15.237360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.011881, 38.359352, 15.202928>,  <31.153387, 37.989647, 15.145541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.011881, 38.359352, 15.202928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503564, 0.058948, 0.861944,
		0.788209, 0.377171, -0.486281,
		-0.353765, 0.924266, 0.143467,
		30.905752, 38.636631, 15.245968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.692472, 38.659630, 15.250166>,  <31.153387, 37.989647, 15.145541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.692472, 38.659630, 15.250166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.343157, 38.679462, 15.444036>,  <31.133568, 38.691360, 15.560359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.343157, 38.679462, 15.444036>,  <31.692472, 38.659630, 15.250166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.343157, 38.679462, 15.444036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468744, -0.185762, 0.863580,
		0.132849, 0.981343, 0.138985,
		-0.873287, 0.049578, 0.484677,
		31.081171, 38.694336, 15.589439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.781029, 39.107754, 15.848271>,  <31.692472, 38.659630, 15.250166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.781029, 39.107754, 15.848271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.457775, 38.896492, 15.952557>,  <31.263823, 38.769733, 16.015127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.457775, 38.896492, 15.952557>,  <31.781029, 39.107754, 15.848271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.457775, 38.896492, 15.952557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367456, -0.106150, 0.923963,
		-0.460323, 0.842486, 0.279858,
		-0.808133, -0.528157, 0.260713,
		31.215336, 38.738045, 16.030771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.471697, 39.338005, 16.444315>,  <31.781029, 39.107754, 15.848271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.471697, 39.338005, 16.444315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.401363, 38.946129, 16.405746>,  <31.359163, 38.711002, 16.382605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.401363, 38.946129, 16.405746>,  <31.471697, 39.338005, 16.444315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.401363, 38.946129, 16.405746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473526, -0.170046, 0.864209,
		-0.863050, 0.106298, 0.493807,
		-0.175833, -0.979686, -0.096423,
		31.348614, 38.652222, 16.376820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.155067, 39.032745, 17.069386>,  <31.471697, 39.338005, 16.444315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.155067, 39.032745, 17.069386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.364170, 38.749580, 16.879404>,  <31.489632, 38.579681, 16.765415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.364170, 38.749580, 16.879404>,  <31.155067, 39.032745, 17.069386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.364170, 38.749580, 16.879404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370466, -0.313130, 0.874474,
		-0.767776, -0.633092, 0.098568,
		0.522757, -0.707916, -0.474953,
		31.520998, 38.537205, 16.736917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.001698, 38.478867, 17.477991>,  <31.155067, 39.032745, 17.069386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.001698, 38.478867, 17.477991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.328606, 38.377678, 17.270889>,  <31.524752, 38.316963, 17.146627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.328606, 38.377678, 17.270889>,  <31.001698, 38.478867, 17.477991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.328606, 38.377678, 17.270889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342137, -0.509962, 0.789228,
		-0.463690, -0.822157, -0.330226,
		0.817272, -0.252975, -0.517755,
		31.573788, 38.301785, 17.115562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.096636, 37.798931, 17.634119>,  <31.001698, 38.478867, 17.477991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.096636, 37.798931, 17.634119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.452162, 37.939503, 17.516468>,  <31.665478, 38.023846, 17.445877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.452162, 37.939503, 17.516468>,  <31.096636, 37.798931, 17.634119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.452162, 37.939503, 17.516468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393015, -0.254438, 0.883629,
		0.235691, -0.900978, -0.364263,
		0.888813, 0.351425, -0.294129,
		31.718805, 38.044930, 17.428228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.516926, 37.328335, 17.978951>,  <31.096636, 37.798931, 17.634119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.516926, 37.328335, 17.978951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.737429, 37.651096, 17.894072>,  <31.869730, 37.844753, 17.843145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.737429, 37.651096, 17.894072>,  <31.516926, 37.328335, 17.978951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.737429, 37.651096, 17.894072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517901, -0.131534, 0.845268,
		0.654136, -0.575856, -0.490403,
		0.551257, 0.806900, -0.212196,
		31.902805, 37.893166, 17.830412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.224606, 37.178474, 18.148512>,  <31.516926, 37.328335, 17.978951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.224606, 37.178474, 18.148512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.242058, 37.577858, 18.162281>,  <32.252529, 37.817486, 18.170542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.242058, 37.577858, 18.162281>,  <32.224606, 37.178474, 18.148512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.242058, 37.577858, 18.162281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586769, -0.053498, 0.807985,
		0.808578, -0.015058, -0.588196,
		0.043634, 0.998454, 0.034421,
		32.255150, 37.877396, 18.172607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.951092, 37.424728, 18.165140>,  <32.224606, 37.178474, 18.148512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.951092, 37.424728, 18.165140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.735325, 37.713459, 18.338573>,  <32.605865, 37.886696, 18.442635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.735325, 37.713459, 18.338573>,  <32.951092, 37.424728, 18.165140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.735325, 37.713459, 18.338573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654242, 0.035123, 0.755469,
		0.530086, 0.691186, -0.491193,
		-0.539422, 0.721823, 0.433585,
		32.573498, 37.930004, 18.468649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.439205, 37.751709, 18.544569>,  <32.951092, 37.424728, 18.165140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.439205, 37.751709, 18.544569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.113552, 37.913479, 18.711246>,  <32.918159, 38.010540, 18.811253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.113552, 37.913479, 18.711246>,  <33.439205, 37.751709, 18.544569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.113552, 37.913479, 18.711246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472478, 0.044188, 0.880234,
		0.337572, 0.913505, -0.227055,
		-0.814131, 0.404421, 0.416694,
		32.869312, 38.034805, 18.836254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.712662, 38.100441, 18.980621>,  <33.439205, 37.751709, 18.544569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.712662, 38.100441, 18.980621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.340965, 38.129776, 19.125469>,  <33.117947, 38.147377, 19.212378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.340965, 38.129776, 19.125469>,  <33.712662, 38.100441, 18.980621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.340965, 38.129776, 19.125469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364606, 0.023511, 0.930865,
		0.059757, 0.997030, -0.048589,
		-0.929242, 0.073342, 0.362118,
		33.062191, 38.151779, 19.234104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.763245, 38.658131, 19.405624>,  <33.712662, 38.100441, 18.980621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.763245, 38.658131, 19.405624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.446991, 38.434795, 19.506155>,  <33.257240, 38.300797, 19.566473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.446991, 38.434795, 19.506155>,  <33.763245, 38.658131, 19.405624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.446991, 38.434795, 19.506155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345723, -0.068306, 0.935847,
		-0.505348, 0.826799, 0.247034,
		-0.790632, -0.558334, 0.251325,
		33.209801, 38.267296, 19.581553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.559776, 38.891529, 19.972111>,  <33.763245, 38.658131, 19.405624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.559776, 38.891529, 19.972111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.423176, 38.516258, 19.949492>,  <33.341217, 38.291096, 19.935921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.423176, 38.516258, 19.949492>,  <33.559776, 38.891529, 19.972111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.423176, 38.516258, 19.949492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275131, -0.157314, 0.948449,
		-0.898711, 0.308337, 0.311845,
		-0.341500, -0.938179, -0.056547,
		33.320724, 38.234806, 19.932528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.035580, 38.835152, 20.513403>,  <33.559776, 38.891529, 19.972111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.035580, 38.835152, 20.513403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.153423, 38.462692, 20.427460>,  <33.224129, 38.239216, 20.375895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.153423, 38.462692, 20.427460>,  <33.035580, 38.835152, 20.513403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.153423, 38.462692, 20.427460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174778, -0.168538, 0.970076,
		-0.939498, -0.323347, 0.113092,
		0.294611, -0.931151, -0.214856,
		33.241806, 38.183346, 20.363003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.020645, 38.442657, 21.187899>,  <33.035580, 38.835152, 20.513403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.020645, 38.442657, 21.187899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.220203, 38.187050, 20.953716>,  <33.339939, 38.033684, 20.813208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.220203, 38.187050, 20.953716>,  <33.020645, 38.442657, 21.187899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.220203, 38.187050, 20.953716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412707, -0.418843, 0.808853,
		-0.762087, -0.645154, 0.054769,
		0.498896, -0.639020, -0.585454,
		33.369873, 37.995342, 20.778080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.843925, 37.851730, 21.398741>,  <33.020645, 38.442657, 21.187899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.843925, 37.851730, 21.398741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.172115, 37.759811, 21.189354>,  <33.369030, 37.704662, 21.063721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.172115, 37.759811, 21.189354>,  <32.843925, 37.851730, 21.398741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.172115, 37.759811, 21.189354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288566, -0.623979, 0.726209,
		-0.493512, -0.746890, -0.445647,
		0.820473, -0.229794, -0.523468,
		33.418259, 37.690872, 21.032312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.812885, 37.065746, 21.345509>,  <32.843925, 37.851730, 21.398741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.812885, 37.065746, 21.345509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.181450, 37.220062, 21.326853>,  <33.402588, 37.312653, 21.315660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.181450, 37.220062, 21.326853>,  <32.812885, 37.065746, 21.345509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.181450, 37.220062, 21.326853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272251, -0.555233, 0.785872,
		0.277287, -0.736806, -0.616628,
		0.921407, 0.385790, -0.046638,
		33.457870, 37.335800, 21.312862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.161198, 36.546196, 21.264088>,  <32.812885, 37.065746, 21.345509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.161198, 36.546196, 21.264088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.417496, 36.818031, 21.406975>,  <33.571274, 36.981133, 21.492708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.417496, 36.818031, 21.406975>,  <33.161198, 36.546196, 21.264088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.417496, 36.818031, 21.406975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271319, -0.635692, 0.722691,
		0.718211, -0.366142, -0.591703,
		0.640748, 0.679585, 0.357220,
		33.609718, 37.021908, 21.514141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.601498, 36.098362, 21.662285>,  <33.161198, 36.546196, 21.264088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.601498, 36.098362, 21.662285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.738262, 36.464085, 21.749142>,  <33.820320, 36.683517, 21.801256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.738262, 36.464085, 21.749142>,  <33.601498, 36.098362, 21.662285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.738262, 36.464085, 21.749142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564818, -0.384612, 0.730106,
		0.751052, -0.126984, -0.647916,
		0.341909, 0.914302, 0.217141,
		33.840836, 36.738377, 21.814283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.341663, 36.048592, 21.552422>,  <33.601498, 36.098362, 21.662285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.341663, 36.048592, 21.552422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.230164, 36.329197, 21.814774>,  <34.163261, 36.497559, 21.972185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.230164, 36.329197, 21.814774>,  <34.341663, 36.048592, 21.552422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.230164, 36.329197, 21.814774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454583, -0.505214, 0.733562,
		0.845962, 0.502635, -0.178064,
		-0.278754, 0.701510, 0.655881,
		34.146538, 36.539650, 22.011538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.832973, 36.068230, 21.992468>,  <34.341663, 36.048592, 21.552422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.832973, 36.068230, 21.992468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.541538, 36.246841, 22.200226>,  <34.366676, 36.354008, 22.324881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.541538, 36.246841, 22.200226>,  <34.832973, 36.068230, 21.992468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.541538, 36.246841, 22.200226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302827, -0.470164, 0.829000,
		0.614373, 0.761287, 0.207336,
		-0.728589, 0.446528, 0.519394,
		34.322960, 36.380798, 22.356045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.192768, 36.345257, 22.520721>,  <34.832973, 36.068230, 21.992468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.192768, 36.345257, 22.520721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.819324, 36.362717, 22.662968>,  <34.595257, 36.373192, 22.748316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.819324, 36.362717, 22.662968>,  <35.192768, 36.345257, 22.520721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.819324, 36.362717, 22.662968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273915, -0.552851, 0.786973,
		0.230950, 0.832136, 0.504193,
		-0.933613, 0.043645, 0.355615,
		34.539242, 36.375809, 22.769651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.330971, 36.591431, 23.185719>,  <35.192768, 36.345257, 22.520721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.330971, 36.591431, 23.185719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.969597, 36.420074, 23.178921>,  <34.752773, 36.317261, 23.174843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.969597, 36.420074, 23.178921>,  <35.330971, 36.591431, 23.185719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.969597, 36.420074, 23.178921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236592, -0.531220, 0.813529,
		-0.357535, 0.730950, 0.581276,
		-0.903434, -0.428390, -0.016993,
		34.698566, 36.291557, 23.173822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.062428, 36.630672, 23.891457>,  <35.330971, 36.591431, 23.185719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.062428, 36.630672, 23.891457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.879021, 36.323532, 23.712502>,  <34.768974, 36.139248, 23.605127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.879021, 36.323532, 23.712502>,  <35.062428, 36.630672, 23.891457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.879021, 36.323532, 23.712502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162677, -0.567445, 0.807182,
		-0.873668, 0.297329, 0.385097,
		-0.458520, -0.767856, -0.447390,
		34.741467, 36.093174, 23.578285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.650444, 36.399284, 24.361135>,  <35.062428, 36.630672, 23.891457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.650444, 36.399284, 24.361135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.621220, 36.085014, 24.115414>,  <34.603687, 35.896450, 23.967979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.621220, 36.085014, 24.115414>,  <34.650444, 36.399284, 24.361135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.621220, 36.085014, 24.115414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128915, -0.618224, 0.775358,
		-0.988961, -0.022548, 0.146451,
		-0.073056, -0.785679, -0.614306,
		34.599304, 35.849312, 23.931122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.378700, 35.948448, 24.737410>,  <34.650444, 36.399284, 24.361135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.378700, 35.948448, 24.737410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.551231, 35.742542, 24.441038>,  <34.654751, 35.618999, 24.263216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.551231, 35.742542, 24.441038>,  <34.378700, 35.948448, 24.737410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.551231, 35.742542, 24.441038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346658, -0.663643, 0.662877,
		-0.832937, -0.542766, -0.107801,
		0.431329, -0.514765, -0.740927,
		34.680630, 35.588112, 24.218760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.157940, 35.345764, 24.889791>,  <34.378700, 35.948448, 24.737410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.157940, 35.345764, 24.889791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.497314, 35.331169, 24.678577>,  <34.700939, 35.322414, 24.551849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.497314, 35.331169, 24.678577>,  <34.157940, 35.345764, 24.889791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.497314, 35.331169, 24.678577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407971, -0.590505, 0.696321,
		-0.337214, -0.806209, -0.486121,
		0.848437, -0.036486, -0.528037,
		34.751846, 35.320225, 24.520166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.270103, 34.615608, 24.947763>,  <34.157940, 35.345764, 24.889791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.270103, 34.615608, 24.947763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.627396, 34.707603, 24.793232>,  <34.841770, 34.762802, 24.700514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.627396, 34.707603, 24.793232>,  <34.270103, 34.615608, 24.947763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.627396, 34.707603, 24.793232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436050, -0.652541, 0.619718,
		-0.109564, -0.722007, -0.683155,
		0.893228, 0.229990, -0.386326,
		34.895363, 34.776600, 24.677334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.609154, 33.962448, 24.670908>,  <34.270103, 34.615608, 24.947763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.609154, 33.962448, 24.670908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.891106, 34.229336, 24.767216>,  <35.060276, 34.389469, 24.825001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.891106, 34.229336, 24.767216>,  <34.609154, 33.962448, 24.670908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.891106, 34.229336, 24.767216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407588, -0.658780, 0.632361,
		0.580536, -0.347602, -0.736309,
		0.704876, 0.667219, 0.240767,
		35.102570, 34.429501, 24.839445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.320702, 33.531574, 24.706730>,  <34.609154, 33.962448, 24.670908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.320702, 33.531574, 24.706730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.349216, 33.874928, 24.909941>,  <35.366325, 34.080940, 25.031868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.349216, 33.874928, 24.909941>,  <35.320702, 33.531574, 24.706730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.349216, 33.874928, 24.909941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564112, -0.454740, 0.689194,
		0.822615, 0.237454, -0.516643,
		0.071287, 0.858387, 0.508027,
		35.370602, 34.132442, 25.062349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.958481, 33.440582, 24.989452>,  <35.320702, 33.531574, 24.706730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.958481, 33.440582, 24.989452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.774975, 33.714954, 25.215384>,  <35.664871, 33.879578, 25.350943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.774975, 33.714954, 25.215384>,  <35.958481, 33.440582, 24.989452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.774975, 33.714954, 25.215384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446053, -0.371988, 0.814040,
		0.768486, 0.625397, -0.135308,
		-0.458765, 0.685933, 0.564828,
		35.637344, 33.920734, 25.384832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.489361, 33.704536, 25.439390>,  <35.958481, 33.440582, 24.989452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.489361, 33.704536, 25.439390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.127743, 33.772152, 25.596428>,  <35.910770, 33.812721, 25.690651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.127743, 33.772152, 25.596428>,  <36.489361, 33.704536, 25.439390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.127743, 33.772152, 25.596428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319972, -0.341363, 0.883793,
		0.283410, 0.924607, 0.254520,
		-0.904045, 0.169036, 0.392593,
		35.856529, 33.822865, 25.714207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.633770, 33.980965, 26.022366>,  <36.489361, 33.704536, 25.439390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.633770, 33.980965, 26.022366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.255074, 33.860641, 26.068308>,  <36.027855, 33.788448, 26.095873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.255074, 33.860641, 26.068308>,  <36.633770, 33.980965, 26.022366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.255074, 33.860641, 26.068308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250504, -0.463991, 0.849682,
		-0.202302, 0.833202, 0.514634,
		-0.946743, -0.300810, 0.114855,
		35.971050, 33.770397, 26.102764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.406994, 34.180599, 26.699911>,  <36.633770, 33.980965, 26.022366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.406994, 34.180599, 26.699911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.209145, 33.852989, 26.583609>,  <36.090435, 33.656422, 26.513826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.209145, 33.852989, 26.583609>,  <36.406994, 34.180599, 26.699911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.209145, 33.852989, 26.583609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067930, -0.369954, 0.926563,
		-0.866448, 0.438549, 0.238625,
		-0.494624, -0.819029, -0.290756,
		36.060757, 33.607281, 26.496382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.065285, 34.109341, 27.350647>,  <36.406994, 34.180599, 26.699911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.065285, 34.109341, 27.350647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.993046, 33.770573, 27.150602>,  <35.949703, 33.567310, 27.030575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.993046, 33.770573, 27.150602>,  <36.065285, 34.109341, 27.350647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.993046, 33.770573, 27.150602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221151, -0.530417, 0.818383,
		-0.958373, 0.037195, 0.283087,
		-0.180594, -0.846921, -0.500111,
		35.938869, 33.516495, 27.000568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.647507, 33.777760, 27.767979>,  <36.065285, 34.109341, 27.350647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.647507, 33.777760, 27.767979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.832169, 33.513195, 27.531534>,  <35.942966, 33.354458, 27.389668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.832169, 33.513195, 27.531534>,  <35.647507, 33.777760, 27.767979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.832169, 33.513195, 27.531534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342378, -0.481877, 0.806581,
		-0.818324, -0.574744, 0.003993,
		0.461653, -0.661411, -0.591111,
		35.970665, 33.314774, 27.354200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.636612, 33.132122, 28.114983>,  <35.647507, 33.777760, 27.767979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.636612, 33.132122, 28.114983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.910881, 33.061398, 27.832541>,  <36.075443, 33.018963, 27.663076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.910881, 33.061398, 27.832541>,  <35.636612, 33.132122, 28.114983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.910881, 33.061398, 27.832541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541325, -0.524652, 0.657044,
		-0.486632, -0.832753, -0.264029,
		0.685679, -0.176813, -0.706103,
		36.116585, 33.008354, 27.620708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.752598, 32.451031, 28.277485>,  <35.636612, 33.132122, 28.114983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.752598, 32.451031, 28.277485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.058788, 32.592342, 28.062361>,  <36.242500, 32.677132, 27.933287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.058788, 32.592342, 28.062361>,  <35.752598, 32.451031, 28.277485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.058788, 32.592342, 28.062361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638034, -0.525105, 0.563185,
		-0.083444, -0.774246, -0.627361,
		0.765474, 0.353283, -0.537812,
		36.288429, 32.698326, 27.901016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.159092, 31.845621, 28.205439>,  <35.752598, 32.451031, 28.277485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.159092, 31.845621, 28.205439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.443958, 32.112926, 28.119419>,  <36.614876, 32.273312, 28.067808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.443958, 32.112926, 28.119419>,  <36.159092, 31.845621, 28.205439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.443958, 32.112926, 28.119419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596134, -0.413901, 0.687976,
		0.370741, -0.618149, -0.693140,
		0.712163, 0.668265, -0.215049,
		36.657608, 32.313408, 28.054905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.782303, 31.424717, 27.960714>,  <36.159092, 31.845621, 28.205439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.782303, 31.424717, 27.960714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.891632, 31.788467, 28.086143>,  <36.957230, 32.006718, 28.161402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.891632, 31.788467, 28.086143>,  <36.782303, 31.424717, 27.960714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.891632, 31.788467, 28.086143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653271, -0.414759, 0.633413,
		0.706069, 0.031724, -0.707432,
		0.273320, 0.909378, 0.313573,
		36.973629, 32.061279, 28.180216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.557983, 31.391781, 28.005709>,  <36.782303, 31.424717, 27.960714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.557983, 31.391781, 28.005709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.459904, 31.703838, 28.235926>,  <37.401054, 31.891073, 28.374056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.459904, 31.703838, 28.235926>,  <37.557983, 31.391781, 28.005709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.459904, 31.703838, 28.235926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644367, -0.312410, 0.697991,
		0.724339, 0.542011, -0.426095,
		-0.245203, 0.780144, 0.575544,
		37.386341, 31.937881, 28.408588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.178383, 31.712652, 28.221813>,  <37.557983, 31.391781, 28.005709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.178383, 31.712652, 28.221813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.906464, 31.799026, 28.502169>,  <37.743313, 31.850851, 28.670382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.906464, 31.799026, 28.502169>,  <38.178383, 31.712652, 28.221813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.906464, 31.799026, 28.502169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664196, -0.223976, 0.713217,
		0.310992, 0.950371, 0.008835,
		-0.679800, 0.215936, 0.700888,
		37.702522, 31.863808, 28.712435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.409634, 32.372826, 28.503920>,  <38.178383, 31.712652, 28.221813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.409634, 32.372826, 28.503920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.200127, 32.116211, 28.728098>,  <38.074421, 31.962242, 28.862604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.200127, 32.116211, 28.728098>,  <38.409634, 32.372826, 28.503920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.200127, 32.116211, 28.728098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672856, 0.091915, 0.734041,
		-0.522426, 0.761568, 0.383517,
		-0.523772, -0.641534, 0.560444,
		38.042995, 31.923750, 28.896231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.812038, 31.900206, 29.000572>,  <38.409634, 32.372826, 28.503920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.812038, 31.900206, 29.000572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.131584, 31.848324, 28.765631>,  <39.323311, 31.817194, 28.624666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.131584, 31.848324, 28.765631>,  <38.812038, 31.900206, 29.000572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.131584, 31.848324, 28.765631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137602, 0.911173, -0.388367,
		0.585556, 0.391076, 0.710059,
		0.798868, -0.129705, -0.587356,
		39.371246, 31.809412, 28.589424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.243134, 32.563545, 29.035395>,  <38.812038, 31.900206, 29.000572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.243134, 32.563545, 29.035395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.342312, 32.389374, 28.689232>,  <39.401821, 32.284870, 28.481535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.342312, 32.389374, 28.689232>,  <39.243134, 32.563545, 29.035395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.342312, 32.389374, 28.689232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164900, 0.861294, -0.480604,
		0.954636, 0.261870, 0.141755,
		0.247948, -0.435427, -0.865405,
		39.416695, 32.258747, 28.429611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.633183, 33.057640, 28.720650>,  <39.243134, 32.563545, 29.035395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.633183, 33.057640, 28.720650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.494518, 32.803734, 28.444418>,  <39.411320, 32.651390, 28.278679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.494518, 32.803734, 28.444418>,  <39.633183, 33.057640, 28.720650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.494518, 32.803734, 28.444418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058605, 0.749454, -0.659457,
		0.936157, -0.188139, -0.297009,
		-0.346664, -0.634761, -0.690581,
		39.390518, 32.613304, 28.237244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.939083, 33.317261, 28.174988>,  <39.633183, 33.057640, 28.720650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.939083, 33.317261, 28.174988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.611042, 33.152752, 28.015848>,  <39.414215, 33.054047, 27.920364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.611042, 33.152752, 28.015848>,  <39.939083, 33.317261, 28.174988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.611042, 33.152752, 28.015848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089433, 0.778862, -0.620786,
		0.565178, -0.473530, -0.675531,
		-0.820107, -0.411270, -0.397847,
		39.365009, 33.029369, 27.896494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.011765, 33.267078, 27.458338>,  <39.939083, 33.317261, 28.174988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.011765, 33.267078, 27.458338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.616249, 33.229095, 27.504435>,  <39.378941, 33.206306, 27.532093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.616249, 33.229095, 27.504435>,  <40.011765, 33.267078, 27.458338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.616249, 33.229095, 27.504435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148971, 0.574190, -0.805055,
		0.010278, -0.813196, -0.581899,
		-0.988788, -0.094960, 0.115241,
		39.319614, 33.200607, 27.539007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.759430, 33.165215, 26.807934>,  <40.011765, 33.267078, 27.458338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.759430, 33.165215, 26.807934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.427517, 33.259373, 27.010342>,  <39.228371, 33.315868, 27.131786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.427517, 33.259373, 27.010342>,  <39.759430, 33.165215, 26.807934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.427517, 33.259373, 27.010342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313525, 0.553480, -0.771597,
		-0.461698, -0.798906, -0.385466,
		-0.829781, 0.235392, 0.506017,
		39.178581, 33.329990, 27.162148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.292191, 32.971958, 26.326399>,  <39.759430, 33.165215, 26.807934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.292191, 32.971958, 26.326399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.130039, 33.220467, 26.594633>,  <39.032749, 33.369572, 26.755573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.130039, 33.220467, 26.594633>,  <39.292191, 32.971958, 26.326399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.130039, 33.220467, 26.594633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404680, 0.535810, -0.741041,
		-0.819697, -0.571775, 0.034212,
		-0.405378, 0.621274, 0.670588,
		39.008427, 33.406849, 26.795809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.823040, 33.295998, 25.964239>,  <39.292191, 32.971958, 26.326399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.823040, 33.295998, 25.964239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.786888, 33.533680, 26.283928>,  <38.765198, 33.676289, 26.475740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.786888, 33.533680, 26.283928>,  <38.823040, 33.295998, 25.964239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.786888, 33.533680, 26.283928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221749, 0.770354, -0.597814,
		-0.970907, -0.231255, 0.062142,
		-0.090376, 0.594202, 0.799222,
		38.759777, 33.711941, 26.523695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.126060, 33.652428, 25.958067>,  <38.823040, 33.295998, 25.964239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.126060, 33.652428, 25.958067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.376991, 33.894405, 26.154228>,  <38.527550, 34.039593, 26.271925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.376991, 33.894405, 26.154228>,  <38.126060, 33.652428, 25.958067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.376991, 33.894405, 26.154228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289365, 0.765716, -0.574410,
		-0.722997, 0.218440, 0.655408,
		0.627330, 0.604949, 0.490402,
		38.565189, 34.075890, 26.301348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.799908, 34.242313, 26.007059>,  <38.126060, 33.652428, 25.958067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.799908, 34.242313, 26.007059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.166847, 34.357780, 26.116714>,  <38.387009, 34.427059, 26.182507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.166847, 34.357780, 26.116714>,  <37.799908, 34.242313, 26.007059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.166847, 34.357780, 26.116714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106083, 0.840983, -0.530560,
		-0.383698, 0.457625, 0.802094,
		0.917345, 0.288664, 0.274137,
		38.442051, 34.444378, 26.198956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.685139, 34.901241, 26.174038>,  <37.799908, 34.242313, 26.007059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.685139, 34.901241, 26.174038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.078281, 34.882359, 26.102758>,  <38.314167, 34.871029, 26.059990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.078281, 34.882359, 26.102758>,  <37.685139, 34.901241, 26.174038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.078281, 34.882359, 26.102758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048501, 0.866375, -0.497034,
		0.177853, 0.497158, 0.849236,
		0.982861, -0.047210, -0.178200,
		38.373138, 34.868195, 26.049299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.987709, 35.627579, 26.287296>,  <37.685139, 34.901241, 26.174038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.987709, 35.627579, 26.287296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.248871, 35.439400, 26.049847>,  <38.405567, 35.326492, 25.907377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.248871, 35.439400, 26.049847>,  <37.987709, 35.627579, 26.287296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.248871, 35.439400, 26.049847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137002, 0.697451, -0.703414,
		0.744943, 0.540593, 0.390920,
		0.652909, -0.470447, -0.593624,
		38.444744, 35.298267, 25.871759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.356674, 36.137272, 26.051615>,  <37.987709, 35.627579, 26.287296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.356674, 36.137272, 26.051615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.403408, 35.842892, 25.784864>,  <38.431450, 35.666264, 25.624815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.403408, 35.842892, 25.784864>,  <38.356674, 36.137272, 26.051615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.403408, 35.842892, 25.784864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276571, 0.620800, -0.733563,
		0.953865, 0.270145, -0.131011,
		0.116836, -0.735954, -0.666874,
		38.438457, 35.622105, 25.584803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.776112, 36.430458, 25.471842>,  <38.356674, 36.137272, 26.051615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.776112, 36.430458, 25.471842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.628193, 36.098736, 25.304272>,  <38.539444, 35.899700, 25.203730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.628193, 36.098736, 25.304272>,  <38.776112, 36.430458, 25.471842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.628193, 36.098736, 25.304272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330291, 0.538771, -0.775006,
		0.868425, -0.148223, -0.473147,
		-0.369792, -0.829310, -0.418925,
		38.517254, 35.849941, 25.178595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.891323, 36.481636, 24.777519>,  <38.776112, 36.430458, 25.471842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.891323, 36.481636, 24.777519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.631489, 36.184483, 24.712816>,  <38.475590, 36.006191, 24.673994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.631489, 36.184483, 24.712816>,  <38.891323, 36.481636, 24.777519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.631489, 36.184483, 24.712816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496616, 0.575687, -0.649583,
		0.575687, -0.341627, -0.742884,
		0.649583, 0.742884, 0.161758,
		38.436615, 35.961617, 24.664289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.953159, 36.425125, 24.052633>,  <38.891323, 36.481636, 24.777519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.953159, 36.425125, 24.052633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.608582, 36.325844, 24.229860>,  <38.401836, 36.266273, 24.336197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.608582, 36.325844, 24.229860>,  <38.953159, 36.425125, 24.052633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.608582, 36.325844, 24.229860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504756, 0.322290, -0.800844,
		0.055974, -0.913524, -0.402916,
		-0.861446, -0.248201, 0.443066,
		38.350147, 36.251385, 24.362780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.644783, 36.178364, 23.542561>,  <38.953159, 36.425125, 24.052633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.644783, 36.178364, 23.542561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.363655, 36.260178, 23.815094>,  <38.194981, 36.309265, 23.978615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.363655, 36.260178, 23.815094>,  <38.644783, 36.178364, 23.542561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.363655, 36.260178, 23.815094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602343, 0.338447, -0.722936,
		-0.378461, -0.918487, -0.114666,
		-0.702816, 0.204535, 0.681334,
		38.152809, 36.321537, 24.019493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.049805, 35.819504, 23.348663>,  <38.644783, 36.178364, 23.542561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.049805, 35.819504, 23.348663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.882866, 36.112911, 23.563240>,  <37.782703, 36.288956, 23.691986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.882866, 36.112911, 23.563240>,  <38.049805, 35.819504, 23.348663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.882866, 36.112911, 23.563240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565397, 0.252552, -0.785203,
		-0.711443, -0.631002, 0.309331,
		-0.417342, 0.733522, 0.536443,
		37.757664, 36.332970, 23.724173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.311676, 35.881157, 23.127426>,  <38.049805, 35.819504, 23.348663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.311676, 35.881157, 23.127426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.365150, 36.219051, 23.334711>,  <37.397236, 36.421787, 23.459082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.365150, 36.219051, 23.334711>,  <37.311676, 35.881157, 23.127426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.365150, 36.219051, 23.334711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558770, 0.496115, -0.664565,
		-0.818476, -0.200716, 0.538340,
		0.133690, 0.844739, 0.518212,
		37.405258, 36.472473, 23.490175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.631931, 36.199139, 23.094870>,  <37.311676, 35.881157, 23.127426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.631931, 36.199139, 23.094870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.880863, 36.501305, 23.176910>,  <37.030220, 36.682602, 23.226135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.880863, 36.501305, 23.176910>,  <36.631931, 36.199139, 23.094870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.880863, 36.501305, 23.176910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352676, 0.504517, -0.788088,
		-0.698807, 0.418113, 0.580389,
		0.622325, 0.755410, 0.205102,
		37.067562, 36.727928, 23.238441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.203899, 36.765495, 23.293341>,  <36.631931, 36.199139, 23.094870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.203899, 36.765495, 23.293341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.557240, 36.913185, 23.177847>,  <36.769245, 37.001797, 23.108551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.557240, 36.913185, 23.177847>,  <36.203899, 36.765495, 23.293341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.557240, 36.913185, 23.177847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463913, 0.600800, -0.651018,
		-0.066899, 0.709024, 0.702004,
		0.883351, 0.369221, -0.288732,
		36.822247, 37.023952, 23.091227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.154976, 37.432545, 23.314121>,  <36.203899, 36.765495, 23.293341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.154976, 37.432545, 23.314121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.445827, 37.359066, 23.049536>,  <36.620338, 37.314980, 22.890785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.445827, 37.359066, 23.049536>,  <36.154976, 37.432545, 23.314121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.445827, 37.359066, 23.049536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455946, 0.591096, -0.665371,
		0.513216, 0.785405, 0.346048,
		0.727133, -0.183700, -0.661462,
		36.663967, 37.303955, 22.851097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.365406, 38.015343, 23.026003>,  <36.154976, 37.432545, 23.314121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.365406, 38.015343, 23.026003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.496792, 37.753880, 22.753286>,  <36.575623, 37.597000, 22.589657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.496792, 37.753880, 22.753286>,  <36.365406, 38.015343, 23.026003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.496792, 37.753880, 22.753286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249155, 0.636308, -0.730092,
		0.911060, 0.409682, 0.046143,
		0.328467, -0.653661, -0.681789,
		36.595333, 37.557781, 22.548750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.845631, 38.296154, 22.485779>,  <36.365406, 38.015343, 23.026003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.845631, 38.296154, 22.485779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.682850, 37.967144, 22.326866>,  <36.585182, 37.769737, 22.231518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.682850, 37.967144, 22.326866>,  <36.845631, 38.296154, 22.485779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.682850, 37.967144, 22.326866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260039, 0.521251, -0.812820,
		0.875653, -0.227470, -0.426015,
		-0.406953, -0.822530, -0.397284,
		36.560764, 37.720387, 22.207682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.850918, 38.506130, 21.822136>,  <36.845631, 38.296154, 22.485779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.850918, 38.506130, 21.822136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.630085, 38.172974, 21.806643>,  <36.497585, 37.973080, 21.797346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.630085, 38.172974, 21.806643>,  <36.850918, 38.506130, 21.822136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.630085, 38.172974, 21.806643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470091, 0.349294, -0.810560,
		0.688635, -0.429289, -0.584373,
		-0.552083, -0.832889, -0.038731,
		36.464458, 37.923107, 21.795023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.979088, 38.171478, 21.228865>,  <36.850918, 38.506130, 21.822136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.979088, 38.171478, 21.228865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.623219, 38.005383, 21.304815>,  <36.409698, 37.905724, 21.350386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.623219, 38.005383, 21.304815>,  <36.979088, 38.171478, 21.228865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.623219, 38.005383, 21.304815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292960, 0.200167, -0.934937,
		0.350221, -0.887415, -0.299734,
		-0.889674, -0.415245, 0.189874,
		36.356316, 37.880810, 21.361778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.833607, 37.709362, 20.650152>,  <36.979088, 38.171478, 21.228865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.833607, 37.709362, 20.650152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.479267, 37.802559, 20.810644>,  <36.266663, 37.858475, 20.906940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.479267, 37.802559, 20.810644>,  <36.833607, 37.709362, 20.650152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.479267, 37.802559, 20.810644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385938, 0.109972, -0.915946,
		-0.257529, -0.966241, -0.007499,
		-0.885850, 0.232988, 0.401231,
		36.213512, 37.872456, 20.931013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.367115, 37.284592, 20.311375>,  <36.833607, 37.709362, 20.650152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.367115, 37.284592, 20.311375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.148796, 37.578838, 20.471861>,  <36.017803, 37.755386, 20.568153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.148796, 37.578838, 20.471861>,  <36.367115, 37.284592, 20.311375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.148796, 37.578838, 20.471861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469777, 0.127850, -0.873478,
		-0.693838, -0.665227, 0.275795,
		-0.545801, 0.735614, 0.401215,
		35.985054, 37.799522, 20.592226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.628139, 37.246990, 19.934822>,  <36.367115, 37.284592, 20.311375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.628139, 37.246990, 19.934822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.673286, 37.616226, 20.081881>,  <35.700375, 37.837769, 20.170115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.673286, 37.616226, 20.081881>,  <35.628139, 37.246990, 19.934822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.673286, 37.616226, 20.081881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333655, 0.383734, -0.861059,
		-0.935914, -0.025482, 0.351305,
		0.112866, 0.923092, 0.367644,
		35.707146, 37.893154, 20.192173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.993439, 37.616207, 19.796192>,  <35.628139, 37.246990, 19.934822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.993439, 37.616207, 19.796192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.272381, 37.901230, 19.827068>,  <35.439747, 38.072243, 19.845594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.272381, 37.901230, 19.827068>,  <34.993439, 37.616207, 19.796192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.272381, 37.901230, 19.827068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321907, 0.407607, -0.854537,
		-0.640370, 0.571066, 0.513623,
		0.697354, 0.712559, 0.077189,
		35.481586, 38.114998, 19.850225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.698997, 38.206192, 19.471731>,  <34.993439, 37.616207, 19.796192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.698997, 38.206192, 19.471731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.080688, 38.321251, 19.504499>,  <35.309704, 38.390285, 19.524160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.080688, 38.321251, 19.504499>,  <34.698997, 38.206192, 19.471731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.080688, 38.321251, 19.504499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018392, 0.329822, -0.943864,
		-0.298522, 0.899152, 0.320015,
		0.954226, 0.287650, 0.081922,
		35.366955, 38.407547, 19.529076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.621990, 38.892418, 19.377083>,  <34.698997, 38.206192, 19.471731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.621990, 38.892418, 19.377083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.000988, 38.775063, 19.326214>,  <35.228386, 38.704647, 19.295692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.000988, 38.775063, 19.326214>,  <34.621990, 38.892418, 19.377083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.000988, 38.775063, 19.326214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022830, 0.334619, -0.942077,
		0.318952, 0.895517, 0.310352,
		0.947496, -0.293392, -0.127172,
		35.285236, 38.687046, 19.288063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.057289, 39.516888, 19.126343>,  <34.621990, 38.892418, 19.377083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.057289, 39.516888, 19.126343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.242542, 39.173054, 19.039970>,  <35.353695, 38.966755, 18.988148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.242542, 39.173054, 19.039970>,  <35.057289, 39.516888, 19.126343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.242542, 39.173054, 19.039970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110361, 0.185808, -0.976369,
		0.879393, 0.476015, -0.008811,
		0.463129, -0.859584, -0.215931,
		35.381481, 38.915180, 18.975191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.382465, 39.639214, 18.429945>,  <35.057289, 39.516888, 19.126343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.382465, 39.639214, 18.429945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.377041, 39.241199, 18.469400>,  <35.373787, 39.002392, 18.493074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.377041, 39.241199, 18.469400>,  <35.382465, 39.639214, 18.429945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.377041, 39.241199, 18.469400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247734, -0.092230, -0.964428,
		0.968733, -0.037516, -0.245252,
		-0.013561, -0.995031, 0.098640,
		35.372971, 38.942692, 18.498993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.712303, 39.458256, 17.813440>,  <35.382465, 39.639214, 18.429945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.712303, 39.458256, 17.813440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.545143, 39.116982, 17.938295>,  <35.444847, 38.912216, 18.013208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.545143, 39.116982, 17.938295>,  <35.712303, 39.458256, 17.813440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.545143, 39.116982, 17.938295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358536, -0.160809, -0.919561,
		0.834755, -0.496193, -0.238698,
		-0.417895, -0.853189, 0.312140,
		35.419773, 38.861023, 18.031937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.001736, 38.936905, 17.453751>,  <35.712303, 39.458256, 17.813440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.001736, 38.936905, 17.453751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.634140, 38.801060, 17.533875>,  <35.413582, 38.719551, 17.581949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.634140, 38.801060, 17.533875>,  <36.001736, 38.936905, 17.453751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.634140, 38.801060, 17.533875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147496, -0.175037, -0.973451,
		0.365660, -0.924134, 0.110765,
		-0.918987, -0.339615, 0.200311,
		35.358444, 38.699177, 17.593967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.945095, 38.418034, 16.935392>,  <36.001736, 38.936905, 17.453751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.945095, 38.418034, 16.935392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.601685, 38.548130, 17.093962>,  <35.395638, 38.626190, 17.189102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.601685, 38.548130, 17.093962>,  <35.945095, 38.418034, 16.935392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.601685, 38.548130, 17.093962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433161, -0.046271, -0.900128,
		-0.274421, -0.944497, 0.180608,
		-0.858525, 0.325246, 0.396421,
		35.344128, 38.645702, 17.212889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.381969, 37.953392, 16.717762>,  <35.945095, 38.418034, 16.935392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.381969, 37.953392, 16.717762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.247883, 38.319695, 16.806318>,  <35.167431, 38.539478, 16.859451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.247883, 38.319695, 16.806318>,  <35.381969, 37.953392, 16.717762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.247883, 38.319695, 16.806318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501315, 0.025582, -0.864887,
		-0.797691, -0.400913, 0.450508,
		-0.335219, 0.915759, 0.221391,
		35.147316, 38.594421, 16.872736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.232513, 37.876125, 15.943468>,  <35.381969, 37.953392, 16.717762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.232513, 37.876125, 15.943468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.246765, 37.516972, 15.767953>,  <35.255318, 37.301479, 15.662643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.246765, 37.516972, 15.767953>,  <35.232513, 37.876125, 15.943468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.246765, 37.516972, 15.767953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115408, -0.439826, 0.890637,
		-0.992679, 0.018908, -0.119294,
		0.035629, -0.897884, -0.438788,
		35.257454, 37.247608, 15.636316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.714355, 37.466805, 16.239311>,  <35.232513, 37.876125, 15.943468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.714355, 37.466805, 16.239311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.977306, 37.204018, 16.091665>,  <35.135078, 37.046345, 16.003078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.977306, 37.204018, 16.091665>,  <34.714355, 37.466805, 16.239311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.977306, 37.204018, 16.091665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044348, -0.522705, 0.851360,
		-0.752255, -0.543295, -0.372749,
		0.657378, -0.656971, -0.369113,
		35.174519, 37.006927, 15.980931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.321911, 36.923679, 16.393490>,  <34.714355, 37.466805, 16.239311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.321911, 36.923679, 16.393490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.704720, 36.832188, 16.322159>,  <34.934402, 36.777294, 16.279360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.704720, 36.832188, 16.322159>,  <34.321911, 36.923679, 16.393490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.704720, 36.832188, 16.322159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030808, -0.691552, 0.721669,
		-0.288389, -0.685156, -0.668875,
		0.957018, -0.228728, -0.178328,
		34.991825, 36.763569, 16.268660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.396420, 36.240738, 16.566692>,  <34.321911, 36.923679, 16.393490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.396420, 36.240738, 16.566692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.777794, 36.360664, 16.579830>,  <35.006618, 36.432621, 16.587713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.777794, 36.360664, 16.579830>,  <34.396420, 36.240738, 16.566692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.777794, 36.360664, 16.579830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183467, -0.662959, 0.725827,
		0.239389, -0.686001, -0.687092,
		0.953432, 0.299813, 0.032847,
		35.063824, 36.450607, 16.589684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.827576, 35.684887, 16.524054>,  <34.396420, 36.240738, 16.566692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.827576, 35.684887, 16.524054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.052135, 35.962090, 16.704969>,  <35.186871, 36.128410, 16.813519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.052135, 35.962090, 16.704969>,  <34.827576, 35.684887, 16.524054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.052135, 35.962090, 16.704969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135517, -0.616157, 0.775877,
		0.816373, -0.374285, -0.439826,
		0.561401, 0.693009, 0.452292,
		35.220554, 36.169991, 16.840656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.296700, 35.340664, 16.891077>,  <34.827576, 35.684887, 16.524054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.296700, 35.340664, 16.891077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.345860, 35.704945, 17.048824>,  <35.375355, 35.923512, 17.143473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.345860, 35.704945, 17.048824>,  <35.296700, 35.340664, 16.891077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.345860, 35.704945, 17.048824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467069, -0.403696, 0.786687,
		0.875639, 0.087515, -0.474972,
		0.122897, 0.910698, 0.394367,
		35.382729, 35.978153, 17.167135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.027409, 35.448364, 17.063540>,  <35.296700, 35.340664, 16.891077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.027409, 35.448364, 17.063540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.775326, 35.668488, 17.282631>,  <35.624077, 35.800560, 17.414085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.775326, 35.668488, 17.282631>,  <36.027409, 35.448364, 17.063540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.775326, 35.668488, 17.282631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405037, -0.368841, 0.836601,
		0.662412, 0.749079, 0.009550,
		-0.630203, 0.550306, 0.547730,
		35.586266, 35.833580, 17.446949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.423294, 35.719128, 17.638859>,  <36.027409, 35.448364, 17.063540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.423294, 35.719128, 17.638859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.063419, 35.804916, 17.790943>,  <35.847492, 35.856388, 17.882195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.063419, 35.804916, 17.790943>,  <36.423294, 35.719128, 17.638859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.063419, 35.804916, 17.790943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276528, -0.393933, 0.876555,
		0.337772, 0.893767, 0.295111,
		-0.899690, 0.214469, 0.380211,
		35.793510, 35.869259, 17.905006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.574570, 36.096512, 18.273211>,  <36.423294, 35.719128, 17.638859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.574570, 36.096512, 18.273211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.205112, 35.947235, 18.308102>,  <35.983437, 35.857670, 18.329037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.205112, 35.947235, 18.308102>,  <36.574570, 36.096512, 18.273211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.205112, 35.947235, 18.308102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238777, -0.382319, 0.892646,
		-0.299781, 0.845315, 0.442237,
		-0.923643, -0.373195, 0.087230,
		35.928020, 35.835278, 18.334270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.291294, 36.380157, 18.969238>,  <36.574570, 36.096512, 18.273211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.291294, 36.380157, 18.969238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.071953, 36.073654, 18.835283>,  <35.940350, 35.889751, 18.754910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.071953, 36.073654, 18.835283>,  <36.291294, 36.380157, 18.969238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.071953, 36.073654, 18.835283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099311, -0.457304, 0.883748,
		-0.830329, 0.451348, 0.326862,
		-0.548353, -0.766263, -0.334889,
		35.907448, 35.843777, 18.734818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.934345, 36.228271, 19.455862>,  <36.291294, 36.380157, 18.969238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.934345, 36.228271, 19.455862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.893417, 35.894318, 19.239529>,  <35.868858, 35.693947, 19.109728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.893417, 35.894318, 19.239529>,  <35.934345, 36.228271, 19.455862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.893417, 35.894318, 19.239529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062976, -0.548035, 0.834082,
		-0.992756, 0.051287, 0.108654,
		-0.102324, -0.834882, -0.540835,
		35.862720, 35.643852, 19.077278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.406574, 35.845844, 19.743711>,  <35.934345, 36.228271, 19.455862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.406574, 35.845844, 19.743711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.651871, 35.607494, 19.536297>,  <35.799049, 35.464485, 19.411848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.651871, 35.607494, 19.536297>,  <35.406574, 35.845844, 19.743711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.651871, 35.607494, 19.536297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085179, -0.602744, 0.793375,
		-0.785294, -0.530694, -0.318868,
		0.613235, -0.595872, -0.518535,
		35.835842, 35.428734, 19.380737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.244835, 35.172737, 19.972305>,  <35.406574, 35.845844, 19.743711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.244835, 35.172737, 19.972305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.608780, 35.137638, 19.810101>,  <35.827148, 35.116577, 19.712778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.608780, 35.137638, 19.810101>,  <35.244835, 35.172737, 19.972305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.608780, 35.137638, 19.810101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272498, -0.610635, 0.743552,
		-0.312868, -0.787035, -0.531685,
		0.909867, -0.087751, -0.405514,
		35.881741, 35.111313, 19.688446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.491043, 34.404579, 20.059460>,  <35.244835, 35.172737, 19.972305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.491043, 34.404579, 20.059460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.834389, 34.594284, 19.981182>,  <36.040394, 34.708107, 19.934216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.834389, 34.594284, 19.981182>,  <35.491043, 34.404579, 20.059460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.834389, 34.594284, 19.981182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423862, -0.440623, 0.791323,
		0.289065, -0.762188, -0.579233,
		0.858360, 0.474258, -0.195694,
		36.091896, 34.736561, 19.922474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.033497, 33.824055, 20.130571>,  <35.491043, 34.404579, 20.059460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.033497, 33.824055, 20.130571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.215664, 34.179493, 20.152441>,  <36.324963, 34.392757, 20.165564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.215664, 34.179493, 20.152441>,  <36.033497, 33.824055, 20.130571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.215664, 34.179493, 20.152441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459607, -0.287261, 0.840382,
		0.762469, -0.357594, -0.539229,
		0.455415, 0.888599, 0.054675,
		36.352287, 34.446072, 20.168844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.739372, 33.641907, 20.225985>,  <36.033497, 33.824055, 20.130571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.739372, 33.641907, 20.225985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.676373, 34.002968, 20.386190>,  <36.638573, 34.219604, 20.482313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.676373, 34.002968, 20.386190>,  <36.739372, 33.641907, 20.225985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.676373, 34.002968, 20.386190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598044, -0.235557, 0.766065,
		0.785835, 0.360180, -0.502726,
		-0.157501, 0.902653, 0.400512,
		36.629124, 34.273766, 20.506344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.355579, 33.816906, 20.397156>,  <36.739372, 33.641907, 20.225985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.355579, 33.816906, 20.397156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.139301, 34.071411, 20.617273>,  <37.009537, 34.224113, 20.749344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.139301, 34.071411, 20.617273>,  <37.355579, 33.816906, 20.397156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.139301, 34.071411, 20.617273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597717, -0.169731, 0.783534,
		0.591935, 0.752570, -0.288533,
		-0.540692, 0.636262, 0.550294,
		36.977093, 34.262291, 20.782362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.808998, 34.297268, 20.700432>,  <37.355579, 33.816906, 20.397156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.808998, 34.297268, 20.700432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.483177, 34.272171, 20.931107>,  <37.287685, 34.257114, 21.069511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.483177, 34.272171, 20.931107>,  <37.808998, 34.297268, 20.700432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.483177, 34.272171, 20.931107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580040, -0.075133, 0.811116,
		-0.007562, 0.995198, 0.097591,
		-0.814553, -0.062740, 0.576686,
		37.238811, 34.253349, 21.104113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.819012, 34.919781, 21.204147>,  <37.808998, 34.297268, 20.700432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.819012, 34.919781, 21.204147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.583729, 34.631844, 21.351574>,  <37.442558, 34.459084, 21.440031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.583729, 34.631844, 21.351574>,  <37.819012, 34.919781, 21.204147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.583729, 34.631844, 21.351574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493414, 0.041650, 0.868797,
		-0.640745, 0.692890, 0.330680,
		-0.588208, -0.719839, 0.368568,
		37.407265, 34.415894, 21.462145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.977062, 35.024208, 21.872812>,  <37.819012, 34.919781, 21.204147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.977062, 35.024208, 21.872812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.789143, 34.671356, 21.886303>,  <37.676392, 34.459644, 21.894398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.789143, 34.671356, 21.886303>,  <37.977062, 35.024208, 21.872812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.789143, 34.671356, 21.886303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365709, -0.159713, 0.916923,
		-0.803457, 0.443105, 0.397636,
		-0.469801, -0.882128, 0.033725,
		37.648201, 34.406719, 21.896420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.803783, 34.896515, 22.535156>,  <37.977062, 35.024208, 21.872812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.803783, 34.896515, 22.535156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.740337, 34.515198, 22.432341>,  <37.702271, 34.286407, 22.370651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.740337, 34.515198, 22.432341>,  <37.803783, 34.896515, 22.535156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.740337, 34.515198, 22.432341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337027, -0.296972, 0.893432,
		-0.928038, 0.055083, 0.368390,
		-0.158615, -0.953296, -0.257037,
		37.692753, 34.229210, 22.355230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.261166, 34.517906, 23.101274>,  <37.803783, 34.896515, 22.535156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.261166, 34.517906, 23.101274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.523750, 34.293465, 22.899593>,  <37.681301, 34.158798, 22.778585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.523750, 34.293465, 22.899593>,  <37.261166, 34.517906, 23.101274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.523750, 34.293465, 22.899593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364468, -0.349283, 0.863229,
		-0.660471, -0.750442, -0.024786,
		0.656460, -0.561104, -0.504203,
		37.720688, 34.125134, 22.748333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.358273, 34.047737, 23.587009>,  <37.261166, 34.517906, 23.101274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.358273, 34.047737, 23.587009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.642254, 33.953194, 23.321648>,  <37.812641, 33.896469, 23.162432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.642254, 33.953194, 23.321648>,  <37.358273, 34.047737, 23.587009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.642254, 33.953194, 23.321648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613594, -0.254733, 0.747404,
		-0.345648, -0.937680, -0.035818,
		0.709951, -0.236361, -0.663403,
		37.855240, 33.882286, 23.122627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.483902, 33.385521, 23.646687>,  <37.358273, 34.047737, 23.587009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.483902, 33.385521, 23.646687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.816502, 33.562618, 23.512474>,  <38.016060, 33.668877, 23.431946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.816502, 33.562618, 23.512474>,  <37.483902, 33.385521, 23.646687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.816502, 33.562618, 23.512474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480691, -0.270669, 0.834071,
		0.278465, -0.854817, -0.437887,
		0.831500, 0.442748, -0.335531,
		38.065952, 33.695442, 23.411814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.937218, 32.899342, 23.713293>,  <37.483902, 33.385521, 23.646687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.937218, 32.899342, 23.713293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.200333, 33.197262, 23.668404>,  <38.358200, 33.376015, 23.641470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.200333, 33.197262, 23.668404>,  <37.937218, 32.899342, 23.713293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.200333, 33.197262, 23.668404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646940, -0.482369, 0.590583,
		0.385733, -0.461078, -0.799135,
		0.657783, 0.744800, -0.112224,
		38.397667, 33.420700, 23.634737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.466591, 32.514786, 23.832678>,  <37.937218, 32.899342, 23.713293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.466591, 32.514786, 23.832678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.620697, 32.883900, 23.830126>,  <38.713161, 33.105366, 23.828594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.620697, 32.883900, 23.830126>,  <38.466591, 32.514786, 23.832678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.620697, 32.883900, 23.830126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825311, -0.341464, 0.449739,
		0.412834, -0.178534, -0.893137,
		0.385268, 0.922783, -0.006378,
		38.736279, 33.160736, 23.828213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.083717, 32.592697, 23.451607>,  <38.466591, 32.514786, 23.832678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.083717, 32.592697, 23.451607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.111446, 32.884300, 23.724001>,  <39.128086, 33.059261, 23.887438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.111446, 32.884300, 23.724001>,  <39.083717, 32.592697, 23.451607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.111446, 32.884300, 23.724001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807718, -0.441646, 0.390564,
		0.585479, 0.522969, -0.619449,
		0.069325, 0.729007, 0.680986,
		39.132244, 33.103001, 23.928297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.825012, 32.812447, 23.535301>,  <39.083717, 32.592697, 23.451607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.825012, 32.812447, 23.535301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.625191, 32.912708, 23.866991>,  <39.505299, 32.972866, 24.066006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.625191, 32.912708, 23.866991>,  <39.825012, 32.812447, 23.535301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.625191, 32.912708, 23.866991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739013, -0.376142, 0.558907,
		0.452002, 0.892013, 0.002663,
		-0.499554, 0.250659, 0.829226,
		39.475323, 32.987907, 24.115759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.319103, 33.205669, 24.018805>,  <39.825012, 32.812447, 23.535301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.319103, 33.205669, 24.018805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.028950, 33.044483, 24.242033>,  <39.854858, 32.947773, 24.375971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.028950, 33.044483, 24.242033>,  <40.319103, 33.205669, 24.018805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.028950, 33.044483, 24.242033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681291, -0.536091, 0.498447,
		0.098321, 0.741772, 0.663405,
		-0.725380, -0.402964, 0.558072,
		39.811337, 32.923595, 24.409454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.670479, 33.113239, 24.637573>,  <40.319103, 33.205669, 24.018805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.670479, 33.113239, 24.637573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.342995, 32.893429, 24.704191>,  <40.146503, 32.761543, 24.744162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.342995, 32.893429, 24.704191>,  <40.670479, 33.113239, 24.637573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.342995, 32.893429, 24.704191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538593, -0.634356, 0.554535,
		-0.199081, 0.543704, 0.815323,
		-0.818709, -0.549525, 0.166547,
		40.097382, 32.728573, 24.754156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.628109, 33.038105, 25.312561>,  <40.670479, 33.113239, 24.637573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.628109, 33.038105, 25.312561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.411469, 32.742489, 25.152319>,  <40.281483, 32.565121, 25.056173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.411469, 32.742489, 25.152319>,  <40.628109, 33.038105, 25.312561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.411469, 32.742489, 25.152319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578996, -0.673447, 0.459601,
		-0.609449, 0.016974, 0.792644,
		-0.541605, -0.739041, -0.400603,
		40.248985, 32.520775, 25.032139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.661388, 32.573105, 25.870998>,  <40.628109, 33.038105, 25.312561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.661388, 32.573105, 25.870998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.542492, 32.385868, 25.538124>,  <40.471153, 32.273525, 25.338400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.542492, 32.385868, 25.538124>,  <40.661388, 32.573105, 25.870998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.542492, 32.385868, 25.538124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529571, -0.806058, 0.264245,
		-0.794482, -0.362158, 0.487483,
		-0.297241, -0.468094, -0.832187,
		40.453320, 32.245441, 25.288467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.507008, 32.006451, 26.102907>,  <40.661388, 32.573105, 25.870998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.507008, 32.006451, 26.102907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.519676, 31.931890, 25.710123>,  <40.527279, 31.887154, 25.474453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.519676, 31.931890, 25.710123>,  <40.507008, 32.006451, 26.102907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.519676, 31.931890, 25.710123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405187, -0.895710, 0.183102,
		-0.913685, -0.403678, 0.047158,
		0.031675, -0.186405, -0.981962,
		40.529179, 31.875969, 25.415535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.204174, 31.404215, 26.031227>,  <40.507008, 32.006451, 26.102907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.204174, 31.404215, 26.031227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.444206, 31.457445, 25.715710>,  <40.588226, 31.489384, 25.526400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.444206, 31.457445, 25.715710>,  <40.204174, 31.404215, 26.031227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.444206, 31.457445, 25.715710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367829, -0.921541, 0.124358,
		-0.710359, -0.364766, -0.601944,
		0.600077, 0.133073, -0.788796,
		40.624229, 31.497368, 25.479071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.152313, 30.710110, 25.710051>,  <40.204174, 31.404215, 26.031227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.152313, 30.710110, 25.710051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.465668, 30.872541, 25.521837>,  <40.653679, 30.970001, 25.408909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.465668, 30.872541, 25.521837>,  <40.152313, 30.710110, 25.710051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.465668, 30.872541, 25.521837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510399, -0.852323, 0.114186,
		-0.354679, -0.329613, -0.874962,
		0.783387, 0.406080, -0.470535,
		40.700684, 30.994366, 25.380676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.401424, 30.272963, 25.213934>,  <40.152313, 30.710110, 25.710051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.401424, 30.272963, 25.213934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.737270, 30.489342, 25.233656>,  <40.938778, 30.619169, 25.245489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.737270, 30.489342, 25.233656>,  <40.401424, 30.272963, 25.213934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.737270, 30.489342, 25.233656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542671, -0.831391, -0.119567,
		-0.023688, 0.127146, -0.991601,
		0.839611, 0.540946, 0.049304,
		40.989155, 30.651625, 25.248447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.857586, 30.049477, 24.654175>,  <40.401424, 30.272963, 25.213934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.857586, 30.049477, 24.654175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.098988, 30.209072, 24.930319>,  <41.243828, 30.304831, 25.096004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.098988, 30.209072, 24.930319>,  <40.857586, 30.049477, 24.654175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.098988, 30.209072, 24.930319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553817, -0.832633, -0.002921,
		0.573650, 0.384095, -0.723461,
		0.603500, 0.398990, 0.690359,
		41.280037, 30.328770, 25.137426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.633587, 29.770227, 24.582914>,  <40.857586, 30.049477, 24.654175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.633587, 29.770227, 24.582914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.655220, 29.919531, 24.953373>,  <41.668201, 30.009113, 25.175648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.655220, 29.919531, 24.953373>,  <41.633587, 29.770227, 24.582914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.655220, 29.919531, 24.953373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675668, -0.696600, 0.241292,
		0.735220, 0.612719, -0.289874,
		0.054082, 0.373261, 0.926149,
		41.671444, 30.031509, 25.231218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.357071, 29.950840, 24.628056>,  <41.633587, 29.770227, 24.582914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.357071, 29.950840, 24.628056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.196411, 29.890800, 24.989418>,  <42.100014, 29.854776, 25.206236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.196411, 29.890800, 24.989418>,  <42.357071, 29.950840, 24.628056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.196411, 29.890800, 24.989418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688889, -0.699507, 0.190056,
		0.603413, 0.698685, 0.384359,
		-0.401652, -0.150098, 0.903408,
		42.075916, 29.845772, 25.260441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.776344, 30.145792, 25.137331>,  <42.357071, 29.950840, 24.628056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.776344, 30.145792, 25.137331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.545391, 29.880260, 25.327471>,  <42.406818, 29.720942, 25.441555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.545391, 29.880260, 25.327471>,  <42.776344, 30.145792, 25.137331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.545391, 29.880260, 25.327471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791806, -0.597282, 0.127660,
		0.199173, 0.450094, 0.870486,
		-0.577385, -0.663829, 0.475349,
		42.372177, 29.681112, 25.470076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.015572, 30.025322, 25.781174>,  <42.776344, 30.145792, 25.137331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.015572, 30.025322, 25.781174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.811401, 29.699314, 25.671480>,  <42.688900, 29.503710, 25.605663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.811401, 29.699314, 25.671480>,  <43.015572, 30.025322, 25.781174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.811401, 29.699314, 25.671480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821489, -0.556429, 0.124669,
		-0.254201, -0.161647, 0.953547,
		-0.510429, -0.815020, -0.274236,
		42.658272, 29.454807, 25.589209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.748997, 29.760445, 25.943102>,  <43.015572, 30.025322, 25.781174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.748997, 29.760445, 25.943102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.501419, 29.703943, 26.252153>,  <43.352871, 29.670042, 26.437584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.501419, 29.703943, 26.252153>,  <43.748997, 29.760445, 25.943102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.501419, 29.703943, 26.252153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391572, 0.797237, 0.459439,
		-0.680864, 0.586908, -0.438137,
		-0.618947, -0.141253, 0.772627,
		43.315735, 29.661568, 26.483942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.275173, 29.240993, 26.325113>,  <43.748997, 29.760445, 25.943102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.275173, 29.240993, 26.325113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.481518, 29.504078, 26.544678>,  <44.605324, 29.661928, 26.676416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.481518, 29.504078, 26.544678>,  <44.275173, 29.240993, 26.325113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.481518, 29.504078, 26.544678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829294, 0.222714, 0.512513,
		0.214833, -0.719598, 0.660323,
		0.515866, 0.657706, 0.548912,
		44.636276, 29.701391, 26.709351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.074814, 29.175808, 26.925238>,  <44.275173, 29.240993, 26.325113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.074814, 29.175808, 26.925238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.177269, 29.562077, 26.907909>,  <44.238743, 29.793837, 26.897512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.177269, 29.562077, 26.907909>,  <44.074814, 29.175808, 26.925238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.177269, 29.562077, 26.907909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818300, 0.240469, 0.522073,
		0.514567, -0.098271, 0.851800,
		0.256136, 0.965670, -0.043323,
		44.254108, 29.851778, 26.894913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.145046, 28.887474, 27.515627>,  <44.074814, 29.175808, 26.925238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.145046, 28.887474, 27.515627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.752346, 28.815559, 27.540447>,  <43.516727, 28.772411, 27.555340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.752346, 28.815559, 27.540447>,  <44.145046, 28.887474, 27.515627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.752346, 28.815559, 27.540447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131515, 0.877398, 0.461385,
		-0.137394, 0.444802, -0.885028,
		-0.981747, -0.179786, 0.062051,
		43.457821, 28.761623, 27.559063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.958508, 29.366133, 27.927845>,  <44.145046, 28.887474, 27.515627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.958508, 29.366133, 27.927845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.595726, 29.225700, 27.834743>,  <43.378056, 29.141441, 27.778883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.595726, 29.225700, 27.834743>,  <43.958508, 29.366133, 27.927845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.595726, 29.225700, 27.834743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420851, 0.778567, 0.465530,
		0.017778, 0.520171, -0.853877,
		-0.906955, -0.351079, -0.232756,
		43.323639, 29.120377, 27.764917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.545033, 29.567644, 28.549248>,  <43.958508, 29.366133, 27.927845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.545033, 29.567644, 28.549248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.452747, 29.795391, 28.233629>,  <43.397377, 29.932039, 28.044258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.452747, 29.795391, 28.233629>,  <43.545033, 29.567644, 28.549248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.452747, 29.795391, 28.233629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.972951, -0.144868, 0.179945,
		-0.011853, 0.809219, 0.587388,
		-0.230709, 0.569367, -0.789047,
		43.383533, 29.966202, 27.996916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.021324, 30.101103, 28.720436>,  <43.545033, 29.567644, 28.549248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.021324, 30.101103, 28.720436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.009953, 30.018322, 28.329260>,  <43.003132, 29.968655, 28.094555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.009953, 30.018322, 28.329260>,  <43.021324, 30.101103, 28.720436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.009953, 30.018322, 28.329260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.996136, -0.075470, 0.044925,
		-0.083103, 0.975436, -0.204006,
		-0.028425, -0.206951, -0.977938,
		43.001427, 29.956236, 28.035879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.596466, 30.602890, 28.307718>,  <43.021324, 30.101103, 28.720436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.596466, 30.602890, 28.307718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.594341, 30.233633, 28.153952>,  <42.593067, 30.012079, 28.061691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.594341, 30.233633, 28.153952>,  <42.596466, 30.602890, 28.307718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.594341, 30.233633, 28.153952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.999707, 0.013984, -0.019769,
		0.023626, 0.384199, -0.922948,
		-0.005311, -0.923144, -0.384417,
		42.592747, 29.956690, 28.038626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.221546, 30.554487, 27.618114>,  <42.596466, 30.602890, 28.307718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.221546, 30.554487, 27.618114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.218925, 30.213039, 27.826456>,  <42.217354, 30.008171, 27.951462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.218925, 30.213039, 27.826456>,  <42.221546, 30.554487, 27.618114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.218925, 30.213039, 27.826456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.999154, 0.026738, 0.031252,
		-0.040604, -0.520208, -0.853074,
		-0.006552, -0.853621, 0.520854,
		42.216961, 29.956953, 27.982712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.734550, 30.011412, 27.328178>,  <42.221546, 30.554487, 27.618114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.734550, 30.011412, 27.328178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.783791, 29.913048, 27.712755>,  <41.813335, 29.854029, 27.943502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.783791, 29.913048, 27.712755>,  <41.734550, 30.011412, 27.328178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.783791, 29.913048, 27.712755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.988785, -0.112934, 0.097720,
		0.084549, -0.962691, -0.257056,
		0.123105, -0.245911, 0.961443,
		41.820721, 29.839273, 28.001188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.393311, 29.304066, 27.450874>,  <41.734550, 30.011412, 27.328178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.393311, 29.304066, 27.450874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.413307, 29.538216, 27.774561>,  <41.425304, 29.678705, 27.968773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.413307, 29.538216, 27.774561>,  <41.393311, 29.304066, 27.450874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.413307, 29.538216, 27.774561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.997126, -0.016925, 0.073849,
		0.056926, -0.810585, 0.582847,
		0.049996, 0.585376, 0.809219,
		41.428307, 29.713829, 28.017326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.911362, 28.936741, 27.916559>,  <41.393311, 29.304066, 27.450874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.911362, 28.936741, 27.916559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.905407, 29.325407, 28.010914>,  <40.901836, 29.558607, 28.067526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.905407, 29.325407, 28.010914>,  <40.911362, 28.936741, 27.916559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.905407, 29.325407, 28.010914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.994150, -0.039622, 0.100477,
		0.106977, -0.233011, 0.966572,
		-0.014885, 0.971666, 0.235887,
		40.900940, 29.616907, 28.081680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.554531, 29.068911, 28.562416>,  <40.911362, 28.936741, 27.916559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.554531, 29.068911, 28.562416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.527012, 29.412659, 28.359734>,  <40.510498, 29.618908, 28.238125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.527012, 29.412659, 28.359734>,  <40.554531, 29.068911, 28.562416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.527012, 29.412659, 28.359734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.987243, 0.014456, 0.158567,
		0.143592, 0.511149, 0.847412,
		-0.068801, 0.859370, -0.506704,
		40.506371, 29.670469, 28.207722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.217949, 29.506546, 29.045544>,  <40.554531, 29.068911, 28.562416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.217949, 29.506546, 29.045544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.169106, 29.616438, 28.664049>,  <40.139801, 29.682373, 28.435152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.169106, 29.616438, 28.664049>,  <40.217949, 29.506546, 29.045544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.169106, 29.616438, 28.664049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.960308, 0.210107, 0.183474,
		0.250792, 0.938285, 0.238170,
		-0.122110, 0.274730, -0.953736,
		40.132473, 29.698856, 28.377928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.916023, 30.240129, 28.863747>,  <40.217949, 29.506546, 29.045544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.916023, 30.240129, 28.863747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.816654, 29.942200, 28.616030>,  <39.757030, 29.763443, 28.467400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.816654, 29.942200, 28.616030>,  <39.916023, 30.240129, 28.863747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.816654, 29.942200, 28.616030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.968471, 0.178673, 0.173606,
		-0.018655, 0.642896, -0.765726,
		-0.248425, -0.744822, -0.619294,
		39.742126, 29.718754, 28.430243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.617805, 30.351933, 29.012342>,  <39.916023, 30.240129, 28.863747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.617805, 30.351933, 29.012342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.645588, 30.746298, 28.951485>,  <40.662258, 30.982918, 28.914970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.645588, 30.746298, 28.951485>,  <40.617805, 30.351933, 29.012342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.645588, 30.746298, 28.951485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244490, 0.131037, 0.960757,
		0.967161, -0.103929, -0.231945,
		0.069457, 0.985915, -0.152143,
		40.666424, 31.042072, 28.905842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.279373, 30.481474, 29.367815>,  <40.617805, 30.351933, 29.012342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.279373, 30.481474, 29.367815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.008236, 30.774574, 29.343801>,  <40.845554, 30.950436, 29.329393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.008236, 30.774574, 29.343801>,  <41.279373, 30.481474, 29.367815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.008236, 30.774574, 29.343801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143945, 0.212342, 0.966535,
		0.720979, 0.646517, -0.249411,
		-0.677842, 0.732753, -0.060031,
		40.804882, 30.994400, 29.325792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.532230, 31.157663, 29.645376>,  <41.279373, 30.481474, 29.367815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.532230, 31.157663, 29.645376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.136082, 31.117329, 29.683304>,  <40.898392, 31.093128, 29.706060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.136082, 31.117329, 29.683304>,  <41.532230, 31.157663, 29.645376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.136082, 31.117329, 29.683304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066019, 0.257951, 0.963900,
		-0.121654, 0.960882, -0.248811,
		-0.990375, -0.100836, 0.094817,
		40.838970, 31.087078, 29.711748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.524250, 31.231932, 30.374590>,  <41.532230, 31.157663, 29.645376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.524250, 31.231932, 30.374590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.128986, 31.210001, 30.317278>,  <40.891827, 31.196842, 30.282890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.128986, 31.210001, 30.317278>,  <41.524250, 31.231932, 30.374590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.128986, 31.210001, 30.317278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151388, 0.499656, 0.852893,
		0.024827, 0.864487, -0.502041,
		-0.988163, -0.054828, -0.143279,
		40.832539, 31.193552, 30.274294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.268623, 31.897793, 30.211033>,  <41.524250, 31.231932, 30.374590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.268623, 31.897793, 30.211033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.000660, 31.660067, 30.389029>,  <40.839882, 31.517431, 30.495825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.000660, 31.660067, 30.389029>,  <41.268623, 31.897793, 30.211033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.000660, 31.660067, 30.389029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018394, 0.585883, 0.810187,
		-0.742219, 0.550933, -0.381554,
		-0.669905, -0.594318, 0.444988,
		40.799690, 31.481771, 30.522524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.823139, 32.368343, 30.446400>,  <41.268623, 31.897793, 30.211033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.823139, 32.368343, 30.446400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.794838, 32.025524, 30.650543>,  <40.777859, 31.819834, 30.773029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.794838, 32.025524, 30.650543>,  <40.823139, 32.368343, 30.446400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.794838, 32.025524, 30.650543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032980, 0.513370, 0.857534,
		-0.996949, 0.043841, -0.064587,
		-0.070752, -0.857047, 0.510357,
		40.773613, 31.768410, 30.803650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.400089, 32.511196, 30.861511>,  <40.823139, 32.368343, 30.446400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.400089, 32.511196, 30.861511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.595444, 32.207863, 31.034212>,  <40.712654, 32.025864, 31.137833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.595444, 32.207863, 31.034212>,  <40.400089, 32.511196, 30.861511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.595444, 32.207863, 31.034212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043148, 0.515150, 0.856013,
		-0.871562, -0.399433, 0.284311,
		0.488382, -0.758336, 0.431750,
		40.741959, 31.980362, 31.163736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.069969, 32.296635, 31.399712>,  <40.400089, 32.511196, 30.861511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.069969, 32.296635, 31.399712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.443302, 32.182480, 31.486847>,  <40.667301, 32.113987, 31.539129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.443302, 32.182480, 31.486847>,  <40.069969, 32.296635, 31.399712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.443302, 32.182480, 31.486847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116925, 0.332062, 0.935982,
		-0.339451, -0.899050, 0.276555,
		0.933328, -0.285384, 0.217841,
		40.723301, 32.096863, 31.552198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.074833, 32.233269, 32.073795>,  <40.069969, 32.296635, 31.399712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.074833, 32.233269, 32.073795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.470089, 32.209854, 32.017010>,  <40.707241, 32.195805, 31.982939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.470089, 32.209854, 32.017010>,  <40.074833, 32.233269, 32.073795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.470089, 32.209854, 32.017010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153374, 0.420827, 0.894081,
		0.007408, -0.905250, 0.424814,
		0.988140, -0.058532, -0.141960,
		40.766533, 32.192295, 31.974422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.329372, 31.786509, 32.619724>,  <40.074833, 32.233269, 32.073795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.329372, 31.786509, 32.619724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.563694, 32.072422, 32.466923>,  <40.704285, 32.243969, 32.375244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.563694, 32.072422, 32.466923>,  <40.329372, 31.786509, 32.619724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.563694, 32.072422, 32.466923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089403, 0.525456, 0.846110,
		0.805509, -0.461500, 0.371716,
		0.585801, 0.714782, -0.382000,
		40.739433, 32.286858, 32.352322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.682266, 32.327747, 33.008892>,  <40.329372, 31.786509, 32.619724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.682266, 32.327747, 33.008892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.991577, 32.272449, 32.761364>,  <41.177162, 32.239269, 32.612846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.991577, 32.272449, 32.761364>,  <40.682266, 32.327747, 33.008892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.991577, 32.272449, 32.761364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556358, 0.616084, 0.557589,
		0.304160, -0.775454, 0.553316,
		0.773274, -0.138245, -0.618819,
		41.223560, 32.230976, 32.575718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.368252, 32.209175, 33.432846>,  <40.682266, 32.327747, 33.008892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.368252, 32.209175, 33.432846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.500759, 32.331375, 33.075764>,  <41.580265, 32.404694, 32.861515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.500759, 32.331375, 33.075764>,  <41.368252, 32.209175, 33.432846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.500759, 32.331375, 33.075764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621207, 0.641521, 0.450059,
		0.710184, -0.703649, 0.022739,
		0.331271, 0.305499, -0.892709,
		41.600140, 32.423023, 32.807949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.031658, 32.388985, 33.428646>,  <41.368252, 32.209175, 33.432846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.031658, 32.388985, 33.428646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.962994, 32.571354, 33.079323>,  <41.921795, 32.680775, 32.869728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.962994, 32.571354, 33.079323>,  <42.031658, 32.388985, 33.428646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.962994, 32.571354, 33.079323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605684, 0.747977, 0.271437,
		0.776968, -0.482351, -0.404548,
		-0.171664, 0.455926, -0.873306,
		41.911495, 32.708130, 32.817329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.683025, 32.549908, 33.207111>,  <42.031658, 32.388985, 33.428646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.683025, 32.549908, 33.207111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.414246, 32.808067, 33.061813>,  <42.252979, 32.962963, 32.974636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.414246, 32.808067, 33.061813>,  <42.683025, 32.549908, 33.207111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.414246, 32.808067, 33.061813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574257, 0.763774, 0.294750,
		0.467666, -0.010537, -0.883842,
		-0.671950, 0.645398, -0.363242,
		42.212662, 33.001686, 32.952839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.074474, 33.139481, 32.857643>,  <42.683025, 32.549908, 33.207111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.074474, 33.139481, 32.857643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.717152, 33.278648, 32.971455>,  <42.502758, 33.362148, 33.039742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.717152, 33.278648, 32.971455>,  <43.074474, 33.139481, 32.857643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.717152, 33.278648, 32.971455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442274, 0.793143, 0.418710,
		-0.079990, 0.499874, -0.862396,
		-0.893306, 0.347923, 0.284525,
		42.449162, 33.383026, 33.056812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.063457, 33.806622, 32.631435>,  <43.074474, 33.139481, 32.857643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.063457, 33.806622, 32.631435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.765495, 33.795471, 32.898071>,  <42.586720, 33.788780, 33.058052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.765495, 33.795471, 32.898071>,  <43.063457, 33.806622, 32.631435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.765495, 33.795471, 32.898071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231750, 0.926099, 0.297712,
		-0.625625, 0.376249, -0.683396,
		-0.744906, -0.027879, 0.666587,
		42.542023, 33.787106, 33.098049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.547199, 34.407177, 32.630287>,  <43.063457, 33.806622, 32.631435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.547199, 34.407177, 32.630287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.534225, 34.279045, 33.008987>,  <42.526440, 34.202168, 33.236206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.534225, 34.279045, 33.008987>,  <42.547199, 34.407177, 32.630287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.534225, 34.279045, 33.008987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327031, 0.891706, 0.312909,
		-0.944457, 0.319767, 0.075832,
		-0.032438, -0.320328, 0.946751,
		42.524494, 34.182945, 33.293015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.271778, 34.862247, 33.040623>,  <42.547199, 34.407177, 32.630287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.271778, 34.862247, 33.040623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.446007, 34.670631, 33.345463>,  <42.550545, 34.555660, 33.528366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.446007, 34.670631, 33.345463>,  <42.271778, 34.862247, 33.040623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.446007, 34.670631, 33.345463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291698, 0.876064, 0.383958,
		-0.851579, 0.055059, 0.521328,
		0.435576, -0.479041, 0.762098,
		42.576679, 34.526920, 33.574093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.944817, 35.085972, 33.600655>,  <42.271778, 34.862247, 33.040623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.944817, 35.085972, 33.600655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.319180, 34.978378, 33.691635>,  <42.543797, 34.913822, 33.746223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.319180, 34.978378, 33.691635>,  <41.944817, 35.085972, 33.600655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.319180, 34.978378, 33.691635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166224, 0.906514, 0.388075,
		-0.310570, -0.325394, 0.893121,
		0.935904, -0.268982, 0.227448,
		42.599949, 34.897682, 33.759869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.016598, 35.421234, 34.286812>,  <41.944817, 35.085972, 33.600655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.016598, 35.421234, 34.286812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.376141, 35.336662, 34.133266>,  <42.591866, 35.285919, 34.041138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.376141, 35.336662, 34.133266>,  <42.016598, 35.421234, 34.286812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.376141, 35.336662, 34.133266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351727, 0.870561, 0.344109,
		0.261427, -0.444322, 0.856874,
		0.898857, -0.211427, -0.383868,
		42.645798, 35.273235, 34.018105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.569771, 35.453079, 34.829277>,  <42.016598, 35.421234, 34.286812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.569771, 35.453079, 34.829277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.675812, 35.623833, 34.483448>,  <42.739437, 35.726284, 34.275951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.675812, 35.623833, 34.483448>,  <42.569771, 35.453079, 34.829277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.675812, 35.623833, 34.483448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470827, 0.725183, 0.502425,
		0.841452, -0.540261, -0.008738,
		0.265104, 0.426881, -0.864576,
		42.755344, 35.751896, 34.224075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.225613, 35.408939, 34.732491>,  <42.569771, 35.453079, 34.829277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.225613, 35.408939, 34.732491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.116508, 35.737118, 34.531502>,  <43.051044, 35.934025, 34.410908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.116508, 35.737118, 34.531502>,  <43.225613, 35.408939, 34.732491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.116508, 35.737118, 34.531502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589132, 0.555339, 0.586959,
		0.760607, -0.135921, -0.634825,
		-0.272763, 0.820441, -0.502470,
		43.034679, 35.983250, 34.380760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.737724, 35.985840, 34.730801>,  <43.225613, 35.408939, 34.732491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.737724, 35.985840, 34.730801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.423061, 36.208797, 34.624611>,  <43.234264, 36.342571, 34.560898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.423061, 36.208797, 34.624611>,  <43.737724, 35.985840, 34.730801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.423061, 36.208797, 34.624611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351148, 0.757618, 0.550191,
		0.507803, 0.339592, -0.791716,
		-0.786658, 0.557398, -0.265474,
		43.187065, 36.376019, 34.544968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.010231, 36.723396, 34.520866>,  <43.737724, 35.985840, 34.730801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.010231, 36.723396, 34.520866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.633083, 36.732941, 34.653790>,  <43.406796, 36.738667, 34.733543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.633083, 36.732941, 34.653790>,  <44.010231, 36.723396, 34.520866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.633083, 36.732941, 34.653790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170197, 0.891960, 0.418855,
		-0.286410, 0.451483, -0.845063,
		-0.942869, 0.023863, 0.332307,
		43.350224, 36.740101, 34.753483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.387047, 36.995583, 35.194984>,  <44.010231, 36.723396, 34.520866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.387047, 36.995583, 35.194984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.338074, 37.152573, 35.559616>,  <44.308689, 37.246769, 35.778393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.338074, 37.152573, 35.559616>,  <44.387047, 36.995583, 35.194984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.338074, 37.152573, 35.559616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083521, -0.919303, 0.384587,
		0.988957, -0.029051, 0.145331,
		-0.122431, 0.392478, 0.911577,
		44.301346, 37.270317, 35.833088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.093693, 36.529964, 35.742680>,  <44.387047, 36.995583, 35.194984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.093693, 36.529964, 35.742680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.442509, 36.359985, 35.839817>,  <44.651798, 36.257999, 35.898098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.442509, 36.359985, 35.839817>,  <44.093693, 36.529964, 35.742680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.442509, 36.359985, 35.839817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441063, -0.897374, 0.013540,
		0.212169, -0.118917, -0.969971,
		0.872036, -0.424946, 0.242845,
		44.704121, 36.232502, 35.912670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.379673, 35.984005, 35.220161>,  <44.093693, 36.529964, 35.742680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.379673, 35.984005, 35.220161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.526478, 35.903629, 35.583466>,  <44.614559, 35.855404, 35.801449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.526478, 35.903629, 35.583466>,  <44.379673, 35.984005, 35.220161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.526478, 35.903629, 35.583466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408325, -0.912095, -0.036788,
		0.835808, -0.357363, -0.416793,
		0.367008, -0.200935, 0.908257,
		44.636581, 35.843349, 35.855942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.713760, 35.393894, 35.094330>,  <44.379673, 35.984005, 35.220161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.713760, 35.393894, 35.094330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.603611, 35.432774, 35.476894>,  <44.537521, 35.456100, 35.706432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.603611, 35.432774, 35.476894>,  <44.713760, 35.393894, 35.094330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.603611, 35.432774, 35.476894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538871, -0.839489, -0.069837,
		0.796107, -0.534613, 0.283553,
		-0.275375, 0.097201, 0.956410,
		44.521000, 35.461933, 35.763817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.002148, 34.991398, 35.126781>,  <44.713760, 35.393894, 35.094330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.002148, 34.991398, 35.126781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.056114, 34.719383, 35.415047>,  <44.088493, 34.556175, 35.588005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.056114, 34.719383, 35.415047>,  <44.002148, 34.991398, 35.126781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.056114, 34.719383, 35.415047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426392, 0.696370, 0.577286,
		-0.894419, 0.229395, 0.383916,
		0.134921, -0.680034, 0.720659,
		44.096592, 34.515373, 35.631245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.967468, 35.273399, 35.821323>,  <44.002148, 34.991398, 35.126781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.967468, 35.273399, 35.821323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.169342, 34.934788, 35.889072>,  <44.290466, 34.731621, 35.929722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.169342, 34.934788, 35.889072>,  <43.967468, 35.273399, 35.821323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.169342, 34.934788, 35.889072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651516, 0.502189, 0.568624,
		-0.566412, -0.176627, 0.804972,
		0.504683, -0.846528, 0.169371,
		44.320747, 34.680828, 35.939884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.064575, 35.202862, 36.636791>,  <43.967468, 35.273399, 35.821323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.064575, 35.202862, 36.636791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.324467, 35.048332, 36.374920>,  <44.480400, 34.955616, 36.217796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.324467, 35.048332, 36.374920>,  <44.064575, 35.202862, 36.636791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.324467, 35.048332, 36.374920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634639, 0.749738, 0.187422,
		0.418434, -0.537260, 0.732301,
		0.649728, -0.386323, -0.654682,
		44.519386, 34.932434, 36.178516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.665970, 35.270267, 36.990406>,  <44.064575, 35.202862, 36.636791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.665970, 35.270267, 36.990406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.678112, 35.298042, 36.591557>,  <44.685398, 35.314705, 36.352245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.678112, 35.298042, 36.591557>,  <44.665970, 35.270267, 36.990406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.678112, 35.298042, 36.591557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415556, 0.906406, 0.075769,
		0.909061, -0.416662, -0.001339,
		0.030357, 0.069435, -0.997125,
		44.687218, 35.318874, 36.292419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.341270, 35.559013, 36.921295>,  <44.665970, 35.270267, 36.990406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.341270, 35.559013, 36.921295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.134987, 35.637524, 36.587704>,  <45.011215, 35.684628, 36.387550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.134987, 35.637524, 36.587704>,  <45.341270, 35.559013, 36.921295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.134987, 35.637524, 36.587704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471212, 0.877937, -0.084766,
		0.715544, -0.436695, -0.545247,
		-0.515709, 0.196273, -0.833979,
		44.980274, 35.696407, 36.337509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.568836, 35.930164, 36.286423>,  <45.341270, 35.559013, 36.921295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.568836, 35.930164, 36.286423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.710388, 35.911167, 35.912788>,  <45.795319, 35.899769, 35.688610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.710388, 35.911167, 35.912788>,  <45.568836, 35.930164, 36.286423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.710388, 35.911167, 35.912788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828603, 0.479138, 0.289557,
		0.433803, -0.876454, 0.208912,
		0.353881, -0.047494, -0.934084,
		45.816551, 35.896919, 35.632565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.242645, 35.652779, 36.279274>,  <45.568836, 35.930164, 36.286423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.242645, 35.652779, 36.279274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.187653, 35.909027, 35.977093>,  <46.154655, 36.062775, 35.795784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.187653, 35.909027, 35.977093>,  <46.242645, 35.652779, 36.279274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.187653, 35.909027, 35.977093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675875, 0.618220, 0.401243,
		0.724079, -0.455427, -0.517973,
		-0.137484, 0.640617, -0.755452,
		46.146408, 36.101212, 35.750458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.839451, 36.086681, 36.033588>,  <46.242645, 35.652779, 36.279274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.839451, 36.086681, 36.033588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.212013, 36.224918, 36.079277>,  <47.435551, 36.307861, 36.106689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.212013, 36.224918, 36.079277>,  <46.839451, 36.086681, 36.033588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.212013, 36.224918, 36.079277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340035, 0.714239, 0.611750,
		0.129838, -0.608626, 0.782762,
		0.931407, 0.345595, 0.114219,
		47.491436, 36.328598, 36.113541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.944473, 36.009506, 36.715374>,  <46.839451, 36.086681, 36.033588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.944473, 36.009506, 36.715374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.179752, 36.282745, 36.542217>,  <47.320919, 36.446690, 36.438324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.179752, 36.282745, 36.542217>,  <46.944473, 36.009506, 36.715374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.179752, 36.282745, 36.542217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286547, 0.676599, 0.678310,
		0.756252, -0.274933, 0.593713,
		0.588195, 0.683100, -0.432898,
		47.356213, 36.487675, 36.412350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.097687, 36.474239, 37.262043>,  <46.944473, 36.009506, 36.715374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.097687, 36.474239, 37.262043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.155945, 36.668591, 36.917320>,  <47.190899, 36.785202, 36.710487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.155945, 36.668591, 36.917320>,  <47.097687, 36.474239, 37.262043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.155945, 36.668591, 36.917320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396507, 0.826742, 0.399100,
		0.906405, 0.283586, 0.313063,
		0.145643, 0.485878, -0.861807,
		47.199638, 36.814354, 36.658779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.525684, 37.007565, 37.311172>,  <47.097687, 36.474239, 37.262043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.525684, 37.007565, 37.311172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.226021, 37.050514, 37.049721>,  <47.046223, 37.076283, 36.892849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.226021, 37.050514, 37.049721>,  <47.525684, 37.007565, 37.311172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.226021, 37.050514, 37.049721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334450, 0.790437, 0.513180,
		0.571755, 0.603060, -0.556252,
		-0.749160, 0.107375, -0.653629,
		47.001274, 37.082726, 36.853634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.455910, 37.705544, 37.057777>,  <47.525684, 37.007565, 37.311172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.455910, 37.705544, 37.057777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.103760, 37.520767, 37.014793>,  <46.892471, 37.409901, 36.989002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.103760, 37.520767, 37.014793>,  <47.455910, 37.705544, 37.057777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.103760, 37.520767, 37.014793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463196, 0.788741, 0.404151,
		-0.101937, 0.405580, -0.908358,
		-0.880374, -0.461946, -0.107461,
		46.839649, 37.382183, 36.982555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.953304, 38.224884, 36.802746>,  <47.455910, 37.705544, 37.057777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.953304, 38.224884, 36.802746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.807049, 37.929546, 37.029430>,  <46.719296, 37.752346, 37.165443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.807049, 37.929546, 37.029430>,  <46.953304, 38.224884, 36.802746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.807049, 37.929546, 37.029430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642728, 0.640682, 0.420033,
		-0.673210, -0.210664, -0.708808,
		-0.365634, -0.738341, 0.566713,
		46.697357, 37.708042, 37.199444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.232929, 38.203266, 36.714035>,  <46.953304, 38.224884, 36.802746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.232929, 38.203266, 36.714035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.312771, 38.058456, 37.078255>,  <46.360676, 37.971573, 37.296787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.312771, 38.058456, 37.078255>,  <46.232929, 38.203266, 36.714035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.312771, 38.058456, 37.078255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620612, 0.672402, 0.403382,
		-0.758287, -0.645614, -0.090460,
		0.199603, -0.362020, 0.910549,
		46.372650, 37.949852, 37.351421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.226864, 37.493027, 36.417786>,  <46.232929, 38.203266, 36.714035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.226864, 37.493027, 36.417786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.602257, 37.628380, 36.445335>,  <46.827492, 37.709591, 36.461864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.602257, 37.628380, 36.445335>,  <46.226864, 37.493027, 36.417786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.602257, 37.628380, 36.445335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333630, -0.837031, -0.433670,
		-0.089096, 0.429971, -0.898436,
		0.938484, 0.338383, 0.068875,
		46.883801, 37.729897, 36.466000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.601490, 37.482464, 35.803444>,  <46.226864, 37.493027, 36.417786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.601490, 37.482464, 35.803444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.885883, 37.461529, 36.083946>,  <47.056519, 37.448967, 36.252247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.885883, 37.461529, 36.083946>,  <46.601490, 37.482464, 35.803444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.885883, 37.461529, 36.083946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384929, -0.805593, -0.450390,
		0.588498, 0.590154, -0.552619,
		0.710985, -0.052335, 0.701257,
		47.099178, 37.445827, 36.294323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.216331, 37.460583, 35.484116>,  <46.601490, 37.482464, 35.803444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.216331, 37.460583, 35.484116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.225769, 37.282940, 35.842381>,  <47.231430, 37.176353, 36.057339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.225769, 37.282940, 35.842381>,  <47.216331, 37.460583, 35.484116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.225769, 37.282940, 35.842381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248931, -0.865085, -0.435501,
		0.968234, 0.233234, 0.090141,
		0.023594, -0.444106, 0.895664,
		47.232849, 37.149708, 36.111080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.904804, 37.127468, 35.696228>,  <47.216331, 37.460583, 35.484116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.904804, 37.127468, 35.696228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.599457, 36.917023, 35.846146>,  <47.416248, 36.790756, 35.936096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.599457, 36.917023, 35.846146>,  <47.904804, 37.127468, 35.696228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.599457, 36.917023, 35.846146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236885, -0.767790, -0.595302,
		0.600957, -0.365654, 0.710737,
		-0.763371, -0.526114, 0.374791,
		47.370445, 36.759190, 35.958584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.157341, 36.449604, 35.979687>,  <47.904804, 37.127468, 35.696228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.157341, 36.449604, 35.979687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.775505, 36.446941, 35.860542>,  <47.546406, 36.445343, 35.789055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.775505, 36.446941, 35.860542>,  <48.157341, 36.449604, 35.979687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.775505, 36.446941, 35.860542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194012, -0.772609, -0.604511,
		-0.226106, -0.634847, 0.738814,
		-0.954587, -0.006656, -0.297860,
		47.489128, 36.444946, 35.771183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.835354, 35.852081, 36.219837>,  <48.157341, 36.449604, 35.979687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.835354, 35.852081, 36.219837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.698544, 35.965111, 35.861359>,  <47.616459, 36.032928, 35.646271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.698544, 35.965111, 35.861359>,  <47.835354, 35.852081, 36.219837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.698544, 35.965111, 35.861359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217010, -0.904182, -0.367916,
		-0.914290, -0.320319, 0.247929,
		-0.342023, 0.282579, -0.896197,
		47.595936, 36.049885, 35.592499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.355793, 35.286644, 36.060204>,  <47.835354, 35.852081, 36.219837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.355793, 35.286644, 36.060204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.523552, 35.456974, 35.739510>,  <47.624207, 35.559174, 35.547092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.523552, 35.456974, 35.739510>,  <47.355793, 35.286644, 36.060204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.523552, 35.456974, 35.739510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418144, -0.874509, -0.245744,
		-0.805770, -0.232177, -0.544820,
		0.419394, 0.425826, -0.801736,
		47.649368, 35.584721, 35.498989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.154888, 34.974426, 35.404549>,  <47.355793, 35.286644, 36.060204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.154888, 34.974426, 35.404549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.518623, 35.137943, 35.373581>,  <47.736866, 35.236053, 35.355000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.518623, 35.137943, 35.373581>,  <47.154888, 34.974426, 35.404549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.518623, 35.137943, 35.373581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395059, -0.906734, -0.147520,
		-0.130506, 0.103559, -0.986024,
		0.909338, 0.408790, -0.077423,
		47.791424, 35.260582, 35.350353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.493999, 34.853321, 34.693295>,  <47.154888, 34.974426, 35.404549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.493999, 34.853321, 34.693295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.745556, 34.855026, 35.004288>,  <47.896488, 34.856049, 35.190884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.745556, 34.855026, 35.004288>,  <47.493999, 34.853321, 34.693295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.745556, 34.855026, 35.004288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405085, -0.855331, -0.322980,
		0.663628, 0.518065, -0.539636,
		0.628891, 0.004260, 0.777481,
		47.934223, 34.856304, 35.237534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.404560, 31.488758, 19.759640> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.016163, 31.483164, 19.855112>,  <36.783123, 31.479807, 19.912395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.016163, 31.483164, 19.855112>,  <37.404560, 31.488758, 19.759640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.016163, 31.483164, 19.855112> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236936, -0.190066, 0.952752,
		0.032040, 0.981672, 0.187867,
		-0.970997, -0.013987, 0.238683,
		36.724865, 31.478968, 19.926718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.265446, 31.935516, 20.258257>,  <37.404560, 31.488758, 19.759640>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.265446, 31.935516, 20.258257> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.961727, 31.684118, 20.325748>,  <36.779495, 31.533279, 20.366243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.961727, 31.684118, 20.325748>,  <37.265446, 31.935516, 20.258257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.961727, 31.684118, 20.325748> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226136, -0.011708, 0.974025,
		-0.610195, 0.777725, 0.151015,
		-0.759292, -0.628496, 0.168727,
		36.733940, 31.495569, 20.376368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.005993, 32.090050, 21.010469>,  <37.265446, 31.935516, 20.258257>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.005993, 32.090050, 21.010469> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.851089, 31.732918, 20.918489>,  <36.758148, 31.518639, 20.863302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.851089, 31.732918, 20.918489>,  <37.005993, 32.090050, 21.010469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.851089, 31.732918, 20.918489> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252504, -0.342583, 0.904919,
		-0.886718, 0.292379, 0.358113,
		-0.387263, -0.892833, -0.229948,
		36.734909, 31.465067, 20.849504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.779968, 31.867579, 21.639565>,  <37.005993, 32.090050, 21.010469>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.779968, 31.867579, 21.639565> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.732346, 31.529757, 21.430738>,  <36.703773, 31.327063, 21.305443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.732346, 31.529757, 21.430738>,  <36.779968, 31.867579, 21.639565>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.732346, 31.529757, 21.430738> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236557, -0.534790, 0.811196,
		-0.964296, -0.026920, 0.263456,
		-0.119057, -0.844556, -0.522064,
		36.696629, 31.276390, 21.274118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.246895, 31.467484, 21.920340>,  <36.779968, 31.867579, 21.639565>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.246895, 31.467484, 21.920340> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.478897, 31.208992, 21.721952>,  <36.618099, 31.053896, 21.602921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.478897, 31.208992, 21.721952>,  <36.246895, 31.467484, 21.920340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.478897, 31.208992, 21.721952> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113773, -0.538608, 0.834840,
		-0.806631, -0.540636, -0.238870,
		0.580002, -0.646231, -0.495968,
		36.652897, 31.015123, 21.573162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.981445, 30.873020, 22.159597>,  <36.246895, 31.467484, 21.920340>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.981445, 30.873020, 22.159597> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.344738, 30.781273, 22.019596>,  <36.562714, 30.726225, 21.935595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.344738, 30.781273, 22.019596>,  <35.981445, 30.873020, 22.159597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.344738, 30.781273, 22.019596> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128600, -0.642938, 0.755045,
		-0.398213, -0.730767, -0.554442,
		0.908233, -0.229367, -0.350003,
		36.617207, 30.712463, 21.914595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.984516, 30.257635, 22.309278>,  <35.981445, 30.873020, 22.159597>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.984516, 30.257635, 22.309278> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.372795, 30.305902, 22.226151>,  <36.605762, 30.334864, 22.176273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.372795, 30.305902, 22.226151>,  <35.984516, 30.257635, 22.309278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.372795, 30.305902, 22.226151> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235693, -0.646780, 0.725344,
		-0.046886, -0.753070, -0.656268,
		0.970696, 0.120669, -0.207819,
		36.664005, 30.342104, 22.163805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.287964, 29.551476, 22.249512>,  <35.984516, 30.257635, 22.309278>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.287964, 29.551476, 22.249512> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.562851, 29.821121, 22.357807>,  <36.727783, 29.982908, 22.422785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.562851, 29.821121, 22.357807>,  <36.287964, 29.551476, 22.249512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.562851, 29.821121, 22.357807> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322798, -0.617241, 0.717506,
		0.650793, -0.405689, -0.641783,
		0.687219, 0.674114, 0.270741,
		36.769016, 30.023355, 22.439030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.878422, 29.184694, 22.390921>,  <36.287964, 29.551476, 22.249512>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.878422, 29.184694, 22.390921> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.937199, 29.534807, 22.575220>,  <36.972466, 29.744875, 22.685801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.937199, 29.534807, 22.575220>,  <36.878422, 29.184694, 22.390921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.937199, 29.534807, 22.575220> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413438, -0.477513, 0.775275,
		0.898598, 0.076574, -0.432040,
		0.146938, 0.875282, 0.460750,
		36.981281, 29.797392, 22.713446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.549416, 29.074038, 22.529591>,  <36.878422, 29.184694, 22.390921>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.549416, 29.074038, 22.529591> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.422947, 29.353247, 22.786589>,  <37.347065, 29.520771, 22.940788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.422947, 29.353247, 22.786589>,  <37.549416, 29.074038, 22.529591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.422947, 29.353247, 22.786589> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410095, -0.510138, 0.756030,
		0.855487, 0.502519, -0.124966,
		-0.316169, 0.698022, 0.642497,
		37.328094, 29.562653, 22.979338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.182850, 29.356924, 22.840054>,  <37.549416, 29.074038, 22.529591>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.182850, 29.356924, 22.840054> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.854225, 29.394470, 23.064987>,  <37.657051, 29.416998, 23.199947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.854225, 29.394470, 23.064987>,  <38.182850, 29.356924, 22.840054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.854225, 29.394470, 23.064987> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451739, -0.494540, 0.742538,
		0.347797, 0.864072, 0.363893,
		-0.821565, 0.093868, 0.562334,
		37.607754, 29.422630, 23.233686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.454697, 29.347681, 23.483629>,  <38.182850, 29.356924, 22.840054>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.454697, 29.347681, 23.483629> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.065472, 29.289835, 23.555452>,  <37.831936, 29.255127, 23.598547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.065472, 29.289835, 23.555452>,  <38.454697, 29.347681, 23.483629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.065472, 29.289835, 23.555452> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227079, -0.735846, 0.637938,
		0.039874, 0.661527, 0.748861,
		-0.973060, -0.144613, 0.179560,
		37.773552, 29.246450, 23.609320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.312786, 29.492817, 24.144753>,  <38.454697, 29.347681, 23.483629>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.312786, 29.492817, 24.144753> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.015678, 29.246466, 24.039692>,  <37.837414, 29.098656, 23.976656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.015678, 29.246466, 24.039692>,  <38.312786, 29.492817, 24.144753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.015678, 29.246466, 24.039692> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221781, -0.596455, 0.771398,
		-0.631748, 0.514720, 0.579619,
		-0.742770, -0.615878, -0.262654,
		37.792847, 29.061703, 23.960896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.086742, 29.140141, 24.867418>,  <38.312786, 29.492817, 24.144753>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.086742, 29.140141, 24.867418> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.930965, 28.928305, 24.565990>,  <37.837498, 28.801203, 24.385134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.930965, 28.928305, 24.565990>,  <38.086742, 29.140141, 24.867418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.930965, 28.928305, 24.565990> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002634, -0.817521, 0.575893,
		-0.921046, 0.226263, 0.316984,
		-0.389445, -0.529589, -0.753570,
		37.814133, 28.769428, 24.339920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.435661, 28.835020, 25.115412>,  <38.086742, 29.140141, 24.867418>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.435661, 28.835020, 25.115412> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.605400, 28.618053, 24.825388>,  <37.707245, 28.487873, 24.651373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.605400, 28.618053, 24.825388>,  <37.435661, 28.835020, 25.115412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.605400, 28.618053, 24.825388> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066417, -0.779928, 0.622335,
		-0.903059, -0.312244, -0.294938,
		0.424351, -0.542417, -0.725059,
		37.732704, 28.455328, 24.607870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.218975, 28.146378, 25.231861>,  <37.435661, 28.835020, 25.115412>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.218975, 28.146378, 25.231861> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.528267, 28.092115, 24.984083>,  <37.713840, 28.059557, 24.835417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.528267, 28.092115, 24.984083>,  <37.218975, 28.146378, 25.231861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.528267, 28.092115, 24.984083> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339993, -0.735885, 0.585558,
		-0.535276, -0.663378, -0.522886,
		0.773230, -0.135657, -0.619445,
		37.760235, 28.051418, 24.798250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.372665, 27.463692, 25.393579>,  <37.218975, 28.146378, 25.231861>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.372665, 27.463692, 25.393579> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.685623, 27.562738, 25.165005>,  <37.873398, 27.622166, 25.027859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.685623, 27.562738, 25.165005>,  <37.372665, 27.463692, 25.393579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.685623, 27.562738, 25.165005> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529390, -0.747722, 0.400823,
		-0.328027, -0.616116, -0.716100,
		0.782397, 0.247615, -0.571439,
		37.920341, 27.637022, 24.993572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.686695, 26.806189, 25.017105>,  <37.372665, 27.463692, 25.393579>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.686695, 26.806189, 25.017105> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.959347, 27.092138, 25.079514>,  <38.122936, 27.263708, 25.116959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.959347, 27.092138, 25.079514>,  <37.686695, 26.806189, 25.017105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.959347, 27.092138, 25.079514> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675080, -0.696663, 0.242752,
		0.282231, -0.060139, -0.957460,
		0.681626, 0.714874, 0.156021,
		38.163834, 27.306601, 25.126320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.216537, 26.413406, 24.904602>,  <37.686695, 26.806189, 25.017105>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.216537, 26.413406, 24.904602> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.353954, 26.740408, 25.089495>,  <38.436405, 26.936609, 25.200430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.353954, 26.740408, 25.089495>,  <38.216537, 26.413406, 24.904602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.353954, 26.740408, 25.089495> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664441, -0.559417, 0.495551,
		0.663697, 0.136882, -0.735370,
		0.343546, 0.817506, 0.462234,
		38.457020, 26.985661, 25.228165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.868267, 26.554411, 24.636681>,  <38.216537, 26.413406, 24.904602>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.868267, 26.554411, 24.636681> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.850807, 26.736620, 24.992342>,  <38.840332, 26.845945, 25.205738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.850807, 26.736620, 24.992342>,  <38.868267, 26.554411, 24.636681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.850807, 26.736620, 24.992342> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797672, -0.519966, 0.305540,
		0.601510, 0.722589, -0.340663,
		-0.043647, 0.455522, 0.889154,
		38.837711, 26.873278, 25.259089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.589634, 26.613264, 24.956545>,  <38.868267, 26.554411, 24.636681>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.589634, 26.613264, 24.956545> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.327564, 26.662104, 25.254765>,  <39.170322, 26.691408, 25.433697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.327564, 26.662104, 25.254765>,  <39.589634, 26.613264, 24.956545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.327564, 26.662104, 25.254765> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621844, -0.473257, 0.623970,
		0.429022, 0.872422, 0.234138,
		-0.655172, 0.122099, 0.745548,
		39.131012, 26.698734, 25.478430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.020611, 26.973093, 25.327976>,  <39.589634, 26.613264, 24.956545>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.020611, 26.973093, 25.327976> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.390816, 27.105669, 25.401278>,  <40.612938, 27.185215, 25.445259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.390816, 27.105669, 25.401278>,  <40.020611, 26.973093, 25.327976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.390816, 27.105669, 25.401278> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140588, 0.749959, -0.646372,
		-0.351664, 0.572460, 0.740690,
		0.925509, 0.331438, 0.183253,
		40.668468, 27.205101, 25.456253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.030167, 27.743702, 25.530203>,  <40.020611, 26.973093, 25.327976>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.030167, 27.743702, 25.530203> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.398212, 27.659491, 25.398102>,  <40.619041, 27.608965, 25.318842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.398212, 27.659491, 25.398102>,  <40.030167, 27.743702, 25.530203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.398212, 27.659491, 25.398102> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034472, 0.796430, -0.603748,
		0.390127, 0.566902, 0.725550,
		0.920116, -0.210527, -0.330251,
		40.674248, 27.596333, 25.299026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.383572, 28.367044, 25.515625>,  <40.030167, 27.743702, 25.530203>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.383572, 28.367044, 25.515625> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.605167, 28.126623, 25.285204>,  <40.738125, 27.982370, 25.146952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.605167, 28.126623, 25.285204>,  <40.383572, 28.367044, 25.515625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.605167, 28.126623, 25.285204> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175367, 0.760656, -0.625019,
		0.813847, 0.245231, 0.526798,
		0.553986, -0.601052, -0.576052,
		40.771362, 27.946308, 25.112389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.101780, 28.710550, 25.344490>,  <40.383572, 28.367044, 25.515625>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.101780, 28.710550, 25.344490> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.998055, 28.435637, 25.073080>,  <40.935822, 28.270689, 24.910234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.998055, 28.435637, 25.073080>,  <41.101780, 28.710550, 25.344490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.998055, 28.435637, 25.073080> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060475, 0.689625, -0.721637,
		0.963899, -0.228162, -0.137262,
		-0.259310, -0.687285, -0.678527,
		40.920261, 28.229450, 24.869522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.337967, 28.901979, 24.737942>,  <41.101780, 28.710550, 25.344490>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.337967, 28.901979, 24.737942> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.102207, 28.615013, 24.589392>,  <40.960751, 28.442833, 24.500261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.102207, 28.615013, 24.589392>,  <41.337967, 28.901979, 24.737942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.102207, 28.615013, 24.589392> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083161, 0.511157, -0.855455,
		0.803547, -0.473324, -0.360939,
		-0.589404, -0.717414, -0.371377,
		40.925385, 28.399790, 24.477980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.420952, 28.949648, 24.002018>,  <41.337967, 28.901979, 24.737942>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.420952, 28.949648, 24.002018> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.114639, 28.693678, 24.027550>,  <40.930851, 28.540096, 24.042870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.114639, 28.693678, 24.027550>,  <41.420952, 28.949648, 24.002018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.114639, 28.693678, 24.027550> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342435, 0.321735, -0.882737,
		0.544349, -0.697842, -0.465511,
		-0.765783, -0.639924, 0.063829,
		40.884903, 28.501701, 24.046700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.483425, 28.524137, 23.472364>,  <41.420952, 28.949648, 24.002018>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.483425, 28.524137, 23.472364> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.104073, 28.535950, 23.598665>,  <40.876461, 28.543037, 23.674446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.104073, 28.535950, 23.598665>,  <41.483425, 28.524137, 23.472364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.104073, 28.535950, 23.598665> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284931, 0.357798, -0.889267,
		-0.139235, -0.933332, -0.330916,
		-0.948382, 0.029529, 0.315753,
		40.819557, 28.544807, 23.693392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.054558, 28.457085, 22.874121>,  <41.483425, 28.524137, 23.472364>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.054558, 28.457085, 22.874121> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.786621, 28.603241, 23.132671>,  <40.625858, 28.690935, 23.287802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.786621, 28.603241, 23.132671>,  <41.054558, 28.457085, 22.874121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.786621, 28.603241, 23.132671> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437370, 0.509306, -0.741158,
		-0.600016, -0.779163, -0.181344,
		-0.669843, 0.365392, 0.646374,
		40.585667, 28.712858, 23.326584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.408237, 28.295639, 22.596119>,  <41.054558, 28.457085, 22.874121>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.408237, 28.295639, 22.596119> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.362198, 28.613596, 22.834414>,  <40.334572, 28.804369, 22.977390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.362198, 28.613596, 22.834414>,  <40.408237, 28.295639, 22.596119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.362198, 28.613596, 22.834414> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459407, 0.489133, -0.741414,
		-0.880736, -0.359024, 0.308878,
		-0.115103, 0.794891, 0.595735,
		40.327667, 28.852062, 23.013134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.770340, 28.611004, 22.333912>,  <40.408237, 28.295639, 22.596119>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.770340, 28.611004, 22.333912> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.962227, 28.888964, 22.548197>,  <40.077358, 29.055740, 22.676767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.962227, 28.888964, 22.548197>,  <39.770340, 28.611004, 22.333912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.962227, 28.888964, 22.548197> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331794, 0.708879, -0.622417,
		-0.812273, 0.120837, 0.570624,
		0.479715, 0.694902, 0.535710,
		40.106140, 29.097435, 22.708910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.279953, 29.015028, 22.484056>,  <39.770340, 28.611004, 22.333912>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.279953, 29.015028, 22.484056> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.622829, 29.221003, 22.487263>,  <39.828556, 29.344587, 22.489185>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.622829, 29.221003, 22.487263>,  <39.279953, 29.015028, 22.484056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.622829, 29.221003, 22.487263> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401174, 0.677413, -0.616580,
		-0.322928, 0.525312, 0.787251,
		0.857191, 0.514936, 0.008014,
		39.879986, 29.375483, 22.489666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.040905, 29.657171, 22.488852>,  <39.279953, 29.015028, 22.484056>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.040905, 29.657171, 22.488852> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.427593, 29.679014, 22.388874>,  <39.659607, 29.692120, 22.328888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.427593, 29.679014, 22.388874>,  <39.040905, 29.657171, 22.488852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.427593, 29.679014, 22.388874> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210636, 0.724393, -0.656419,
		0.145212, 0.687221, 0.711788,
		0.966719, 0.054608, -0.249944,
		39.717609, 29.695396, 22.313890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.181450, 30.300821, 22.495115>,  <39.040905, 29.657171, 22.488852>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.181450, 30.300821, 22.495115> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.480190, 30.138977, 22.284019>,  <39.659435, 30.041870, 22.157362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.480190, 30.138977, 22.284019>,  <39.181450, 30.300821, 22.495115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.480190, 30.138977, 22.284019> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181086, 0.639865, -0.746848,
		0.639865, 0.653347, 0.404612,
		0.746848, -0.404612, -0.527739,
		39.704243, 30.017593, 22.125698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.593357, 30.866850, 22.167446>,  <39.181450, 30.300821, 22.495115>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.593357, 30.866850, 22.167446> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.679897, 30.550331, 21.938694>,  <39.731819, 30.360420, 21.801443>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.679897, 30.550331, 21.938694>,  <39.593357, 30.866850, 22.167446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.679897, 30.550331, 21.938694> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200636, 0.537217, -0.819234,
		0.955479, 0.291979, -0.042537,
		0.216347, -0.791295, -0.571880,
		39.744801, 30.312943, 21.767130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.765045, 31.208439, 21.503401>,  <39.593357, 30.866850, 22.167446>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.765045, 31.208439, 21.503401> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.741261, 30.826458, 21.387104>,  <39.726990, 30.597269, 21.317326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.741261, 30.826458, 21.387104>,  <39.765045, 31.208439, 21.503401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.741261, 30.826458, 21.387104> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131169, 0.296204, -0.946075,
		0.989575, -0.018120, -0.142873,
		-0.059463, -0.954953, -0.290740,
		39.723423, 30.539972, 21.299883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.114059, 31.159021, 20.927309>,  <39.765045, 31.208439, 21.503401>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.114059, 31.159021, 20.927309> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.873043, 30.843155, 20.881058>,  <39.728432, 30.653635, 20.853306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.873043, 30.843155, 20.881058>,  <40.114059, 31.159021, 20.927309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.873043, 30.843155, 20.881058> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188586, 0.281657, -0.940800,
		0.775486, -0.545065, -0.318630,
		-0.602542, -0.789666, -0.115630,
		39.692280, 30.606255, 20.846369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.288033, 30.866352, 20.293409>,  <40.114059, 31.159021, 20.927309>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.288033, 30.866352, 20.293409> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.911392, 30.745478, 20.352829>,  <39.685406, 30.672953, 20.388481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.911392, 30.745478, 20.352829>,  <40.288033, 30.866352, 20.293409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.911392, 30.745478, 20.352829> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183736, 0.091391, -0.978718,
		0.282179, -0.948858, -0.141576,
		-0.941603, -0.302186, 0.148551,
		39.628910, 30.654821, 20.397394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.145805, 30.369545, 19.763441>,  <40.288033, 30.866352, 20.293409>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.145805, 30.369545, 19.763441> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.780746, 30.475315, 19.888124>,  <39.561710, 30.538776, 19.962934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.780746, 30.475315, 19.888124>,  <40.145805, 30.369545, 19.763441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.780746, 30.475315, 19.888124> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325438, -0.008626, -0.945524,
		-0.247332, -0.964367, 0.093927,
		-0.912643, 0.264426, 0.311708,
		39.506954, 30.554644, 19.981636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.637440, 29.989031, 19.355814>,  <40.145805, 30.369545, 19.763441>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.637440, 29.989031, 19.355814> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.406948, 30.281837, 19.501205>,  <39.268654, 30.457521, 19.588440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.406948, 30.281837, 19.501205>,  <39.637440, 29.989031, 19.355814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.406948, 30.281837, 19.501205> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485847, 0.050822, -0.872565,
		-0.657204, -0.679390, 0.326363,
		-0.576226, 0.732015, 0.363480,
		39.234081, 30.501442, 19.610250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.842358, 29.853804, 19.050770> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.830418, 30.237963, 19.161585>,  <38.823254, 30.468458, 19.228073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.830418, 30.237963, 19.161585>,  <38.842358, 29.853804, 19.050770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.830418, 30.237963, 19.161585> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807580, 0.140151, -0.572863,
		-0.589002, -0.240827, 0.771414,
		-0.029846, 0.960396, 0.277037,
		38.821465, 30.526081, 19.244696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.089718, 29.992235, 19.220459>,  <38.842358, 29.853804, 19.050770>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.089718, 29.992235, 19.220459> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.268284, 30.341335, 19.141438>,  <38.375423, 30.550795, 19.094025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.268284, 30.341335, 19.141438>,  <38.089718, 29.992235, 19.220459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.268284, 30.341335, 19.141438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773559, 0.265414, -0.575466,
		-0.449804, 0.409714, 0.793606,
		0.446411, 0.872748, -0.197554,
		38.402206, 30.603159, 19.082170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.616196, 30.474865, 19.193598>,  <38.089718, 29.992235, 19.220459>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.616196, 30.474865, 19.193598> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.893684, 30.655876, 18.969467>,  <38.060177, 30.764482, 18.834988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.893684, 30.655876, 18.969467>,  <37.616196, 30.474865, 19.193598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.893684, 30.655876, 18.969467> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717688, 0.368842, -0.590661,
		-0.060619, 0.811895, 0.580649,
		0.693722, 0.452529, -0.560328,
		38.101799, 30.791636, 18.801369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.397305, 31.166018, 19.031441>,  <37.616196, 30.474865, 19.193598>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.397305, 31.166018, 19.031441> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.690567, 31.148699, 18.759968>,  <37.866524, 31.138308, 18.597084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.690567, 31.148699, 18.759968>,  <37.397305, 31.166018, 19.031441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.690567, 31.148699, 18.759968> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575898, 0.491260, -0.653456,
		0.361703, 0.869936, 0.335234,
		0.733152, -0.043297, -0.678685,
		37.910511, 31.135710, 18.556362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.521965, 31.884781, 18.765396>,  <37.397305, 31.166018, 19.031441>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.521965, 31.884781, 18.765396> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.635937, 31.619249, 18.488802>,  <37.704319, 31.459930, 18.322845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.635937, 31.619249, 18.488802>,  <37.521965, 31.884781, 18.765396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.635937, 31.619249, 18.488802> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511945, 0.504495, -0.695268,
		0.810387, 0.552105, -0.196097,
		0.284931, -0.663827, -0.691483,
		37.721416, 31.420101, 18.281357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.562767, 32.249744, 18.160633>,  <37.521965, 31.884781, 18.765396>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.562767, 32.249744, 18.160633> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.603333, 31.879162, 18.015640>,  <37.627670, 31.656813, 17.928644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.603333, 31.879162, 18.015640>,  <37.562767, 32.249744, 18.160633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.603333, 31.879162, 18.015640> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443987, 0.283914, -0.849864,
		0.890276, 0.247121, -0.382543,
		0.101410, -0.926458, -0.362480,
		37.633755, 31.601225, 17.906897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.818436, 32.371647, 17.529245>,  <37.562767, 32.249744, 18.160633>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.818436, 32.371647, 17.529245> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.642517, 32.012417, 17.526917>,  <37.536968, 31.796877, 17.525518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.642517, 32.012417, 17.526917>,  <37.818436, 32.371647, 17.529245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.642517, 32.012417, 17.526917> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519769, 0.259811, -0.813841,
		0.732407, -0.354896, -0.581058,
		-0.439794, -0.898080, -0.005823,
		37.510578, 31.742992, 17.525169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.961750, 32.042877, 16.930653>,  <37.818436, 32.371647, 17.529245>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.961750, 32.042877, 16.930653> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.613831, 31.884907, 17.048962>,  <37.405079, 31.790125, 17.119947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.613831, 31.884907, 17.048962>,  <37.961750, 32.042877, 16.930653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.613831, 31.884907, 17.048962> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408407, 0.239890, -0.880714,
		0.276868, -0.886839, -0.369948,
		-0.869798, -0.394930, 0.295774,
		37.352890, 31.766428, 17.137693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.624138, 31.789982, 16.308229>,  <37.961750, 32.042877, 16.930653>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.624138, 31.789982, 16.308229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.325634, 31.812090, 16.573572>,  <37.146530, 31.825354, 16.732777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.325634, 31.812090, 16.573572>,  <37.624138, 31.789982, 16.308229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.325634, 31.812090, 16.573572> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637687, 0.226460, -0.736254,
		-0.190915, -0.972451, -0.133754,
		-0.746262, 0.055269, 0.663355,
		37.101757, 31.828671, 16.772579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.007576, 31.660200, 15.838351>,  <37.624138, 31.789982, 16.308229>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.007576, 31.660200, 15.838351> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.871140, 31.803492, 16.185989>,  <36.789276, 31.889467, 16.394573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.871140, 31.803492, 16.185989>,  <37.007576, 31.660200, 15.838351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.871140, 31.803492, 16.185989> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532645, 0.688146, -0.492691,
		-0.774562, -0.630972, -0.043910,
		-0.341091, 0.358231, 0.869096,
		36.768814, 31.910961, 16.446718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.336319, 31.713102, 15.716270>,  <37.007576, 31.660200, 15.838351>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.336319, 31.713102, 15.716270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.388172, 31.951532, 16.033228>,  <36.419285, 32.094589, 16.223402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.388172, 31.951532, 16.033228>,  <36.336319, 31.713102, 15.716270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.388172, 31.951532, 16.033228> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641886, 0.659544, -0.391131,
		-0.755763, -0.457923, 0.468113,
		0.129633, 0.596077, 0.792393,
		36.427063, 32.130356, 16.270947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.693066, 31.909504, 15.946225>,  <36.336319, 31.713102, 15.716270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.693066, 31.909504, 15.946225> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.937653, 32.187466, 16.097603>,  <36.084404, 32.354244, 16.188429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.937653, 32.187466, 16.097603>,  <35.693066, 31.909504, 15.946225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.937653, 32.187466, 16.097603> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576985, 0.718860, -0.387723,
		-0.541478, 0.018723, 0.840507,
		0.611466, 0.694903, 0.378444,
		36.121094, 32.395935, 16.211136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.308167, 32.316830, 16.334036>,  <35.693066, 31.909504, 15.946225>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.308167, 32.316830, 16.334036> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.626072, 32.537804, 16.233501>,  <35.816814, 32.670387, 16.173180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.626072, 32.537804, 16.233501>,  <35.308167, 32.316830, 16.334036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.626072, 32.537804, 16.233501> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573003, 0.546483, -0.610757,
		-0.200050, 0.629424, 0.750870,
		0.794763, 0.552433, -0.251338,
		35.864502, 32.703533, 16.158100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.017792, 33.029812, 16.302456>,  <35.308167, 32.316830, 16.334036>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.017792, 33.029812, 16.302456> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.368885, 33.064156, 16.113901>,  <35.579544, 33.084763, 16.000769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.368885, 33.064156, 16.113901>,  <35.017792, 33.029812, 16.302456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.368885, 33.064156, 16.113901> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429763, 0.576070, -0.695304,
		0.211849, 0.812878, 0.542539,
		0.877738, 0.085864, -0.471385,
		35.632206, 33.089916, 15.972486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.096626, 33.710487, 16.230099>,  <35.017792, 33.029812, 16.302456>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.096626, 33.710487, 16.230099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.308834, 33.546375, 15.933393>,  <35.436161, 33.447910, 15.755368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.308834, 33.546375, 15.933393>,  <35.096626, 33.710487, 16.230099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.308834, 33.546375, 15.933393> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536651, 0.514807, -0.668566,
		0.656164, 0.752759, 0.052941,
		0.530523, -0.410277, -0.741766,
		35.467991, 33.423290, 15.710862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.151543, 34.268600, 15.677782>,  <35.096626, 33.710487, 16.230099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.151543, 34.268600, 15.677782> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.233154, 33.917679, 15.504017>,  <35.282124, 33.707127, 15.399758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.233154, 33.917679, 15.504017>,  <35.151543, 34.268600, 15.677782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.233154, 33.917679, 15.504017> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481804, 0.296297, -0.824666,
		0.852195, 0.377560, -0.362233,
		0.204032, -0.877301, -0.434412,
		35.294365, 33.654488, 15.373693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.402737, 34.481056, 14.993782>,  <35.151543, 34.268600, 15.677782>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.402737, 34.481056, 14.993782> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.286999, 34.098286, 15.003348>,  <35.217556, 33.868622, 15.009089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.286999, 34.098286, 15.003348>,  <35.402737, 34.481056, 14.993782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.286999, 34.098286, 15.003348> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556114, 0.147709, -0.817875,
		0.779114, -0.249946, -0.574899,
		-0.289342, -0.956927, 0.023916,
		35.200195, 33.811207, 15.010523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.501549, 34.293209, 14.275880>,  <35.402737, 34.481056, 14.993782>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.501549, 34.293209, 14.275880> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.242180, 34.053459, 14.463625>,  <35.086559, 33.909611, 14.576272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.242180, 34.053459, 14.463625>,  <35.501549, 34.293209, 14.275880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.242180, 34.053459, 14.463625> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662539, 0.140634, -0.735707,
		0.374955, -0.788019, -0.488299,
		-0.648422, -0.599374, 0.469361,
		35.047653, 33.873646, 14.604434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.262184, 33.963192, 13.724927>,  <35.501549, 34.293209, 14.275880>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.262184, 33.963192, 13.724927> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.014633, 33.937523, 14.038073>,  <34.866104, 33.922119, 14.225960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.014633, 33.937523, 14.038073>,  <35.262184, 33.963192, 13.724927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.014633, 33.937523, 14.038073> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747162, 0.355622, -0.561500,
		-0.242369, -0.932424, -0.268034,
		-0.618875, -0.064174, 0.782863,
		34.828972, 33.918270, 14.272932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.719181, 33.579960, 13.473700>,  <35.262184, 33.963192, 13.724927>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.719181, 33.579960, 13.473700> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.574654, 33.783947, 13.785951>,  <34.487938, 33.906342, 13.973301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.574654, 33.783947, 13.785951>,  <34.719181, 33.579960, 13.473700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.574654, 33.783947, 13.785951> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747177, 0.342497, -0.569581,
		-0.557833, -0.789066, 0.257290,
		-0.361315, 0.509972, 0.780628,
		34.466259, 33.936939, 14.020139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.985771, 33.553703, 13.413037>,  <34.719181, 33.579960, 13.473700>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.985771, 33.553703, 13.413037> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.032845, 33.854637, 13.672311>,  <34.061089, 34.035198, 13.827875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.032845, 33.854637, 13.672311>,  <33.985771, 33.553703, 13.413037>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.032845, 33.854637, 13.672311> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758784, 0.489198, -0.430038,
		-0.640623, -0.441223, 0.628430,
		0.117684, 0.752335, 0.648184,
		34.068150, 34.080338, 13.866766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.326012, 33.650875, 13.791029>,  <33.985771, 33.553703, 13.413037>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.326012, 33.650875, 13.791029> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.548840, 33.983059, 13.791970>,  <33.682537, 34.182369, 13.792535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.548840, 33.983059, 13.791970>,  <33.326012, 33.650875, 13.791029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.548840, 33.983059, 13.791970> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713989, 0.480383, -0.509364,
		-0.424138, 0.282072, 0.860548,
		0.557070, 0.830462, 0.002353,
		33.715961, 34.232197, 13.792676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.670761, 33.374226, 13.492251>,  <33.326012, 33.650875, 13.791029>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.670761, 33.374226, 13.492251> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.608875, 33.186581, 13.144460>,  <32.571743, 33.073994, 12.935785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.608875, 33.186581, 13.144460>,  <32.670761, 33.374226, 13.492251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.608875, 33.186581, 13.144460> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424709, -0.763024, 0.487254,
		-0.892011, 0.444663, -0.081184,
		-0.154718, -0.469116, -0.869478,
		32.562458, 33.045845, 12.883616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.941412, 33.234676, 13.346750>,  <32.670761, 33.374226, 13.492251>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.941412, 33.234676, 13.346750> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.211311, 32.963486, 13.230085>,  <32.373249, 32.800770, 13.160087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.211311, 32.963486, 13.230085>,  <31.941412, 33.234676, 13.346750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.211311, 32.963486, 13.230085> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506137, -0.712678, 0.485711,
		-0.537161, -0.180111, -0.824026,
		0.674747, -0.677975, -0.291662,
		32.413734, 32.760094, 13.142587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.467703, 33.602146, 13.661455>,  <31.941412, 33.234676, 13.346750>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.467703, 33.602146, 13.661455> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.173365, 33.687668, 13.918459>,  <30.996761, 33.738983, 14.072661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.173365, 33.687668, 13.918459>,  <31.467703, 33.602146, 13.661455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.173365, 33.687668, 13.918459> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657168, -0.003312, 0.753737,
		0.163282, 0.976870, -0.138070,
		-0.735846, 0.213807, 0.642509,
		30.952610, 33.751808, 14.111212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.718742, 34.262619, 14.053428>,  <31.467703, 33.602146, 13.661455>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.718742, 34.262619, 14.053428> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.442974, 34.042061, 14.241327>,  <31.277514, 33.909725, 14.354067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.442974, 34.042061, 14.241327>,  <31.718742, 34.262619, 14.053428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.442974, 34.042061, 14.241327> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617572, -0.108519, 0.778992,
		-0.378553, 0.827158, 0.415340,
		-0.689421, -0.551392, 0.469750,
		31.236147, 33.876644, 14.382252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.739149, 34.490463, 14.669238>,  <31.718742, 34.262619, 14.053428>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.739149, 34.490463, 14.669238> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.557247, 34.142952, 14.747649>,  <31.448105, 33.934444, 14.794696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.557247, 34.142952, 14.747649>,  <31.739149, 34.490463, 14.669238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.557247, 34.142952, 14.747649> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600789, -0.136763, 0.787622,
		-0.657457, 0.475948, 0.584143,
		-0.454757, -0.868775, 0.196029,
		31.420820, 33.882320, 14.806458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.574272, 34.496967, 15.373668>,  <31.739149, 34.490463, 14.669238>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.574272, 34.496967, 15.373668> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.559692, 34.113884, 15.259503>,  <31.550945, 33.884033, 15.191005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.559692, 34.113884, 15.259503>,  <31.574272, 34.496967, 15.373668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.559692, 34.113884, 15.259503> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417533, -0.274072, 0.866344,
		-0.907931, -0.087591, 0.409866,
		-0.036449, -0.957712, -0.285410,
		31.548758, 33.826569, 15.173881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.492096, 34.137661, 16.040848>,  <31.574272, 34.496967, 15.373668>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.492096, 34.137661, 16.040848> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.588177, 33.828133, 15.806413>,  <31.645826, 33.642414, 15.665751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.588177, 33.828133, 15.806413>,  <31.492096, 34.137661, 16.040848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.588177, 33.828133, 15.806413> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289563, -0.519160, 0.804131,
		-0.926529, -0.362865, 0.099366,
		0.240204, -0.773823, -0.586089,
		31.660238, 33.595985, 15.630586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.265766, 33.517582, 16.356482>,  <31.492096, 34.137661, 16.040848>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.265766, 33.517582, 16.356482> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.576639, 33.406597, 16.130562>,  <31.763163, 33.340008, 15.995009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.576639, 33.406597, 16.130562>,  <31.265766, 33.517582, 16.356482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.576639, 33.406597, 16.130562> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348831, -0.557059, 0.753659,
		-0.523734, -0.782754, -0.336154,
		0.777187, -0.277456, -0.564799,
		31.809795, 33.323360, 15.961122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.389393, 32.882713, 16.613544>,  <31.265766, 33.517582, 16.356482>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.389393, 32.882713, 16.613544> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.724092, 32.940262, 16.402205>,  <31.924911, 32.974792, 16.275400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.724092, 32.940262, 16.402205>,  <31.389393, 32.882713, 16.613544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.724092, 32.940262, 16.402205> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523434, -0.493545, 0.694572,
		-0.160835, -0.857738, -0.488280,
		0.836749, 0.143871, -0.528349,
		31.975117, 32.983421, 16.243700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.737305, 32.219170, 16.726011>,  <31.389393, 32.882713, 16.613544>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.737305, 32.219170, 16.726011> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.000854, 32.498764, 16.614799>,  <32.158985, 32.666519, 16.548073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.000854, 32.498764, 16.614799>,  <31.737305, 32.219170, 16.726011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.000854, 32.498764, 16.614799> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691039, -0.416367, 0.590850,
		0.297234, -0.581426, -0.757361,
		0.658876, 0.698987, -0.278029,
		32.198517, 32.708462, 16.531391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.432274, 31.921906, 16.628571>,  <31.737305, 32.219170, 16.726011>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.432274, 31.921906, 16.628571> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.508938, 32.301620, 16.728264>,  <32.554935, 32.529449, 16.788080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.508938, 32.301620, 16.728264>,  <32.432274, 31.921906, 16.628571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.508938, 32.301620, 16.728264> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704747, -0.309852, 0.638219,
		0.683079, 0.053321, -0.728395,
		0.191664, 0.949288, 0.249232,
		32.566437, 32.586407, 16.803034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.101799, 32.013813, 16.507296>,  <32.432274, 31.921906, 16.628571>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.101799, 32.013813, 16.507296> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.055672, 32.330460, 16.747309>,  <33.027996, 32.520447, 16.891317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.055672, 32.330460, 16.747309>,  <33.101799, 32.013813, 16.507296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.055672, 32.330460, 16.747309> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952246, -0.083830, 0.293600,
		0.282721, 0.605236, -0.744150,
		-0.115315, 0.791620, 0.600033,
		33.021076, 32.567947, 16.927319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.685936, 32.513058, 16.333941>,  <33.101799, 32.013813, 16.507296>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.685936, 32.513058, 16.333941> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.556686, 32.557358, 16.709883>,  <33.479137, 32.583939, 16.935448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.556686, 32.557358, 16.709883>,  <33.685936, 32.513058, 16.333941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.556686, 32.557358, 16.709883> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885562, -0.314833, 0.341556,
		0.333725, 0.942663, 0.003652,
		-0.323122, 0.110752, 0.939854,
		33.459751, 32.590584, 16.991838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.213512, 32.867062, 16.672016>,  <33.685936, 32.513058, 16.333941>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.213512, 32.867062, 16.672016> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.007534, 32.705215, 16.974306>,  <33.883945, 32.608109, 17.155680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.007534, 32.705215, 16.974306>,  <34.213512, 32.867062, 16.672016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.007534, 32.705215, 16.974306> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857116, -0.256863, 0.446512,
		0.013452, 0.877672, 0.479072,
		-0.514947, -0.404614, 0.755723,
		33.853050, 32.583832, 17.201023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.624020, 33.143932, 17.280340>,  <34.213512, 32.867062, 16.672016>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.624020, 33.143932, 17.280340> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.412628, 32.848110, 17.447081>,  <34.285793, 32.670616, 17.547125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.412628, 32.848110, 17.447081>,  <34.624020, 33.143932, 17.280340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.412628, 32.848110, 17.447081> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760087, -0.193494, 0.620344,
		-0.378120, 0.644685, 0.664384,
		-0.528481, -0.739555, 0.416853,
		34.254086, 32.626244, 17.572136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.650169, 33.166454, 18.056616>,  <34.624020, 33.143932, 17.280340>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.650169, 33.166454, 18.056616> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.562447, 32.782616, 17.986107>,  <34.509811, 32.552311, 17.943802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.562447, 32.782616, 17.986107>,  <34.650169, 33.166454, 18.056616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.562447, 32.782616, 17.986107> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844637, -0.277164, 0.458005,
		-0.488358, -0.048442, 0.871298,
		-0.219305, -0.959601, -0.176271,
		34.496655, 32.494736, 17.933226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.661240, 32.820328, 18.818659>,  <34.650169, 33.166454, 18.056616>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.661240, 32.820328, 18.818659> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.670174, 32.502777, 18.575592>,  <34.675533, 32.312244, 18.429752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.670174, 32.502777, 18.575592>,  <34.661240, 32.820328, 18.818659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.670174, 32.502777, 18.575592> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616494, -0.467561, 0.633500,
		-0.787043, -0.388771, 0.478978,
		0.022335, -0.793879, -0.607666,
		34.676872, 32.264614, 18.393291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.396450, 32.236301, 19.183182>,  <34.661240, 32.820328, 18.818659>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.396450, 32.236301, 19.183182> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.633930, 32.089260, 18.896856>,  <34.776417, 32.001034, 18.725061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.633930, 32.089260, 18.896856>,  <34.396450, 32.236301, 19.183182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.633930, 32.089260, 18.896856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475356, -0.557534, 0.680583,
		-0.649274, -0.744328, -0.156266,
		0.593700, -0.367603, -0.715813,
		34.812042, 31.978979, 18.682112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.467194, 31.525251, 19.366762>,  <34.396450, 32.236301, 19.183182>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.467194, 31.525251, 19.366762> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.777225, 31.565660, 19.117266>,  <34.963245, 31.589905, 18.967567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.777225, 31.565660, 19.117266>,  <34.467194, 31.525251, 19.366762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.777225, 31.565660, 19.117266> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596308, -0.443427, 0.669170,
		-0.208983, -0.890599, -0.403930,
		0.775076, 0.101022, -0.623740,
		35.009747, 31.595966, 18.930143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.793549, 30.921583, 19.335899>,  <34.467194, 31.525251, 19.366762>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.793549, 30.921583, 19.335899> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.093029, 31.147871, 19.197676>,  <35.272717, 31.283644, 19.114742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.093029, 31.147871, 19.197676>,  <34.793549, 30.921583, 19.335899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.093029, 31.147871, 19.197676> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605208, -0.370611, 0.704536,
		0.270502, -0.736621, -0.619854,
		0.748700, 0.565719, -0.345558,
		35.317638, 31.317587, 19.094007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.389107, 30.437981, 19.263508>,  <34.793549, 30.921583, 19.335899>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.389107, 30.437981, 19.263508> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.530479, 30.811396, 19.287491>,  <35.615303, 31.035444, 19.301880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.530479, 30.811396, 19.287491>,  <35.389107, 30.437981, 19.263508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.530479, 30.811396, 19.287491> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678562, -0.299963, 0.670504,
		0.643925, -0.196294, -0.739479,
		0.353433, 0.933537, 0.059956,
		35.636509, 31.091457, 19.305477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.158249, 30.368704, 19.232182>,  <35.389107, 30.437981, 19.263508>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.158249, 30.368704, 19.232182> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.058208, 30.706066, 19.422388>,  <35.998184, 30.908484, 19.536512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.058208, 30.706066, 19.422388>,  <36.158249, 30.368704, 19.232182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.058208, 30.706066, 19.422388> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672858, -0.201750, 0.711730,
		0.696211, 0.497962, -0.517033,
		-0.250103, 0.843404, 0.475518,
		35.983177, 30.959087, 19.565044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.631027, 29.343044, 21.428013> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.371323, 29.567310, 21.633581>,  <40.215500, 29.701870, 21.756922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.371323, 29.567310, 21.633581>,  <40.631027, 29.343044, 21.428013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.371323, 29.567310, 21.633581> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225452, -0.503462, 0.834085,
		0.726382, 0.657403, 0.200474,
		-0.649261, 0.560667, 0.513919,
		40.176544, 29.735510, 21.787756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.963413, 29.544460, 22.009926>,  <40.631027, 29.343044, 21.428013>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.963413, 29.544460, 22.009926> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.576981, 29.600218, 22.096874>,  <40.345119, 29.633673, 22.149042>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.576981, 29.600218, 22.096874>,  <40.963413, 29.544460, 22.009926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.576981, 29.600218, 22.096874> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142163, -0.415621, 0.898359,
		0.215567, 0.898793, 0.381709,
		-0.966085, 0.139391, 0.217369,
		40.287155, 29.642035, 22.162085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.919487, 30.130020, 22.581652>,  <40.963413, 29.544460, 22.009926>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.919487, 30.130020, 22.581652> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.621170, 29.863985, 22.566372>,  <40.442181, 29.704365, 22.557205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.621170, 29.863985, 22.566372>,  <40.919487, 30.130020, 22.581652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.621170, 29.863985, 22.566372> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165499, -0.240512, 0.956433,
		-0.645298, 0.706975, 0.289442,
		-0.745788, -0.665087, -0.038198,
		40.397434, 29.664459, 22.554913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.705418, 30.089020, 23.312983>,  <40.919487, 30.130020, 22.581652>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.705418, 30.089020, 23.312983> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.527058, 29.784172, 23.125221>,  <40.420040, 29.601263, 23.012564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.527058, 29.784172, 23.125221>,  <40.705418, 30.089020, 23.312983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.527058, 29.784172, 23.125221> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017731, -0.531846, 0.846655,
		-0.894905, 0.369204, 0.250666,
		-0.445905, -0.762121, -0.469405,
		40.393288, 29.555536, 22.984400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.034828, 29.865896, 23.741184>,  <40.705418, 30.089020, 23.312983>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.034828, 29.865896, 23.741184> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.169865, 29.561563, 23.519495>,  <40.250889, 29.378963, 23.386480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.169865, 29.561563, 23.519495>,  <40.034828, 29.865896, 23.741184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.169865, 29.561563, 23.519495> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063630, -0.605890, 0.793000,
		-0.939139, -0.232446, -0.252957,
		0.337594, -0.760833, -0.554225,
		40.271141, 29.333313, 23.353228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.744656, 29.275858, 24.139259>,  <40.034828, 29.865896, 23.741184>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.744656, 29.275858, 24.139259> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.008411, 29.095024, 23.898987>,  <40.166664, 28.986525, 23.754824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.008411, 29.095024, 23.898987>,  <39.744656, 29.275858, 24.139259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.008411, 29.095024, 23.898987> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244753, -0.626377, 0.740100,
		-0.710840, -0.635037, -0.302381,
		0.659395, -0.452084, -0.600681,
		40.206230, 28.959398, 23.718782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.593685, 28.648436, 24.130268>,  <39.744656, 29.275858, 24.139259>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.593685, 28.648436, 24.130268> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.972740, 28.622948, 24.005102>,  <40.200172, 28.607655, 23.930002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.972740, 28.622948, 24.005102>,  <39.593685, 28.648436, 24.130268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.972740, 28.622948, 24.005102> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158519, -0.756772, 0.634167,
		-0.277212, -0.650566, -0.707048,
		0.947642, -0.063718, -0.312914,
		40.257034, 28.603832, 23.911228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.742493, 27.921764, 24.071510>,  <39.593685, 28.648436, 24.130268>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.742493, 27.921764, 24.071510> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.091751, 28.116602, 24.079056>,  <40.301308, 28.233505, 24.083584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.091751, 28.116602, 24.079056>,  <39.742493, 27.921764, 24.071510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.091751, 28.116602, 24.079056> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383739, -0.710709, 0.589607,
		0.300601, -0.507574, -0.807470,
		0.873146, 0.487094, 0.018863,
		40.353695, 28.262730, 24.084715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.239727, 27.436718, 24.047729>,  <39.742493, 27.921764, 24.071510>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.239727, 27.436718, 24.047729> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.431133, 27.761457, 24.181549>,  <40.545979, 27.956301, 24.261841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.431133, 27.761457, 24.181549>,  <40.239727, 27.436718, 24.047729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.431133, 27.761457, 24.181549> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417418, -0.545517, 0.726756,
		0.772519, -0.208116, -0.599918,
		0.478515, 0.811849, 0.334551,
		40.574688, 28.005013, 24.281914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.898678, 27.319683, 23.932663>,  <40.239727, 27.436718, 24.047729>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.898678, 27.319683, 23.932663> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.871986, 27.590807, 24.225544>,  <40.855972, 27.753481, 24.401272>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.871986, 27.590807, 24.225544>,  <40.898678, 27.319683, 23.932663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.871986, 27.590807, 24.225544> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421424, -0.646024, 0.636439,
		0.904406, 0.351034, -0.242540,
		-0.066724, 0.677811, 0.732202,
		40.851971, 27.794151, 24.445204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.452408, 27.154152, 24.339224>,  <40.898678, 27.319683, 23.932663>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.452408, 27.154152, 24.339224> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.231499, 27.393145, 24.571779>,  <41.098953, 27.536541, 24.711313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.231499, 27.393145, 24.571779>,  <41.452408, 27.154152, 24.339224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.231499, 27.393145, 24.571779> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185825, -0.591619, 0.784510,
		0.812692, 0.541297, 0.215706,
		-0.552269, 0.597482, 0.581391,
		41.065819, 27.572390, 24.746197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.874058, 27.220537, 24.983280>,  <41.452408, 27.154152, 24.339224>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.874058, 27.220537, 24.983280> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.506477, 27.349535, 25.074083>,  <41.285931, 27.426933, 25.128565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.506477, 27.349535, 25.074083>,  <41.874058, 27.220537, 24.983280>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.506477, 27.349535, 25.074083> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075635, -0.420812, 0.903989,
		0.387058, 0.847889, 0.362312,
		-0.918948, 0.322493, 0.227009,
		41.230793, 27.446283, 25.142185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.812084, 27.725500, 25.647509>,  <41.874058, 27.220537, 24.983280>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.812084, 27.725500, 25.647509> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.466393, 27.537235, 25.576420>,  <41.258976, 27.424276, 25.533766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.466393, 27.537235, 25.576420>,  <41.812084, 27.725500, 25.647509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.466393, 27.537235, 25.576420> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033572, -0.406423, 0.913068,
		-0.501976, 0.783133, 0.367044,
		-0.864229, -0.470661, -0.177724,
		41.207123, 27.396036, 25.523104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.712349, 28.470139, 25.853889>,  <41.812084, 27.725500, 25.647509>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.712349, 28.470139, 25.853889> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.019161, 28.726727, 25.859392>,  <42.203247, 28.880678, 25.862694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.019161, 28.726727, 25.859392>,  <41.712349, 28.470139, 25.853889>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.019161, 28.726727, 25.859392> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601114, 0.725940, -0.334175,
		-0.224347, 0.248053, 0.942411,
		0.767027, 0.641468, 0.013755,
		42.249268, 28.919167, 25.863518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.513039, 29.023569, 26.151665>,  <41.712349, 28.470139, 25.853889>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.513039, 29.023569, 26.151665> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.795868, 29.213112, 25.941713>,  <41.965565, 29.326838, 25.815742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.795868, 29.213112, 25.941713>,  <41.513039, 29.023569, 26.151665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.795868, 29.213112, 25.941713> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624046, 0.767242, -0.148005,
		0.332577, 0.432200, 0.838210,
		0.707078, 0.473858, -0.524880,
		42.007992, 29.355268, 25.784248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.467365, 29.679897, 26.448334>,  <41.513039, 29.023569, 26.151665>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.467365, 29.679897, 26.448334> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.669323, 29.744625, 26.109182>,  <41.790497, 29.783463, 25.905691>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.669323, 29.744625, 26.109182>,  <41.467365, 29.679897, 26.448334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.669323, 29.744625, 26.109182> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479901, 0.869091, -0.119903,
		0.717479, 0.467435, 0.516458,
		0.504896, 0.161820, -0.847877,
		41.820793, 29.793171, 25.854820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.766590, 30.330421, 26.427799>,  <41.467365, 29.679897, 26.448334>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.766590, 30.330421, 26.427799> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.668949, 30.214203, 26.057718>,  <41.610367, 30.144472, 25.835670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.668949, 30.214203, 26.057718>,  <41.766590, 30.330421, 26.427799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.668949, 30.214203, 26.057718> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372495, 0.908963, -0.187171,
		0.895356, 0.298945, -0.330104,
		-0.244099, -0.290547, -0.925202,
		41.595718, 30.127039, 25.780157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.072464, 30.850506, 25.963388>,  <41.766590, 30.330421, 26.427799>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.072464, 30.850506, 25.963388> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.801128, 30.692940, 25.715296>,  <41.638329, 30.598400, 25.566441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.801128, 30.692940, 25.715296>,  <42.072464, 30.850506, 25.963388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.801128, 30.692940, 25.715296> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278095, 0.918987, -0.279510,
		0.680088, -0.017119, -0.732931,
		-0.678339, -0.393916, -0.620231,
		41.597626, 30.574764, 25.529226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.198616, 31.194393, 25.354803>,  <42.072464, 30.850506, 25.963388>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.198616, 31.194393, 25.354803> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.826809, 31.051998, 25.316290>,  <41.603725, 30.966560, 25.293182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.826809, 31.051998, 25.316290>,  <42.198616, 31.194393, 25.354803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.826809, 31.051998, 25.316290> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324802, 0.913924, -0.243405,
		0.174646, -0.194976, -0.965134,
		-0.929517, -0.355987, -0.096285,
		41.547955, 30.945202, 25.287405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.782284, 31.724743, 25.183905>,  <42.198616, 31.194393, 25.354803>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.782284, 31.724743, 25.183905> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.459724, 31.488974, 25.203115>,  <41.266190, 31.347513, 25.214642>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.459724, 31.488974, 25.203115>,  <41.782284, 31.724743, 25.183905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.459724, 31.488974, 25.203115> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582771, 0.778236, -0.233935,
		0.100511, -0.216633, -0.971065,
		-0.806396, -0.589422, 0.048026,
		41.217804, 31.312147, 25.217524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.435863, 31.648821, 24.487259>,  <41.782284, 31.724743, 25.183905>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.435863, 31.648821, 24.487259> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.183422, 31.595739, 24.792965>,  <41.031956, 31.563890, 24.976389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.183422, 31.595739, 24.792965>,  <41.435863, 31.648821, 24.487259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.183422, 31.595739, 24.792965> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533083, 0.789929, -0.303043,
		-0.563499, -0.598667, -0.569269,
		-0.631104, -0.132703, 0.764263,
		40.994091, 31.555929, 25.022243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.729702, 31.710754, 24.220676>,  <41.435863, 31.648821, 24.487259>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.729702, 31.710754, 24.220676> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.694122, 31.755507, 24.616570>,  <40.672775, 31.782358, 24.854105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.694122, 31.755507, 24.616570>,  <40.729702, 31.710754, 24.220676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.694122, 31.755507, 24.616570> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654276, 0.742661, -0.142752,
		-0.751007, -0.660256, 0.007140,
		-0.088950, 0.111879, 0.989733,
		40.667439, 31.789070, 24.913490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.053429, 31.494478, 24.252394>,  <40.729702, 31.710754, 24.220676>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.053429, 31.494478, 24.252394> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.173874, 31.720259, 24.559830>,  <40.246140, 31.855726, 24.744291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.173874, 31.720259, 24.559830>,  <40.053429, 31.494478, 24.252394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.173874, 31.720259, 24.559830> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787108, 0.602122, -0.133830,
		-0.538325, -0.564665, 0.625588,
		0.301112, 0.564449, 0.768589,
		40.264206, 31.889593, 24.790407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.473965, 31.598801, 24.608047>,  <40.053429, 31.494478, 24.252394>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.473965, 31.598801, 24.608047> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.722542, 31.890150, 24.723480>,  <39.871689, 32.064960, 24.792740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.722542, 31.890150, 24.723480>,  <39.473965, 31.598801, 24.608047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.722542, 31.890150, 24.723480> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741428, 0.665779, -0.083802,
		-0.253172, -0.161885, 0.953781,
		0.621441, 0.728375, 0.288583,
		39.908974, 32.108662, 24.810055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.024292, 32.069649, 24.999163>,  <39.473965, 31.598801, 24.608047>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.024292, 32.069649, 24.999163> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.362843, 32.272549, 24.934227>,  <39.565971, 32.394287, 24.895266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.362843, 32.272549, 24.934227>,  <39.024292, 32.069649, 24.999163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.362843, 32.272549, 24.934227> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529113, 0.835609, -0.147638,
		0.060765, 0.210853, 0.975627,
		0.846373, 0.507246, -0.162341,
		39.616753, 32.424721, 24.885525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.001339, 32.721809, 25.370043>,  <39.024292, 32.069649, 24.999163>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.001339, 32.721809, 25.370043> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.238266, 32.743404, 25.048485>,  <39.380421, 32.756363, 24.855551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.238266, 32.743404, 25.048485>,  <39.001339, 32.721809, 25.370043>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.238266, 32.743404, 25.048485> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598352, 0.697659, -0.394015,
		0.539572, 0.714393, 0.445539,
		0.592315, 0.053989, -0.803895,
		39.415962, 32.759602, 24.807316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.969025, 33.389210, 25.225523>,  <39.001339, 32.721809, 25.370043>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.969025, 33.389210, 25.225523> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.124767, 33.257347, 24.881495>,  <39.218212, 33.178230, 24.675077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.124767, 33.257347, 24.881495>,  <38.969025, 33.389210, 25.225523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.124767, 33.257347, 24.881495> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423817, 0.764922, -0.485050,
		0.817788, 0.553373, 0.158116,
		0.389360, -0.329656, -0.860073,
		39.241577, 33.158451, 24.623472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.222454, 33.974495, 24.844530>,  <38.969025, 33.389210, 25.225523>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.222454, 33.974495, 24.844530> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.149658, 33.691730, 24.571133>,  <39.105980, 33.522072, 24.407095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.149658, 33.691730, 24.571133>,  <39.222454, 33.974495, 24.844530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.149658, 33.691730, 24.571133> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561584, 0.645306, -0.517884,
		0.807158, 0.289591, -0.514424,
		-0.181986, -0.706907, -0.683494,
		39.095062, 33.479660, 24.366085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.305771, 34.684002, 25.111616>,  <39.222454, 33.974495, 24.844530>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.305771, 34.684002, 25.111616> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.052185, 34.878956, 25.351797>,  <38.900032, 34.995930, 25.495905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.052185, 34.878956, 25.351797>,  <39.305771, 34.684002, 25.111616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.052185, 34.878956, 25.351797> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244040, -0.610670, 0.753344,
		0.733848, 0.624128, 0.268201,
		-0.633965, 0.487388, 0.600451,
		38.861996, 35.025173, 25.531933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.680622, 34.803326, 25.694908>,  <39.305771, 34.684002, 25.111616>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.680622, 34.803326, 25.694908> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.292408, 34.804752, 25.791275>,  <39.059479, 34.805607, 25.849094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.292408, 34.804752, 25.791275>,  <39.680622, 34.803326, 25.694908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.292408, 34.804752, 25.791275> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181783, -0.645438, 0.741866,
		0.158140, 0.763804, 0.625775,
		-0.970539, 0.003563, 0.240916,
		39.001247, 34.805820, 25.863550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.669483, 34.732620, 26.435129>,  <39.680622, 34.803326, 25.694908>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.669483, 34.732620, 26.435129> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.287014, 34.641842, 26.361128>,  <39.057533, 34.587376, 26.316727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.287014, 34.641842, 26.361128>,  <39.669483, 34.732620, 26.435129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.287014, 34.641842, 26.361128> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039405, -0.526363, 0.849346,
		-0.290132, 0.819414, 0.494352,
		-0.956175, -0.226943, -0.185004,
		39.000160, 34.573757, 26.305626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.413559, 34.765259, 27.021704>,  <39.669483, 34.732620, 26.435129>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.413559, 34.765259, 27.021704> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.155136, 34.556046, 26.799335>,  <39.000080, 34.430519, 26.665915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.155136, 34.556046, 26.799335>,  <39.413559, 34.765259, 27.021704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.155136, 34.556046, 26.799335> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210198, -0.578251, 0.788316,
		-0.733774, 0.626153, 0.263645,
		-0.646059, -0.523028, -0.555922,
		38.961319, 34.399136, 26.632559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.962067, 34.554432, 27.472887>,  <39.413559, 34.765259, 27.021704>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.962067, 34.554432, 27.472887> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.879444, 34.294655, 27.180161>,  <38.829872, 34.138790, 27.004524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.879444, 34.294655, 27.180161>,  <38.962067, 34.554432, 27.472887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.879444, 34.294655, 27.180161> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191592, -0.706621, 0.681160,
		-0.959493, 0.280909, 0.021530,
		-0.206557, -0.649443, -0.731818,
		38.817478, 34.099823, 26.960615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.430386, 34.189312, 27.723572>,  <38.962067, 34.554432, 27.472887>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.430386, 34.189312, 27.723572> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.608887, 33.961990, 27.447052>,  <38.715988, 33.825600, 27.281139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.608887, 33.961990, 27.447052>,  <38.430386, 34.189312, 27.723572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.608887, 33.961990, 27.447052> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011888, -0.768649, 0.639560,
		-0.894830, -0.293621, -0.336253,
		0.446249, -0.568300, -0.691301,
		38.742764, 33.791500, 27.239662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.077152, 33.534874, 27.745985>,  <38.430386, 34.189312, 27.723572>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.077152, 33.534874, 27.745985> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.437618, 33.493076, 27.577711>,  <38.653900, 33.467999, 27.476748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.437618, 33.493076, 27.577711>,  <38.077152, 33.534874, 27.745985>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.437618, 33.493076, 27.577711> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170556, -0.806753, 0.565739,
		-0.398503, -0.581577, -0.709200,
		0.901169, -0.104491, -0.420685,
		38.707970, 33.461731, 27.451506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.090672, 32.867035, 27.773623>,  <38.077152, 33.534874, 27.745985>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.090672, 32.867035, 27.773623> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.467445, 32.969658, 27.686954>,  <38.693508, 33.031231, 27.634953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.467445, 32.969658, 27.686954>,  <38.090672, 32.867035, 27.773623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.467445, 32.969658, 27.686954> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324191, -0.862981, 0.387510,
		-0.087565, -0.435251, -0.896041,
		0.941930, 0.256556, -0.216672,
		38.750023, 33.046623, 27.621952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.350487, 32.283863, 27.586180>,  <38.090672, 32.867035, 27.773623>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.350487, 32.283863, 27.586180> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.690105, 32.491062, 27.627747>,  <38.893875, 32.615383, 27.652687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.690105, 32.491062, 27.627747>,  <38.350487, 32.283863, 27.586180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.690105, 32.491062, 27.627747> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414128, -0.774664, 0.477905,
		0.328056, -0.362728, -0.872243,
		0.849045, 0.518000, 0.103918,
		38.944820, 32.646461, 27.658922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.932957, 31.862339, 27.310858>,  <38.350487, 32.283863, 27.586180>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.932957, 31.862339, 27.310858> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.101337, 32.099373, 27.585564>,  <39.202366, 32.241592, 27.750387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.101337, 32.099373, 27.585564>,  <38.932957, 31.862339, 27.310858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.101337, 32.099373, 27.585564> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432888, -0.796572, 0.421997,
		0.797127, 0.119654, -0.591838,
		0.420947, 0.592584, 0.686766,
		39.227623, 32.277149, 27.791594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.594379, 31.601606, 27.345232>,  <38.932957, 31.862339, 27.310858>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.594379, 31.601606, 27.345232> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.563457, 31.820465, 27.678616>,  <39.544903, 31.951780, 27.878647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.563457, 31.820465, 27.678616>,  <39.594379, 31.601606, 27.345232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.563457, 31.820465, 27.678616> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247962, -0.799144, 0.547617,
		0.965680, 0.249002, -0.073891,
		-0.077308, 0.547145, 0.833461,
		39.540264, 31.984608, 27.928654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.269493, 31.688622, 27.687580>,  <39.594379, 31.601606, 27.345232>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.269493, 31.688622, 27.687580> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.973927, 31.701569, 27.956789>,  <39.796589, 31.709337, 28.118315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.973927, 31.701569, 27.956789>,  <40.269493, 31.688622, 27.687580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.973927, 31.701569, 27.956789> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398457, -0.784487, 0.475198,
		0.543359, 0.619300, 0.566770,
		-0.738913, 0.032369, 0.673022,
		39.752251, 31.711279, 28.158695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.985180, 37.411606, 22.621132> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.632515, 37.287189, 22.763071>,  <37.420914, 37.212540, 22.848234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.632515, 37.287189, 22.763071>,  <37.985180, 37.411606, 22.621132>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.632515, 37.287189, 22.763071> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464834, -0.443091, 0.766550,
		-0.081200, 0.840787, 0.535242,
		-0.881666, -0.311042, 0.354848,
		37.368015, 37.193878, 22.869526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.807510, 37.764397, 23.341284>,  <37.985180, 37.411606, 22.621132>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.807510, 37.764397, 23.341284> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.602428, 37.421844, 23.316818>,  <37.479378, 37.216312, 23.302139>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.602428, 37.421844, 23.316818>,  <37.807510, 37.764397, 23.341284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.602428, 37.421844, 23.316818> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320866, -0.257199, 0.911534,
		-0.796354, 0.447722, 0.406651,
		-0.512704, -0.856384, -0.061163,
		37.448616, 37.164928, 23.298470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653587, 37.607796, 24.074413>,  <37.807510, 37.764397, 23.341284>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.653587, 37.607796, 24.074413> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.564262, 37.269638, 23.880323>,  <37.510666, 37.066746, 23.763870>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.564262, 37.269638, 23.880323>,  <37.653587, 37.607796, 24.074413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.564262, 37.269638, 23.880323> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420333, -0.532653, 0.734576,
		-0.879460, -0.039912, 0.474297,
		-0.223317, -0.845392, -0.485223,
		37.497269, 37.016022, 23.734756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.132683, 37.176971, 24.436499>,  <37.653587, 37.607796, 24.074413>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.132683, 37.176971, 24.436499> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.366699, 36.937798, 24.217339>,  <37.507111, 36.794292, 24.085842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.366699, 36.937798, 24.217339>,  <37.132683, 37.176971, 24.436499>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.366699, 36.937798, 24.217339> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179464, -0.563388, 0.806466,
		-0.790897, -0.570145, -0.222297,
		0.585042, -0.597937, -0.547902,
		37.542213, 36.758415, 24.052967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.079254, 36.543762, 24.761585>,  <37.132683, 37.176971, 24.436499>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.079254, 36.543762, 24.761585> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.399410, 36.471085, 24.533072>,  <37.591503, 36.427479, 24.395964>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.399410, 36.471085, 24.533072>,  <37.079254, 36.543762, 24.761585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.399410, 36.471085, 24.533072> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383897, -0.576582, 0.721232,
		-0.460432, -0.796581, -0.391741,
		0.800391, -0.181690, -0.571282,
		37.639526, 36.416576, 24.361687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.122238, 35.854065, 24.728449>,  <37.079254, 36.543762, 24.761585>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.122238, 35.854065, 24.728449> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.488991, 35.989338, 24.643625>,  <37.709042, 36.070499, 24.592731>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.488991, 35.989338, 24.643625>,  <37.122238, 35.854065, 24.728449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.488991, 35.989338, 24.643625> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388995, -0.637837, 0.664715,
		0.089536, -0.691952, -0.716369,
		0.916878, 0.338180, -0.212056,
		37.764053, 36.090794, 24.580008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.393795, 35.228664, 24.860695>,  <37.122238, 35.854065, 24.728449>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.393795, 35.228664, 24.860695> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.719891, 35.449692, 24.791342>,  <37.915546, 35.582306, 24.749729>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.719891, 35.449692, 24.791342>,  <37.393795, 35.228664, 24.860695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.719891, 35.449692, 24.791342> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474662, -0.466009, 0.746681,
		0.331790, -0.691020, -0.642189,
		0.815237, 0.552564, -0.173384,
		37.964462, 35.615459, 24.739326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.011448, 34.722202, 24.740864>,  <37.393795, 35.228664, 24.860695>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.011448, 34.722202, 24.740864> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.139908, 35.073376, 24.882900>,  <38.216984, 35.284081, 24.968122>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.139908, 35.073376, 24.882900>,  <38.011448, 34.722202, 24.740864>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.139908, 35.073376, 24.882900> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539807, -0.477781, 0.693062,
		0.778119, -0.030898, -0.627356,
		0.321153, 0.877936, 0.355091,
		38.236252, 35.336758, 24.989428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.684971, 34.648354, 24.761898>,  <38.011448, 34.722202, 24.740864>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.684971, 34.648354, 24.761898> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.596756, 34.947308, 25.012585>,  <38.543827, 35.126682, 25.162996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.596756, 34.947308, 25.012585>,  <38.684971, 34.648354, 24.761898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.596756, 34.947308, 25.012585> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518476, -0.454410, 0.724358,
		0.826163, 0.484688, -0.287286,
		-0.220542, 0.747388, 0.626716,
		38.530594, 35.171524, 25.200600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.149643, 34.413914, 24.132006>,  <38.684971, 34.648354, 24.761898>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.149643, 34.413914, 24.132006> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.041016, 34.043671, 24.026556>,  <38.975842, 33.821526, 23.963285>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.041016, 34.043671, 24.026556>,  <39.149643, 34.413914, 24.132006>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.041016, 34.043671, 24.026556> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452159, 0.364512, -0.814053,
		0.849591, -0.101868, -0.517512,
		-0.271565, -0.925610, -0.263626,
		38.959545, 33.765987, 23.947468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.096241, 34.427231, 23.455818>,  <39.149643, 34.413914, 24.132006>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.096241, 34.427231, 23.455818> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884884, 34.088093, 23.473549>,  <38.758068, 33.884609, 23.484188>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884884, 34.088093, 23.473549>,  <39.096241, 34.427231, 23.455818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.884884, 34.088093, 23.473549> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497302, 0.266767, -0.825546,
		0.688106, -0.458258, -0.562592,
		-0.528394, -0.847841, 0.044329,
		38.726364, 33.833740, 23.486847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.167542, 34.081291, 22.788738>,  <39.096241, 34.427231, 23.455818>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.167542, 34.081291, 22.788738> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.828026, 33.962780, 22.963903>,  <38.624317, 33.891674, 23.069002>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.828026, 33.962780, 22.963903>,  <39.167542, 34.081291, 22.788738>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.828026, 33.962780, 22.963903> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516279, 0.285784, -0.807331,
		0.114047, -0.911343, -0.395535,
		-0.848793, -0.296280, 0.437915,
		38.573387, 33.873898, 23.095278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.850880, 33.727482, 22.225929>,  <39.167542, 34.081291, 22.788738>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.850880, 33.727482, 22.225929> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.563236, 33.788528, 22.497103>,  <38.390652, 33.825157, 22.659807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.563236, 33.788528, 22.497103>,  <38.850880, 33.727482, 22.225929>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.563236, 33.788528, 22.497103> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681686, 0.034408, -0.730835,
		-0.134863, -0.987687, 0.079292,
		-0.719108, 0.152615, 0.677932,
		38.347504, 33.834312, 22.700483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.367332, 33.246433, 22.070505>,  <38.850880, 33.727482, 22.225929>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.367332, 33.246433, 22.070505> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.171593, 33.524792, 22.280750>,  <38.054150, 33.691807, 22.406897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.171593, 33.524792, 22.280750>,  <38.367332, 33.246433, 22.070505>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.171593, 33.524792, 22.280750> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634311, 0.129599, -0.762138,
		-0.598486, -0.706354, 0.377994,
		-0.489351, 0.695894, 0.525611,
		38.024788, 33.733559, 22.438433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.684647, 33.026669, 21.899450>,  <38.367332, 33.246433, 22.070505>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.684647, 33.026669, 21.899450> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.693199, 33.399349, 22.044493>,  <37.698330, 33.622955, 22.131517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.693199, 33.399349, 22.044493>,  <37.684647, 33.026669, 21.899450>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.693199, 33.399349, 22.044493> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753704, 0.253311, -0.606435,
		-0.656866, -0.260332, 0.707640,
		0.021379, 0.931698, 0.362605,
		37.699612, 33.678860, 22.153275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.963203, 33.246132, 21.951302>,  <37.684647, 33.026669, 21.899450>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.963203, 33.246132, 21.951302> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.169647, 33.586349, 21.910900>,  <37.293514, 33.790482, 21.886660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.169647, 33.586349, 21.910900>,  <36.963203, 33.246132, 21.951302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.169647, 33.586349, 21.910900> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639528, 0.304224, -0.706011,
		-0.569767, 0.428975, 0.700961,
		0.516111, 0.850546, -0.101005,
		37.324482, 33.841515, 21.880598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.390732, 33.650242, 21.891609>,  <36.963203, 33.246132, 21.951302>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.390732, 33.650242, 21.891609> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.705025, 33.861244, 21.762390>,  <36.893600, 33.987846, 21.684858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.705025, 33.861244, 21.762390>,  <36.390732, 33.650242, 21.891609>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.705025, 33.861244, 21.762390> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516784, 0.272802, -0.811488,
		-0.339941, 0.804557, 0.486957,
		0.785732, 0.527510, -0.323046,
		36.940742, 34.019497, 21.665476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.130939, 34.373367, 21.769417>,  <36.390732, 33.650242, 21.891609>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.130939, 34.373367, 21.769417> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.471275, 34.337784, 21.562281>,  <36.675476, 34.316433, 21.438000>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.471275, 34.337784, 21.562281>,  <36.130939, 34.373367, 21.769417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.471275, 34.337784, 21.562281> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434363, 0.435446, -0.788489,
		0.295634, 0.895809, 0.331855,
		0.850840, -0.088958, -0.517839,
		36.726528, 34.311096, 21.406929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.216160, 34.981651, 21.513918>,  <36.130939, 34.373367, 21.769417>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.216160, 34.981651, 21.513918> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.457485, 34.758606, 21.285854>,  <36.602280, 34.624779, 21.149015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.457485, 34.758606, 21.285854>,  <36.216160, 34.981651, 21.513918>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.457485, 34.758606, 21.285854> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355814, 0.451624, -0.818188,
		0.713728, 0.696496, 0.074066,
		0.603315, -0.557610, -0.570160,
		36.638481, 34.591324, 21.114807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.637470, 35.507790, 21.016308>,  <36.216160, 34.981651, 21.513918>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.637470, 35.507790, 21.016308> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.595703, 35.146549, 20.849688>,  <36.570644, 34.929806, 20.749716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.595703, 35.146549, 20.849688>,  <36.637470, 35.507790, 21.016308>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.595703, 35.146549, 20.849688> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361208, 0.424674, -0.830169,
		0.926621, 0.063780, -0.370548,
		-0.104414, -0.903097, -0.416549,
		36.564381, 34.875622, 20.724722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.991585, 35.579327, 20.309700>,  <36.637470, 35.507790, 21.016308>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.991585, 35.579327, 20.309700> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.811760, 35.224133, 20.270964>,  <36.703865, 35.011017, 20.247721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.811760, 35.224133, 20.270964>,  <36.991585, 35.579327, 20.309700>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.811760, 35.224133, 20.270964> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210188, 0.210533, -0.954723,
		0.868168, -0.408852, -0.281291,
		-0.449562, -0.887984, -0.096842,
		36.676891, 34.957737, 20.241911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.242020, 35.320263, 19.688087>,  <36.991585, 35.579327, 20.309700>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.242020, 35.320263, 19.688087> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.885139, 35.151665, 19.752983>,  <36.671013, 35.050507, 19.791922>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.885139, 35.151665, 19.752983>,  <37.242020, 35.320263, 19.688087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.885139, 35.151665, 19.752983> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307776, 0.304508, -0.901415,
		0.330553, -0.854169, -0.401411,
		-0.892194, -0.421510, 0.162237,
		36.617481, 35.025215, 19.801655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.029720, 34.862728, 19.122688>,  <37.242020, 35.320263, 19.688087>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.029720, 34.862728, 19.122688> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.677212, 34.962337, 19.283361>,  <36.465706, 35.022102, 19.379765>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.677212, 34.962337, 19.283361>,  <37.029720, 34.862728, 19.122688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.677212, 34.962337, 19.283361> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380021, 0.131908, -0.915524,
		-0.280975, -0.959472, -0.021612,
		-0.881270, 0.249026, 0.401682,
		36.412830, 35.037045, 19.403866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<32.623795, 32.744720, 20.946562> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.979671, 32.915974, 20.883137>,  <33.193199, 33.018726, 20.845081>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.979671, 32.915974, 20.883137>,  <32.623795, 32.744720, 20.946562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.979671, 32.915974, 20.883137> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404926, -0.579528, 0.707235,
		0.210901, -0.693430, -0.688967,
		0.889694, 0.428138, -0.158564,
		33.246578, 33.044415, 20.835567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.130581, 32.154888, 20.879263>,  <32.623795, 32.744720, 20.946562>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.130581, 32.154888, 20.879263> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.358196, 32.474953, 20.955090>,  <33.494766, 32.666992, 21.000586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.358196, 32.474953, 20.955090>,  <33.130581, 32.154888, 20.879263>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.358196, 32.474953, 20.955090> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679565, -0.587401, 0.439491,
		0.463015, -0.121266, -0.878016,
		0.569042, 0.800159, 0.189567,
		33.528908, 32.715000, 21.011959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.812382, 31.955307, 20.768106>,  <33.130581, 32.154888, 20.879263>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.812382, 31.955307, 20.768106> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.853230, 32.303844, 20.960079>,  <33.877739, 32.512966, 21.075262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.853230, 32.303844, 20.960079>,  <33.812382, 31.955307, 20.768106>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.853230, 32.303844, 20.960079> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820634, -0.346478, 0.454437,
		0.562256, 0.347442, -0.750435,
		0.102119, 0.871342, 0.479932,
		33.883865, 32.565247, 21.104059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.590870, 32.175972, 20.773146>,  <33.812382, 31.955307, 20.768106>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.590870, 32.175972, 20.773146> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.412735, 32.339184, 21.091942>,  <34.305855, 32.437111, 21.283218>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.412735, 32.339184, 21.091942>,  <34.590870, 32.175972, 20.773146>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.412735, 32.339184, 21.091942> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700168, -0.396105, 0.594025,
		0.558068, 0.822567, -0.109286,
		-0.445336, 0.408025, 0.796989,
		34.279133, 32.461590, 21.331039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.111313, 32.284843, 21.290678>,  <34.590870, 32.175972, 20.773146>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.111313, 32.284843, 21.290678> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.793327, 32.326107, 21.529806>,  <34.602535, 32.350864, 21.673283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.793327, 32.326107, 21.529806>,  <35.111313, 32.284843, 21.290678>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.793327, 32.326107, 21.529806> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457271, -0.545687, 0.702231,
		0.398667, 0.831615, 0.386629,
		-0.794964, 0.103162, 0.597821,
		34.554836, 32.357056, 21.709152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.411255, 32.403591, 21.951241>,  <35.111313, 32.284843, 21.290678>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.411255, 32.403591, 21.951241> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.040932, 32.271980, 22.025671>,  <34.818737, 32.193012, 22.070330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.040932, 32.271980, 22.025671>,  <35.411255, 32.403591, 21.951241>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.040932, 32.271980, 22.025671> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367037, -0.664794, 0.650641,
		-0.090379, 0.670663, 0.736236,
		-0.925806, -0.329030, 0.186074,
		34.763191, 32.173271, 22.081493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.377029, 32.549599, 22.702562>,  <35.411255, 32.403591, 21.951241>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.377029, 32.549599, 22.702562> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.073139, 32.304302, 22.616072>,  <34.890804, 32.157124, 22.564177>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.073139, 32.304302, 22.616072>,  <35.377029, 32.549599, 22.702562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.073139, 32.304302, 22.616072> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187090, -0.524622, 0.830524,
		-0.622748, 0.590516, 0.513299,
		-0.759726, -0.613239, -0.216227,
		34.845222, 32.120331, 22.551203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.937531, 32.582993, 23.270594>,  <35.377029, 32.549599, 22.702562>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.937531, 32.582993, 23.270594> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.860859, 32.225231, 23.108952>,  <34.814854, 32.010574, 23.011967>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.860859, 32.225231, 23.108952>,  <34.937531, 32.582993, 23.270594>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.860859, 32.225231, 23.108952> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167655, -0.435526, 0.884426,
		-0.967031, 0.101779, 0.233434,
		-0.191683, -0.894404, -0.404104,
		34.803352, 31.956909, 22.987720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.485096, 32.295723, 23.780834>,  <34.937531, 32.582993, 23.270594>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.485096, 32.295723, 23.780834> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.653458, 32.014709, 23.551300>,  <34.754475, 31.846102, 23.413580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.653458, 32.014709, 23.551300>,  <34.485096, 32.295723, 23.780834>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.653458, 32.014709, 23.551300> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325756, -0.473335, 0.818436,
		-0.846594, -0.531414, 0.029625,
		0.420905, -0.702533, -0.573834,
		34.779728, 31.803949, 23.379150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.285389, 31.719490, 24.085543>,  <34.485096, 32.295723, 23.780834>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.285389, 31.719490, 24.085543> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.617073, 31.624262, 23.883261>,  <34.816082, 31.567125, 23.761890>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.617073, 31.624262, 23.883261>,  <34.285389, 31.719490, 24.085543>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.617073, 31.624262, 23.883261> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378753, -0.426040, 0.821606,
		-0.411046, -0.872820, -0.263108,
		0.829209, -0.238065, -0.505705,
		34.865833, 31.552841, 23.731548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.431259, 31.133104, 24.541830>,  <34.285389, 31.719490, 24.085543>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.431259, 31.133104, 24.541830> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.744194, 31.174206, 24.296103>,  <34.931953, 31.198866, 24.148666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.744194, 31.174206, 24.296103>,  <34.431259, 31.133104, 24.541830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.744194, 31.174206, 24.296103> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574635, -0.499583, 0.648237,
		-0.240296, -0.860150, -0.449889,
		0.782338, 0.102753, -0.614320,
		34.978897, 31.205032, 24.111807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.804859, 30.389427, 24.507063>,  <34.431259, 31.133104, 24.541830>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.804859, 30.389427, 24.507063> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.041466, 30.698065, 24.413464>,  <35.183430, 30.883247, 24.357304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.041466, 30.698065, 24.413464>,  <34.804859, 30.389427, 24.507063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.041466, 30.698065, 24.413464> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687374, -0.330872, 0.646561,
		0.421459, -0.543293, -0.726089,
		0.591514, 0.771593, -0.233997,
		35.218922, 30.929543, 24.343264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.454697, 30.106640, 24.219063>,  <34.804859, 30.389427, 24.507063>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.454697, 30.106640, 24.219063> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.539501, 30.471298, 24.359888>,  <35.590385, 30.690094, 24.444384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.539501, 30.471298, 24.359888>,  <35.454697, 30.106640, 24.219063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.539501, 30.471298, 24.359888> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772068, -0.377110, 0.511566,
		0.599134, 0.163357, -0.783807,
		0.212013, 0.911648, 0.352062,
		35.603104, 30.744793, 24.465508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.142639, 30.171549, 24.141832>,  <35.454697, 30.106640, 24.219063>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.142639, 30.171549, 24.141832> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.064732, 30.437500, 24.430277>,  <36.017986, 30.597071, 24.603344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.064732, 30.437500, 24.430277>,  <36.142639, 30.171549, 24.141832>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.064732, 30.437500, 24.430277> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745744, -0.377177, 0.549184,
		0.637127, 0.644730, -0.422365,
		-0.194769, 0.664877, 0.721113,
		36.006302, 30.636963, 24.646610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.716007, 30.462421, 23.753244>,  <36.142639, 30.171549, 24.141832>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.716007, 30.462421, 23.753244> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.926121, 30.219553, 23.514778>,  <37.052189, 30.073832, 23.371698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.926121, 30.219553, 23.514778>,  <36.716007, 30.462421, 23.753244>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.926121, 30.219553, 23.514778> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154915, 0.620664, -0.768621,
		0.836704, 0.496102, 0.231967,
		0.525288, -0.607173, -0.596166,
		37.083706, 30.037401, 23.335928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.148571, 30.870262, 23.404888>,  <36.716007, 30.462421, 23.753244>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.148571, 30.870262, 23.404888> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.096596, 30.539467, 23.186089>,  <37.065411, 30.340990, 23.054810>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.096596, 30.539467, 23.186089>,  <37.148571, 30.870262, 23.404888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.096596, 30.539467, 23.186089> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267155, 0.560473, -0.783899,
		0.954853, 0.044277, -0.293760,
		-0.129936, -0.826988, -0.546999,
		37.057613, 30.291370, 23.021990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.647972, 30.886349, 22.829185>,  <37.148571, 30.870262, 23.404888>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.647972, 30.886349, 22.829185> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.378731, 30.616522, 22.707930>,  <37.217186, 30.454624, 22.635176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.378731, 30.616522, 22.707930>,  <37.647972, 30.886349, 22.829185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.378731, 30.616522, 22.707930> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053402, 0.364493, -0.929674,
		0.737622, -0.641951, -0.209316,
		-0.673099, -0.674570, -0.303139,
		37.176800, 30.414150, 22.616987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.872601, 30.773708, 22.150841>,  <37.647972, 30.886349, 22.829185>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.872601, 30.773708, 22.150841> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.500130, 30.627882, 22.151525>,  <37.276646, 30.540386, 22.151937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.500130, 30.627882, 22.151525>,  <37.872601, 30.773708, 22.150841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.500130, 30.627882, 22.151525> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156637, 0.395832, -0.904866,
		0.329202, -0.842859, -0.425694,
		-0.931177, -0.364563, 0.001714,
		37.220776, 30.518513, 22.152040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.835030, 30.447706, 21.462130>,  <37.872601, 30.773708, 22.150841>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.835030, 30.447706, 21.462130> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.466740, 30.523258, 21.598713>,  <37.245766, 30.568590, 21.680664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.466740, 30.523258, 21.598713>,  <37.835030, 30.447706, 21.462130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.466740, 30.523258, 21.598713> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275497, 0.305070, -0.911610,
		-0.276356, -0.933411, -0.228849,
		-0.920722, 0.188882, 0.341460,
		37.190521, 30.579924, 21.701151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.403477, 30.142780, 20.974751>,  <37.835030, 30.447706, 21.462130>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.403477, 30.142780, 20.974751> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.165768, 30.399229, 21.168989>,  <37.023140, 30.553099, 21.285532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.165768, 30.399229, 21.168989>,  <37.403477, 30.142780, 20.974751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.165768, 30.399229, 21.168989> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403199, 0.284931, -0.869624,
		-0.695894, -0.712587, 0.089171,
		-0.594275, 0.641120, 0.485596,
		36.987484, 30.591564, 21.314669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.702461, 30.146214, 20.647322>,  <37.403477, 30.142780, 20.974751>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.702461, 30.146214, 20.647322> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.681511, 30.497713, 20.837084>,  <36.668941, 30.708612, 20.950941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.681511, 30.497713, 20.837084>,  <36.702461, 30.146214, 20.647322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.681511, 30.497713, 20.837084> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372073, 0.423680, -0.825867,
		-0.926725, -0.219767, 0.304769,
		-0.052374, 0.878748, 0.474404,
		36.665798, 30.761337, 20.979404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.014595, 30.432211, 20.579866>,  <36.702461, 30.146214, 20.647322>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.014595, 30.432211, 20.579866> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.255249, 30.738335, 20.671381>,  <36.399639, 30.922009, 20.726290>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.255249, 30.738335, 20.671381>,  <36.014595, 30.432211, 20.579866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.255249, 30.738335, 20.671381> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390507, 0.531666, -0.751555,
		-0.696809, 0.362817, 0.618725,
		0.601632, 0.765307, 0.228788,
		36.435738, 30.967926, 20.740017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.590199, 30.997406, 20.652060>,  <36.014595, 30.432211, 20.579866>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.590199, 30.997406, 20.652060> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.946548, 31.147058, 20.549009>,  <36.160358, 31.236849, 20.487179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.946548, 31.147058, 20.549009>,  <35.590199, 30.997406, 20.652060>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.946548, 31.147058, 20.549009> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400794, 0.380461, -0.833435,
		-0.213797, 0.845740, 0.488891,
		0.890873, 0.374130, -0.257626,
		36.213810, 31.259298, 20.471722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.473949, 31.542515, 20.231163>,  <35.590199, 30.997406, 20.652060>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.473949, 31.542515, 20.231163> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.859135, 31.511057, 20.127995>,  <36.090244, 31.492182, 20.066093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.859135, 31.511057, 20.127995>,  <35.473949, 31.542515, 20.231163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.859135, 31.511057, 20.127995> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231323, 0.250568, -0.940056,
		0.138559, 0.964899, 0.223094,
		0.962959, -0.078647, -0.257922,
		36.148022, 31.487463, 20.050617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.822144, 32.157703, 19.934534>,  <35.473949, 31.542515, 20.231163>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.822144, 32.157703, 19.934534> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.907772, 31.784609, 19.818483>,  <35.959148, 31.560751, 19.748854>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.907772, 31.784609, 19.818483>,  <35.822144, 32.157703, 19.934534>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.907772, 31.784609, 19.818483> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539755, 0.134600, -0.830992,
		0.814149, 0.334489, -0.474635,
		0.214072, -0.932738, -0.290127,
		35.971992, 31.504787, 19.731445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.254166, 32.184624, 19.376875>,  <35.822144, 32.157703, 19.934534>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.254166, 32.184624, 19.376875> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.027596, 31.855158, 19.366020>,  <35.891651, 31.657478, 19.359507>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.027596, 31.855158, 19.366020>,  <36.254166, 32.184624, 19.376875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.027596, 31.855158, 19.366020> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364115, 0.279670, -0.888372,
		0.739310, -0.493317, -0.458322,
		-0.566428, -0.823664, -0.027139,
		35.857666, 31.608059, 19.357878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.294117, 32.016266, 18.684875>,  <36.254166, 32.184624, 19.376875>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.294117, 32.016266, 18.684875> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.976021, 31.822939, 18.831295>,  <35.785164, 31.706944, 18.919147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.976021, 31.822939, 18.831295>,  <36.294117, 32.016266, 18.684875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.976021, 31.822939, 18.831295> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485351, 0.145667, -0.862099,
		0.363344, -0.863242, -0.350419,
		-0.795245, -0.483315, 0.366048,
		35.737446, 31.677944, 18.941109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.051048, 31.608341, 18.168287>,  <36.294117, 32.016266, 18.684875>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.051048, 31.608341, 18.168287> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.722427, 31.628601, 18.395441>,  <35.525257, 31.640757, 18.531733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.722427, 31.628601, 18.395441>,  <36.051048, 31.608341, 18.168287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.722427, 31.628601, 18.395441> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567916, 0.015181, -0.822947,
		-0.050305, -0.998601, 0.016294,
		-0.821548, 0.050652, 0.567885,
		35.475964, 31.643797, 18.565807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.418552, 31.124058, 17.642895>,  <36.051048, 31.608341, 18.168287>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.418552, 31.124058, 17.642895> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.703430, 31.329765, 17.451769>,  <36.874355, 31.453190, 17.337093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.703430, 31.329765, 17.451769>,  <36.418552, 31.124058, 17.642895>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.703430, 31.329765, 17.451769> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693430, -0.621322, 0.364847,
		-0.109245, -0.591172, -0.799112,
		0.712194, 0.514271, -0.477813,
		36.917088, 31.484047, 17.308424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.892262, 30.610205, 17.587620>,  <36.418552, 31.124058, 17.642895>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.892262, 30.610205, 17.587620> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.086208, 30.956354, 17.536966>,  <37.202576, 31.164043, 17.506575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.086208, 30.956354, 17.536966>,  <36.892262, 30.610205, 17.587620>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.086208, 30.956354, 17.536966> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820794, -0.400250, 0.407552,
		0.301999, -0.301547, -0.904359,
		0.484865, 0.865373, -0.126633,
		37.231667, 31.215965, 17.498976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.491600, 30.405128, 17.288721>,  <36.892262, 30.610205, 17.587620>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.491600, 30.405128, 17.288721> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.548553, 30.762087, 17.460003>,  <37.582726, 30.976261, 17.562773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.548553, 30.762087, 17.460003>,  <37.491600, 30.405128, 17.288721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.548553, 30.762087, 17.460003> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895355, -0.300556, 0.328643,
		0.421979, 0.336599, -0.841805,
		0.142388, 0.892394, 0.428204,
		37.591270, 31.029804, 17.588465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.191563, 30.740007, 17.246311>,  <37.491600, 30.405128, 17.288721>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.191563, 30.740007, 17.246311> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.024773, 30.917791, 17.563444>,  <37.924698, 31.024462, 17.753725>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.024773, 30.917791, 17.563444>,  <38.191563, 30.740007, 17.246311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.024773, 30.917791, 17.563444> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710299, -0.384901, 0.589344,
		0.567102, 0.808892, -0.155205,
		-0.416977, 0.444461, 0.792833,
		37.899681, 31.051130, 17.801294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.784313, 31.002062, 17.659880>,  <38.191563, 30.740007, 17.246311>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.784313, 31.002062, 17.659880> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.496918, 31.021069, 17.937445>,  <38.324482, 31.032473, 18.103983>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.496918, 31.021069, 17.937445>,  <38.784313, 31.002062, 17.659880>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.496918, 31.021069, 17.937445> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666704, -0.237224, 0.706563,
		0.198186, 0.970292, 0.138764,
		-0.718490, 0.047517, 0.693912,
		38.281372, 31.035324, 18.145618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.022491, 31.433485, 18.219614>,  <38.784313, 31.002062, 17.659880>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.022491, 31.433485, 18.219614> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.737415, 31.227068, 18.409678>,  <38.566372, 31.103218, 18.523716>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.737415, 31.227068, 18.409678>,  <39.022491, 31.433485, 18.219614>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.737415, 31.227068, 18.409678> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504548, 0.093499, 0.858306,
		-0.487350, 0.851444, 0.193733,
		-0.712686, -0.516043, 0.475161,
		38.523609, 31.072254, 18.552225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.918839, 31.715698, 18.752956>,  <39.022491, 31.433485, 18.219614>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.918839, 31.715698, 18.752956> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.770477, 31.359734, 18.859158>,  <38.681461, 31.146154, 18.922878>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.770477, 31.359734, 18.859158>,  <38.918839, 31.715698, 18.752956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.770477, 31.359734, 18.859158> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612032, -0.019214, 0.790600,
		-0.698461, 0.455732, 0.551780,
		-0.370903, -0.889910, 0.265502,
		38.659206, 31.092760, 18.938808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.638905, 31.759800, 19.401926>,  <38.918839, 31.715698, 18.752956>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.638905, 31.759800, 19.401926> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.732300, 31.371618, 19.377586>,  <38.788338, 31.138710, 19.362984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.732300, 31.371618, 19.377586>,  <38.638905, 31.759800, 19.401926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.732300, 31.371618, 19.377586> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342020, 0.023388, 0.939401,
		-0.910223, -0.240150, 0.337376,
		0.233487, -0.970454, -0.060848,
		38.802345, 31.080482, 19.359331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.437748, 31.423365, 20.076727>,  <38.638905, 31.759800, 19.401926>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.437748, 31.423365, 20.076727> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.673141, 31.128029, 19.944941>,  <38.814377, 30.950829, 19.865868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.673141, 31.128029, 19.944941>,  <38.437748, 31.423365, 20.076727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.673141, 31.128029, 19.944941> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342044, -0.141886, 0.928910,
		-0.732596, -0.659338, 0.169047,
		0.588480, -0.738337, -0.329468,
		38.849686, 30.906528, 19.846100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.376751, 31.004169, 20.626640>,  <38.437748, 31.423365, 20.076727>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.376751, 31.004169, 20.626640> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.700939, 30.883347, 20.425886>,  <38.895454, 30.810852, 20.305433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.700939, 30.883347, 20.425886>,  <38.376751, 31.004169, 20.626640>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.700939, 30.883347, 20.425886> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430520, -0.273840, 0.860037,
		-0.397222, -0.913110, -0.091897,
		0.810473, -0.302062, -0.501888,
		38.944080, 30.792728, 20.275320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.468655, 30.227966, 20.682394>,  <38.376751, 31.004169, 20.626640>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.468655, 30.227966, 20.682394> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.828728, 30.372910, 20.585752>,  <39.044769, 30.459875, 20.527767>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.828728, 30.372910, 20.585752>,  <38.468655, 30.227966, 20.682394>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.828728, 30.372910, 20.585752> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400350, -0.470097, 0.786593,
		0.171450, -0.804802, -0.568242,
		0.900180, 0.362357, -0.241605,
		39.098782, 30.481617, 20.513271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.843102, 29.691793, 20.936331>,  <38.468655, 30.227966, 20.682394>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.843102, 29.691793, 20.936331> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.130165, 29.967495, 20.896536>,  <39.302402, 30.132915, 20.872658>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.130165, 29.967495, 20.896536>,  <38.843102, 29.691793, 20.936331>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.130165, 29.967495, 20.896536> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414443, -0.307902, 0.856408,
		0.559651, -0.655838, -0.506624,
		0.717655, 0.689256, -0.099490,
		39.345463, 30.174273, 20.866690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.412785, 29.283136, 21.007458>,  <38.843102, 29.691793, 20.936331>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.412785, 29.283136, 21.007458> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.526035, 29.658102, 21.088545>,  <39.593987, 29.883081, 21.137197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.526035, 29.658102, 21.088545>,  <39.412785, 29.283136, 21.007458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.526035, 29.658102, 21.088545> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470740, -0.319980, 0.822202,
		0.835609, -0.137362, -0.531874,
		0.283128, 0.937414, 0.202716,
		39.610973, 29.939325, 21.149361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.983337, 29.166149, 21.197788>,  <39.412785, 29.283136, 21.007458>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.983337, 29.166149, 21.197788> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.923859, 29.533766, 21.343803>,  <39.888172, 29.754335, 21.431412>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.923859, 29.533766, 21.343803>,  <39.983337, 29.166149, 21.197788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.923859, 29.533766, 21.343803> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432322, -0.271580, 0.859850,
		0.889375, 0.285667, -0.356940,
		-0.148693, 0.919042, 0.365036,
		39.879250, 29.809479, 21.453314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<36.386589, 34.449234, 18.725891> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.234253, 34.749489, 18.941858>,  <36.142853, 34.929642, 19.071438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.234253, 34.749489, 18.941858>,  <36.386589, 34.449234, 18.725891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.234253, 34.749489, 18.941858> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492098, 0.329815, -0.805644,
		-0.782816, -0.572514, 0.243778,
		-0.380840, 0.750633, 0.539917,
		36.119999, 34.974678, 19.103834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.768192, 34.507664, 18.430481>,  <36.386589, 34.449234, 18.725891>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.768192, 34.507664, 18.430481> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.784042, 34.858505, 18.621944>,  <35.793552, 35.069012, 18.736822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.784042, 34.858505, 18.621944>,  <35.768192, 34.507664, 18.430481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.784042, 34.858505, 18.621944> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443639, 0.444672, -0.778107,
		-0.895329, -0.181517, 0.406740,
		0.039626, 0.877108, 0.478656,
		35.795929, 35.121639, 18.765541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.156849, 34.818493, 18.320694>,  <35.768192, 34.507664, 18.430481>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.156849, 34.818493, 18.320694> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.395924, 35.119911, 18.430193>,  <35.539368, 35.300762, 18.495892>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.395924, 35.119911, 18.430193>,  <35.156849, 34.818493, 18.320694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.395924, 35.119911, 18.430193> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281482, 0.516942, -0.808417,
		-0.750690, 0.406129, 0.521080,
		0.597690, 0.753545, 0.273745,
		35.575230, 35.345974, 18.512316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.736721, 35.438198, 18.334970>,  <35.156849, 34.818493, 18.320694>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.736721, 35.438198, 18.334970> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.115112, 35.567886, 18.336584>,  <35.342148, 35.645699, 18.337553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.115112, 35.567886, 18.336584>,  <34.736721, 35.438198, 18.334970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.115112, 35.567886, 18.336584> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221330, 0.654770, -0.722696,
		-0.236952, 0.682759, 0.691155,
		0.945974, 0.324217, 0.004033,
		35.398903, 35.665150, 18.337793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.644337, 36.169945, 18.386559>,  <34.736721, 35.438198, 18.334970>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.644337, 36.169945, 18.386559> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.006474, 36.085991, 18.238882>,  <35.223755, 36.035618, 18.150276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.006474, 36.085991, 18.238882>,  <34.644337, 36.169945, 18.386559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.006474, 36.085991, 18.238882> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140075, 0.673114, -0.726152,
		0.400914, 0.709132, 0.580000,
		0.905343, -0.209881, -0.369193,
		35.278076, 36.023026, 18.128124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.926765, 36.783531, 18.173779>,  <34.644337, 36.169945, 18.386559>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.926765, 36.783531, 18.173779> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.132290, 36.516548, 17.958189>,  <35.255608, 36.356358, 17.828835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.132290, 36.516548, 17.958189>,  <34.926765, 36.783531, 18.173779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.132290, 36.516548, 17.958189> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076242, 0.590236, -0.803622,
		0.854506, 0.454007, 0.252384,
		0.513816, -0.667458, -0.538975,
		35.286434, 36.316311, 17.796497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.400661, 37.105099, 17.744938>,  <34.926765, 36.783531, 18.173779>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.400661, 37.105099, 17.744938> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.390747, 36.746029, 17.568954>,  <35.384800, 36.530586, 17.463366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.390747, 36.746029, 17.568954>,  <35.400661, 37.105099, 17.744938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.390747, 36.746029, 17.568954> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035144, 0.440603, -0.897014,
		0.999075, -0.006771, -0.042469,
		-0.024786, -0.897676, -0.439958,
		35.383312, 36.476727, 17.436968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.020943, 37.014793, 17.346235>,  <35.400661, 37.105099, 17.744938>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.020943, 37.014793, 17.346235> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.730637, 36.777454, 17.206978>,  <35.556454, 36.635052, 17.123423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.730637, 36.777454, 17.206978>,  <36.020943, 37.014793, 17.346235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.730637, 36.777454, 17.206978> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155010, 0.352006, -0.923073,
		0.670253, -0.723899, -0.163498,
		-0.725764, -0.593348, -0.348144,
		35.512909, 36.599449, 17.102535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.272789, 36.728828, 16.790993>,  <36.020943, 37.014793, 17.346235>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.272789, 36.728828, 16.790993> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.883862, 36.679668, 16.711502>,  <35.650505, 36.650173, 16.663807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.883862, 36.679668, 16.711502>,  <36.272789, 36.728828, 16.790993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.883862, 36.679668, 16.711502> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130941, 0.417811, -0.899049,
		0.193526, -0.900183, -0.390152,
		-0.972318, -0.122902, -0.198728,
		35.592167, 36.642799, 16.651884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.301708, 36.370857, 16.078060>,  <36.272789, 36.728828, 16.790993>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.301708, 36.370857, 16.078060> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.928078, 36.502731, 16.132925>,  <35.703899, 36.581856, 16.165844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.928078, 36.502731, 16.132925>,  <36.301708, 36.370857, 16.078060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.928078, 36.502731, 16.132925> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064446, 0.222171, -0.972875,
		-0.351215, -0.917578, -0.186278,
		-0.934074, 0.329684, 0.137164,
		35.647854, 36.601635, 16.174074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.040089, 36.212326, 15.434391>,  <36.301708, 36.370857, 16.078060>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.040089, 36.212326, 15.434391> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.761116, 36.441341, 15.606807>,  <35.593735, 36.578751, 15.710256>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.761116, 36.441341, 15.606807>,  <36.040089, 36.212326, 15.434391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.761116, 36.441341, 15.606807> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284211, 0.331173, -0.899749,
		-0.657890, -0.750016, -0.068247,
		-0.697427, 0.572539, 0.431038,
		35.551888, 36.613102, 15.736118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.411766, 36.053555, 15.168445>,  <36.040089, 36.212326, 15.434391>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.411766, 36.053555, 15.168445> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.368988, 36.420692, 15.321345>,  <35.343319, 36.640976, 15.413086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.368988, 36.420692, 15.321345>,  <35.411766, 36.053555, 15.168445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.368988, 36.420692, 15.321345> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176462, 0.360831, -0.915785,
		-0.978480, -0.165396, 0.123375,
		-0.106949, 0.917848, 0.382252,
		35.336903, 36.696049, 15.436021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.741173, 36.277180, 14.980000>,  <35.411766, 36.053555, 15.168445>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.741173, 36.277180, 14.980000> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.023560, 36.555962, 15.030366>,  <35.192993, 36.723232, 15.060585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.023560, 36.555962, 15.030366>,  <34.741173, 36.277180, 14.980000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.023560, 36.555962, 15.030366> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081209, 0.256268, -0.963188,
		-0.703570, 0.669757, 0.237517,
		0.705970, 0.696959, 0.125912,
		35.235352, 36.765049, 15.068140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.232071, 35.688992, 14.725420>,  <34.741173, 36.277180, 14.980000>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.232071, 35.688992, 14.725420> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.992794, 36.005047, 14.778861>,  <33.849228, 36.194679, 14.810925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.992794, 36.005047, 14.778861>,  <34.232071, 35.688992, 14.725420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.992794, 36.005047, 14.778861> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577313, 0.540552, -0.611975,
		-0.555762, -0.288949, -0.779510,
		-0.598195, 0.790134, 0.133604,
		33.813335, 36.242088, 14.818942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.349438, 35.360447, 14.040103>,  <34.232071, 35.688992, 14.725420>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.349438, 35.360447, 14.040103> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.145931, 35.022972, 13.971576>,  <34.023827, 34.820488, 13.930460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.145931, 35.022972, 13.971576>,  <34.349438, 35.360447, 14.040103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.145931, 35.022972, 13.971576> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610510, -0.493879, 0.619161,
		-0.606988, 0.210418, 0.766348,
		-0.508766, -0.843687, -0.171317,
		33.993301, 34.769867, 13.920180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.151829, 34.980206, 14.720460>,  <34.349438, 35.360447, 14.040103>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.151829, 34.980206, 14.720460> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.148617, 34.716309, 14.419880>,  <34.146690, 34.557972, 14.239532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.148617, 34.716309, 14.419880>,  <34.151829, 34.980206, 14.720460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.148617, 34.716309, 14.419880> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572043, -0.619398, 0.537692,
		-0.820184, -0.425544, 0.382375,
		-0.008031, -0.659741, -0.751450,
		34.146206, 34.518387, 14.194445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.859127, 34.425526, 15.013875>,  <34.151829, 34.980206, 14.720460>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.859127, 34.425526, 15.013875> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.084026, 34.313236, 14.702730>,  <34.218967, 34.245861, 14.516044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.084026, 34.313236, 14.702730>,  <33.859127, 34.425526, 15.013875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.084026, 34.313236, 14.702730> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551265, -0.573913, 0.605583,
		-0.616427, -0.769297, -0.167928,
		0.562249, -0.280725, -0.777862,
		34.252701, 34.229019, 14.469372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.001503, 33.687431, 15.252357>,  <33.859127, 34.425526, 15.013875>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.001503, 33.687431, 15.252357> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.255135, 33.750252, 14.949495>,  <34.407314, 33.787945, 14.767777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.255135, 33.750252, 14.949495>,  <34.001503, 33.687431, 15.252357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.255135, 33.750252, 14.949495> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.738743, -0.412356, 0.533124,
		-0.228492, -0.897384, -0.377482,
		0.634074, 0.157047, -0.757156,
		34.445358, 33.797367, 14.722348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.215183, 33.019482, 15.171647>,  <34.001503, 33.687431, 15.252357>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.215183, 33.019482, 15.171647> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.466446, 33.279099, 14.999990>,  <34.617203, 33.434868, 14.896996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.466446, 33.279099, 14.999990>,  <34.215183, 33.019482, 15.171647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.466446, 33.279099, 14.999990> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773722, -0.462724, 0.432714,
		0.082274, -0.603851, -0.792840,
		0.628161, 0.649038, -0.429142,
		34.654896, 33.473808, 14.871247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.788155, 32.577484, 14.833778>,  <34.215183, 33.019482, 15.171647>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.788155, 32.577484, 14.833778> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.929619, 32.948269, 14.883845>,  <35.014496, 33.170738, 14.913885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.929619, 32.948269, 14.883845>,  <34.788155, 32.577484, 14.833778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.929619, 32.948269, 14.883845> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786628, -0.367149, 0.496405,
		0.506103, -0.077100, -0.859020,
		0.353661, 0.926961, 0.125166,
		35.035717, 33.226357, 14.921395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.489990, 32.468655, 14.823674>,  <34.788155, 32.577484, 14.833778>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.489990, 32.468655, 14.823674> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.433964, 32.830173, 14.985432>,  <35.400349, 33.047085, 15.082486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.433964, 32.830173, 14.985432>,  <35.489990, 32.468655, 14.823674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.433964, 32.830173, 14.985432> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688595, -0.204568, 0.695693,
		0.711491, 0.375903, -0.593698,
		-0.140062, 0.903797, 0.404393,
		35.391945, 33.101311, 15.106750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.167751, 32.906605, 14.762815>,  <35.489990, 32.468655, 14.823674>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.167751, 32.906605, 14.762815> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.934292, 33.039112, 15.059359>,  <35.794216, 33.118618, 15.237285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.934292, 33.039112, 15.059359>,  <36.167751, 32.906605, 14.762815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.934292, 33.039112, 15.059359> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712043, -0.230064, 0.663375,
		0.390315, 0.915058, -0.101600,
		-0.583652, 0.331269, 0.741358,
		35.759197, 33.138493, 15.281766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.684341, 33.169601, 15.210276>,  <36.167751, 32.906605, 14.762815>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.684341, 33.169601, 15.210276> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.364761, 33.131634, 15.447820>,  <36.173012, 33.108852, 15.590346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.364761, 33.131634, 15.447820>,  <36.684341, 33.169601, 15.210276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.364761, 33.131634, 15.447820> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595037, -0.268003, 0.757697,
		0.087237, 0.958731, 0.270601,
		-0.798950, -0.094919, 0.593860,
		36.125076, 33.103157, 15.625978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.929600, 33.327347, 15.813076>,  <36.684341, 33.169601, 15.210276>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.929600, 33.327347, 15.813076> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.589912, 33.154442, 15.934385>,  <36.386101, 33.050701, 16.007170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.589912, 33.154442, 15.934385>,  <36.929600, 33.327347, 15.813076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.589912, 33.154442, 15.934385> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490932, -0.434844, 0.754914,
		-0.194443, 0.789976, 0.581489,
		-0.849222, -0.432260, 0.303272,
		36.335144, 33.024765, 16.025368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.948193, 33.318100, 16.638500>,  <36.929600, 33.327347, 15.813076>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.948193, 33.318100, 16.638500> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.706776, 33.031059, 16.499487>,  <36.561924, 32.858833, 16.416079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.706776, 33.031059, 16.499487>,  <36.948193, 33.318100, 16.638500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.706776, 33.031059, 16.499487> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421107, -0.657005, 0.625311,
		-0.677057, 0.231054, 0.698719,
		-0.603542, -0.717607, -0.347531,
		36.525715, 32.815777, 16.395227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.623009, 33.007080, 17.183584>,  <36.948193, 33.318100, 16.638500>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.623009, 33.007080, 17.183584> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.586102, 32.732079, 16.895466>,  <36.563957, 32.567078, 16.722595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.586102, 32.732079, 16.895466>,  <36.623009, 33.007080, 17.183584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.586102, 32.732079, 16.895466> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251860, -0.715973, 0.651113,
		-0.963355, -0.121341, 0.239213,
		-0.092263, -0.687502, -0.720298,
		36.558422, 32.525829, 16.679377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.349045, 32.438412, 17.542629>,  <36.623009, 33.007080, 17.183584>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.349045, 32.438412, 17.542629> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.462429, 32.270840, 17.197573>,  <36.530460, 32.170296, 16.990540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.462429, 32.270840, 17.197573>,  <36.349045, 32.438412, 17.542629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.462429, 32.270840, 17.197573> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295629, -0.817552, 0.494177,
		-0.912279, -0.395102, -0.107897,
		0.283462, -0.418930, -0.862639,
		36.547466, 32.145161, 16.938782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.031738, 31.728405, 17.427948>,  <36.349045, 32.438412, 17.542629>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.031738, 31.728405, 17.427948> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.391045, 31.769533, 17.257044>,  <36.606628, 31.794210, 17.154501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.391045, 31.769533, 17.257044>,  <36.031738, 31.728405, 17.427948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.391045, 31.769533, 17.257044> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355502, -0.741570, 0.568940,
		-0.258345, -0.662950, -0.702678,
		0.898263, 0.102820, -0.427260,
		36.660522, 31.800379, 17.128866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.468651, 31.316429, 17.711285>,  <36.031738, 31.728405, 17.427948>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.468651, 31.316429, 17.711285> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.257816, 31.491478, 18.002672>,  <35.131317, 31.596508, 18.177505>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.257816, 31.491478, 18.002672>,  <35.468651, 31.316429, 17.711285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.257816, 31.491478, 18.002672> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730272, 0.205147, -0.651627,
		-0.434610, -0.875443, 0.211455,
		-0.527083, 0.437623, 0.728470,
		35.099689, 31.622765, 18.221212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.743458, 31.304852, 17.543432>,  <35.468651, 31.316429, 17.711285>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.743458, 31.304852, 17.543432> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.705841, 31.584530, 17.826920>,  <34.683270, 31.752337, 17.997011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.705841, 31.584530, 17.826920>,  <34.743458, 31.304852, 17.543432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.705841, 31.584530, 17.826920> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802305, 0.368264, -0.469775,
		-0.589460, -0.612786, 0.526336,
		-0.094041, 0.699195, 0.708718,
		34.677628, 31.794289, 18.039536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.146980, 31.301664, 17.669052>,  <34.743458, 31.304852, 17.543432>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.146980, 31.301664, 17.669052> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.244167, 31.674620, 17.776100>,  <34.302479, 31.898392, 17.840328>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.244167, 31.674620, 17.776100>,  <34.146980, 31.301664, 17.669052>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.244167, 31.674620, 17.776100> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912593, 0.313236, -0.262787,
		-0.328848, -0.180380, 0.926996,
		0.242967, 0.932387, 0.267621,
		34.317059, 31.954336, 17.856386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.574574, 31.585228, 17.975142>,  <34.146980, 31.301664, 17.669052>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.574574, 31.585228, 17.975142> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.782150, 31.904951, 17.853945>,  <33.906696, 32.096783, 17.781227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.782150, 31.904951, 17.853945>,  <33.574574, 31.585228, 17.975142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.782150, 31.904951, 17.853945> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.850622, 0.447843, -0.275462,
		-0.084485, 0.400683, 0.912313,
		0.518946, 0.799306, -0.302994,
		33.937836, 32.144741, 17.763046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.349323, 32.194958, 18.359472>,  <33.574574, 31.585228, 17.975142>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.349323, 32.194958, 18.359472> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.505863, 32.281212, 18.001623>,  <33.599789, 32.332966, 17.786915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.505863, 32.281212, 18.001623>,  <33.349323, 32.194958, 18.359472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.505863, 32.281212, 18.001623> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888187, 0.342861, -0.305893,
		0.240769, 0.914302, 0.325703,
		0.391349, 0.215636, -0.894621,
		33.623268, 32.345901, 17.733236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.133804, 32.793659, 18.217045>,  <33.349323, 32.194958, 18.359472>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.133804, 32.793659, 18.217045> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.225983, 32.735416, 17.832193>,  <33.281288, 32.700470, 17.601282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.225983, 32.735416, 17.832193>,  <33.133804, 32.793659, 18.217045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.225983, 32.735416, 17.832193> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854588, 0.442579, -0.271667,
		0.465375, 0.884829, -0.022441,
		0.230447, -0.145605, -0.962130,
		33.295116, 32.691734, 17.543554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.043694, 33.418991, 17.861870>,  <33.133804, 32.793659, 18.217045>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.043694, 33.418991, 17.861870> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.015034, 33.136162, 17.580469>,  <32.997837, 32.966465, 17.411629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.015034, 33.136162, 17.580469>,  <33.043694, 33.418991, 17.861870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.015034, 33.136162, 17.580469> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738277, 0.511853, -0.439266,
		0.670682, 0.487906, -0.558689,
		-0.071646, -0.707074, -0.703501,
		32.993542, 32.924038, 17.369419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.389851, 34.119659, 17.855120>,  <33.043694, 33.418991, 17.861870>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.389851, 34.119659, 17.855120> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.119766, 34.316010, 18.075348>,  <32.957714, 34.433819, 18.207485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.119766, 34.316010, 18.075348>,  <33.389851, 34.119659, 17.855120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.119766, 34.316010, 18.075348> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318065, -0.479692, 0.817759,
		0.665525, 0.727278, 0.167762,
		-0.675212, 0.490880, 0.550569,
		32.917202, 34.463272, 18.240519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.732635, 34.327511, 18.559729>,  <33.389851, 34.119659, 17.855120>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.732635, 34.327511, 18.559729> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.340801, 34.345745, 18.638042>,  <33.105701, 34.356686, 18.685030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.340801, 34.345745, 18.638042>,  <33.732635, 34.327511, 18.559729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.340801, 34.345745, 18.638042> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140924, -0.538816, 0.830553,
		0.143351, 0.841189, 0.521394,
		-0.979587, 0.045583, 0.195783,
		33.046925, 34.359421, 18.696777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.802162, 34.597042, 19.216003>,  <33.732635, 34.327511, 18.559729>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.802162, 34.597042, 19.216003> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.431850, 34.446499, 19.201691>,  <33.209663, 34.356174, 19.193104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.431850, 34.446499, 19.201691>,  <33.802162, 34.597042, 19.216003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.431850, 34.446499, 19.201691> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155842, -0.466143, 0.870875,
		-0.344441, 0.800665, 0.490200,
		-0.925783, -0.376359, -0.035781,
		33.154114, 34.333591, 19.190956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.748772, 34.417641, 19.811327>,  <33.802162, 34.597042, 19.216003>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.748772, 34.417641, 19.811327> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.383572, 34.291962, 19.707237>,  <33.164452, 34.216553, 19.644783>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.383572, 34.291962, 19.707237>,  <33.748772, 34.417641, 19.811327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.383572, 34.291962, 19.707237> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035883, -0.573540, 0.818392,
		-0.406387, 0.756526, 0.512365,
		-0.912996, -0.314199, -0.260225,
		33.109673, 34.197701, 19.629169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.224541, 34.575737, 20.381136>,  <33.748772, 34.417641, 19.811327>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.224541, 34.575737, 20.381136> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.131218, 34.260174, 20.153734>,  <33.075226, 34.070835, 20.017294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.131218, 34.260174, 20.153734>,  <33.224541, 34.575737, 20.381136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.131218, 34.260174, 20.153734> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059255, -0.595086, 0.801474,
		-0.970596, 0.153304, 0.185585,
		-0.233308, -0.788904, -0.568504,
		33.061226, 34.023502, 19.983183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.652546, 34.185200, 20.706116>,  <33.224541, 34.575737, 20.381136>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.652546, 34.185200, 20.706116> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.879078, 33.938213, 20.487755>,  <33.014996, 33.790024, 20.356739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.879078, 33.938213, 20.487755>,  <32.652546, 34.185200, 20.706116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.879078, 33.938213, 20.487755> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222593, -0.523154, 0.822656,
		-0.793551, -0.587408, -0.158834,
		0.566329, -0.617464, -0.545902,
		33.048977, 33.752975, 20.323984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.534351, 33.502670, 20.990772>,  <32.652546, 34.185200, 20.706116>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.534351, 33.502670, 20.990772> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.879765, 33.464935, 20.792616>,  <33.087013, 33.442295, 20.673723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.879765, 33.464935, 20.792616>,  <32.534351, 33.502670, 20.990772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.879765, 33.464935, 20.792616> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336916, -0.623016, 0.705931,
		-0.375229, -0.776500, -0.506213,
		0.863534, -0.094334, -0.495389,
		33.138824, 33.436634, 20.643999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<34.158031, 39.216007, 17.122856> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.432201, 38.930866, 17.063482>,  <34.596703, 38.759781, 17.027859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.432201, 38.930866, 17.063482>,  <34.158031, 39.216007, 17.122856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.432201, 38.930866, 17.063482> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165356, -0.046142, 0.985154,
		-0.709121, -0.699792, 0.086248,
		0.685423, -0.712855, -0.148435,
		34.637829, 38.717010, 17.018951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.040966, 38.727859, 17.631998>,  <34.158031, 39.216007, 17.122856>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.040966, 38.727859, 17.631998> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.418602, 38.712986, 17.500959>,  <34.645184, 38.704060, 17.422337>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.418602, 38.712986, 17.500959>,  <34.040966, 38.727859, 17.631998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.418602, 38.712986, 17.500959> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321475, -0.116728, 0.939696,
		-0.073179, -0.992468, -0.098248,
		0.944086, -0.037182, -0.327596,
		34.701828, 38.701828, 17.402681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.271450, 38.214737, 18.075029>,  <34.040966, 38.727859, 17.631998>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.271450, 38.214737, 18.075029> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.610058, 38.353394, 17.913414>,  <34.813221, 38.436588, 17.816444>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.610058, 38.353394, 17.913414>,  <34.271450, 38.214737, 18.075029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.610058, 38.353394, 17.913414> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466778, -0.118362, 0.876418,
		0.255981, -0.930499, -0.262000,
		0.846518, 0.346642, -0.404039,
		34.864014, 38.457386, 17.792202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.704399, 37.796352, 18.373728>,  <34.271450, 38.214737, 18.075029>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.704399, 37.796352, 18.373728> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.919487, 38.116104, 18.266508>,  <35.048538, 38.307957, 18.202177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.919487, 38.116104, 18.266508>,  <34.704399, 37.796352, 18.373728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.919487, 38.116104, 18.266508> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440016, 0.005124, 0.897975,
		0.719197, -0.600804, -0.348984,
		0.537719, 0.799379, -0.268049,
		35.080803, 38.355919, 18.186094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.309814, 37.685368, 18.439171>,  <34.704399, 37.796352, 18.373728>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.309814, 37.685368, 18.439171> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.320374, 38.083725, 18.473793>,  <35.326710, 38.322739, 18.494566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.320374, 38.083725, 18.473793>,  <35.309814, 37.685368, 18.439171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.320374, 38.083725, 18.473793> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407621, -0.089784, 0.908727,
		0.912770, 0.011292, -0.408319,
		0.026399, 0.995897, 0.086555,
		35.328293, 38.382496, 18.499760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.980003, 37.819778, 18.662968>,  <35.309814, 37.685368, 18.439171>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.980003, 37.819778, 18.662968> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.771805, 38.145092, 18.767010>,  <35.646885, 38.340279, 18.829435>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.771805, 38.145092, 18.767010>,  <35.980003, 37.819778, 18.662968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.771805, 38.145092, 18.767010> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390648, -0.044059, 0.919485,
		0.759262, 0.580197, -0.294775,
		-0.520495, 0.813283, 0.260105,
		35.615658, 38.389076, 18.845041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.487328, 38.313206, 18.993341>,  <35.980003, 37.819778, 18.662968>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.487328, 38.313206, 18.993341> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.115849, 38.407043, 19.108225>,  <35.892960, 38.463345, 19.177155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.115849, 38.407043, 19.108225>,  <36.487328, 38.313206, 18.993341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.115849, 38.407043, 19.108225> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259891, -0.140749, 0.955325,
		0.264538, 0.961850, 0.069745,
		-0.928696, 0.234594, 0.287210,
		35.837238, 38.477421, 19.194387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610779, 38.605076, 19.597303>,  <36.487328, 38.313206, 18.993341>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.610779, 38.605076, 19.597303> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.213783, 38.562439, 19.573311>,  <35.975586, 38.536858, 19.558914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.213783, 38.562439, 19.573311>,  <36.610779, 38.605076, 19.597303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.213783, 38.562439, 19.573311> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052230, -0.074097, 0.995882,
		-0.110595, 0.991538, 0.067973,
		-0.992492, -0.106589, -0.059982,
		35.916035, 38.530460, 19.555317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.306828, 39.119373, 20.073307>,  <36.610779, 38.605076, 19.597303>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.306828, 39.119373, 20.073307> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.068375, 38.803280, 20.016518>,  <35.925304, 38.613625, 19.982445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.068375, 38.803280, 20.016518>,  <36.306828, 39.119373, 20.073307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.068375, 38.803280, 20.016518> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032202, -0.153155, 0.987678,
		-0.802241, 0.593358, 0.065853,
		-0.596132, -0.790234, -0.141974,
		35.889534, 38.566208, 19.973925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.893974, 39.114296, 20.615608>,  <36.306828, 39.119373, 20.073307>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.893974, 39.114296, 20.615608> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.839119, 38.741436, 20.481565>,  <35.806206, 38.517719, 20.401140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.839119, 38.741436, 20.481565>,  <35.893974, 39.114296, 20.615608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.839119, 38.741436, 20.481565> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115615, -0.320931, 0.940020,
		-0.983782, 0.167654, -0.063759,
		-0.137136, -0.932146, -0.335109,
		35.797977, 38.461792, 20.381033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.373280, 38.872654, 21.019514>,  <35.893974, 39.114296, 20.615608>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.373280, 38.872654, 21.019514> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.556511, 38.540398, 20.892899>,  <35.666451, 38.341042, 20.816929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.556511, 38.540398, 20.892899>,  <35.373280, 38.872654, 21.019514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.556511, 38.540398, 20.892899> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212184, -0.243627, 0.946374,
		-0.863218, -0.500675, 0.064650,
		0.458075, -0.830645, -0.316539,
		35.693935, 38.291203, 20.797937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.106934, 38.242397, 21.378103>,  <35.373280, 38.872654, 21.019514>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.106934, 38.242397, 21.378103> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.469398, 38.137089, 21.245705>,  <35.686878, 38.073906, 21.166265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.469398, 38.137089, 21.245705>,  <35.106934, 38.242397, 21.378103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.469398, 38.137089, 21.245705> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203527, -0.414593, 0.886955,
		-0.370733, -0.871093, -0.322108,
		0.906164, -0.263265, -0.330995,
		35.741249, 38.058109, 21.146406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.715553, 37.634624, 21.121073>,  <35.106934, 38.242397, 21.378103>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.715553, 37.634624, 21.121073> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.329124, 37.555519, 21.187506>,  <34.097267, 37.508057, 21.227365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.329124, 37.555519, 21.187506>,  <34.715553, 37.634624, 21.121073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.329124, 37.555519, 21.187506> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206037, 0.202484, -0.957365,
		0.155698, -0.959109, -0.236362,
		-0.966078, -0.197760, 0.166086,
		34.039303, 37.496189, 21.237331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.551018, 37.370392, 20.480888>,  <34.715553, 37.634624, 21.121073>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.551018, 37.370392, 20.480888> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.215611, 37.487141, 20.664932>,  <34.014366, 37.557190, 20.775358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.215611, 37.487141, 20.664932>,  <34.551018, 37.370392, 20.480888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.215611, 37.487141, 20.664932> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400777, 0.241704, -0.883718,
		-0.369146, -0.925412, -0.085695,
		-0.838516, 0.291876, 0.460108,
		33.964054, 37.574703, 20.802965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.112446, 37.152779, 20.111525>,  <34.551018, 37.370392, 20.480888>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.112446, 37.152779, 20.111525> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.884613, 37.422344, 20.299744>,  <33.747913, 37.584084, 20.412676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.884613, 37.422344, 20.299744>,  <34.112446, 37.152779, 20.111525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.884613, 37.422344, 20.299744> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472841, 0.199615, -0.858239,
		-0.672311, -0.711330, 0.204959,
		-0.569578, 0.673917, 0.470549,
		33.713741, 37.624519, 20.440908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.498688, 36.932877, 19.923006>,  <34.112446, 37.152779, 20.111525>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.498688, 36.932877, 19.923006> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.452595, 37.304512, 20.063581>,  <33.424938, 37.527493, 20.147926>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.452595, 37.304512, 20.063581>,  <33.498688, 36.932877, 19.923006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.452595, 37.304512, 20.063581> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525052, 0.243362, -0.815533,
		-0.843232, -0.278502, 0.459778,
		-0.115236, 0.929092, 0.351439,
		33.418022, 37.583241, 20.169014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.819904, 37.041233, 19.855328>,  <33.498688, 36.932877, 19.923006>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.819904, 37.041233, 19.855328> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.958366, 37.412273, 19.911526>,  <33.041443, 37.634895, 19.945244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.958366, 37.412273, 19.911526>,  <32.819904, 37.041233, 19.855328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.958366, 37.412273, 19.911526> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485662, 0.305297, -0.819101,
		-0.802689, 0.215304, 0.556179,
		0.346155, 0.927598, 0.140493,
		33.062214, 37.690552, 19.953674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.200249, 37.483429, 19.797243>,  <32.819904, 37.041233, 19.855328>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.200249, 37.483429, 19.797243> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.502754, 37.738853, 19.740259>,  <32.684258, 37.892109, 19.706068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.502754, 37.738853, 19.740259>,  <32.200249, 37.483429, 19.797243>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.502754, 37.738853, 19.740259> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404556, 0.285283, -0.868878,
		-0.514192, 0.714738, 0.474085,
		0.756268, 0.638564, -0.142461,
		32.729633, 37.930424, 19.697521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.909088, 38.142090, 19.806852>,  <32.200249, 37.483429, 19.797243>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.909088, 38.142090, 19.806852> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.259296, 38.149261, 19.613714>,  <32.469421, 38.153564, 19.497831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.259296, 38.149261, 19.613714>,  <31.909088, 38.142090, 19.806852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.259296, 38.149261, 19.613714> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479591, 0.153758, -0.863916,
		0.058755, 0.987946, 0.143215,
		0.875523, 0.017925, -0.482844,
		32.521954, 38.154640, 19.468861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.735670, 38.451481, 19.261080>,  <31.909088, 38.142090, 19.806852>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.735670, 38.451481, 19.261080> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.106644, 38.345726, 19.155273>,  <32.329227, 38.282272, 19.091789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.106644, 38.345726, 19.155273>,  <31.735670, 38.451481, 19.261080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.106644, 38.345726, 19.155273> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223522, 0.175211, -0.958822,
		0.299846, 0.948367, 0.103400,
		0.927432, -0.264387, -0.264517,
		32.384872, 38.266411, 19.075918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.045486, 39.032158, 18.887201>,  <31.735670, 38.451481, 19.261080>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.045486, 39.032158, 18.887201> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.197315, 38.682899, 18.764866>,  <32.288414, 38.473343, 18.691465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.197315, 38.682899, 18.764866>,  <32.045486, 39.032158, 18.887201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.197315, 38.682899, 18.764866> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362300, 0.163888, -0.917540,
		0.851272, 0.459078, -0.254134,
		0.379573, -0.873148, -0.305837,
		32.311188, 38.420956, 18.673115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.350464, 39.155792, 18.266459>,  <32.045486, 39.032158, 18.887201>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.350464, 39.155792, 18.266459> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.297581, 38.760128, 18.240870>,  <32.265850, 38.522732, 18.225517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.297581, 38.760128, 18.240870>,  <32.350464, 39.155792, 18.266459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.297581, 38.760128, 18.240870> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127085, 0.080919, -0.988586,
		0.983042, -0.122566, -0.136405,
		-0.132205, -0.989156, -0.063970,
		32.257919, 38.463383, 18.221678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.705055, 38.889866, 17.676268>,  <32.350464, 39.155792, 18.266459>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.705055, 38.889866, 17.676268> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.434341, 38.601646, 17.736626>,  <32.271915, 38.428715, 17.772840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.434341, 38.601646, 17.736626>,  <32.705055, 38.889866, 17.676268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.434341, 38.601646, 17.736626> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172597, -0.043956, -0.984011,
		0.715665, -0.692006, -0.094617,
		-0.676782, -0.720553, 0.150896,
		32.231308, 38.385479, 17.781895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.829762, 38.590282, 17.081614>,  <32.705055, 38.889866, 17.676268>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.829762, 38.590282, 17.081614> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.483204, 38.422535, 17.190054>,  <32.275269, 38.321888, 17.255117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.483204, 38.422535, 17.190054>,  <32.829762, 38.590282, 17.081614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.483204, 38.422535, 17.190054> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220822, -0.165180, -0.961225,
		0.447889, -0.892662, 0.050504,
		-0.866391, -0.419369, 0.271102,
		32.223286, 38.296722, 17.271385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.756634, 38.161030, 16.495956>,  <32.829762, 38.590282, 17.081614>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.756634, 38.161030, 16.495956> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.400101, 38.174110, 16.676826>,  <32.186180, 38.181961, 16.785349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.400101, 38.174110, 16.676826>,  <32.756634, 38.161030, 16.495956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.400101, 38.174110, 16.676826> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432146, 0.240207, -0.869224,
		-0.137044, -0.970170, -0.199970,
		-0.891330, 0.032706, 0.452174,
		32.132702, 38.183922, 16.812479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.347324, 37.722042, 16.148966>,  <32.756634, 38.161030, 16.495956>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.347324, 37.722042, 16.148966> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.100254, 37.986691, 16.319019>,  <31.952013, 38.145481, 16.421051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.100254, 37.986691, 16.319019>,  <32.347324, 37.722042, 16.148966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.100254, 37.986691, 16.319019> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431884, 0.166399, -0.886447,
		-0.657233, -0.731142, 0.182963,
		-0.617674, 0.661621, 0.425131,
		31.914951, 38.185177, 16.446558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.263699, 37.079571, 16.518688>,  <32.347324, 37.722042, 16.148966>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.263699, 37.079571, 16.518688> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.113335, 36.736855, 16.377487>,  <32.023117, 36.531227, 16.292767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.113335, 36.736855, 16.377487>,  <32.263699, 37.079571, 16.518688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.113335, 36.736855, 16.377487> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101746, -0.416802, 0.903285,
		-0.921055, 0.303633, 0.243853,
		-0.375906, -0.856786, -0.353005,
		32.000565, 36.479820, 16.271585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.785751, 36.801327, 17.000246>,  <32.263699, 37.079571, 16.518688>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.785751, 36.801327, 17.000246> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.917185, 36.482594, 16.797428>,  <31.996046, 36.291355, 16.675737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.917185, 36.482594, 16.797428>,  <31.785751, 36.801327, 17.000246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.917185, 36.482594, 16.797428> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199139, -0.466333, 0.861903,
		-0.923242, -0.384181, 0.005450,
		0.328585, -0.796830, -0.507044,
		32.015762, 36.243546, 16.645315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.455681, 36.270508, 17.252050>,  <31.785751, 36.801327, 17.000246>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.455681, 36.270508, 17.252050> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.770170, 36.094723, 17.078278>,  <31.958864, 35.989254, 16.974014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.770170, 36.094723, 17.078278>,  <31.455681, 36.270508, 17.252050>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.770170, 36.094723, 17.078278> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148131, -0.548494, 0.822929,
		-0.599932, -0.711354, -0.366137,
		0.786218, -0.439465, -0.434433,
		32.006039, 35.962883, 16.947948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.329329, 35.510216, 17.189903>,  <31.455681, 36.270508, 17.252050>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.329329, 35.510216, 17.189903> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.726715, 35.555500, 17.195660>,  <31.965147, 35.582672, 17.199114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.726715, 35.555500, 17.195660>,  <31.329329, 35.510216, 17.189903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.726715, 35.555500, 17.195660> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078127, -0.766574, 0.637386,
		0.083192, -0.632098, -0.770410,
		0.993466, 0.113215, 0.014389,
		32.024754, 35.589466, 17.199976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.629839, 34.830395, 17.371054>,  <31.329329, 35.510216, 17.189903>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.629839, 34.830395, 17.371054> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.941046, 35.063446, 17.465063>,  <32.127769, 35.203278, 17.521469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.941046, 35.063446, 17.465063>,  <31.629839, 34.830395, 17.371054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.941046, 35.063446, 17.465063> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391128, -0.741958, 0.544534,
		0.491637, -0.331733, -0.805138,
		0.778018, 0.582625, 0.235024,
		32.174450, 35.238232, 17.535570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.034611, 34.317104, 17.737186>,  <31.629839, 34.830395, 17.371054>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.034611, 34.317104, 17.737186> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.266361, 34.642403, 17.758970>,  <32.405411, 34.837582, 17.772039>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.266361, 34.642403, 17.758970>,  <32.034611, 34.317104, 17.737186>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.266361, 34.642403, 17.758970> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686299, -0.522795, 0.505647,
		0.439684, -0.255584, -0.861020,
		0.579372, 0.813242, 0.054458,
		32.440174, 34.886375, 17.775307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.709988, 34.071339, 17.526892>,  <32.034611, 34.317104, 17.737186>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.709988, 34.071339, 17.526892> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.704449, 34.389183, 17.769678>,  <32.701126, 34.579887, 17.915350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.704449, 34.389183, 17.769678>,  <32.709988, 34.071339, 17.526892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.704449, 34.389183, 17.769678> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432612, -0.542508, 0.720091,
		0.901474, 0.272552, -0.336245,
		-0.013847, 0.794607, 0.606966,
		32.700294, 34.627563, 17.951769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.702087, 33.841286, 16.926937>,  <32.709988, 34.071339, 17.526892>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.702087, 33.841286, 16.926937> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.662617, 33.445770, 16.882095>,  <32.638935, 33.208462, 16.855190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.662617, 33.445770, 16.882095>,  <32.702087, 33.841286, 16.926937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.662617, 33.445770, 16.882095> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480751, 0.146002, -0.864616,
		0.871287, -0.031420, -0.489767,
		-0.098674, -0.988785, -0.112104,
		32.633015, 33.149136, 16.848465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.998085, 33.657784, 16.223047>,  <32.702087, 33.841286, 16.926937>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.998085, 33.657784, 16.223047> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.737495, 33.374004, 16.330574>,  <32.581142, 33.203735, 16.395090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.737495, 33.374004, 16.330574>,  <32.998085, 33.657784, 16.223047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.737495, 33.374004, 16.330574> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384527, 0.003330, -0.923108,
		0.654001, -0.704751, -0.274971,
		-0.651477, -0.709447, 0.268817,
		32.542053, 33.161171, 16.411219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.931072, 33.376099, 15.498716>,  <32.998085, 33.657784, 16.223047>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.931072, 33.376099, 15.498716> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.642670, 33.222244, 15.729267>,  <32.469627, 33.129932, 15.867598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.642670, 33.222244, 15.729267>,  <32.931072, 33.376099, 15.498716>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.642670, 33.222244, 15.729267> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625451, 0.003198, -0.780257,
		0.298269, -0.923064, -0.242875,
		-0.721004, -0.384632, 0.576377,
		32.426369, 33.106853, 15.902181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.736301, 32.786537, 15.242901>,  <32.931072, 33.376099, 15.498716>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.736301, 32.786537, 15.242901> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.435825, 32.943325, 15.455344>,  <32.255539, 33.037399, 15.582810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.435825, 32.943325, 15.455344>,  <32.736301, 32.786537, 15.242901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.435825, 32.943325, 15.455344> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545216, 0.085118, -0.833963,
		-0.372095, -0.916032, 0.149768,
		-0.751189, 0.391969, 0.531107,
		32.210468, 33.060917, 15.614676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.214058, 32.731255, 14.864163>,  <32.736301, 32.786537, 15.242901>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.214058, 32.731255, 14.864163> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.041927, 33.005074, 15.099525>,  <31.938650, 33.169365, 15.240743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.041927, 33.005074, 15.099525>,  <32.214058, 32.731255, 14.864163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.041927, 33.005074, 15.099525> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594617, 0.275470, -0.755345,
		-0.679155, -0.674918, 0.288501,
		-0.430323, 0.684545, 0.588405,
		31.912830, 33.210438, 15.276047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.466820, 32.586102, 14.823854>,  <32.214058, 32.731255, 14.864163>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.466820, 32.586102, 14.823854> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.504910, 32.970238, 14.928687>,  <31.527763, 33.200718, 14.991587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.504910, 32.970238, 14.928687>,  <31.466820, 32.586102, 14.823854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.504910, 32.970238, 14.928687> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601416, 0.265298, -0.753602,
		-0.793241, -0.085857, 0.602824,
		0.095226, 0.960336, 0.262081,
		31.533478, 33.258339, 15.007311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.732416, 32.791805, 14.941068>,  <31.466820, 32.586102, 14.823854>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.732416, 32.791805, 14.941068> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.951254, 33.125847, 14.918115>,  <31.082556, 33.326271, 14.904343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.951254, 33.125847, 14.918115>,  <30.732416, 32.791805, 14.941068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.951254, 33.125847, 14.918115> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676422, 0.400675, -0.617992,
		-0.493094, 0.376915, 0.784088,
		0.547094, 0.835102, -0.057383,
		31.115383, 33.376377, 14.900900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.327751, 33.363426, 15.182928>,  <30.732416, 32.791805, 14.941068>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.327751, 33.363426, 15.182928> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.616091, 33.502861, 14.943308>,  <30.789095, 33.586521, 14.799536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.616091, 33.502861, 14.943308>,  <30.327751, 33.363426, 15.182928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.616091, 33.502861, 14.943308> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690190, 0.282049, -0.666398,
		-0.063336, 0.893832, 0.443906,
		0.720851, 0.348586, -0.599051,
		30.832346, 33.607437, 14.763593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.954971, 33.856995, 14.892984>,  <30.327751, 33.363426, 15.182928>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.954971, 33.856995, 14.892984> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.268284, 33.841763, 14.644784>,  <30.456272, 33.832623, 14.495864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.268284, 33.841763, 14.644784>,  <29.954971, 33.856995, 14.892984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.268284, 33.841763, 14.644784> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619712, 0.031286, -0.784205,
		0.049273, 0.998785, 0.000910,
		0.783281, -0.038076, -0.620501,
		30.503267, 33.830341, 14.458633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.238308, 26.283039, 26.054502> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.608612, 26.395023, 26.156155>,  <38.830795, 26.462214, 26.217146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.608612, 26.395023, 26.156155>,  <38.238308, 26.283039, 26.054502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.608612, 26.395023, 26.156155> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129105, 0.865785, -0.483475,
		-0.355376, 0.414774, 0.837658,
		0.925765, 0.279961, 0.254129,
		38.886341, 26.479012, 26.232393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.345852, 26.988953, 26.500223>,  <38.238308, 26.283039, 26.054502>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.345852, 26.988953, 26.500223> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.610474, 26.897648, 26.214499>,  <38.769245, 26.842865, 26.043064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.610474, 26.897648, 26.214499>,  <38.345852, 26.988953, 26.500223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.610474, 26.897648, 26.214499> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324013, 0.772036, -0.546787,
		0.676285, 0.593176, 0.436784,
		0.661554, -0.228260, -0.714313,
		38.808941, 26.829170, 26.000204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.618721, 27.580868, 26.325823>,  <38.345852, 26.988953, 26.500223>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.618721, 27.580868, 26.325823> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.709957, 27.350069, 26.012123>,  <38.764698, 27.211590, 25.823902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.709957, 27.350069, 26.012123>,  <38.618721, 27.580868, 26.325823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.709957, 27.350069, 26.012123> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334563, 0.709989, -0.619664,
		0.914354, 0.403719, -0.031103,
		0.228088, -0.576998, -0.784251,
		38.778385, 27.176970, 25.776848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.977329, 28.010235, 25.850754>,  <38.618721, 27.580868, 26.325823>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.977329, 28.010235, 25.850754> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.816296, 27.707455, 25.644857>,  <38.719677, 27.525787, 25.521320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.816296, 27.707455, 25.644857>,  <38.977329, 28.010235, 25.850754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.816296, 27.707455, 25.644857> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247624, 0.631411, -0.734849,
		0.881255, -0.168374, -0.441632,
		-0.402581, -0.756948, -0.514741,
		38.695522, 27.480370, 25.490435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.147522, 28.228102, 25.205181>,  <38.977329, 28.010235, 25.850754>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.147522, 28.228102, 25.205181> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.867401, 27.943951, 25.177069>,  <38.699329, 27.773460, 25.160202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.867401, 27.943951, 25.177069>,  <39.147522, 28.228102, 25.205181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.867401, 27.943951, 25.177069> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538479, 0.590330, -0.601291,
		0.468631, -0.383243, -0.795933,
		-0.700303, -0.710377, -0.070278,
		38.657310, 27.730837, 25.155985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.010490, 28.155645, 24.549950>,  <39.147522, 28.228102, 25.205181>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.010490, 28.155645, 24.549950> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.673679, 27.980473, 24.675932>,  <38.471592, 27.875368, 24.751522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.673679, 27.980473, 24.675932>,  <39.010490, 28.155645, 24.549950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.673679, 27.980473, 24.675932> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520491, 0.506254, -0.687602,
		0.141676, -0.742914, -0.654222,
		-0.842031, -0.437933, 0.314956,
		38.421070, 27.849092, 24.770418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.729691, 27.945131, 23.942553>,  <39.010490, 28.155645, 24.549950>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.729691, 27.945131, 23.942553> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.427929, 27.962793, 24.204521>,  <38.246872, 27.973391, 24.361702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.427929, 27.962793, 24.204521>,  <38.729691, 27.945131, 23.942553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.427929, 27.962793, 24.204521> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493044, 0.620548, -0.609777,
		-0.433335, -0.782924, -0.446375,
		-0.754406, 0.044156, 0.654921,
		38.201607, 27.976040, 24.400997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.054241, 27.675009, 23.644165>,  <38.729691, 27.945131, 23.942553>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.054241, 27.675009, 23.644165> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.992668, 27.947737, 23.930222>,  <37.955727, 28.111374, 24.101856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.992668, 27.947737, 23.930222>,  <38.054241, 27.675009, 23.644165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.992668, 27.947737, 23.930222> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614527, 0.500696, -0.609639,
		-0.773732, -0.533317, 0.341924,
		-0.153930, 0.681819, 0.715143,
		37.946487, 28.152283, 24.144764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.349751, 27.886484, 23.421156>,  <38.054241, 27.675009, 23.644165>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.349751, 27.886484, 23.421156> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.483067, 28.150864, 23.690100>,  <37.563057, 28.309490, 23.851467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.483067, 28.150864, 23.690100>,  <37.349751, 27.886484, 23.421156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.483067, 28.150864, 23.690100> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570147, 0.709256, -0.414595,
		-0.750901, -0.245166, 0.613222,
		0.333287, 0.660947, 0.672361,
		37.583054, 28.349148, 23.891808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.866684, 28.255640, 23.653265>,  <37.349751, 27.886484, 23.421156>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.866684, 28.255640, 23.653265> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.161987, 28.509296, 23.745209>,  <37.339169, 28.661491, 23.800375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.161987, 28.509296, 23.745209>,  <36.866684, 28.255640, 23.653265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.161987, 28.509296, 23.745209> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547104, 0.762286, -0.345828,
		-0.394522, 0.129555, 0.909708,
		0.738261, 0.634142, 0.229859,
		37.383465, 28.699539, 23.814167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.497086, 28.874151, 23.812077>,  <36.866684, 28.255640, 23.653265>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.497086, 28.874151, 23.812077> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.877567, 28.995338, 23.788708>,  <37.105858, 29.068050, 23.774687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.877567, 28.995338, 23.788708>,  <36.497086, 28.874151, 23.812077>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.877567, 28.995338, 23.788708> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302726, 0.879744, -0.366617,
		-0.059677, 0.366415, 0.928536,
		0.951208, 0.302970, -0.058423,
		37.162930, 29.086229, 23.771181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.618828, 29.591087, 24.118479>,  <36.497086, 28.874151, 23.812077>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.618828, 29.591087, 24.118479> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.898922, 29.511213, 23.844313>,  <37.066978, 29.463289, 23.679813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.898922, 29.511213, 23.844313>,  <36.618828, 29.591087, 24.118479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.898922, 29.511213, 23.844313> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204421, 0.863801, -0.460500,
		0.684017, 0.462572, 0.564046,
		0.700238, -0.199687, -0.685414,
		37.108994, 29.451307, 23.638689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.913887, 30.220314, 24.464178>,  <36.618828, 29.591087, 24.118479>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.913887, 30.220314, 24.464178> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.671028, 30.397955, 24.727736>,  <36.525311, 30.504539, 24.885870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.671028, 30.397955, 24.727736>,  <36.913887, 30.220314, 24.464178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.671028, 30.397955, 24.727736> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629964, -0.236339, 0.739790,
		0.484266, 0.864243, -0.136276,
		-0.607151, 0.444104, 0.658893,
		36.488884, 30.531185, 24.925404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.385746, 30.518688, 24.931684>,  <36.913887, 30.220314, 24.464178>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.385746, 30.518688, 24.931684> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.035988, 30.470287, 25.119640>,  <36.826134, 30.441246, 25.232414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.035988, 30.470287, 25.119640>,  <37.385746, 30.518688, 24.931684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.035988, 30.470287, 25.119640> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485030, -0.245117, 0.839443,
		0.013604, 0.961913, 0.273018,
		-0.874392, -0.121002, 0.469891,
		36.773670, 30.433987, 25.260607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.536934, 30.745174, 25.589827>,  <37.385746, 30.518688, 24.931684>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.536934, 30.745174, 25.589827> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.181313, 30.571650, 25.648329>,  <36.967941, 30.467535, 25.683430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.181313, 30.571650, 25.648329>,  <37.536934, 30.745174, 25.589827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.181313, 30.571650, 25.648329> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299938, -0.310599, 0.901979,
		-0.345864, 0.845774, 0.406256,
		-0.889053, -0.433814, 0.146254,
		36.914597, 30.441505, 25.692205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.384003, 30.836105, 26.222261>,  <37.536934, 30.745174, 25.589827>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.384003, 30.836105, 26.222261> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.160748, 30.513489, 26.144318>,  <37.026794, 30.319918, 26.097551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.160748, 30.513489, 26.144318>,  <37.384003, 30.836105, 26.222261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.160748, 30.513489, 26.144318> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260653, -0.393383, 0.881652,
		-0.787745, 0.441292, 0.429790,
		-0.558138, -0.806543, -0.194861,
		36.993305, 30.271526, 26.085859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.957966, 30.768518, 26.812042>,  <37.384003, 30.836105, 26.222261>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.957966, 30.768518, 26.812042> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.984177, 30.408588, 26.639523>,  <36.999905, 30.192631, 26.536011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.984177, 30.408588, 26.639523>,  <36.957966, 30.768518, 26.812042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.984177, 30.408588, 26.639523> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338636, -0.386525, 0.857861,
		-0.938633, -0.202265, 0.279386,
		0.065526, -0.899826, -0.431299,
		37.003834, 30.138641, 26.510134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.456467, 30.358845, 27.217381>,  <36.957966, 30.768518, 26.812042>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.456467, 30.358845, 27.217381> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.697193, 30.086544, 27.050339>,  <36.841629, 29.923164, 26.950113>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.697193, 30.086544, 27.050339>,  <36.456467, 30.358845, 27.217381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.697193, 30.086544, 27.050339> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162944, -0.407237, 0.898670,
		-0.781836, -0.608880, -0.134157,
		0.601815, -0.680752, -0.417606,
		36.877739, 29.882318, 26.925056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.333115, 29.746996, 27.545631>,  <36.456467, 30.358845, 27.217381>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.333115, 29.746996, 27.545631> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.696609, 29.702803, 27.384638>,  <36.914707, 29.676287, 27.288042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.696609, 29.702803, 27.384638>,  <36.333115, 29.746996, 27.545631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.696609, 29.702803, 27.384638> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305368, -0.481371, 0.821604,
		-0.284516, -0.869527, -0.403701,
		0.908736, -0.110482, -0.402483,
		36.969231, 29.669659, 27.263893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.561317, 29.058935, 27.781677>,  <36.333115, 29.746996, 27.545631>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.561317, 29.058935, 27.781677> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.899109, 29.234299, 27.658613>,  <37.101784, 29.339516, 27.584776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.899109, 29.234299, 27.658613>,  <36.561317, 29.058935, 27.781677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.899109, 29.234299, 27.658613> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434143, -0.223927, 0.872569,
		0.313648, -0.870434, -0.379433,
		0.844479, 0.438407, -0.307659,
		37.152454, 29.365820, 27.566315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.161579, 28.530355, 28.004496>,  <36.561317, 29.058935, 27.781677>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.161579, 28.530355, 28.004496> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.329144, 28.888315, 27.942963>,  <37.429684, 29.103090, 27.906042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.329144, 28.888315, 27.942963>,  <37.161579, 28.530355, 28.004496>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.329144, 28.888315, 27.942963> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566526, -0.125189, 0.814479,
		0.709619, -0.428348, -0.559427,
		0.418914, 0.894900, -0.153834,
		37.454819, 29.156786, 27.896812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.908974, 28.411625, 28.189186>,  <37.161579, 28.530355, 28.004496>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.908974, 28.411625, 28.189186> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.826694, 28.802578, 28.208851>,  <37.777328, 29.037149, 28.220650>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.826694, 28.802578, 28.208851>,  <37.908974, 28.411625, 28.189186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.826694, 28.802578, 28.208851> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342879, 0.024927, 0.939049,
		0.916583, 0.210013, -0.340250,
		-0.205694, 0.977381, 0.049162,
		37.764988, 29.095793, 28.223598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.428669, 28.692554, 28.498945>,  <37.908974, 28.411625, 28.189186>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.428669, 28.692554, 28.498945> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.166573, 28.992529, 28.535301>,  <38.009315, 29.172514, 28.557116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.166573, 28.992529, 28.535301>,  <38.428669, 28.692554, 28.498945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.166573, 28.992529, 28.535301> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363863, 0.207873, 0.907961,
		0.662018, 0.628001, -0.409080,
		-0.655237, 0.749936, 0.090891,
		37.970001, 29.217510, 28.562569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.819946, 29.285093, 28.798273>,  <38.428669, 28.692554, 28.498945>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.819946, 29.285093, 28.798273> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.439960, 29.380857, 28.878529>,  <38.211971, 29.438316, 28.926682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.439960, 29.380857, 28.878529>,  <38.819946, 29.285093, 28.798273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.439960, 29.380857, 28.878529> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265817, 0.282244, 0.921781,
		0.164054, 0.928989, -0.331760,
		-0.949962, 0.239409, 0.200638,
		38.154972, 29.452681, 28.938721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.785500, 29.911123, 29.050169>,  <38.819946, 29.285093, 28.798273>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.785500, 29.911123, 29.050169> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.456913, 29.742128, 29.203373>,  <38.259762, 29.640732, 29.295296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.456913, 29.742128, 29.203373>,  <38.785500, 29.911123, 29.050169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.456913, 29.742128, 29.203373> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228311, 0.371801, 0.899799,
		-0.522556, 0.826601, -0.208965,
		-0.821468, -0.422486, 0.383009,
		38.210472, 29.615383, 29.318275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.552498, 30.403536, 29.507416>,  <38.785500, 29.911123, 29.050169>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.552498, 30.403536, 29.507416> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.368111, 30.066280, 29.618143>,  <38.257477, 29.863928, 29.684580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.368111, 30.066280, 29.618143>,  <38.552498, 30.403536, 29.507416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.368111, 30.066280, 29.618143> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132223, 0.243201, 0.960922,
		-0.877512, 0.479555, -0.000626,
		-0.460967, -0.843138, 0.276820,
		38.229820, 29.813339, 29.701189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.815605, 30.481716, 29.860165>,  <38.552498, 30.403536, 29.507416>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.815605, 30.481716, 29.860165> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.079006, 30.198639, 29.962572>,  <38.237045, 30.028793, 30.024017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.079006, 30.198639, 29.962572>,  <37.815605, 30.481716, 29.860165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.079006, 30.198639, 29.962572> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061247, 0.288666, 0.955469,
		-0.750084, -0.644858, 0.146743,
		0.658501, -0.707694, 0.256020,
		38.276558, 29.986330, 30.039377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.761387, 31.120262, 29.394882>,  <37.815605, 30.481716, 29.860165>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.761387, 31.120262, 29.394882> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.825722, 31.482498, 29.551874>,  <37.864323, 31.699839, 29.646069>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.825722, 31.482498, 29.551874>,  <37.761387, 31.120262, 29.394882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.825722, 31.482498, 29.551874> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491098, 0.418364, -0.764064,
		-0.856127, -0.069855, 0.512022,
		0.160838, 0.905589, 0.392479,
		37.873974, 31.754175, 29.669619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.098042, 31.556986, 29.539808>,  <37.761387, 31.120262, 29.394882>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.098042, 31.556986, 29.539808> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.410019, 31.793880, 29.458872>,  <37.597206, 31.936016, 29.410311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.410019, 31.793880, 29.458872>,  <37.098042, 31.556986, 29.539808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.410019, 31.793880, 29.458872> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496104, 0.387960, -0.776767,
		-0.381528, 0.706219, 0.596398,
		0.779947, 0.592234, -0.202340,
		37.644005, 31.971550, 29.398170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.954266, 32.338455, 29.602890>,  <37.098042, 31.556986, 29.539808>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.954266, 32.338455, 29.602890> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.216579, 32.239780, 29.317488>,  <37.373970, 32.180576, 29.146246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.216579, 32.239780, 29.317488>,  <36.954266, 32.338455, 29.602890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.216579, 32.239780, 29.317488> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620173, 0.362902, -0.695476,
		0.430497, 0.898581, 0.084997,
		0.655787, -0.246688, -0.713504,
		37.413315, 32.165775, 29.103436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.051472, 32.928112, 29.186796>,  <36.954266, 32.338455, 29.602890>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.051472, 32.928112, 29.186796> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.133194, 32.622406, 28.942120>,  <37.182228, 32.438984, 28.795315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.133194, 32.622406, 28.942120>,  <37.051472, 32.928112, 29.186796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.133194, 32.622406, 28.942120> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569059, 0.415715, -0.709473,
		0.796511, 0.493038, -0.349976,
		0.204307, -0.764260, -0.611690,
		37.194485, 32.393127, 28.758612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.263889, 33.309364, 28.555262>,  <37.051472, 32.928112, 29.186796>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.263889, 33.309364, 28.555262> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.181961, 32.932308, 28.449825>,  <37.132805, 32.706074, 28.386562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.181961, 32.932308, 28.449825>,  <37.263889, 33.309364, 28.555262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.181961, 32.932308, 28.449825> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443881, 0.329472, -0.833317,
		0.872363, -0.053678, -0.485902,
		-0.204822, -0.942638, -0.263592,
		37.120514, 32.649517, 28.370749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.339535, 33.393589, 27.897591>,  <37.263889, 33.309364, 28.555262>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.339535, 33.393589, 27.897591> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.143623, 33.045773, 27.922968>,  <37.026077, 32.837082, 27.938194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.143623, 33.045773, 27.922968>,  <37.339535, 33.393589, 27.897591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.143623, 33.045773, 27.922968> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574806, 0.267340, -0.773387,
		0.655529, -0.415252, -0.630752,
		-0.489776, -0.869538, 0.063440,
		36.996689, 32.784912, 27.941999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.384850, 33.057301, 27.315512>,  <37.339535, 33.393589, 27.897591>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.384850, 33.057301, 27.315512> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.038551, 32.951988, 27.485767>,  <36.830772, 32.888802, 27.587921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.038551, 32.951988, 27.485767>,  <37.384850, 33.057301, 27.315512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.038551, 32.951988, 27.485767> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487362, 0.249992, -0.836650,
		0.113863, -0.931767, -0.344740,
		-0.865745, -0.263277, 0.425643,
		36.778828, 32.873005, 27.613461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.066006, 32.776432, 26.864784>,  <37.384850, 33.057301, 27.315512>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.066006, 32.776432, 26.864784> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.749866, 32.812233, 27.107216>,  <36.560181, 32.833714, 27.252676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.749866, 32.812233, 27.107216>,  <37.066006, 32.776432, 26.864784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.749866, 32.812233, 27.107216> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576955, 0.224021, -0.785453,
		-0.206077, -0.970466, -0.125415,
		-0.790351, 0.089505, 0.606081,
		36.512760, 32.839085, 27.289040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.560356, 32.305862, 26.614264>,  <37.066006, 32.776432, 26.864784>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.560356, 32.305862, 26.614264> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.365047, 32.597687, 26.805820>,  <36.247864, 32.772781, 26.920753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.365047, 32.597687, 26.805820>,  <36.560356, 32.305862, 26.614264>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.365047, 32.597687, 26.805820> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547395, 0.171345, -0.819146,
		-0.679671, -0.662105, 0.315695,
		-0.488268, 0.729560, 0.478891,
		36.218567, 32.816555, 26.949488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.826679, 32.416279, 26.263998>,  <36.560356, 32.305862, 26.614264>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.826679, 32.416279, 26.263998> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.856007, 32.732754, 26.506861>,  <35.873604, 32.922638, 26.652578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.856007, 32.732754, 26.506861>,  <35.826679, 32.416279, 26.263998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.856007, 32.732754, 26.506861> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573677, 0.531453, -0.623259,
		-0.815793, -0.302615, 0.492855,
		0.073322, 0.791190, 0.607159,
		35.878002, 32.970112, 26.689009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.139538, 32.732128, 26.362751>,  <35.826679, 32.416279, 26.263998>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.139538, 32.732128, 26.362751> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.411457, 33.021626, 26.410202>,  <35.574608, 33.195324, 26.438673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.411457, 33.021626, 26.410202>,  <35.139538, 32.732128, 26.362751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.411457, 33.021626, 26.410202> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412207, 0.510830, -0.754412,
		-0.606602, 0.463945, 0.645593,
		0.679794, 0.723746, 0.118629,
		35.615395, 33.238750, 26.445791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.765694, 33.450771, 26.291937>,  <35.139538, 32.732128, 26.362751>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.765694, 33.450771, 26.291937> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.152752, 33.538639, 26.242271>,  <35.384987, 33.591358, 26.212473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.152752, 33.538639, 26.242271>,  <34.765694, 33.450771, 26.291937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.152752, 33.538639, 26.242271> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236439, 0.617474, -0.750215,
		-0.088130, 0.755296, 0.649431,
		0.967641, 0.219667, -0.124164,
		35.443043, 33.604538, 26.205023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.729431, 34.185364, 26.305820>,  <34.765694, 33.450771, 26.291937>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.729431, 34.185364, 26.305820> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.063946, 34.063938, 26.123188>,  <35.264656, 33.991081, 26.013609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.063946, 34.063938, 26.123188>,  <34.729431, 34.185364, 26.305820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.063946, 34.063938, 26.123188> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202964, 0.602186, -0.772125,
		0.509336, 0.738391, 0.441991,
		0.836291, -0.303563, -0.456582,
		35.314835, 33.972870, 25.986214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.006573, 34.809017, 26.089859>,  <34.729431, 34.185364, 26.305820>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.006573, 34.809017, 26.089859> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.195427, 34.543858, 25.857426>,  <35.308739, 34.384762, 25.717966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.195427, 34.543858, 25.857426>,  <35.006573, 34.809017, 26.089859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.195427, 34.543858, 25.857426> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176819, 0.574567, -0.799129,
		0.863610, 0.480044, 0.154061,
		0.472136, -0.662895, -0.581083,
		35.337067, 34.344990, 25.683102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.550201, 35.254120, 25.694752>,  <35.006573, 34.809017, 26.089859>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.550201, 35.254120, 25.694752> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.478188, 34.904499, 25.514254>,  <35.434978, 34.694729, 25.405954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.478188, 34.904499, 25.514254>,  <35.550201, 35.254120, 25.694752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.478188, 34.904499, 25.514254> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186632, 0.480761, -0.856760,
		0.965792, -0.070034, -0.249681,
		-0.180039, -0.874050, -0.451245,
		35.424175, 34.642284, 25.378880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.947598, 35.342892, 25.159317>,  <35.550201, 35.254120, 25.694752>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.947598, 35.342892, 25.159317> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.686848, 35.057949, 25.055311>,  <35.530396, 34.886986, 24.992908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.686848, 35.057949, 25.055311>,  <35.947598, 35.342892, 25.159317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.686848, 35.057949, 25.055311> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262047, 0.533366, -0.804271,
		0.711608, -0.456150, -0.534360,
		-0.651878, -0.712354, -0.260015,
		35.491283, 34.844242, 24.977306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.928329, 35.421333, 24.423273>,  <35.947598, 35.342892, 25.159317>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.928329, 35.421333, 24.423273> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.597233, 35.202900, 24.474865>,  <35.398575, 35.071838, 24.505821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.597233, 35.202900, 24.474865>,  <35.928329, 35.421333, 24.423273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.597233, 35.202900, 24.474865> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415035, 0.441164, -0.795688,
		0.377609, -0.712157, -0.591813,
		-0.827742, -0.546083, 0.128983,
		35.348911, 35.039074, 24.513559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.768600, 35.242840, 23.729645>,  <35.928329, 35.421333, 24.423273>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.768600, 35.242840, 23.729645> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.448013, 35.247566, 23.968815>,  <35.255661, 35.250404, 24.112318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.448013, 35.247566, 23.968815>,  <35.768600, 35.242840, 23.729645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.448013, 35.247566, 23.968815> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569861, 0.288215, -0.769539,
		-0.181426, -0.957493, -0.224259,
		-0.801463, 0.011818, 0.597927,
		35.207573, 35.251110, 24.148193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.261955, 34.856735, 23.351933>,  <35.768600, 35.242840, 23.729645>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.261955, 34.856735, 23.351933> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.072231, 35.098618, 23.607857>,  <34.958397, 35.243748, 23.761412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.072231, 35.098618, 23.607857>,  <35.261955, 34.856735, 23.351933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.072231, 35.098618, 23.607857> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562762, 0.350616, -0.748576,
		-0.676998, -0.715119, 0.174006,
		-0.474312, 0.604709, 0.639809,
		34.929939, 35.280029, 23.799799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.584091, 34.835823, 23.148726>,  <35.261955, 34.856735, 23.351933>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.584091, 34.835823, 23.148726> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.603458, 35.156765, 23.386679>,  <34.615078, 35.349331, 23.529449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.603458, 35.156765, 23.386679>,  <34.584091, 34.835823, 23.148726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.603458, 35.156765, 23.386679> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482394, 0.540301, -0.689471,
		-0.874615, -0.253582, 0.413212,
		0.048422, 0.802353, 0.594882,
		34.617985, 35.397472, 23.565144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.936787, 35.128017, 23.061638>,  <34.584091, 34.835823, 23.148726>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.936787, 35.128017, 23.061638> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.179573, 35.409237, 23.209862>,  <34.325245, 35.577969, 23.298796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.179573, 35.409237, 23.209862>,  <33.936787, 35.128017, 23.061638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.179573, 35.409237, 23.209862> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354196, 0.656714, -0.665786,
		-0.711430, 0.272862, 0.647622,
		0.606970, 0.703045, 0.370560,
		34.361664, 35.620152, 23.321030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.555447, 35.662144, 23.067278>,  <33.936787, 35.128017, 23.061638>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.555447, 35.662144, 23.067278> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.909370, 35.841068, 23.119480>,  <34.121723, 35.948421, 23.150801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.909370, 35.841068, 23.119480>,  <33.555447, 35.662144, 23.067278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.909370, 35.841068, 23.119480> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308310, 0.772024, -0.555809,
		-0.349371, 0.451547, 0.821002,
		0.884808, 0.447307, 0.130506,
		34.174812, 35.975262, 23.158632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.353294, 36.406654, 23.209251>,  <33.555447, 35.662144, 23.067278>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.353294, 36.406654, 23.209251> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.731277, 36.374603, 23.082361>,  <33.958069, 36.355373, 23.006227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.731277, 36.374603, 23.082361>,  <33.353294, 36.406654, 23.209251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.731277, 36.374603, 23.082361> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153015, 0.748763, -0.644935,
		0.289205, 0.657977, 0.695289,
		0.944959, -0.080129, -0.317226,
		34.014767, 36.350563, 22.987194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.505466, 37.054604, 23.083183>,  <33.353294, 36.406654, 23.209251>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.505466, 37.054604, 23.083183> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.770622, 36.861397, 22.854355>,  <33.929718, 36.745472, 22.717058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.770622, 36.861397, 22.854355>,  <33.505466, 37.054604, 23.083183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.770622, 36.861397, 22.854355> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224012, 0.601118, -0.767122,
		0.714418, 0.636670, 0.290273,
		0.662892, -0.483021, -0.572071,
		33.969490, 36.716492, 22.682734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.949986, 37.517681, 22.849756>,  <33.505466, 37.054604, 23.083183>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.949986, 37.517681, 22.849756> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.009266, 37.216312, 22.593506>,  <34.044834, 37.035492, 22.439756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.009266, 37.216312, 22.593506>,  <33.949986, 37.517681, 22.849756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.009266, 37.216312, 22.593506> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110660, 0.631076, -0.767788,
		0.982747, 0.184677, 0.010151,
		0.148198, -0.753418, -0.640624,
		34.053726, 36.990288, 22.401320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.471867, 37.718296, 22.390636>,  <33.949986, 37.517681, 22.849756>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.471867, 37.718296, 22.390636> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.254463, 37.459999, 22.176121>,  <34.124020, 37.305019, 22.047411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.254463, 37.459999, 22.176121>,  <34.471867, 37.718296, 22.390636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.254463, 37.459999, 22.176121> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115025, 0.575573, -0.809620,
		0.831484, -0.501724, -0.238553,
		-0.543511, -0.645746, -0.536291,
		34.091412, 37.266273, 22.015234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.581749, 37.939659, 21.748672>,  <34.471867, 37.718296, 22.390636>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.581749, 37.939659, 21.748672> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.306133, 37.661247, 21.667906>,  <34.140766, 37.494198, 21.619446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.306133, 37.661247, 21.667906>,  <34.581749, 37.939659, 21.748672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.306133, 37.661247, 21.667906> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160439, 0.418193, -0.894077,
		0.706747, -0.583654, -0.399820,
		-0.689034, -0.696033, -0.201916,
		34.099422, 37.452438, 21.607330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.221916, 37.427498, 21.657358>,  <34.581749, 37.939659, 21.748672>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.221916, 37.427498, 21.657358> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.581997, 37.572701, 21.561132>,  <35.798046, 37.659821, 21.503397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.581997, 37.572701, 21.561132>,  <35.221916, 37.427498, 21.657358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.581997, 37.572701, 21.561132> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418526, -0.568529, 0.708244,
		0.120329, -0.738242, -0.663716,
		0.900198, 0.363005, -0.240563,
		35.852055, 37.681602, 21.488964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.684643, 36.852489, 21.744299>,  <35.221916, 37.427498, 21.657358>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.684643, 36.852489, 21.744299> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.919624, 37.176186, 21.746603>,  <36.060612, 37.370403, 21.747986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.919624, 37.176186, 21.746603>,  <35.684643, 36.852489, 21.744299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.919624, 37.176186, 21.746603> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530262, -0.390294, 0.752658,
		0.611327, -0.439096, -0.658387,
		0.587454, 0.809237, 0.005761,
		36.095860, 37.418957, 21.748331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.333225, 36.555016, 21.615282>,  <35.684643, 36.852489, 21.744299>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.333225, 36.555016, 21.615282> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.382259, 36.915482, 21.781593>,  <36.411678, 37.131763, 21.881380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.382259, 36.915482, 21.781593>,  <36.333225, 36.555016, 21.615282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.382259, 36.915482, 21.781593> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678443, -0.381853, 0.627617,
		0.724354, 0.205147, -0.658199,
		0.122581, 0.901168, 0.415778,
		36.419033, 37.185833, 21.906326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.103203, 36.716061, 21.716873>,  <36.333225, 36.555016, 21.615282>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.103203, 36.716061, 21.716873> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.916451, 36.968796, 21.964355>,  <36.804398, 37.120438, 22.112844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.916451, 36.968796, 21.964355>,  <37.103203, 36.716061, 21.716873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.916451, 36.968796, 21.964355> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547934, -0.342458, 0.763210,
		0.694108, 0.695341, -0.186319,
		-0.466885, 0.631841, 0.618704,
		36.776386, 37.158348, 22.149967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.649212, 36.972347, 22.083652>,  <37.103203, 36.716061, 21.716873>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.649212, 36.972347, 22.083652> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.336666, 37.077648, 22.309988>,  <37.149139, 37.140831, 22.445789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.336666, 37.077648, 22.309988>,  <37.649212, 36.972347, 22.083652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.336666, 37.077648, 22.309988> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467009, -0.354790, 0.809955,
		0.413977, 0.897119, 0.154277,
		-0.781361, 0.263254, 0.565838,
		37.102257, 37.156624, 22.479740>
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
