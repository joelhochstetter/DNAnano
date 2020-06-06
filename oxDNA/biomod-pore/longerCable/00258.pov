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
	<24.236555, 35.331646, 35.148125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.200233, 34.934994, 35.111401>,  <24.178440, 34.697002, 35.089367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.200233, 34.934994, 35.111401>,  <24.236555, 35.331646, 35.148125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.200233, 34.934994, 35.111401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948348, -0.114244, 0.295946,
		-0.303957, -0.060198, 0.950782,
		-0.090806, -0.991627, -0.091814,
		24.172991, 34.637505, 35.083855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.244850, 35.041935, 35.870029>,  <24.236555, 35.331646, 35.148125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.244850, 35.041935, 35.870029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.400852, 34.822361, 35.574310>,  <24.494453, 34.690617, 35.396877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.400852, 34.822361, 35.574310>,  <24.244850, 35.041935, 35.870029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.400852, 34.822361, 35.574310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887133, 0.008837, 0.461428,
		-0.246761, -0.835818, 0.490425,
		0.390004, -0.548935, -0.739302,
		24.517853, 34.657681, 35.352520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.913681, 35.437763, 35.909252>,  <24.244850, 35.041935, 35.870029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.913681, 35.437763, 35.909252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.986666, 35.261478, 35.557686>,  <25.030457, 35.155708, 35.346748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.986666, 35.261478, 35.557686>,  <24.913681, 35.437763, 35.909252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.986666, 35.261478, 35.557686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.935544, 0.352786, 0.017321,
		0.302434, -0.825421, 0.476670,
		0.182460, -0.440707, -0.878912,
		25.041403, 35.129265, 35.294014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.470510, 35.007843, 35.970772>,  <24.913681, 35.437763, 35.909252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.470510, 35.007843, 35.970772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.465591, 35.098133, 35.581127>,  <25.462639, 35.152309, 35.347340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.465591, 35.098133, 35.581127>,  <25.470510, 35.007843, 35.970772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.465591, 35.098133, 35.581127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977350, 0.208548, 0.035986,
		0.211272, -0.951606, -0.223182,
		-0.012300, 0.225730, -0.974112,
		25.461901, 35.165852, 35.288895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.941883, 34.567474, 35.560680>,  <25.470510, 35.007843, 35.970772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.941883, 34.567474, 35.560680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.927818, 34.896122, 35.333096>,  <25.919380, 35.093311, 35.196545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.927818, 34.896122, 35.333096>,  <25.941883, 34.567474, 35.560680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.927818, 34.896122, 35.333096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997786, 0.061021, 0.026454,
		0.056454, -0.566768, -0.821941,
		-0.035163, 0.821615, -0.568958,
		25.917269, 35.142605, 35.162407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.342058, 34.415810, 35.005482>,  <25.941883, 34.567474, 35.560680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.342058, 34.415810, 35.005482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.316948, 34.812489, 35.050362>,  <26.301882, 35.050495, 35.077290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.316948, 34.812489, 35.050362>,  <26.342058, 34.415810, 35.005482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.316948, 34.812489, 35.050362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.986162, 0.044353, 0.159744,
		0.153442, 0.120672, -0.980762,
		-0.062776, 0.991701, 0.112196,
		26.298115, 35.110001, 35.084019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.929617, 34.662491, 34.654190>,  <26.342058, 34.415810, 35.005482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.929617, 34.662491, 34.654190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.826090, 34.954361, 34.907356>,  <26.763973, 35.129482, 35.059258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.826090, 34.954361, 34.907356>,  <26.929617, 34.662491, 34.654190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.826090, 34.954361, 34.907356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960742, 0.126668, 0.246840,
		0.099943, 0.671958, -0.733814,
		-0.258817, 0.729676, 0.632919,
		26.748446, 35.173264, 35.097233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.494329, 35.101864, 34.583817>,  <26.929617, 34.662491, 34.654190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.494329, 35.101864, 34.583817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.325123, 35.203838, 34.931625>,  <27.223598, 35.265022, 35.140308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.325123, 35.203838, 34.931625>,  <27.494329, 35.101864, 34.583817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.325123, 35.203838, 34.931625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900432, 0.225635, 0.371901,
		-0.101384, 0.940264, -0.324999,
		-0.423017, 0.254934, 0.869520,
		27.198217, 35.280319, 35.192482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.698929, 35.771034, 34.680355>,  <27.494329, 35.101864, 34.583817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.698929, 35.771034, 34.680355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.608320, 35.628899, 35.043106>,  <27.553955, 35.543617, 35.260757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.608320, 35.628899, 35.043106>,  <27.698929, 35.771034, 34.680355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.608320, 35.628899, 35.043106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823343, 0.427589, 0.373196,
		-0.520380, 0.831206, 0.195708,
		-0.226520, -0.355338, 0.906876,
		27.540365, 35.522297, 35.315170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.765196, 36.349331, 35.108723>,  <27.698929, 35.771034, 34.680355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.765196, 36.349331, 35.108723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.797894, 36.037437, 35.357021>,  <27.817513, 35.850300, 35.506001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.797894, 36.037437, 35.357021>,  <27.765196, 36.349331, 35.108723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.797894, 36.037437, 35.357021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765457, 0.447990, 0.461931,
		-0.638274, 0.437398, 0.633474,
		0.081743, -0.779736, 0.620750,
		27.822416, 35.803516, 35.543247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.923306, 36.669556, 35.772087>,  <27.765196, 36.349331, 35.108723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.923306, 36.669556, 35.772087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.032629, 36.285004, 35.785019>,  <28.098223, 36.054272, 35.792778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.032629, 36.285004, 35.785019>,  <27.923306, 36.669556, 35.772087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.032629, 36.285004, 35.785019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912728, 0.269797, 0.306817,
		-0.303692, -0.054346, 0.951219,
		0.273310, -0.961383, 0.032332,
		28.114622, 35.996590, 35.794720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.019827, 36.395012, 36.412655>,  <27.923306, 36.669556, 35.772087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.019827, 36.395012, 36.412655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.274252, 36.264946, 36.132744>,  <28.426907, 36.186905, 35.964798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.274252, 36.264946, 36.132744>,  <28.019827, 36.395012, 36.412655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.274252, 36.264946, 36.132744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726899, 0.556796, 0.401991,
		0.258920, -0.764360, 0.590520,
		0.636065, -0.325165, -0.699778,
		28.465071, 36.167397, 35.922810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.648670, 36.039536, 36.673122>,  <28.019827, 36.395012, 36.412655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.648670, 36.039536, 36.673122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.739649, 36.268761, 36.358196>,  <28.794235, 36.406296, 36.169243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.739649, 36.268761, 36.358196>,  <28.648670, 36.039536, 36.673122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.739649, 36.268761, 36.358196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723077, 0.442150, 0.530720,
		0.652249, -0.689998, -0.313807,
		0.227446, 0.573068, -0.787313,
		28.807882, 36.440681, 36.122002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.339098, 35.876022, 36.254707>,  <28.648670, 36.039536, 36.673122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.339098, 35.876022, 36.254707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.217693, 36.256443, 36.277985>,  <29.144852, 36.484695, 36.291950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.217693, 36.256443, 36.277985>,  <29.339098, 35.876022, 36.254707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.217693, 36.256443, 36.277985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778984, 0.212502, 0.589938,
		0.548694, 0.224382, -0.805349,
		-0.303510, 0.951050, 0.058191,
		29.126640, 36.541759, 36.295441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.631044, 35.356159, 35.648434>,  <29.339098, 35.876022, 36.254707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.631044, 35.356159, 35.648434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.497341, 35.697399, 35.488186>,  <29.417120, 35.902142, 35.392036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.497341, 35.697399, 35.488186>,  <29.631044, 35.356159, 35.648434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.497341, 35.697399, 35.488186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272861, 0.319273, 0.907531,
		0.902119, 0.412663, 0.126057,
		-0.334258, 0.853096, -0.400622,
		29.397064, 35.953327, 35.368000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.904743, 35.163555, 35.754784>,  <29.631044, 35.356159, 35.648434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.904743, 35.163555, 35.754784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.730782, 35.472061, 35.940693>,  <28.626404, 35.657166, 36.052238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.730782, 35.472061, 35.940693>,  <28.904743, 35.163555, 35.754784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.730782, 35.472061, 35.940693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.888473, -0.283535, -0.360866,
		-0.146543, -0.569878, 0.808557,
		-0.434904, 0.771263, 0.464771,
		28.600311, 35.703442, 36.080124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.431688, 34.792797, 36.004688>,  <28.904743, 35.163555, 35.754784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.431688, 34.792797, 36.004688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.316042, 35.175663, 35.998463>,  <28.246655, 35.405384, 35.994728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.316042, 35.175663, 35.998463>,  <28.431688, 34.792797, 36.004688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.316042, 35.175663, 35.998463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.929670, -0.284613, -0.233900,
		-0.228311, -0.053156, 0.972136,
		-0.289116, 0.957168, -0.015563,
		28.229307, 35.462814, 35.993793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.864323, 34.805889, 36.360672>,  <28.431688, 34.792797, 36.004688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.864323, 34.805889, 36.360672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.837160, 35.123055, 36.118458>,  <27.820862, 35.313354, 35.973129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.837160, 35.123055, 36.118458>,  <27.864323, 34.805889, 36.360672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.837160, 35.123055, 36.118458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926981, -0.274570, -0.255576,
		-0.368912, 0.543966, 0.753661,
		-0.067908, 0.792914, -0.605538,
		27.816788, 35.360928, 35.936798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.249689, 34.982906, 36.427052>,  <27.864323, 34.805889, 36.360672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.249689, 34.982906, 36.427052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.339075, 35.183819, 36.092918>,  <27.392708, 35.304367, 35.892441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.339075, 35.183819, 36.092918>,  <27.249689, 34.982906, 36.427052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.339075, 35.183819, 36.092918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899930, -0.222882, -0.374767,
		-0.374419, 0.835485, 0.402213,
		0.223466, 0.502283, -0.835329,
		27.406115, 35.334503, 35.842319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.656775, 35.364491, 36.361904>,  <27.249689, 34.982906, 36.427052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.656775, 35.364491, 36.361904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.823925, 35.328289, 36.000309>,  <26.924215, 35.306568, 35.783352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.823925, 35.328289, 36.000309>,  <26.656775, 35.364491, 36.361904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.823925, 35.328289, 36.000309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899046, -0.184400, -0.397131,
		-0.130754, 0.978676, -0.158422,
		0.417875, -0.090502, -0.903985,
		26.949287, 35.301140, 35.729115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.131866, 35.778233, 36.210560>,  <26.656775, 35.364491, 36.361904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.131866, 35.778233, 36.210560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.081324, 35.692219, 35.823200>,  <27.050999, 35.640610, 35.590786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.081324, 35.692219, 35.823200>,  <27.131866, 35.778233, 36.210560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.081324, 35.692219, 35.823200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.991602, 0.054501, 0.117283,
		0.027560, 0.975085, -0.220111,
		-0.126358, -0.215030, -0.968399,
		27.043417, 35.627708, 35.532681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.497190, 36.145432, 35.946930>,  <27.131866, 35.778233, 36.210560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.497190, 36.145432, 35.946930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.566786, 35.852585, 35.683498>,  <26.608543, 35.676876, 35.525440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.566786, 35.852585, 35.683498>,  <26.497190, 36.145432, 35.946930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.566786, 35.852585, 35.683498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.974710, -0.032791, -0.221056,
		0.140244, 0.680387, -0.719309,
		0.173990, -0.732119, -0.658581,
		26.618982, 35.632950, 35.485924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.206858, 36.355659, 35.444382>,  <26.497190, 36.145432, 35.946930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.206858, 36.355659, 35.444382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.235790, 35.980473, 35.308743>,  <26.253149, 35.755360, 35.227360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.235790, 35.980473, 35.308743>,  <26.206858, 36.355659, 35.444382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.235790, 35.980473, 35.308743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.943020, 0.046395, -0.329485,
		0.324778, 0.343609, -0.881165,
		0.072332, -0.937966, -0.339098,
		26.257490, 35.699081, 35.207012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.884205, 36.354549, 34.845577>,  <26.206858, 36.355659, 35.444382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.884205, 36.354549, 34.845577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.866096, 35.978275, 34.980072>,  <25.855230, 35.752510, 35.060768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.866096, 35.978275, 34.980072>,  <25.884205, 36.354549, 34.845577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.866096, 35.978275, 34.980072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.896000, -0.110597, -0.430061,
		0.441741, -0.320736, -0.837850,
		-0.045273, -0.940689, 0.336235,
		25.852514, 35.696068, 35.080944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.471035, 36.045685, 34.261230>,  <25.884205, 36.354549, 34.845577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.471035, 36.045685, 34.261230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.621828, 35.768982, 34.507599>,  <25.712303, 35.602962, 34.655422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.621828, 35.768982, 34.507599>,  <25.471035, 36.045685, 34.261230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.621828, 35.768982, 34.507599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780871, -0.594997, -0.190313,
		0.498122, -0.409212, -0.764474,
		0.376981, -0.691754, 0.615923,
		25.734922, 35.561455, 34.692375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.419493, 35.364124, 34.033218>,  <25.471035, 36.045685, 34.261230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.419493, 35.364124, 34.033218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.426880, 35.303452, 34.428520>,  <25.431313, 35.267048, 34.665703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.426880, 35.303452, 34.428520>,  <25.419493, 35.364124, 34.033218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.426880, 35.303452, 34.428520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712832, -0.695092, -0.093367,
		0.701092, -0.702736, -0.120965,
		0.018469, -0.151687, 0.988256,
		25.432421, 35.257946, 34.724998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.163546, 34.673813, 34.078861>,  <25.419493, 35.364124, 34.033218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.163546, 34.673813, 34.078861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.130219, 34.801830, 34.456352>,  <25.110222, 34.878639, 34.682846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.130219, 34.801830, 34.456352>,  <25.163546, 34.673813, 34.078861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.130219, 34.801830, 34.456352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769710, -0.622163, 0.143038,
		0.632933, -0.714482, 0.298179,
		-0.083318, 0.320045, 0.943732,
		25.105223, 34.897842, 34.739471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.145336, 34.097580, 34.637699>,  <25.163546, 34.673813, 34.078861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.145336, 34.097580, 34.637699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.933064, 34.416351, 34.753132>,  <24.805700, 34.607613, 34.822392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.933064, 34.416351, 34.753132>,  <25.145336, 34.097580, 34.637699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.933064, 34.416351, 34.753132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833080, -0.553134, -0.004476,
		0.156058, -0.242788, 0.957445,
		-0.530682, 0.796930, 0.288583,
		24.773859, 34.655430, 34.839706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.235636, 33.343056, 34.439999>,  <25.145336, 34.097580, 34.637699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.235636, 33.343056, 34.439999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.588423, 33.364582, 34.627289>,  <25.800095, 33.377499, 34.739662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.588423, 33.364582, 34.627289>,  <25.235636, 33.343056, 34.439999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.588423, 33.364582, 34.627289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424658, 0.340210, -0.839001,
		-0.204451, 0.938808, 0.277199,
		0.881967, 0.053820, 0.468229,
		25.853012, 33.380730, 34.767757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.437706, 33.826931, 34.051876>,  <25.235636, 33.343056, 34.439999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.437706, 33.826931, 34.051876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.767509, 33.699856, 34.239178>,  <25.965391, 33.623611, 34.351559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.767509, 33.699856, 34.239178>,  <25.437706, 33.826931, 34.051876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.767509, 33.699856, 34.239178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546770, 0.234227, -0.803853,
		0.145698, 0.918810, 0.366826,
		0.824508, -0.317689, 0.468251,
		26.014862, 33.604549, 34.379654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.903719, 34.377850, 34.037605>,  <25.437706, 33.826931, 34.051876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.903719, 34.377850, 34.037605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.082211, 34.019913, 34.042389>,  <26.189304, 33.805153, 34.045261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.082211, 34.019913, 34.042389>,  <25.903719, 34.377850, 34.037605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.082211, 34.019913, 34.042389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461387, 0.218584, -0.859851,
		0.766814, 0.389208, 0.510405,
		0.446227, -0.894840, 0.011962,
		26.216078, 33.751461, 34.045979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.512690, 34.449406, 33.812916>,  <25.903719, 34.377850, 34.037605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.512690, 34.449406, 33.812916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.523476, 34.052895, 33.761307>,  <26.529947, 33.814987, 33.730343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.523476, 34.052895, 33.761307>,  <26.512690, 34.449406, 33.812916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.523476, 34.052895, 33.761307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479496, 0.126075, -0.868440,
		0.877130, -0.038446, 0.478712,
		0.026966, -0.991275, -0.129019,
		26.531565, 33.755512, 33.722603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.257900, 34.295414, 33.665161>,  <26.512690, 34.449406, 33.812916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.257900, 34.295414, 33.665161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.039911, 33.975891, 33.563248>,  <26.909119, 33.784180, 33.502098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.039911, 33.975891, 33.563248>,  <27.257900, 34.295414, 33.665161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.039911, 33.975891, 33.563248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598670, -0.157963, -0.785265,
		0.587027, -0.580481, 0.564306,
		-0.544971, -0.798805, -0.254788,
		26.876419, 33.736248, 33.486813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.824717, 33.882973, 33.412449>,  <27.257900, 34.295414, 33.665161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.824717, 33.882973, 33.412449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.479446, 33.735573, 33.274387>,  <27.272284, 33.647133, 33.191551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.479446, 33.735573, 33.274387>,  <27.824717, 33.882973, 33.412449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.479446, 33.735573, 33.274387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441466, -0.219100, -0.870116,
		0.245016, -0.903439, 0.351804,
		-0.863177, -0.368502, -0.345155,
		27.220493, 33.625023, 33.170841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.959427, 33.344891, 33.005249>,  <27.824717, 33.882973, 33.412449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.959427, 33.344891, 33.005249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.622473, 33.488594, 32.844593>,  <27.420300, 33.574818, 32.748199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.622473, 33.488594, 32.844593>,  <27.959427, 33.344891, 33.005249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.622473, 33.488594, 32.844593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378391, -0.136319, -0.915553,
		-0.383674, -0.923227, -0.021109,
		-0.842386, 0.359261, -0.401643,
		27.369757, 33.596371, 32.724098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.495323, 32.841152, 33.108112>,  <27.959427, 33.344891, 33.005249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.495323, 32.841152, 33.108112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.723333, 32.834732, 32.779526>,  <28.860140, 32.830879, 32.582375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.723333, 32.834732, 32.779526>,  <28.495323, 32.841152, 33.108112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.723333, 32.834732, 32.779526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116653, -0.991261, -0.061583,
		-0.813302, 0.130931, -0.566918,
		0.570027, -0.016047, -0.821469,
		28.894342, 32.829918, 32.533085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.809952, 32.622086, 32.860584>,  <28.495323, 32.841152, 33.108112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.809952, 32.622086, 32.860584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.509182, 32.871017, 32.773571>,  <27.328720, 33.020374, 32.721363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.509182, 32.871017, 32.773571>,  <27.809952, 32.622086, 32.860584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.509182, 32.871017, 32.773571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232666, -0.058227, -0.970812,
		-0.616829, -0.780589, -0.101012,
		-0.751923, 0.622327, -0.217532,
		27.283606, 33.057716, 32.708313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.449993, 32.349922, 32.358589>,  <27.809952, 32.622086, 32.860584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.449993, 32.349922, 32.358589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.379612, 32.740101, 32.305614>,  <27.337383, 32.974209, 32.273830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.379612, 32.740101, 32.305614>,  <27.449993, 32.349922, 32.358589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.379612, 32.740101, 32.305614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301032, -0.074770, -0.950678,
		-0.937241, -0.207139, -0.280485,
		-0.175951, 0.975450, -0.132433,
		27.326826, 33.032738, 32.265884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.024057, 32.395649, 31.739391>,  <27.449993, 32.349922, 32.358589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.024057, 32.395649, 31.739391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.165333, 32.768406, 31.772476>,  <27.250099, 32.992058, 31.792326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.165333, 32.768406, 31.772476>,  <27.024057, 32.395649, 31.739391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.165333, 32.768406, 31.772476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247108, -0.007655, -0.968958,
		-0.902327, 0.362665, -0.232980,
		0.353191, 0.931888, 0.082711,
		27.271290, 33.047974, 31.797289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.756189, 32.887711, 31.206593>,  <27.024057, 32.395649, 31.739391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.756189, 32.887711, 31.206593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.126534, 33.024658, 31.270542>,  <27.348740, 33.106827, 31.308912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.126534, 33.024658, 31.270542>,  <26.756189, 32.887711, 31.206593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.126534, 33.024658, 31.270542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172441, -0.006370, -0.984999,
		-0.336218, 0.939543, -0.064936,
		0.925863, 0.342372, 0.159874,
		27.404293, 33.127369, 31.318504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.435141, 32.815144, 30.744926>,  <26.756189, 32.887711, 31.206593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.435141, 32.815144, 30.744926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.490442, 33.210846, 30.725899>,  <27.523623, 33.448265, 30.714481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.490442, 33.210846, 30.725899>,  <27.435141, 32.815144, 30.744926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.490442, 33.210846, 30.725899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234631, 0.079378, 0.968838,
		0.962203, -0.122784, 0.243084,
		0.138253, 0.989254, -0.047569,
		27.531918, 33.507622, 30.711628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.034325, 33.110741, 31.092297>,  <27.435141, 32.815144, 30.744926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.034325, 33.110741, 31.092297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.728237, 33.368195, 31.097569>,  <27.544584, 33.522667, 31.100733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.728237, 33.368195, 31.097569>,  <28.034325, 33.110741, 31.092297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.728237, 33.368195, 31.097569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052738, -0.083079, 0.995147,
		0.641608, 0.760808, 0.097518,
		-0.765217, 0.643637, 0.013181,
		27.498672, 33.561287, 31.101522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.148569, 33.802349, 31.519022>,  <28.034325, 33.110741, 31.092297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.148569, 33.802349, 31.519022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.777264, 33.655029, 31.498312>,  <27.554480, 33.566639, 31.485886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.777264, 33.655029, 31.498312>,  <28.148569, 33.802349, 31.519022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.777264, 33.655029, 31.498312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020731, -0.087750, 0.995927,
		-0.371340, 0.925558, 0.073820,
		-0.928266, -0.368297, -0.051773,
		27.498783, 33.544540, 31.482780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.700573, 34.283615, 31.985907>,  <28.148569, 33.802349, 31.519022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.700573, 34.283615, 31.985907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.547628, 33.920261, 31.918207>,  <27.455862, 33.702251, 31.877588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.547628, 33.920261, 31.918207>,  <27.700573, 34.283615, 31.985907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.547628, 33.920261, 31.918207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432952, 0.014312, 0.901303,
		-0.816305, 0.417897, -0.398758,
		-0.382359, -0.908382, -0.169246,
		27.432920, 33.647747, 31.867434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.923920, 34.242817, 32.088562>,  <27.700573, 34.283615, 31.985907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.923920, 34.242817, 32.088562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.063547, 33.871185, 32.137486>,  <27.147324, 33.648205, 32.166840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.063547, 33.871185, 32.137486>,  <26.923920, 34.242817, 32.088562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.063547, 33.871185, 32.137486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383973, -0.022751, 0.923064,
		-0.854819, -0.369174, -0.364684,
		0.349068, -0.929082, 0.122305,
		27.168268, 33.592461, 32.174175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.370407, 33.945484, 32.285389>,  <26.923920, 34.242817, 32.088562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.370407, 33.945484, 32.285389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.679390, 33.732937, 32.424503>,  <26.864780, 33.605408, 32.507973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.679390, 33.732937, 32.424503>,  <26.370407, 33.945484, 32.285389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.679390, 33.732937, 32.424503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516316, -0.206612, 0.831101,
		-0.369768, -0.821556, -0.433955,
		0.772457, -0.531373, 0.347784,
		26.911127, 33.573524, 32.528839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.083925, 33.400379, 32.493134>,  <26.370407, 33.945484, 32.285389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.083925, 33.400379, 32.493134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.425798, 33.428104, 32.698933>,  <26.630922, 33.444740, 32.822414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.425798, 33.428104, 32.698933>,  <26.083925, 33.400379, 32.493134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.425798, 33.428104, 32.698933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497041, -0.176873, 0.849510,
		0.149881, -0.981790, -0.116720,
		0.854685, 0.069311, 0.514500,
		26.682203, 33.448898, 32.853283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.198099, 32.790119, 32.943302>,  <26.083925, 33.400379, 32.493134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.198099, 32.790119, 32.943302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.404280, 33.083790, 33.120068>,  <26.527988, 33.259995, 33.226128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.404280, 33.083790, 33.120068>,  <26.198099, 32.790119, 32.943302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.404280, 33.083790, 33.120068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447893, -0.208826, 0.869358,
		0.730548, -0.646044, 0.221193,
		0.515453, 0.734179, 0.441916,
		26.558916, 33.304043, 33.252644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.515665, 32.476162, 33.581852>,  <26.198099, 32.790119, 32.943302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.515665, 32.476162, 33.581852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.507013, 32.872833, 33.632629>,  <26.501822, 33.110836, 33.663097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.507013, 32.872833, 33.632629>,  <26.515665, 32.476162, 33.581852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.507013, 32.872833, 33.632629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396230, -0.125082, 0.909591,
		0.917896, -0.030626, 0.395637,
		-0.021630, 0.991674, 0.126947,
		26.500525, 33.170334, 33.670715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.853226, 32.636021, 34.202473>,  <26.515665, 32.476162, 33.581852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.853226, 32.636021, 34.202473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.581720, 32.915012, 34.110554>,  <26.418818, 33.082405, 34.055401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.581720, 32.915012, 34.110554>,  <26.853226, 32.636021, 34.202473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.581720, 32.915012, 34.110554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395453, -0.083482, 0.914684,
		0.618787, 0.711728, 0.332484,
		-0.678763, 0.697477, -0.229797,
		26.378092, 33.124256, 34.041615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.419588, 32.088436, 34.086468>,  <26.853226, 32.636021, 34.202473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.419588, 32.088436, 34.086468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.665300, 32.196342, 33.789852>,  <27.812729, 32.261086, 33.611881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.665300, 32.196342, 33.789852>,  <27.419588, 32.088436, 34.086468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.665300, 32.196342, 33.789852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367028, 0.734222, 0.571146,
		0.698530, -0.623013, 0.352010,
		0.614285, 0.269765, -0.741539,
		27.849585, 32.277271, 33.567390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.072815, 32.313675, 34.380142>,  <27.419588, 32.088436, 34.086468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.072815, 32.313675, 34.380142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.058376, 32.483635, 34.018333>,  <28.049713, 32.585613, 33.801250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.058376, 32.483635, 34.018333>,  <28.072815, 32.313675, 34.380142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.058376, 32.483635, 34.018333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211687, 0.887821, 0.408611,
		0.976671, -0.176726, -0.121992,
		-0.036095, 0.424902, -0.904519,
		28.047548, 32.611107, 33.746979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.768484, 32.596931, 34.187378>,  <28.072815, 32.313675, 34.380142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.768484, 32.596931, 34.187378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.433176, 32.778282, 34.066212>,  <28.231991, 32.887093, 33.993511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.433176, 32.778282, 34.066212>,  <28.768484, 32.596931, 34.187378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.433176, 32.778282, 34.066212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350395, 0.873565, 0.337797,
		0.417765, 0.177024, -0.891142,
		-0.838269, 0.453372, -0.302916,
		28.181696, 32.914295, 33.975338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.411142, 32.873192, 34.037895>,  <28.768484, 32.596931, 34.187378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.411142, 32.873192, 34.037895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.373348, 32.623535, 33.727665>,  <29.350672, 32.473743, 33.541527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.373348, 32.623535, 33.727665>,  <29.411142, 32.873192, 34.037895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.373348, 32.623535, 33.727665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386308, 0.695030, -0.606382,
		0.917518, -0.356906, 0.175440,
		-0.094485, -0.624140, -0.775578,
		29.345003, 32.436295, 33.494991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.992519, 32.748829, 33.929279>,  <29.411142, 32.873192, 34.037895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.992519, 32.748829, 33.929279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.268709, 32.509998, 34.092617>,  <30.434423, 32.366699, 34.190620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.268709, 32.509998, 34.092617>,  <29.992519, 32.748829, 33.929279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.268709, 32.509998, 34.092617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047550, 0.600757, 0.798016,
		-0.721793, -0.531593, 0.443198,
		0.690474, -0.597076, 0.408345,
		30.475851, 32.330875, 34.215122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.843737, 32.794189, 34.650921>,  <29.992519, 32.748829, 33.929279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.843737, 32.794189, 34.650921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.217611, 32.653069, 34.633541>,  <30.441936, 32.568394, 34.623112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.217611, 32.653069, 34.633541>,  <29.843737, 32.794189, 34.650921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.217611, 32.653069, 34.633541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199955, 0.420761, 0.884861,
		-0.293902, -0.835756, 0.463825,
		0.934687, -0.352807, -0.043451,
		30.498018, 32.547226, 34.620506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.919136, 32.446453, 35.261658>,  <29.843737, 32.794189, 34.650921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.919136, 32.446453, 35.261658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.282873, 32.559284, 35.139328>,  <30.501116, 32.626984, 35.065929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.282873, 32.559284, 35.139328>,  <29.919136, 32.446453, 35.261658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.282873, 32.559284, 35.139328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132784, 0.499861, 0.855866,
		0.394291, -0.818884, 0.417089,
		0.909342, 0.282077, -0.305826,
		30.555676, 32.643909, 35.047581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.407276, 32.449589, 35.844620>,  <29.919136, 32.446453, 35.261658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.407276, 32.449589, 35.844620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.546383, 32.711487, 35.576183>,  <30.629847, 32.868626, 35.415123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.546383, 32.711487, 35.576183>,  <30.407276, 32.449589, 35.844620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.546383, 32.711487, 35.576183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239891, 0.629802, 0.738784,
		0.906371, -0.417914, 0.061957,
		0.347769, 0.654750, -0.671088,
		30.650713, 32.907913, 35.374855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.834013, 32.781128, 36.301662>,  <30.407276, 32.449589, 35.844620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.834013, 32.781128, 36.301662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.734827, 32.999516, 35.981552>,  <30.675316, 33.130547, 35.789486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.734827, 32.999516, 35.981552>,  <30.834013, 32.781128, 36.301662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.734827, 32.999516, 35.981552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131708, 0.837400, 0.530486,
		0.959774, 0.026140, -0.279554,
		-0.247965, 0.545966, -0.800272,
		30.660437, 33.163303, 35.741470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.748993, 33.488430, 36.597843>,  <30.834013, 32.781128, 36.301662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.748993, 33.488430, 36.597843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.047070, 33.627602, 36.370289>,  <31.225916, 33.711105, 36.233757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.047070, 33.627602, 36.370289>,  <30.748993, 33.488430, 36.597843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.047070, 33.627602, 36.370289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146675, -0.746688, -0.648801,
		-0.650518, 0.566924, -0.505395,
		0.745193, 0.347928, -0.568888,
		31.270628, 33.731979, 36.199623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.606728, 33.689175, 35.892754>,  <30.748993, 33.488430, 36.597843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.606728, 33.689175, 35.892754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.989985, 33.577927, 35.865578>,  <31.219938, 33.511177, 35.849270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.989985, 33.577927, 35.865578>,  <30.606728, 33.689175, 35.892754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.989985, 33.577927, 35.865578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233757, -0.622939, -0.746528,
		0.165299, 0.731161, -0.661876,
		0.958141, -0.278119, -0.067943,
		31.277428, 33.494492, 35.845196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.809870, 33.778633, 35.279713>,  <30.606728, 33.689175, 35.892754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.809870, 33.778633, 35.279713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.052256, 33.492496, 35.418907>,  <31.197687, 33.320816, 35.502426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.052256, 33.492496, 35.418907>,  <30.809870, 33.778633, 35.279713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.052256, 33.492496, 35.418907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114562, -0.511369, -0.851691,
		0.787197, 0.476230, -0.391823,
		0.605967, -0.715337, 0.347991,
		31.234045, 33.277897, 35.523304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.121809, 33.526512, 34.680599>,  <30.809870, 33.778633, 35.279713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.121809, 33.526512, 34.680599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.131630, 33.230503, 34.949451>,  <31.137522, 33.052898, 35.110764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.131630, 33.230503, 34.949451>,  <31.121809, 33.526512, 34.680599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.131630, 33.230503, 34.949451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083564, -0.671503, -0.736275,
		0.996200, -0.038089, -0.078325,
		0.024551, -0.740022, 0.672134,
		31.138996, 33.008495, 35.151093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.721855, 33.008205, 34.621143>,  <31.121809, 33.526512, 34.680599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.721855, 33.008205, 34.621143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.376858, 32.859364, 34.758339>,  <31.169859, 32.770058, 34.840656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.376858, 32.859364, 34.758339>,  <31.721855, 33.008205, 34.621143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.376858, 32.859364, 34.758339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052306, -0.608577, -0.791769,
		0.503356, -0.700836, 0.505431,
		-0.862494, -0.372105, 0.342989,
		31.118109, 32.747730, 34.861237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.749975, 32.289246, 34.646881>,  <31.721855, 33.008205, 34.621143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.749975, 32.289246, 34.646881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.362829, 32.384956, 34.615936>,  <31.130541, 32.442383, 34.597370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.362829, 32.384956, 34.615936>,  <31.749975, 32.289246, 34.646881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.362829, 32.384956, 34.615936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122103, -0.716092, -0.687243,
		-0.219837, -0.655712, 0.722297,
		-0.967865, 0.239276, -0.077359,
		31.072470, 32.456738, 34.592728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.445055, 31.574684, 34.693005>,  <31.749975, 32.289246, 34.646881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.445055, 31.574684, 34.693005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.178310, 31.826763, 34.533932>,  <31.018263, 31.978010, 34.438488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.178310, 31.826763, 34.533932>,  <31.445055, 31.574684, 34.693005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.178310, 31.826763, 34.533932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022745, -0.516208, -0.856161,
		-0.744835, -0.579985, 0.329905,
		-0.666861, 0.630196, -0.397681,
		30.978252, 32.015823, 34.414627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.156950, 31.251163, 34.154678>,  <31.445055, 31.574684, 34.693005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.156950, 31.251163, 34.154678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.052454, 31.627062, 34.066471>,  <30.989756, 31.852602, 34.013546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.052454, 31.627062, 34.066471>,  <31.156950, 31.251163, 34.154678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.052454, 31.627062, 34.066471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145001, -0.264061, -0.953544,
		-0.954321, -0.217128, 0.205248,
		-0.261240, 0.939749, -0.220515,
		30.974083, 31.908987, 34.000317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.500298, 31.197277, 33.816872>,  <31.156950, 31.251163, 34.154678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.500298, 31.197277, 33.816872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.725706, 31.506016, 33.699093>,  <30.860950, 31.691259, 33.628426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.725706, 31.506016, 33.699093>,  <30.500298, 31.197277, 33.816872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.725706, 31.506016, 33.699093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192140, -0.224197, -0.955415,
		-0.803447, 0.594971, 0.021963,
		0.563520, 0.771845, -0.294448,
		30.894762, 31.737570, 33.610760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.151354, 31.403944, 33.320946>,  <30.500298, 31.197277, 33.816872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.151354, 31.403944, 33.320946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.515005, 31.550169, 33.241096>,  <30.733196, 31.637903, 33.193188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.515005, 31.550169, 33.241096>,  <30.151354, 31.403944, 33.320946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.515005, 31.550169, 33.241096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080827, -0.315322, -0.945536,
		-0.408598, 0.875749, -0.257121,
		0.909129, 0.365562, -0.199624,
		30.787745, 31.659838, 33.181210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.083708, 31.577703, 32.543003>,  <30.151354, 31.403944, 33.320946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.083708, 31.577703, 32.543003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.476849, 31.546673, 32.609921>,  <30.712732, 31.528053, 32.650070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.476849, 31.546673, 32.609921>,  <30.083708, 31.577703, 32.543003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.476849, 31.546673, 32.609921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145222, -0.233456, -0.961462,
		0.113644, 0.969268, -0.218186,
		0.982851, -0.077579, 0.167290,
		30.771704, 31.523399, 32.660107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.395422, 31.802860, 31.953833>,  <30.083708, 31.577703, 32.543003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.395422, 31.802860, 31.953833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.724714, 31.635986, 32.107845>,  <30.922289, 31.535862, 32.200253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.724714, 31.635986, 32.107845>,  <30.395422, 31.802860, 31.953833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.724714, 31.635986, 32.107845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162576, -0.476572, -0.863972,
		0.543933, 0.773844, -0.324503,
		0.823229, -0.417187, 0.385032,
		30.971684, 31.510830, 32.223354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.936213, 31.976984, 31.432154>,  <30.395422, 31.802860, 31.953833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.936213, 31.976984, 31.432154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.100582, 31.682774, 31.647614>,  <31.199203, 31.506247, 31.776890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.100582, 31.682774, 31.647614>,  <30.936213, 31.976984, 31.432154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.100582, 31.682774, 31.647614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176004, -0.515720, -0.838484,
		0.894520, 0.439357, -0.082466,
		0.410923, -0.735526, 0.538650,
		31.223860, 31.462116, 31.809208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.641798, 31.760233, 31.147490>,  <30.936213, 31.976984, 31.432154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.641798, 31.760233, 31.147490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.496153, 31.454788, 31.360777>,  <31.408766, 31.271523, 31.488750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.496153, 31.454788, 31.360777>,  <31.641798, 31.760233, 31.147490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.496153, 31.454788, 31.360777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188476, -0.621087, -0.760742,
		0.912086, -0.176495, 0.370066,
		-0.364111, -0.763610, 0.533220,
		31.386919, 31.225706, 31.520742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.141060, 31.278269, 31.325169>,  <31.641798, 31.760233, 31.147490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.141060, 31.278269, 31.325169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.812830, 31.049671, 31.328102>,  <31.615892, 30.912512, 31.329863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.812830, 31.049671, 31.328102>,  <32.141060, 31.278269, 31.325169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.812830, 31.049671, 31.328102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348927, -0.511083, -0.785522,
		0.452670, -0.642019, 0.618791,
		-0.820573, -0.571495, 0.007334,
		31.566658, 30.878223, 31.330303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.323452, 30.667450, 31.036190>,  <32.141060, 31.278269, 31.325169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.323452, 30.667450, 31.036190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.926138, 30.639025, 30.999666>,  <31.687750, 30.621969, 30.977753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.926138, 30.639025, 30.999666>,  <32.323452, 30.667450, 31.036190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.926138, 30.639025, 30.999666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115666, -0.589800, -0.799223,
		0.002942, -0.804417, 0.594058,
		-0.993284, -0.071064, -0.091308,
		31.628153, 30.617706, 30.972273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.286274, 29.946667, 30.698826>,  <32.323452, 30.667450, 31.036190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.286274, 29.946667, 30.698826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.933903, 30.125807, 30.637648>,  <31.722479, 30.233290, 30.600941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.933903, 30.125807, 30.637648>,  <32.286274, 29.946667, 30.698826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.933903, 30.125807, 30.637648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062693, -0.430772, -0.900281,
		-0.469078, -0.783495, 0.407556,
		-0.880929, 0.447852, -0.152946,
		31.669622, 30.260160, 30.591764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.793577, 29.405828, 30.445322>,  <32.286274, 29.946667, 30.698826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.793577, 29.405828, 30.445322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.659925, 29.761398, 30.319992>,  <31.579735, 29.974741, 30.244795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.659925, 29.761398, 30.319992>,  <31.793577, 29.405828, 30.445322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.659925, 29.761398, 30.319992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099930, -0.363968, -0.926036,
		-0.937216, -0.278103, 0.210441,
		-0.334127, 0.888924, -0.313326,
		31.559687, 30.028076, 30.225994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.381346, 29.186760, 29.992188>,  <31.793577, 29.405828, 30.445322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.381346, 29.186760, 29.992188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.395893, 29.576071, 29.901491>,  <31.404621, 29.809658, 29.847075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.395893, 29.576071, 29.901491>,  <31.381346, 29.186760, 29.992188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.395893, 29.576071, 29.901491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152487, -0.218828, -0.963775,
		-0.987636, 0.069625, 0.140454,
		0.036368, 0.973276, -0.226739,
		31.406803, 29.868053, 29.833469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.014154, 29.335962, 29.350214>,  <31.381346, 29.186760, 29.992188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.014154, 29.335962, 29.350214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.293125, 29.622337, 29.363047>,  <31.460508, 29.794163, 29.370747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.293125, 29.622337, 29.363047>,  <31.014154, 29.335962, 29.350214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.293125, 29.622337, 29.363047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129854, -0.082220, -0.988118,
		-0.704793, 0.693306, -0.150310,
		0.697427, 0.715937, 0.032080,
		31.502354, 29.837118, 29.372671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.825817, 29.870413, 28.847757>,  <31.014154, 29.335962, 29.350214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.825817, 29.870413, 28.847757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.221920, 29.879280, 28.902744>,  <31.459581, 29.884600, 28.935738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.221920, 29.879280, 28.902744>,  <30.825817, 29.870413, 28.847757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.221920, 29.879280, 28.902744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137411, 0.004137, -0.990505,
		-0.022527, 0.999746, 0.001050,
		0.990258, 0.022169, 0.137470,
		31.518997, 29.885931, 28.943985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.064194, 30.266745, 28.355215>,  <30.825817, 29.870413, 28.847757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.064194, 30.266745, 28.355215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.407692, 30.091879, 28.462128>,  <31.613792, 29.986959, 28.526276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.407692, 30.091879, 28.462128>,  <31.064194, 30.266745, 28.355215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.407692, 30.091879, 28.462128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339116, 0.093846, -0.936052,
		0.384125, 0.894472, 0.228839,
		0.858748, -0.437164, 0.267281,
		31.665316, 29.960730, 28.542313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.607779, 30.635195, 28.115156>,  <31.064194, 30.266745, 28.355215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.607779, 30.635195, 28.115156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.782652, 30.277027, 28.148842>,  <31.887575, 30.062126, 28.169054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.782652, 30.277027, 28.148842>,  <31.607779, 30.635195, 28.115156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.782652, 30.277027, 28.148842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368927, 0.093149, -0.924779,
		0.820222, 0.435367, 0.371068,
		0.437183, -0.895421, 0.084216,
		31.913807, 30.008400, 28.174107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.263515, 30.737822, 27.909830>,  <31.607779, 30.635195, 28.115156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.263515, 30.737822, 27.909830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.237728, 30.339426, 27.885008>,  <32.222256, 30.100389, 27.870113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.237728, 30.339426, 27.885008>,  <32.263515, 30.737822, 27.909830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.237728, 30.339426, 27.885008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276289, 0.041941, -0.960159,
		0.958910, -0.079049, 0.272476,
		-0.064472, -0.995988, -0.062058,
		32.218388, 30.040630, 27.866390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.811455, 30.508667, 27.474264>,  <32.263515, 30.737822, 27.909830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.811455, 30.508667, 27.474264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.547047, 30.209106, 27.493031>,  <32.388401, 30.029369, 27.504290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.547047, 30.209106, 27.493031>,  <32.811455, 30.508667, 27.474264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.547047, 30.209106, 27.493031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125708, -0.172163, -0.977015,
		0.739766, -0.639926, 0.207945,
		-0.661018, -0.748902, 0.046917,
		32.348740, 29.984436, 27.507105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.170666, 30.000799, 27.175667>,  <32.811455, 30.508667, 27.474264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.170666, 30.000799, 27.175667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.786263, 29.903084, 27.123844>,  <32.555622, 29.844454, 27.092751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.786263, 29.903084, 27.123844>,  <33.170666, 30.000799, 27.175667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.786263, 29.903084, 27.123844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153950, -0.083468, -0.984547,
		0.229700, -0.966103, 0.117822,
		-0.961008, -0.244290, -0.129559,
		32.497959, 29.829798, 27.084976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.104897, 29.340679, 26.771551>,  <33.170666, 30.000799, 27.175667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.104897, 29.340679, 26.771551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.755352, 29.528803, 26.722282>,  <32.545624, 29.641678, 26.692720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.755352, 29.528803, 26.722282>,  <33.104897, 29.340679, 26.771551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.755352, 29.528803, 26.722282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084564, -0.102450, -0.991137,
		-0.478760, -0.876535, 0.049756,
		-0.873864, 0.470309, -0.123172,
		32.493195, 29.669895, 26.685331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.728699, 28.968145, 26.240950>,  <33.104897, 29.340679, 26.771551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.728699, 28.968145, 26.240950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.568523, 29.334454, 26.253693>,  <32.472420, 29.554237, 26.261337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.568523, 29.334454, 26.253693>,  <32.728699, 28.968145, 26.240950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.568523, 29.334454, 26.253693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011813, 0.039922, -0.999133,
		-0.916247, -0.399715, -0.026805,
		-0.400439, 0.915770, 0.031856,
		32.448391, 29.609184, 26.263250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.114677, 28.966866, 25.764771>,  <32.728699, 28.968145, 26.240950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.114677, 28.966866, 25.764771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.220718, 29.349407, 25.813942>,  <32.284344, 29.578932, 25.843445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.220718, 29.349407, 25.813942>,  <32.114677, 28.966866, 25.764771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.220718, 29.349407, 25.813942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094843, 0.152736, -0.983706,
		-0.959545, 0.249123, 0.131194,
		0.265102, 0.956352, 0.122929,
		32.300247, 29.636312, 25.850821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.658100, 29.388922, 25.386429>,  <32.114677, 28.966866, 25.764771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.658100, 29.388922, 25.386429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.990387, 29.603645, 25.445417>,  <32.189758, 29.732479, 25.480810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.990387, 29.603645, 25.445417>,  <31.658100, 29.388922, 25.386429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.990387, 29.603645, 25.445417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048460, 0.194171, -0.979770,
		-0.554583, 0.821057, 0.135287,
		0.830716, 0.536808, 0.147472,
		32.239601, 29.764688, 25.489658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.588882, 29.868362, 24.949507>,  <31.658100, 29.388922, 25.386429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.588882, 29.868362, 24.949507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.976677, 29.928368, 25.027065>,  <32.209354, 29.964371, 25.073601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.976677, 29.928368, 25.027065>,  <31.588882, 29.868362, 24.949507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.976677, 29.928368, 25.027065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184292, 0.075615, -0.979959,
		-0.161668, 0.985788, 0.045662,
		0.969484, 0.150013, 0.193897,
		32.267521, 29.973372, 25.085234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.756519, 30.449436, 24.589838>,  <31.588882, 29.868362, 24.949507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.756519, 30.449436, 24.589838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.110809, 30.277885, 24.660887>,  <32.323383, 30.174955, 24.703516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.110809, 30.277885, 24.660887>,  <31.756519, 30.449436, 24.589838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.110809, 30.277885, 24.660887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295602, 0.226069, -0.928177,
		0.357920, 0.874617, 0.327013,
		0.885727, -0.428878, 0.177624,
		32.376526, 30.149221, 24.714174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.348148, 30.948460, 24.378147>,  <31.756519, 30.449436, 24.589838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.348148, 30.948460, 24.378147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.495068, 30.576620, 24.390430>,  <32.583218, 30.353518, 24.397800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.495068, 30.576620, 24.390430>,  <32.348148, 30.948460, 24.378147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.495068, 30.576620, 24.390430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423190, 0.137627, -0.895527,
		0.828253, 0.341919, 0.443947,
		0.367297, -0.929597, 0.030707,
		32.605255, 30.297741, 24.399643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.147552, 31.000051, 24.417542>,  <32.348148, 30.948460, 24.378147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.147552, 31.000051, 24.417542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.053288, 30.645588, 24.257948>,  <32.996727, 30.432911, 24.162191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.053288, 30.645588, 24.257948>,  <33.147552, 31.000051, 24.417542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.053288, 30.645588, 24.257948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595356, 0.192845, -0.779975,
		0.768122, -0.421350, 0.482132,
		-0.235666, -0.886157, -0.398982,
		32.982586, 30.379742, 24.138254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.807480, 30.822922, 24.114815>,  <33.147552, 31.000051, 24.417542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.807480, 30.822922, 24.114815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.533268, 30.580450, 23.953518>,  <33.368740, 30.434967, 23.856741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.533268, 30.580450, 23.953518>,  <33.807480, 30.822922, 24.114815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.533268, 30.580450, 23.953518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515846, -0.013561, -0.856574,
		0.513768, -0.795213, 0.321991,
		-0.685526, -0.606178, -0.403241,
		33.327610, 30.398596, 23.832546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.200039, 30.307329, 23.821999>,  <33.807480, 30.822922, 24.114815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.200039, 30.307329, 23.821999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.846489, 30.351959, 23.640308>,  <33.634361, 30.378738, 23.531294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.846489, 30.351959, 23.640308>,  <34.200039, 30.307329, 23.821999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.846489, 30.351959, 23.640308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461246, 0.046789, -0.886038,
		-0.077608, -0.992654, -0.092820,
		-0.883872, 0.111577, -0.454226,
		33.581326, 30.385433, 23.504040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.257519, 29.812483, 23.277836>,  <34.200039, 30.307329, 23.821999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.257519, 29.812483, 23.277836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.962894, 30.054945, 23.157799>,  <33.786121, 30.200422, 23.085775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.962894, 30.054945, 23.157799>,  <34.257519, 29.812483, 23.277836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.962894, 30.054945, 23.157799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443483, 0.097812, -0.890930,
		-0.510689, -0.789309, -0.340864,
		-0.736559, 0.606156, -0.300093,
		33.741928, 30.236792, 23.067770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.072861, 29.593798, 22.674902>,  <34.257519, 29.812483, 23.277836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.072861, 29.593798, 22.674902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.917744, 29.958918, 22.623648>,  <33.824673, 30.177990, 22.592896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.917744, 29.958918, 22.623648>,  <34.072861, 29.593798, 22.674902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.917744, 29.958918, 22.623648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368366, 0.026042, -0.929316,
		-0.844941, -0.407579, -0.346343,
		-0.387789, 0.912799, -0.128134,
		33.801407, 30.232758, 22.585207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.747574, 29.679731, 21.943802>,  <34.072861, 29.593798, 22.674902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.747574, 29.679731, 21.943802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.858707, 30.035713, 22.088459>,  <33.925388, 30.249302, 22.175253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.858707, 30.035713, 22.088459>,  <33.747574, 29.679731, 21.943802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.858707, 30.035713, 22.088459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520466, 0.176966, -0.835343,
		-0.807417, 0.420310, -0.414025,
		0.277835, 0.889956, 0.361643,
		33.942059, 30.302700, 22.196953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.669540, 30.135168, 21.377800>,  <33.747574, 29.679731, 21.943802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.669540, 30.135168, 21.377800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.898720, 30.352812, 21.622969>,  <34.036228, 30.483398, 21.770069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.898720, 30.352812, 21.622969>,  <33.669540, 30.135168, 21.377800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.898720, 30.352812, 21.622969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624449, 0.194560, -0.756445,
		-0.530839, 0.816145, -0.228295,
		0.572952, 0.544109, 0.612921,
		34.070606, 30.516045, 21.806845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.832504, 30.804026, 20.950455>,  <33.669540, 30.135168, 21.377800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.832504, 30.804026, 20.950455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.084370, 30.798641, 21.261154>,  <34.235489, 30.795410, 21.447575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.084370, 30.798641, 21.261154>,  <33.832504, 30.804026, 20.950455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.084370, 30.798641, 21.261154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749110, 0.275402, -0.602485,
		-0.205808, 0.961235, 0.183495,
		0.629665, -0.013462, 0.776750,
		34.273270, 30.794603, 21.494179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.218880, 31.393461, 20.931810>,  <33.832504, 30.804026, 20.950455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.218880, 31.393461, 20.931810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.453030, 31.154455, 21.151012>,  <34.593521, 31.011051, 21.282534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.453030, 31.154455, 21.151012>,  <34.218880, 31.393461, 20.931810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.453030, 31.154455, 21.151012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789314, 0.265565, -0.553587,
		0.185246, 0.756604, 0.627083,
		0.585377, -0.597516, 0.548004,
		34.628643, 30.975201, 21.315414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.828190, 31.816883, 21.023968>,  <34.218880, 31.393461, 20.931810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.828190, 31.816883, 21.023968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.954933, 31.448950, 21.116495>,  <35.030979, 31.228189, 21.172012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.954933, 31.448950, 21.116495>,  <34.828190, 31.816883, 21.023968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.954933, 31.448950, 21.116495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873384, 0.187863, -0.449342,
		0.369862, 0.344410, 0.862893,
		0.316863, -0.919831, 0.231319,
		35.049992, 31.173000, 21.185890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.465160, 31.901764, 21.259890>,  <34.828190, 31.816883, 21.023968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.465160, 31.901764, 21.259890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.485500, 31.518879, 21.145937>,  <35.497704, 31.289148, 21.077566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.485500, 31.518879, 21.145937>,  <35.465160, 31.901764, 21.259890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.485500, 31.518879, 21.145937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872460, 0.181398, -0.453772,
		0.486034, -0.225473, 0.844354,
		0.050851, -0.957213, -0.284881,
		35.500755, 31.231714, 21.060472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.219620, 31.739143, 21.306318>,  <35.465160, 31.901764, 21.259890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.219620, 31.739143, 21.306318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.072163, 31.445517, 21.078196>,  <35.983688, 31.269341, 20.941322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.072163, 31.445517, 21.078196>,  <36.219620, 31.739143, 21.306318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.072163, 31.445517, 21.078196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847066, -0.012581, -0.531339,
		0.382864, -0.678959, 0.626442,
		-0.368639, -0.734068, -0.570307,
		35.961571, 31.225296, 20.907104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.757500, 31.206303, 21.290739>,  <36.219620, 31.739143, 21.306318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.757500, 31.206303, 21.290739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.523708, 31.204773, 20.966181>,  <36.383434, 31.203856, 20.771446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.523708, 31.204773, 20.966181>,  <36.757500, 31.206303, 21.290739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.523708, 31.204773, 20.966181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795686, 0.193189, -0.574075,
		0.158950, -0.981154, -0.109871,
		-0.584482, -0.003826, -0.811398,
		36.348362, 31.203625, 20.722761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.123100, 30.847561, 20.683535>,  <36.757500, 31.206303, 21.290739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.123100, 30.847561, 20.683535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.845085, 31.050020, 20.479284>,  <36.678276, 31.171495, 20.356735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.845085, 31.050020, 20.479284>,  <37.123100, 30.847561, 20.683535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.845085, 31.050020, 20.479284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690880, 0.273583, -0.669207,
		-0.199020, -0.817903, -0.539838,
		-0.695037, 0.506149, -0.510624,
		36.636574, 31.201864, 20.326097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.439445, 30.824657, 20.051889>,  <37.123100, 30.847561, 20.683535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.439445, 30.824657, 20.051889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.173168, 31.119419, 20.004858>,  <37.013401, 31.296276, 19.976639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.173168, 31.119419, 20.004858>,  <37.439445, 30.824657, 20.051889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.173168, 31.119419, 20.004858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548126, 0.375941, -0.747145,
		-0.506373, -0.561817, -0.654177,
		-0.665691, 0.736906, -0.117580,
		36.973461, 31.340490, 19.969584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.349678, 30.927778, 19.364498>,  <37.439445, 30.824657, 20.051889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.349678, 30.927778, 19.364498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.198467, 31.269711, 19.506687>,  <37.107742, 31.474871, 19.592001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.198467, 31.269711, 19.506687>,  <37.349678, 30.927778, 19.364498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.198467, 31.269711, 19.506687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494978, 0.511097, -0.702692,
		-0.782363, -0.089686, -0.616331,
		-0.378027, 0.854831, 0.355471,
		37.085060, 31.526159, 19.613329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.036049, 31.318775, 18.794230>,  <37.349678, 30.927778, 19.364498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.036049, 31.318775, 18.794230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.135746, 31.583134, 19.077381>,  <37.195564, 31.741749, 19.247272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.135746, 31.583134, 19.077381>,  <37.036049, 31.318775, 18.794230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.135746, 31.583134, 19.077381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397127, 0.596917, -0.697123,
		-0.883272, 0.454870, -0.113683,
		0.249241, 0.660895, 0.707881,
		37.210518, 31.781403, 19.289745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.895317, 32.004883, 18.547773>,  <37.036049, 31.318775, 18.794230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.895317, 32.004883, 18.547773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.169182, 32.067368, 18.832544>,  <37.333500, 32.104858, 19.003407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.169182, 32.067368, 18.832544>,  <36.895317, 32.004883, 18.547773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.169182, 32.067368, 18.832544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498623, 0.612046, -0.613820,
		-0.531618, 0.775241, 0.341151,
		0.684658, 0.156212, 0.711927,
		37.374580, 32.114231, 19.046124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.621349, 32.514175, 19.216581>,  <36.895317, 32.004883, 18.547773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.621349, 32.514175, 19.216581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.491375, 32.866039, 19.077658>,  <36.413391, 33.077156, 18.994305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.491375, 32.866039, 19.077658>,  <36.621349, 32.514175, 19.216581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.491375, 32.866039, 19.077658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121433, -0.403002, -0.907107,
		-0.937907, -0.252578, 0.237770,
		-0.324937, 0.879656, -0.347308,
		36.393894, 33.129936, 18.973465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.009781, 32.400703, 18.714945>,  <36.621349, 32.514175, 19.216581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.009781, 32.400703, 18.714945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.152298, 32.762871, 18.622622>,  <36.237808, 32.980171, 18.567228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.152298, 32.762871, 18.622622>,  <36.009781, 32.400703, 18.714945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.152298, 32.762871, 18.622622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061182, -0.223880, -0.972694,
		-0.932370, 0.360682, -0.024370,
		0.356289, 0.905420, -0.230807,
		36.259186, 33.034496, 18.553379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.598354, 32.597439, 18.146391>,  <36.009781, 32.400703, 18.714945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.598354, 32.597439, 18.146391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.907780, 32.849270, 18.117432>,  <36.093433, 33.000366, 18.100056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.907780, 32.849270, 18.117432>,  <35.598354, 32.597439, 18.146391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.907780, 32.849270, 18.117432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066070, -0.193744, -0.978825,
		-0.630269, 0.752397, -0.191469,
		0.773561, 0.629573, -0.072400,
		36.139847, 33.038143, 18.095713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.523682, 32.973694, 17.420444>,  <35.598354, 32.597439, 18.146391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.523682, 32.973694, 17.420444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.907700, 32.990482, 17.531122>,  <36.138111, 33.000553, 17.597528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.907700, 32.990482, 17.531122>,  <35.523682, 32.973694, 17.420444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.907700, 32.990482, 17.531122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279853, -0.136700, -0.950261,
		-0.002055, 0.989723, -0.142982,
		0.960041, 0.041967, 0.276696,
		36.195713, 33.003071, 17.614132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.837410, 32.835190, 16.683323>,  <35.523682, 32.973694, 17.420444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.837410, 32.835190, 16.683323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.132229, 33.102657, 16.644056>,  <36.309120, 33.263138, 16.620497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.132229, 33.102657, 16.644056>,  <35.837410, 32.835190, 16.683323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.132229, 33.102657, 16.644056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087691, 0.238640, 0.967141,
		0.670124, -0.704224, 0.234526,
		0.737051, 0.668670, -0.098164,
		36.353344, 33.303257, 16.614607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.563965, 32.637615, 17.014105>,  <35.837410, 32.835190, 16.683323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.563965, 32.637615, 17.014105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.567802, 33.037338, 16.999748>,  <36.570103, 33.277172, 16.991135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.567802, 33.037338, 16.999748>,  <36.563965, 32.637615, 17.014105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.567802, 33.037338, 16.999748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152211, 0.034015, 0.987763,
		0.988302, -0.014936, -0.151779,
		0.009590, 0.999310, -0.035890,
		36.570679, 33.337132, 16.988981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.823601, 32.609783, 17.595373>,  <36.563965, 32.637615, 17.014105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.823601, 32.609783, 17.595373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.687332, 32.968445, 17.482275>,  <36.605572, 33.183643, 17.414417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.687332, 32.968445, 17.482275>,  <36.823601, 32.609783, 17.595373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.687332, 32.968445, 17.482275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164234, 0.352865, 0.921148,
		0.925725, 0.267376, -0.267474,
		-0.340675, 0.896658, -0.282744,
		36.585129, 33.237442, 17.397451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.310284, 33.051800, 17.910906>,  <36.823601, 32.609783, 17.595373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.310284, 33.051800, 17.910906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.952450, 33.201969, 17.813931>,  <36.737751, 33.292068, 17.755745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.952450, 33.201969, 17.813931>,  <37.310284, 33.051800, 17.910906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.952450, 33.201969, 17.813931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106877, 0.347020, 0.931748,
		0.433928, 0.859440, -0.270315,
		-0.894586, 0.375421, -0.242436,
		36.684074, 33.314594, 17.741199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.282837, 33.663883, 18.163723>,  <37.310284, 33.051800, 17.910906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.282837, 33.663883, 18.163723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.909233, 33.523483, 18.137114>,  <36.685070, 33.439243, 18.121147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.909233, 33.523483, 18.137114>,  <37.282837, 33.663883, 18.163723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.909233, 33.523483, 18.137114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175164, 0.287653, 0.941580,
		-0.311360, 0.891097, -0.330153,
		-0.934009, -0.351001, -0.066524,
		36.629032, 33.418182, 18.117157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.774818, 34.203815, 18.313150>,  <37.282837, 33.663883, 18.163723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.774818, 34.203815, 18.313150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.609150, 33.847462, 18.387760>,  <36.509750, 33.633652, 18.432526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.609150, 33.847462, 18.387760>,  <36.774818, 34.203815, 18.313150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.609150, 33.847462, 18.387760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152407, 0.269914, 0.950746,
		-0.897348, 0.365345, -0.247567,
		-0.414172, -0.890882, 0.186525,
		36.484898, 33.580196, 18.443718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.089771, 34.377064, 18.648401>,  <36.774818, 34.203815, 18.313150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.089771, 34.377064, 18.648401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.174965, 33.995667, 18.733719>,  <36.226082, 33.766830, 18.784910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.174965, 33.995667, 18.733719>,  <36.089771, 34.377064, 18.648401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.174965, 33.995667, 18.733719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240254, 0.160493, 0.957351,
		-0.947055, -0.255149, -0.194896,
		0.212988, -0.953489, 0.213296,
		36.238861, 33.709621, 18.797709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.527039, 34.119606, 19.080301>,  <36.089771, 34.377064, 18.648401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.527039, 34.119606, 19.080301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.853962, 33.900982, 19.153267>,  <36.050117, 33.769806, 19.197046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.853962, 33.900982, 19.153267>,  <35.527039, 34.119606, 19.080301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.853962, 33.900982, 19.153267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187449, 0.047150, 0.981142,
		-0.544853, -0.836092, -0.063916,
		0.817311, -0.546559, 0.182414,
		36.099155, 33.737015, 19.207991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.340969, 33.698978, 19.602921>,  <35.527039, 34.119606, 19.080301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.340969, 33.698978, 19.602921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.740566, 33.686317, 19.615627>,  <35.980324, 33.678722, 19.623251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.740566, 33.686317, 19.615627>,  <35.340969, 33.698978, 19.602921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.740566, 33.686317, 19.615627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037130, -0.186524, 0.981749,
		-0.025146, -0.981940, -0.187511,
		0.998994, -0.031650, 0.031769,
		36.040264, 33.676823, 19.625158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.443310, 33.096649, 20.134691>,  <35.340969, 33.698978, 19.602921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.443310, 33.096649, 20.134691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.773743, 33.317638, 20.090214>,  <35.972000, 33.450233, 20.063528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.773743, 33.317638, 20.090214>,  <35.443310, 33.096649, 20.134691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.773743, 33.317638, 20.090214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072336, 0.091728, 0.993153,
		0.558892, -0.828467, 0.035811,
		0.826079, 0.552475, -0.111194,
		36.021568, 33.483379, 20.056856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.919346, 32.861378, 20.510159>,  <35.443310, 33.096649, 20.134691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.919346, 32.861378, 20.510159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.090317, 33.222420, 20.489706>,  <36.192898, 33.439045, 20.477434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.090317, 33.222420, 20.489706>,  <35.919346, 32.861378, 20.510159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.090317, 33.222420, 20.489706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079862, 0.018641, 0.996632,
		0.900516, -0.430070, -0.064116,
		0.427426, 0.902603, -0.051133,
		36.218544, 33.493202, 20.474365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.434250, 32.914734, 21.098036>,  <35.919346, 32.861378, 20.510159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.434250, 32.914734, 21.098036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.379738, 33.292770, 20.979221>,  <36.347031, 33.519592, 20.907932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.379738, 33.292770, 20.979221>,  <36.434250, 32.914734, 21.098036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.379738, 33.292770, 20.979221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041179, 0.304981, 0.951468,
		0.989814, 0.117434, -0.080480,
		-0.136279, 0.945091, -0.297038,
		36.338856, 33.576298, 20.890110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.959503, 33.299255, 21.394211>,  <36.434250, 32.914734, 21.098036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.959503, 33.299255, 21.394211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.649529, 33.542545, 21.325474>,  <36.463543, 33.688519, 21.284231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.649529, 33.542545, 21.325474>,  <36.959503, 33.299255, 21.394211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.649529, 33.542545, 21.325474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126688, 0.415848, 0.900567,
		0.619211, 0.676113, -0.399312,
		-0.774938, 0.608228, -0.171842,
		36.417046, 33.725014, 21.273922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.130428, 33.911674, 21.745020>,  <36.959503, 33.299255, 21.394211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.130428, 33.911674, 21.745020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.743168, 34.000080, 21.697952>,  <36.510811, 34.053123, 21.669712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.743168, 34.000080, 21.697952>,  <37.130428, 33.911674, 21.745020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.743168, 34.000080, 21.697952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051732, 0.636379, 0.769640,
		0.244980, 0.739037, -0.627542,
		-0.968147, 0.221010, -0.117668,
		36.452724, 34.066383, 21.662651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.044132, 34.700634, 21.853836>,  <37.130428, 33.911674, 21.745020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.044132, 34.700634, 21.853836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.691734, 34.526924, 21.928942>,  <36.480297, 34.422699, 21.974005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.691734, 34.526924, 21.928942>,  <37.044132, 34.700634, 21.853836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.691734, 34.526924, 21.928942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108071, 0.571075, 0.813753,
		-0.460617, 0.696621, -0.550047,
		-0.880995, -0.434273, 0.187762,
		36.427437, 34.396641, 21.985270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.873116, 35.146904, 22.346304>,  <37.044132, 34.700634, 21.853836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.873116, 35.146904, 22.346304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.600643, 34.854275, 22.357586>,  <36.437160, 34.678699, 22.364355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.600643, 34.854275, 22.357586>,  <36.873116, 35.146904, 22.346304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.600643, 34.854275, 22.357586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310587, 0.323652, 0.893748,
		-0.662968, 0.600045, -0.447682,
		-0.681182, -0.731571, 0.028204,
		36.396290, 34.634804, 22.366047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.187084, 35.472080, 22.632473>,  <36.873116, 35.146904, 22.346304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.187084, 35.472080, 22.632473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.163467, 35.080082, 22.708502>,  <36.149296, 34.844883, 22.754120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.163467, 35.080082, 22.708502>,  <36.187084, 35.472080, 22.632473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.163467, 35.080082, 22.708502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449084, 0.196123, 0.871699,
		-0.891537, -0.033892, -0.451679,
		-0.059041, -0.979993, 0.190071,
		36.145756, 34.786083, 22.765524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.487614, 35.253994, 22.860981>,  <36.187084, 35.472080, 22.632473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.487614, 35.253994, 22.860981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.759514, 34.991833, 22.992674>,  <35.922653, 34.834538, 23.071690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.759514, 34.991833, 22.992674>,  <35.487614, 35.253994, 22.860981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.759514, 34.991833, 22.992674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475886, -0.052546, 0.877936,
		-0.558101, -0.753450, -0.347614,
		0.679747, -0.655402, 0.329230,
		35.963440, 34.795212, 23.091444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.130787, 34.800774, 23.227676>,  <35.487614, 35.253994, 22.860981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.130787, 34.800774, 23.227676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.488564, 34.689552, 23.367769>,  <35.703228, 34.622822, 23.451826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.488564, 34.689552, 23.367769>,  <35.130787, 34.800774, 23.227676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.488564, 34.689552, 23.367769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429283, -0.314483, 0.846650,
		-0.125269, -0.907628, -0.400648,
		0.894440, -0.278050, 0.350235,
		35.756897, 34.606136, 23.472839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.154865, 34.128239, 23.351990>,  <35.130787, 34.800774, 23.227676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.154865, 34.128239, 23.351990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.444588, 34.264065, 23.592014>,  <35.618420, 34.345562, 23.736029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.444588, 34.264065, 23.592014>,  <35.154865, 34.128239, 23.351990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.444588, 34.264065, 23.592014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414722, -0.480700, 0.772615,
		0.550804, -0.808469, -0.207348,
		0.724307, 0.339568, 0.600061,
		35.661880, 34.365936, 23.772032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.180862, 33.619179, 23.811172>,  <35.154865, 34.128239, 23.351990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.180862, 33.619179, 23.811172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.373722, 33.925438, 23.981499>,  <35.489437, 34.109192, 24.083694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.373722, 33.925438, 23.981499>,  <35.180862, 33.619179, 23.811172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.373722, 33.925438, 23.981499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600303, -0.065285, 0.797103,
		0.638101, -0.639937, 0.428145,
		0.482144, 0.765649, 0.425814,
		35.518364, 34.155132, 24.109243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.411976, 33.324421, 24.512777>,  <35.180862, 33.619179, 23.811172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.411976, 33.324421, 24.512777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.383957, 33.723141, 24.528152>,  <35.367146, 33.962372, 24.537378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.383957, 33.723141, 24.528152>,  <35.411976, 33.324421, 24.512777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.383957, 33.723141, 24.528152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591422, -0.072527, 0.803094,
		0.803314, 0.033521, 0.594611,
		-0.070046, 0.996803, 0.038437,
		35.362942, 34.022182, 24.539684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.646103, 33.554379, 25.179138>,  <35.411976, 33.324421, 24.512777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.646103, 33.554379, 25.179138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.431087, 33.866264, 25.050707>,  <35.302078, 34.053398, 24.973648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.431087, 33.866264, 25.050707>,  <35.646103, 33.554379, 25.179138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.431087, 33.866264, 25.050707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589255, -0.074964, 0.804461,
		0.603185, 0.621626, 0.499749,
		-0.537537, 0.779719, -0.321079,
		35.269825, 34.100182, 24.954384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.458965, 33.756081, 25.745590>,  <35.646103, 33.554379, 25.179138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.458965, 33.756081, 25.745590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.203476, 33.961788, 25.516659>,  <35.050182, 34.085213, 25.379299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.203476, 33.961788, 25.516659>,  <35.458965, 33.756081, 25.745590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.203476, 33.961788, 25.516659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608837, 0.117023, 0.784616,
		0.470476, 0.849610, 0.238358,
		-0.638725, 0.514265, -0.572331,
		35.011860, 34.116066, 25.344959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.356514, 34.378189, 25.986151>,  <35.458965, 33.756081, 25.745590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.356514, 34.378189, 25.986151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.024643, 34.326584, 25.768898>,  <34.825520, 34.295620, 25.638546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.024643, 34.326584, 25.768898>,  <35.356514, 34.378189, 25.986151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.024643, 34.326584, 25.768898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537046, 0.450027, 0.713482,
		0.152374, 0.883646, -0.442664,
		-0.829677, -0.129015, -0.543131,
		34.775742, 34.287880, 25.605959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.011452, 35.018555, 26.040636>,  <35.356514, 34.378189, 25.986151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.011452, 35.018555, 26.040636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.729614, 34.747440, 25.956591>,  <34.560513, 34.584770, 25.906164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.729614, 34.747440, 25.956591>,  <35.011452, 35.018555, 26.040636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.729614, 34.747440, 25.956591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555978, 0.343306, 0.756987,
		-0.440943, 0.650190, -0.618727,
		-0.704598, -0.677787, -0.210113,
		34.518234, 34.544106, 25.893557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.406662, 35.378723, 26.200323>,  <35.011452, 35.018555, 26.040636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.406662, 35.378723, 26.200323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.294018, 34.994926, 26.203732>,  <34.226433, 34.764648, 26.205776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.294018, 34.994926, 26.203732>,  <34.406662, 35.378723, 26.200323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.294018, 34.994926, 26.203732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624989, 0.190160, 0.757118,
		-0.728069, 0.207885, -0.653223,
		-0.281610, -0.959491, 0.008523,
		34.209534, 34.707081, 26.206289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.734028, 35.441357, 26.325012>,  <34.406662, 35.378723, 26.200323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.734028, 35.441357, 26.325012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.804173, 35.057655, 26.413635>,  <33.846260, 34.827435, 26.466810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.804173, 35.057655, 26.413635>,  <33.734028, 35.441357, 26.325012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.804173, 35.057655, 26.413635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586581, 0.078937, 0.806034,
		-0.790677, -0.271310, -0.548835,
		0.175362, -0.959250, 0.221559,
		33.856781, 34.769882, 26.480103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.073864, 35.134689, 26.396114>,  <33.734028, 35.441357, 26.325012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.073864, 35.134689, 26.396114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.350353, 34.911060, 26.579262>,  <33.516247, 34.776882, 26.689150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.350353, 34.911060, 26.579262>,  <33.073864, 35.134689, 26.396114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.350353, 34.911060, 26.579262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574109, -0.040051, 0.817798,
		-0.438874, -0.828148, -0.348655,
		0.691222, -0.559077, 0.457871,
		33.557720, 34.743336, 26.716623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.780609, 34.473030, 26.759001>,  <33.073864, 35.134689, 26.396114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.780609, 34.473030, 26.759001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.123741, 34.530739, 26.956306>,  <33.329620, 34.565365, 27.074690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.123741, 34.530739, 26.956306>,  <32.780609, 34.473030, 26.759001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.123741, 34.530739, 26.956306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471118, -0.162756, 0.866925,
		0.205353, -0.976062, -0.071650,
		0.857833, 0.144270, 0.493263,
		33.381092, 34.574020, 27.104286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.683041, 34.013760, 27.347305>,  <32.780609, 34.473030, 26.759001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.683041, 34.013760, 27.347305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.990345, 34.248234, 27.450188>,  <33.174728, 34.388920, 27.511917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.990345, 34.248234, 27.450188>,  <32.683041, 34.013760, 27.347305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.990345, 34.248234, 27.450188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197370, -0.165314, 0.966290,
		0.608948, -0.793129, -0.011309,
		0.768262, 0.586188, 0.257208,
		33.220825, 34.424091, 27.527349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.898792, 33.657368, 28.000755>,  <32.683041, 34.013760, 27.347305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.898792, 33.657368, 28.000755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.069836, 34.013481, 28.063423>,  <33.172462, 34.227150, 28.101025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.069836, 34.013481, 28.063423>,  <32.898792, 33.657368, 28.000755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.069836, 34.013481, 28.063423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268403, -0.040455, 0.962457,
		0.863196, -0.453610, 0.221655,
		0.427613, 0.890282, 0.156671,
		33.198120, 34.280567, 28.110424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.312054, 33.626648, 28.606001>,  <32.898792, 33.657368, 28.000755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.312054, 33.626648, 28.606001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.221191, 34.013878, 28.563616>,  <33.166676, 34.246216, 28.538185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.221191, 34.013878, 28.563616>,  <33.312054, 33.626648, 28.606001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.221191, 34.013878, 28.563616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275194, 0.040564, 0.960532,
		0.934167, 0.247352, 0.257195,
		-0.227157, 0.968076, -0.105964,
		33.153046, 34.304302, 28.531826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.557289, 33.868927, 29.184914>,  <33.312054, 33.626648, 28.606001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.557289, 33.868927, 29.184914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.331654, 34.177826, 29.067991>,  <33.196274, 34.363163, 28.997839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.331654, 34.177826, 29.067991>,  <33.557289, 33.868927, 29.184914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.331654, 34.177826, 29.067991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360093, 0.088496, 0.928710,
		0.743059, 0.629132, 0.228160,
		-0.564090, 0.772244, -0.292304,
		33.162426, 34.409500, 28.980301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.701427, 34.437981, 29.607491>,  <33.557289, 33.868927, 29.184914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.701427, 34.437981, 29.607491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.334721, 34.491257, 29.456869>,  <33.114697, 34.523220, 29.366497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.334721, 34.491257, 29.456869>,  <33.701427, 34.437981, 29.607491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.334721, 34.491257, 29.456869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322477, 0.309446, 0.894568,
		0.235667, 0.941544, -0.240742,
		-0.916771, 0.133186, -0.376553,
		33.059689, 34.531212, 29.343903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.467293, 35.138496, 29.806219>,  <33.701427, 34.437981, 29.607491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.467293, 35.138496, 29.806219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.153275, 34.910355, 29.709560>,  <32.964863, 34.773468, 29.651566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.153275, 34.910355, 29.709560>,  <33.467293, 35.138496, 29.806219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.153275, 34.910355, 29.709560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440293, 0.239400, 0.865349,
		-0.435709, 0.785735, -0.439065,
		-0.785047, -0.570358, -0.241645,
		32.917759, 34.739246, 29.637068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.993362, 35.367619, 30.281164>,  <33.467293, 35.138496, 29.806219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.993362, 35.367619, 30.281164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.810188, 35.035278, 30.154684>,  <32.700283, 34.835873, 30.078796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.810188, 35.035278, 30.154684>,  <32.993362, 35.367619, 30.281164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.810188, 35.035278, 30.154684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562532, -0.004601, 0.826763,
		-0.688371, 0.556476, -0.465273,
		-0.457933, -0.830851, -0.316203,
		32.672810, 34.786022, 30.059824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.317822, 35.483887, 30.475216>,  <32.993362, 35.367619, 30.281164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.317822, 35.483887, 30.475216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.394520, 35.092640, 30.442928>,  <32.440540, 34.857891, 30.423555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.394520, 35.092640, 30.442928>,  <32.317822, 35.483887, 30.475216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.394520, 35.092640, 30.442928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280742, -0.133471, 0.950458,
		-0.940434, -0.159587, -0.300192,
		0.191747, -0.978120, -0.080718,
		32.452045, 34.799206, 30.418713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.863789, 35.207607, 30.892099>,  <32.317822, 35.483887, 30.475216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.863789, 35.207607, 30.892099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.069263, 34.867153, 30.848845>,  <32.192547, 34.662880, 30.822891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.069263, 34.867153, 30.848845>,  <31.863789, 35.207607, 30.892099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.069263, 34.867153, 30.848845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406109, -0.352230, 0.843214,
		-0.755778, -0.389234, -0.526590,
		0.513688, -0.851135, -0.108136,
		32.223370, 34.611813, 30.816404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.412411, 34.550018, 30.884491>,  <31.863789, 35.207607, 30.892099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.412411, 34.550018, 30.884491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.773592, 34.410011, 30.984222>,  <31.990301, 34.326008, 31.044062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.773592, 34.410011, 30.984222>,  <31.412411, 34.550018, 30.884491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.773592, 34.410011, 30.984222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410448, -0.530539, 0.741661,
		-0.127316, -0.772020, -0.622716,
		0.902952, -0.350018, 0.249328,
		32.044479, 34.305004, 31.059021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.307652, 33.864822, 31.217049>,  <31.412411, 34.550018, 30.884491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.307652, 33.864822, 31.217049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.681829, 33.950500, 31.329519>,  <31.906336, 34.001907, 31.397001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.681829, 33.950500, 31.329519>,  <31.307652, 33.864822, 31.217049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.681829, 33.950500, 31.329519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148036, -0.484951, 0.861921,
		0.320975, -0.847906, -0.421937,
		0.935446, 0.214193, 0.281177,
		31.962463, 34.014759, 31.413872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.663443, 33.278999, 31.435646>,  <31.307652, 33.864822, 31.217049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.663443, 33.278999, 31.435646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.841976, 33.594429, 31.604849>,  <31.949097, 33.783688, 31.706371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.841976, 33.594429, 31.604849>,  <31.663443, 33.278999, 31.435646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.841976, 33.594429, 31.604849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065997, -0.442412, 0.894380,
		0.892429, -0.427111, -0.145421,
		0.446336, 0.788573, 0.423009,
		31.975878, 33.831001, 31.731752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.081718, 32.942112, 31.992182>,  <31.663443, 33.278999, 31.435646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.081718, 32.942112, 31.992182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.062580, 33.325523, 32.104565>,  <32.051098, 33.555569, 32.171993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.062580, 33.325523, 32.104565>,  <32.081718, 32.942112, 31.992182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.062580, 33.325523, 32.104565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028388, -0.282472, 0.958855,
		0.998451, 0.037904, 0.040727,
		-0.047848, 0.958526, 0.280958,
		32.048225, 33.613083, 32.188850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.579758, 33.076801, 32.518177>,  <32.081718, 32.942112, 31.992182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.579758, 33.076801, 32.518177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.291271, 33.352337, 32.547432>,  <32.118179, 33.517658, 32.564983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.291271, 33.352337, 32.547432>,  <32.579758, 33.076801, 32.518177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.291271, 33.352337, 32.547432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232504, -0.340176, 0.911165,
		0.652524, 0.640143, 0.405498,
		-0.721217, 0.688837, 0.073137,
		32.074905, 33.558987, 32.569374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.452358, 33.365597, 33.252941>,  <32.579758, 33.076801, 32.518177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.452358, 33.365597, 33.252941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.080460, 33.418144, 33.115356>,  <31.857321, 33.449673, 33.032806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.080460, 33.418144, 33.115356>,  <32.452358, 33.365597, 33.252941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.080460, 33.418144, 33.115356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368131, -0.313906, 0.875181,
		0.006996, 0.940322, 0.340213,
		-0.929748, 0.131366, -0.343966,
		31.801535, 33.457554, 33.012165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.013863, 33.329582, 33.773617>,  <32.452358, 33.365597, 33.252941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.013863, 33.329582, 33.773617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.379173, 33.179607, 33.837299>,  <33.598362, 33.089622, 33.875507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.379173, 33.179607, 33.837299>,  <33.013863, 33.329582, 33.773617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.379173, 33.179607, 33.837299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309202, 0.383677, -0.870164,
		0.265172, 0.843929, 0.466335,
		0.913279, -0.374935, 0.159203,
		33.653156, 33.067127, 33.885059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.659828, 33.864937, 33.764568>,  <33.013863, 33.329582, 33.773617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.659828, 33.864937, 33.764568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.810234, 33.507519, 33.666439>,  <33.900478, 33.293068, 33.607559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.810234, 33.507519, 33.666439>,  <33.659828, 33.864937, 33.764568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.810234, 33.507519, 33.666439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438141, 0.404742, -0.802631,
		0.816482, 0.194316, 0.543689,
		0.376018, -0.893547, -0.245327,
		33.923038, 33.239456, 33.592842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.331612, 33.989857, 33.518646>,  <33.659828, 33.864937, 33.764568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.331612, 33.989857, 33.518646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.273563, 33.609898, 33.407921>,  <34.238735, 33.381920, 33.341484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.273563, 33.609898, 33.407921>,  <34.331612, 33.989857, 33.518646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.273563, 33.609898, 33.407921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458547, 0.183350, -0.869550,
		0.876742, -0.253120, 0.408967,
		-0.145117, -0.949902, -0.276818,
		34.230030, 33.324928, 33.324875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.955791, 33.698105, 33.326084>,  <34.331612, 33.989857, 33.518646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.955791, 33.698105, 33.326084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.682747, 33.460548, 33.155750>,  <34.518921, 33.318016, 33.053551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.682747, 33.460548, 33.155750>,  <34.955791, 33.698105, 33.326084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.682747, 33.460548, 33.155750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495068, 0.052807, -0.867248,
		0.537539, -0.802810, 0.257970,
		-0.682613, -0.593892, -0.425831,
		34.477962, 33.282379, 33.028000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.359596, 33.168468, 32.887642>,  <34.955791, 33.698105, 33.326084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.359596, 33.168468, 32.887642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.984138, 33.138123, 32.753063>,  <34.758865, 33.119915, 32.672314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.984138, 33.138123, 32.753063>,  <35.359596, 33.168468, 32.887642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.984138, 33.138123, 32.753063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343220, -0.109393, -0.932863,
		0.033967, -0.991099, 0.128719,
		-0.938641, -0.075865, -0.336450,
		34.702545, 33.115364, 32.652130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.473488, 32.832104, 32.308838>,  <35.359596, 33.168468, 32.887642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.473488, 32.832104, 32.308838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.093769, 32.946331, 32.256245>,  <34.865936, 33.014866, 32.224686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.093769, 32.946331, 32.256245>,  <35.473488, 32.832104, 32.308838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.093769, 32.946331, 32.256245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172709, 0.124226, -0.977108,
		-0.262694, -0.950274, -0.167247,
		-0.949296, 0.285565, -0.131488,
		34.808979, 33.032001, 32.216797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.177265, 32.392090, 31.866171>,  <35.473488, 32.832104, 32.308838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.177265, 32.392090, 31.866171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.963417, 32.729328, 31.842979>,  <34.835106, 32.931671, 31.829063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.963417, 32.729328, 31.842979>,  <35.177265, 32.392090, 31.866171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.963417, 32.729328, 31.842979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008409, -0.063298, -0.997959,
		-0.845050, -0.534018, 0.026751,
		-0.534622, 0.843100, -0.057980,
		34.803032, 32.982258, 31.825584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.733395, 32.351704, 31.250383>,  <35.177265, 32.392090, 31.866171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.733395, 32.351704, 31.250383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.747417, 32.743896, 31.327770>,  <34.755833, 32.979214, 31.374203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.747417, 32.743896, 31.327770>,  <34.733395, 32.351704, 31.250383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.747417, 32.743896, 31.327770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121836, 0.187947, -0.974593,
		-0.991931, 0.057737, -0.112869,
		0.035057, 0.980481, 0.193465,
		34.757935, 33.038040, 31.385809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.513859, 32.699856, 30.579800>,  <34.733395, 32.351704, 31.250383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.513859, 32.699856, 30.579800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.695541, 32.987083, 30.790730>,  <34.804550, 33.159420, 30.917288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.695541, 32.987083, 30.790730>,  <34.513859, 32.699856, 30.579800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.695541, 32.987083, 30.790730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450933, 0.325183, -0.831213,
		-0.768348, 0.615329, -0.176103,
		0.454204, 0.718072, 0.527325,
		34.831802, 33.202503, 30.948927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.300144, 33.295231, 30.304476>,  <34.513859, 32.699856, 30.579800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.300144, 33.295231, 30.304476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.632301, 33.405567, 30.498117>,  <34.831596, 33.471767, 30.614302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.632301, 33.405567, 30.498117>,  <34.300144, 33.295231, 30.304476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.632301, 33.405567, 30.498117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391719, 0.328859, -0.859307,
		-0.396231, 0.903197, 0.165032,
		0.830396, 0.275838, 0.484104,
		34.881420, 33.488319, 30.643349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.468594, 33.905258, 29.983067>,  <34.300144, 33.295231, 30.304476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.468594, 33.905258, 29.983067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.816811, 33.850983, 30.172276>,  <35.025742, 33.818417, 30.285801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.816811, 33.850983, 30.172276>,  <34.468594, 33.905258, 29.983067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.816811, 33.850983, 30.172276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478536, 0.457570, -0.749422,
		-0.114750, 0.878759, 0.463266,
		0.870538, -0.135693, 0.473024,
		35.077972, 33.810276, 30.314182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.780010, 34.494606, 29.990852>,  <34.468594, 33.905258, 29.983067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.780010, 34.494606, 29.990852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.078556, 34.232353, 30.036621>,  <35.257683, 34.075001, 30.064083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.078556, 34.232353, 30.036621>,  <34.780010, 34.494606, 29.990852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.078556, 34.232353, 30.036621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436475, 0.352403, -0.827830,
		0.502428, 0.667803, 0.549186,
		0.746362, -0.655631, 0.114422,
		35.302464, 34.035664, 30.070948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.411552, 34.865677, 29.835794>,  <34.780010, 34.494606, 29.990852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.411552, 34.865677, 29.835794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.489342, 34.477474, 29.778795>,  <35.536015, 34.244553, 29.744596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.489342, 34.477474, 29.778795>,  <35.411552, 34.865677, 29.835794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.489342, 34.477474, 29.778795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462447, 0.218823, -0.859220,
		0.865057, 0.101195, 0.491361,
		0.194470, -0.970503, -0.142497,
		35.547684, 34.186325, 29.736046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.134914, 34.834473, 29.701500>,  <35.411552, 34.865677, 29.835794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.134914, 34.834473, 29.701500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.981266, 34.498856, 29.547375>,  <35.889076, 34.297485, 29.454899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.981266, 34.498856, 29.547375>,  <36.134914, 34.834473, 29.701500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.981266, 34.498856, 29.547375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447418, 0.195897, -0.872606,
		0.807632, -0.507581, 0.300153,
		-0.384120, -0.839038, -0.385313,
		35.866032, 34.247143, 29.431780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.665821, 34.517727, 29.462963>,  <36.134914, 34.834473, 29.701500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.665821, 34.517727, 29.462963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.365376, 34.346195, 29.262190>,  <36.185108, 34.243279, 29.141726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.365376, 34.346195, 29.262190>,  <36.665821, 34.517727, 29.462963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.365376, 34.346195, 29.262190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536003, 0.047724, -0.842866,
		0.385397, -0.902126, 0.194006,
		-0.751113, -0.428826, -0.501934,
		36.140041, 34.217548, 29.111610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.901928, 33.946629, 29.086971>,  <36.665821, 34.517727, 29.462963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.901928, 33.946629, 29.086971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.583572, 34.035534, 28.861704>,  <36.392559, 34.088879, 28.726543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.583572, 34.035534, 28.861704>,  <36.901928, 33.946629, 29.086971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.583572, 34.035534, 28.861704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573264, -0.022555, -0.819060,
		-0.194753, -0.974725, -0.109467,
		-0.795889, 0.222267, -0.563168,
		36.344807, 34.102215, 28.692753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.917263, 33.472248, 28.503719>,  <36.901928, 33.946629, 29.086971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.917263, 33.472248, 28.503719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.718609, 33.808315, 28.416573>,  <36.599419, 34.009956, 28.364285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.718609, 33.808315, 28.416573>,  <36.917263, 33.472248, 28.503719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.718609, 33.808315, 28.416573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487340, 0.062212, -0.870993,
		-0.718230, -0.538740, -0.440346,
		-0.496633, 0.840172, -0.217867,
		36.569618, 34.060368, 28.351212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.897305, 33.399784, 27.922585>,  <36.917263, 33.472248, 28.503719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.897305, 33.399784, 27.922585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.762096, 33.775776, 27.903877>,  <36.680973, 34.001369, 27.892653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.762096, 33.775776, 27.903877>,  <36.897305, 33.399784, 27.922585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.762096, 33.775776, 27.903877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458027, 0.120889, -0.880680,
		-0.822165, -0.319106, -0.471397,
		-0.338018, 0.939977, -0.046768,
		36.660690, 34.057770, 27.889847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.570072, 33.512840, 27.282740>,  <36.897305, 33.399784, 27.922585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.570072, 33.512840, 27.282740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.668663, 33.884956, 27.391409>,  <36.727818, 34.108227, 27.456612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.668663, 33.884956, 27.391409>,  <36.570072, 33.512840, 27.282740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.668663, 33.884956, 27.391409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320904, 0.186170, -0.928634,
		-0.914478, 0.316067, -0.252648,
		0.246476, 0.930291, 0.271676,
		36.742607, 34.164043, 27.472912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.250332, 33.893372, 26.800541>,  <36.570072, 33.512840, 27.282740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.250332, 33.893372, 26.800541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.540813, 34.122391, 26.952761>,  <36.715103, 34.259800, 27.044092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.540813, 34.122391, 26.952761>,  <36.250332, 33.893372, 26.800541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.540813, 34.122391, 26.952761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354802, 0.161997, -0.920800,
		-0.588848, 0.803709, -0.085497,
		0.726205, 0.572546, 0.380549,
		36.758675, 34.294155, 27.066925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.419979, 34.338623, 26.301428>,  <36.250332, 33.893372, 26.800541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.419979, 34.338623, 26.301428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.742603, 34.446999, 26.511593>,  <36.936176, 34.512024, 26.637691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.742603, 34.446999, 26.511593>,  <36.419979, 34.338623, 26.301428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.742603, 34.446999, 26.511593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531206, 0.057821, -0.845267,
		-0.259393, 0.960859, -0.097287,
		0.806557, 0.270936, 0.525413,
		36.984570, 34.528278, 26.669216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.641232, 35.065643, 26.129148>,  <36.419979, 34.338623, 26.301428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.641232, 35.065643, 26.129148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.966190, 34.875862, 26.264734>,  <37.161167, 34.761993, 26.346087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.966190, 34.875862, 26.264734>,  <36.641232, 35.065643, 26.129148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.966190, 34.875862, 26.264734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478200, 0.209471, -0.852905,
		0.333663, 0.854993, 0.397059,
		0.812400, -0.474457, 0.338965,
		37.209911, 34.733524, 26.366425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.135021, 35.456573, 26.022495>,  <36.641232, 35.065643, 26.129148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.135021, 35.456573, 26.022495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.333073, 35.113327, 26.076872>,  <37.451904, 34.907379, 26.109497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.333073, 35.113327, 26.076872>,  <37.135021, 35.456573, 26.022495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.333073, 35.113327, 26.076872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534979, 0.177840, -0.825936,
		0.684574, 0.481672, 0.547129,
		0.495132, -0.858117, 0.135940,
		37.481613, 34.855892, 26.117653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.912727, 35.532642, 25.959129>,  <37.135021, 35.456573, 26.022495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.912727, 35.532642, 25.959129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.819221, 35.157539, 25.856400>,  <37.763119, 34.932476, 25.794762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.819221, 35.157539, 25.856400>,  <37.912727, 35.532642, 25.959129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.819221, 35.157539, 25.856400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538312, 0.095135, -0.837359,
		0.809675, -0.334000, 0.482568,
		-0.233768, -0.937760, -0.256825,
		37.749092, 34.876213, 25.779352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429386, 35.433060, 25.531076>,  <37.912727, 35.532642, 25.959129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.429386, 35.433060, 25.531076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.208694, 35.106750, 25.461670>,  <38.076279, 34.910965, 25.420027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.208694, 35.106750, 25.461670>,  <38.429386, 35.433060, 25.531076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.208694, 35.106750, 25.461670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376745, -0.058163, -0.924489,
		0.744085, -0.575435, 0.339430,
		-0.551725, -0.815777, -0.173514,
		38.043179, 34.862019, 25.409616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.905861, 34.905579, 25.305086>,  <38.429386, 35.433060, 25.531076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.905861, 34.905579, 25.305086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.544376, 34.796345, 25.173193>,  <38.327484, 34.730804, 25.094057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.544376, 34.796345, 25.173193>,  <38.905861, 34.905579, 25.305086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.544376, 34.796345, 25.173193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369504, -0.108466, -0.922877,
		0.216262, -0.955854, 0.198930,
		-0.903713, -0.273088, -0.329735,
		38.273262, 34.714417, 25.074272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.023750, 34.312130, 24.969015>,  <38.905861, 34.905579, 25.305086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.023750, 34.312130, 24.969015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.664143, 34.438976, 24.848215>,  <38.448380, 34.515083, 24.775734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.664143, 34.438976, 24.848215>,  <39.023750, 34.312130, 24.969015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.664143, 34.438976, 24.848215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250952, -0.192087, -0.948749,
		-0.358874, -0.928730, 0.093109,
		-0.899017, 0.317116, -0.302002,
		38.394436, 34.534111, 24.757614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.751530, 33.732891, 24.478844>,  <39.023750, 34.312130, 24.969015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.751530, 33.732891, 24.478844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.542316, 34.062958, 24.393496>,  <38.416790, 34.260998, 24.342287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.542316, 34.062958, 24.393496>,  <38.751530, 33.732891, 24.478844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.542316, 34.062958, 24.393496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170889, -0.143732, -0.974751,
		-0.835005, -0.546290, -0.065836,
		-0.523034, 0.825171, -0.213372,
		38.385406, 34.310509, 24.329485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.220478, 33.507206, 24.072083>,  <38.751530, 33.732891, 24.478844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.220478, 33.507206, 24.072083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.254768, 33.891525, 23.966623>,  <38.275345, 34.122116, 23.903347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.254768, 33.891525, 23.966623>,  <38.220478, 33.507206, 24.072083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.254768, 33.891525, 23.966623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065703, -0.258596, -0.963748,
		-0.994150, 0.099943, 0.040958,
		0.085728, 0.960801, -0.263650,
		38.280487, 34.179764, 23.887527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.712273, 33.699379, 23.562628>,  <38.220478, 33.507206, 24.072083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.712273, 33.699379, 23.562628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.972481, 33.998596, 23.510078>,  <38.128605, 34.178127, 23.478550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.972481, 33.998596, 23.510078>,  <37.712273, 33.699379, 23.562628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.972481, 33.998596, 23.510078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056166, -0.125119, -0.990551,
		-0.757411, 0.651750, -0.039378,
		0.650519, 0.748042, -0.131372,
		38.167637, 34.223007, 23.470667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.562202, 33.962139, 22.975563>,  <37.712273, 33.699379, 23.562628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.562202, 33.962139, 22.975563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.929020, 34.121029, 22.989666>,  <38.149109, 34.216362, 22.998127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.929020, 34.121029, 22.989666>,  <37.562202, 33.962139, 22.975563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.929020, 34.121029, 22.989666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061023, -0.052411, -0.996759,
		-0.394094, 0.916222, -0.072303,
		0.917042, 0.397229, 0.035255,
		38.204132, 34.240196, 23.000242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.658867, 34.493427, 22.422184>,  <37.562202, 33.962139, 22.975563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.658867, 34.493427, 22.422184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.044216, 34.439159, 22.514711>,  <38.275425, 34.406597, 22.570227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.044216, 34.439159, 22.514711>,  <37.658867, 34.493427, 22.422184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.044216, 34.439159, 22.514711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221753, -0.082013, -0.971648,
		0.150797, 0.987353, -0.048923,
		0.963372, -0.135673, 0.231316,
		38.333229, 34.398457, 22.584106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.125950, 34.941311, 21.914213>,  <37.658867, 34.493427, 22.422184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.125950, 34.941311, 21.914213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.347664, 34.625072, 22.018311>,  <38.480694, 34.435329, 22.080769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.347664, 34.625072, 22.018311>,  <38.125950, 34.941311, 21.914213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.347664, 34.625072, 22.018311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228713, -0.155961, -0.960919,
		0.800284, 0.592148, 0.094371,
		0.554288, -0.790593, 0.260245,
		38.513950, 34.387894, 22.096384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.684185, 34.959354, 21.559462>,  <38.125950, 34.941311, 21.914213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.684185, 34.959354, 21.559462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.686977, 34.572117, 21.659662>,  <38.688652, 34.339775, 21.719784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.686977, 34.572117, 21.659662>,  <38.684185, 34.959354, 21.559462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.686977, 34.572117, 21.659662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291613, -0.237652, -0.926544,
		0.956511, 0.079514, 0.280650,
		0.006977, -0.968091, 0.250504,
		38.689072, 34.281689, 21.734814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.341629, 34.584259, 21.213531>,  <38.684185, 34.959354, 21.559462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.341629, 34.584259, 21.213531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.083012, 34.298058, 21.319389>,  <38.927841, 34.126335, 21.382904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.083012, 34.298058, 21.319389>,  <39.341629, 34.584259, 21.213531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.083012, 34.298058, 21.319389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124653, -0.441322, -0.888648,
		0.752625, -0.541560, 0.374524,
		-0.646542, -0.715505, 0.264643,
		38.889050, 34.083405, 21.398783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.599674, 34.051392, 20.839670>,  <39.341629, 34.584259, 21.213531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.599674, 34.051392, 20.839670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.240173, 33.901741, 20.931122>,  <39.024471, 33.811951, 20.985992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.240173, 33.901741, 20.931122>,  <39.599674, 34.051392, 20.839670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.240173, 33.901741, 20.931122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072524, -0.387413, -0.919049,
		0.432412, -0.842581, 0.321056,
		-0.898754, -0.374124, 0.228629,
		38.970547, 33.789505, 20.999710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.640537, 33.421604, 20.454668>,  <39.599674, 34.051392, 20.839670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.640537, 33.421604, 20.454668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.257858, 33.502781, 20.538136>,  <39.028252, 33.551487, 20.588217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.257858, 33.502781, 20.538136>,  <39.640537, 33.421604, 20.454668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.257858, 33.502781, 20.538136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250339, -0.207867, -0.945580,
		-0.148510, -0.956875, 0.249667,
		-0.956700, 0.202930, 0.208673,
		38.970848, 33.563663, 20.600737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.223362, 32.778912, 20.421041>,  <39.640537, 33.421604, 20.454668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.223362, 32.778912, 20.421041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.986828, 33.091957, 20.343225>,  <38.844906, 33.279785, 20.296535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.986828, 33.091957, 20.343225>,  <39.223362, 32.778912, 20.421041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.986828, 33.091957, 20.343225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178510, -0.362283, -0.914814,
		-0.786421, -0.506233, 0.353934,
		-0.591334, 0.782610, -0.194539,
		38.809429, 33.326740, 20.284864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.579590, 32.384109, 20.999432>,  <39.223362, 32.778912, 20.421041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.579590, 32.384109, 20.999432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.525036, 31.988281, 20.980911>,  <39.492306, 31.750784, 20.969799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.525036, 31.988281, 20.980911>,  <39.579590, 32.384109, 20.999432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.525036, 31.988281, 20.980911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769567, 0.076399, 0.633979,
		-0.623831, 0.122095, -0.771963,
		-0.136383, -0.989574, -0.046300,
		39.484119, 31.691410, 20.967022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.902721, 32.331352, 20.871927>,  <39.579590, 32.384109, 20.999432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.902721, 32.331352, 20.871927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.025440, 31.976915, 21.010902>,  <39.099072, 31.764254, 21.094288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.025440, 31.976915, 21.010902>,  <38.902721, 32.331352, 20.871927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.025440, 31.976915, 21.010902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742243, 0.005758, 0.670106,
		-0.595777, -0.463470, -0.655931,
		0.306797, -0.886094, 0.347437,
		39.117481, 31.711086, 21.115133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.322281, 31.910629, 20.848011>,  <38.902721, 32.331352, 20.871927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.322281, 31.910629, 20.848011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.560501, 31.725039, 21.110323>,  <38.703434, 31.613684, 21.267710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.560501, 31.725039, 21.110323>,  <38.322281, 31.910629, 20.848011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.560501, 31.725039, 21.110323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762439, -0.069375, 0.643331,
		-0.252997, -0.883126, -0.395071,
		0.595550, -0.463978, 0.655778,
		38.739166, 31.585846, 21.307056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.905567, 31.349430, 21.041252>,  <38.322281, 31.910629, 20.848011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.905567, 31.349430, 21.041252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.187828, 31.404230, 21.319328>,  <38.357185, 31.437111, 21.486174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.187828, 31.404230, 21.319328>,  <37.905567, 31.349430, 21.041252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.187828, 31.404230, 21.319328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662034, -0.222187, 0.715782,
		0.252525, -0.965331, -0.066087,
		0.705650, 0.137001, 0.695190,
		38.399525, 31.445330, 21.527885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.877739, 30.753500, 21.519743>,  <37.905567, 31.349430, 21.041252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.877739, 30.753500, 21.519743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.074490, 31.026533, 21.735943>,  <38.192539, 31.190353, 21.865664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.074490, 31.026533, 21.735943>,  <37.877739, 30.753500, 21.519743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.074490, 31.026533, 21.735943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582838, -0.203036, 0.786814,
		0.646807, -0.702038, 0.297967,
		0.491875, 0.682583, 0.540500,
		38.222054, 31.231308, 21.898092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.113304, 30.451931, 22.020939>,  <37.877739, 30.753500, 21.519743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.113304, 30.451931, 22.020939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.113937, 30.820168, 22.177147>,  <38.114319, 31.041109, 22.270872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.113937, 30.820168, 22.177147>,  <38.113304, 30.451931, 22.020939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.113937, 30.820168, 22.177147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628115, -0.302957, 0.716721,
		0.778119, -0.246427, 0.577758,
		0.001583, 0.920593, 0.390521,
		38.114414, 31.096346, 22.294304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.182941, 30.303404, 22.734932>,  <38.113304, 30.451931, 22.020939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.182941, 30.303404, 22.734932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.053074, 30.681070, 22.712526>,  <37.975155, 30.907671, 22.699083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.053074, 30.681070, 22.712526>,  <38.182941, 30.303404, 22.734932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.053074, 30.681070, 22.712526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459935, -0.105855, 0.881620,
		0.826468, 0.311997, 0.468624,
		-0.324669, 0.944168, -0.056013,
		37.955673, 30.964321, 22.695723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.302338, 30.616278, 23.423199>,  <38.182941, 30.303404, 22.734932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.302338, 30.616278, 23.423199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.015213, 30.820288, 23.233624>,  <37.842937, 30.942694, 23.119879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.015213, 30.820288, 23.233624>,  <38.302338, 30.616278, 23.423199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.015213, 30.820288, 23.233624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583798, -0.070004, 0.808876,
		0.379370, 0.857306, 0.348001,
		-0.717816, 0.510025, -0.473936,
		37.799870, 30.973295, 23.091442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.220268, 31.265295, 23.813456>,  <38.302338, 30.616278, 23.423199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.220268, 31.265295, 23.813456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.886162, 31.192780, 23.605814>,  <37.685699, 31.149271, 23.481230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.886162, 31.192780, 23.605814>,  <38.220268, 31.265295, 23.813456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.886162, 31.192780, 23.605814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546699, 0.172920, 0.819279,
		-0.058762, 0.968108, -0.243543,
		-0.835265, -0.181288, -0.519103,
		37.635582, 31.138393, 23.450083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.818218, 31.742970, 24.082773>,  <38.220268, 31.265295, 23.813456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.818218, 31.742970, 24.082773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.554340, 31.503025, 23.901676>,  <37.396015, 31.359058, 23.793018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.554340, 31.503025, 23.901676>,  <37.818218, 31.742970, 24.082773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.554340, 31.503025, 23.901676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558785, -0.011344, 0.829235,
		-0.502561, 0.800024, -0.327710,
		-0.659690, -0.599861, -0.452743,
		37.356434, 31.323067, 23.765854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.211426, 32.071255, 24.208504>,  <37.818218, 31.742970, 24.082773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.211426, 32.071255, 24.208504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.078857, 31.708151, 24.105646>,  <36.999317, 31.490288, 24.043932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.078857, 31.708151, 24.105646>,  <37.211426, 32.071255, 24.208504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.078857, 31.708151, 24.105646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636331, 0.013838, 0.771292,
		-0.696593, 0.419252, -0.582225,
		-0.331423, -0.907764, -0.257144,
		36.979431, 31.435822, 24.028503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.527481, 32.148643, 24.345819>,  <37.211426, 32.071255, 24.208504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.527481, 32.148643, 24.345819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.581116, 31.753483, 24.314663>,  <36.613297, 31.516386, 24.295969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.581116, 31.753483, 24.314663>,  <36.527481, 32.148643, 24.345819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.581116, 31.753483, 24.314663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740283, -0.152112, 0.654861,
		-0.658787, -0.030150, -0.751725,
		0.134091, -0.987903, -0.077890,
		36.621342, 31.457111, 24.291296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.840263, 31.875616, 24.313053>,  <36.527481, 32.148643, 24.345819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.840263, 31.875616, 24.313053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.065796, 31.566422, 24.429386>,  <36.201115, 31.380905, 24.499186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.065796, 31.566422, 24.429386>,  <35.840263, 31.875616, 24.313053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.065796, 31.566422, 24.429386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602814, -0.144469, 0.784693,
		-0.564542, -0.617754, -0.547424,
		0.563833, -0.772987, 0.290832,
		36.234947, 31.334526, 24.516636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.448292, 31.184076, 24.347050>,  <35.840263, 31.875616, 24.313053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.448292, 31.184076, 24.347050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.756641, 31.228954, 24.597862>,  <35.941650, 31.255880, 24.748350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.756641, 31.228954, 24.597862>,  <35.448292, 31.184076, 24.347050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.756641, 31.228954, 24.597862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633080, 0.026054, 0.773648,
		0.070465, -0.993344, 0.091115,
		0.770873, 0.112198, 0.627031,
		35.987904, 31.262613, 24.785971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.349567, 30.647619, 24.974033>,  <35.448292, 31.184076, 24.347050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.349567, 30.647619, 24.974033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.618336, 30.919230, 25.092318>,  <35.779598, 31.082195, 25.163288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.618336, 30.919230, 25.092318>,  <35.349567, 30.647619, 24.974033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.618336, 30.919230, 25.092318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476133, 0.090211, 0.874734,
		0.567291, -0.728550, 0.383921,
		0.671921, 0.679027, 0.295711,
		35.819912, 31.122938, 25.181030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.606586, 30.447617, 25.642597>,  <35.349567, 30.647619, 24.974033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.606586, 30.447617, 25.642597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.674850, 30.841541, 25.629850>,  <35.715809, 31.077896, 25.622202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.674850, 30.841541, 25.629850>,  <35.606586, 30.447617, 25.642597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.674850, 30.841541, 25.629850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261505, 0.076451, 0.962170,
		0.949994, -0.155875, 0.270581,
		0.170665, 0.984814, -0.031865,
		35.726051, 31.136986, 25.620291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.048683, 30.535707, 26.198572>,  <35.606586, 30.447617, 25.642597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.048683, 30.535707, 26.198572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.915333, 30.901686, 26.107594>,  <35.835323, 31.121273, 26.053007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.915333, 30.901686, 26.107594>,  <36.048683, 30.535707, 26.198572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.915333, 30.901686, 26.107594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063788, 0.218806, 0.973681,
		0.940633, 0.339111, -0.014582,
		-0.333377, 0.914947, -0.227447,
		35.815319, 31.176170, 26.039360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.403896, 31.036089, 26.681711>,  <36.048683, 30.535707, 26.198572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.403896, 31.036089, 26.681711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.072502, 31.203245, 26.532587>,  <35.873665, 31.303539, 26.443113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.072502, 31.203245, 26.532587>,  <36.403896, 31.036089, 26.681711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.072502, 31.203245, 26.532587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198379, 0.403546, 0.893195,
		0.523701, 0.813953, -0.251430,
		-0.828483, 0.417888, -0.372808,
		35.823956, 31.328611, 26.420744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.501297, 31.638477, 26.804165>,  <36.403896, 31.036089, 26.681711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.501297, 31.638477, 26.804165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.104603, 31.624640, 26.754742>,  <35.866585, 31.616337, 26.725088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.104603, 31.624640, 26.754742>,  <36.501297, 31.638477, 26.804165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.104603, 31.624640, 26.754742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128268, 0.291772, 0.947848,
		0.003263, 0.955862, -0.293798,
		-0.991734, -0.034592, -0.123559,
		35.807083, 31.614262, 26.717674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.165176, 32.316742, 26.965200>,  <36.501297, 31.638477, 26.804165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.165176, 32.316742, 26.965200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.876022, 32.048233, 27.030722>,  <35.702530, 31.887129, 27.070034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.876022, 32.048233, 27.030722>,  <36.165176, 32.316742, 26.965200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.876022, 32.048233, 27.030722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126578, 0.361700, 0.923662,
		-0.679272, 0.646971, -0.346437,
		-0.722888, -0.671269, 0.163801,
		35.659157, 31.846853, 27.079863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.931953, 32.664417, 27.610437>,  <36.165176, 32.316742, 26.965200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.931953, 32.664417, 27.610437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.736580, 32.317497, 27.572041>,  <35.619354, 32.109344, 27.549002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.736580, 32.317497, 27.572041>,  <35.931953, 32.664417, 27.610437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.736580, 32.317497, 27.572041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335419, 0.085053, 0.938222,
		-0.805559, 0.490459, -0.332453,
		-0.488435, -0.867304, -0.095994,
		35.590050, 32.057304, 27.543242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.370846, 32.700756, 27.986958>,  <35.931953, 32.664417, 27.610437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.370846, 32.700756, 27.986958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.340183, 32.302151, 27.973816>,  <35.321785, 32.062988, 27.965931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.340183, 32.302151, 27.973816>,  <35.370846, 32.700756, 27.986958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.340183, 32.302151, 27.973816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110361, -0.024269, 0.993595,
		-0.990931, 0.079795, -0.108116,
		-0.076660, -0.996516, -0.032855,
		35.317184, 32.003197, 27.963959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.892628, 32.396591, 28.509985>,  <35.370846, 32.700756, 27.986958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.892628, 32.396591, 28.509985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.147476, 32.103577, 28.414093>,  <35.300385, 31.927769, 28.356558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.147476, 32.103577, 28.414093>,  <34.892628, 32.396591, 28.509985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.147476, 32.103577, 28.414093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132264, -0.202508, 0.970308,
		-0.759330, -0.649912, -0.032135,
		0.637122, -0.732533, -0.239730,
		35.338612, 31.883816, 28.342175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.685600, 31.832909, 28.919926>,  <34.892628, 32.396591, 28.509985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.685600, 31.832909, 28.919926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.072277, 31.788086, 28.827881>,  <35.304283, 31.761192, 28.772654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.072277, 31.788086, 28.827881>,  <34.685600, 31.832909, 28.919926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.072277, 31.788086, 28.827881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203972, -0.205796, 0.957101,
		-0.154600, -0.972159, -0.176086,
		0.966693, -0.112051, -0.230110,
		35.362286, 31.754469, 28.758848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.916138, 31.154835, 29.259848>,  <34.685600, 31.832909, 28.919926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.916138, 31.154835, 29.259848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.236671, 31.387999, 29.206057>,  <35.428993, 31.527897, 29.173782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.236671, 31.387999, 29.206057>,  <34.916138, 31.154835, 29.259848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.236671, 31.387999, 29.206057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339453, -0.257969, 0.904557,
		0.492583, -0.770500, -0.404589,
		0.801332, 0.582908, -0.134477,
		35.477070, 31.562870, 29.165714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.366444, 30.663675, 29.450434>,  <34.916138, 31.154835, 29.259848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.366444, 30.663675, 29.450434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.530075, 31.028673, 29.449448>,  <35.628254, 31.247671, 29.448856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.530075, 31.028673, 29.449448>,  <35.366444, 30.663675, 29.450434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.530075, 31.028673, 29.449448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345244, -0.152274, 0.926077,
		0.844666, -0.379691, -0.377326,
		0.409080, 0.912495, -0.002465,
		35.652798, 31.302422, 29.448708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.086578, 30.522936, 29.522394>,  <35.366444, 30.663675, 29.450434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.086578, 30.522936, 29.522394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.996490, 30.900238, 29.619999>,  <35.942436, 31.126619, 29.678562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.996490, 30.900238, 29.619999>,  <36.086578, 30.522936, 29.522394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.996490, 30.900238, 29.619999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401406, -0.138369, 0.905388,
		0.887777, 0.301861, -0.347465,
		-0.225222, 0.943257, 0.244010,
		35.928925, 31.183216, 29.693201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.676914, 30.785276, 29.838596>,  <36.086578, 30.522936, 29.522394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.676914, 30.785276, 29.838596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.411362, 31.051483, 29.975037>,  <36.252029, 31.211208, 30.056900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.411362, 31.051483, 29.975037>,  <36.676914, 30.785276, 29.838596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.411362, 31.051483, 29.975037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465858, 0.011228, 0.884788,
		0.585013, 0.746297, -0.317491,
		-0.663879, 0.665519, 0.341100,
		36.212196, 31.251139, 30.077366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.054283, 31.234802, 30.207691>,  <36.676914, 30.785276, 29.838596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.054283, 31.234802, 30.207691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.683445, 31.273243, 30.352604>,  <36.460941, 31.296307, 30.439552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.683445, 31.273243, 30.352604>,  <37.054283, 31.234802, 30.207691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.683445, 31.273243, 30.352604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366721, 0.032804, 0.929752,
		0.077467, 0.994831, -0.065656,
		-0.927100, 0.096102, 0.362284,
		36.405315, 31.302074, 30.461288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.134212, 31.653418, 30.787342>,  <37.054283, 31.234802, 30.207691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.134212, 31.653418, 30.787342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.775444, 31.478634, 30.814455>,  <36.560181, 31.373764, 30.830723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.775444, 31.478634, 30.814455>,  <37.134212, 31.653418, 30.787342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.775444, 31.478634, 30.814455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166925, -0.192640, 0.966967,
		-0.409467, 0.878610, 0.245723,
		-0.896924, -0.436959, 0.067782,
		36.506367, 31.347546, 30.834789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.844868, 32.015846, 31.387243>,  <37.134212, 31.653418, 30.787342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.844868, 32.015846, 31.387243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.670151, 31.659817, 31.335123>,  <36.565319, 31.446199, 31.303852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.670151, 31.659817, 31.335123>,  <36.844868, 32.015846, 31.387243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.670151, 31.659817, 31.335123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138779, -0.209789, 0.967847,
		-0.888791, 0.404668, 0.215159,
		-0.436795, -0.890074, -0.130299,
		36.539112, 31.392794, 31.296034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.322021, 31.917639, 31.946716>,  <36.844868, 32.015846, 31.387243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.322021, 31.917639, 31.946716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.389446, 31.546329, 31.814116>,  <36.429901, 31.323544, 31.734554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.389446, 31.546329, 31.814116>,  <36.322021, 31.917639, 31.946716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.389446, 31.546329, 31.814116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155513, -0.307059, 0.938899,
		-0.973346, -0.209815, 0.092601,
		0.168561, -0.928274, -0.331504,
		36.440014, 31.267847, 31.714664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.148727, 31.621132, 32.419853>,  <36.322021, 31.917639, 31.946716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.148727, 31.621132, 32.419853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.343945, 31.307068, 32.267361>,  <36.461075, 31.118629, 32.175865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.343945, 31.307068, 32.267361>,  <36.148727, 31.621132, 32.419853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.343945, 31.307068, 32.267361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107002, -0.379665, 0.918915,
		-0.866237, -0.489262, -0.101278,
		0.488042, -0.785161, -0.381232,
		36.490356, 31.071520, 32.152992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.797970, 31.021358, 32.654430>,  <36.148727, 31.621132, 32.419853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.797970, 31.021358, 32.654430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.167324, 30.887453, 32.579277>,  <36.388935, 30.807110, 32.534184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.167324, 30.887453, 32.579277>,  <35.797970, 31.021358, 32.654430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.167324, 30.887453, 32.579277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005984, -0.501918, 0.864895,
		-0.383835, -0.797504, -0.465465,
		0.923382, -0.334763, -0.187881,
		36.444340, 30.787024, 32.522911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.716270, 30.345873, 32.978676>,  <35.797970, 31.021358, 32.654430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.716270, 30.345873, 32.978676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.105484, 30.427845, 32.936314>,  <36.339012, 30.477028, 32.910896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.105484, 30.427845, 32.936314>,  <35.716270, 30.345873, 32.978676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.105484, 30.427845, 32.936314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189093, -0.445631, 0.875018,
		0.132123, -0.871445, -0.472364,
		0.973030, 0.204930, -0.105906,
		36.397392, 30.489325, 32.904541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.038933, 29.661509, 33.035442>,  <35.716270, 30.345873, 32.978676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.038933, 29.661509, 33.035442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.317322, 29.939959, 33.105900>,  <36.484356, 30.107029, 33.148174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.317322, 29.939959, 33.105900>,  <36.038933, 29.661509, 33.035442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.317322, 29.939959, 33.105900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168951, -0.397173, 0.902058,
		0.697906, -0.598051, -0.394034,
		0.695976, 0.696124, 0.176148,
		36.526115, 30.148796, 33.158745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.628918, 29.279488, 33.371990>,  <36.038933, 29.661509, 33.035442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.628918, 29.279488, 33.371990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.682602, 29.665199, 33.463341>,  <36.714813, 29.896626, 33.518150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.682602, 29.665199, 33.463341>,  <36.628918, 29.279488, 33.371990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.682602, 29.665199, 33.463341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180230, -0.250372, 0.951226,
		0.974425, -0.086504, -0.207394,
		0.134211, 0.964277, 0.228378,
		36.722866, 29.954483, 33.531853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.189075, 29.279533, 33.775173>,  <36.628918, 29.279488, 33.371990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.189075, 29.279533, 33.775173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.005878, 29.624960, 33.859554>,  <36.895962, 29.832216, 33.910183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.005878, 29.624960, 33.859554>,  <37.189075, 29.279533, 33.775173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.005878, 29.624960, 33.859554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150221, -0.158707, 0.975831,
		0.876173, 0.478609, -0.057040,
		-0.457989, 0.863566, 0.210952,
		36.868481, 29.884029, 33.922840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.546936, 29.516966, 34.368332>,  <37.189075, 29.279533, 33.775173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.546936, 29.516966, 34.368332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.204159, 29.723000, 34.361042>,  <36.998493, 29.846621, 34.356670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.204159, 29.723000, 34.361042>,  <37.546936, 29.516966, 34.368332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.204159, 29.723000, 34.361042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018014, 0.005402, 0.999823,
		0.515094, 0.857121, 0.004650,
		-0.856945, 0.515086, -0.018223,
		36.947075, 29.877525, 34.355576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.676495, 30.079832, 34.756527>,  <37.546936, 29.516966, 34.368332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.676495, 30.079832, 34.756527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.283382, 30.005930, 34.755554>,  <37.047516, 29.961588, 34.754971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.283382, 30.005930, 34.755554>,  <37.676495, 30.079832, 34.756527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.283382, 30.005930, 34.755554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009228, -0.062235, 0.998019,
		-0.184542, 0.980812, 0.062868,
		-0.982781, -0.184756, -0.002434,
		36.988548, 29.950502, 34.754826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.298710, 30.610270, 35.105587>,  <37.676495, 30.079832, 34.756527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.298710, 30.610270, 35.105587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.118816, 30.253050, 35.111294>,  <37.010880, 30.038717, 35.114716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.118816, 30.253050, 35.111294>,  <37.298710, 30.610270, 35.105587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.118816, 30.253050, 35.111294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126427, -0.047841, 0.990822,
		-0.884170, 0.447409, 0.134421,
		-0.449733, -0.893049, 0.014265,
		36.983898, 29.985134, 35.115574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.085030, 30.577848, 35.703777>,  <37.298710, 30.610270, 35.105587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.085030, 30.577848, 35.703777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.098751, 30.191465, 35.601212>,  <37.106983, 29.959635, 35.539673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.098751, 30.191465, 35.601212>,  <37.085030, 30.577848, 35.703777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.098751, 30.191465, 35.601212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335867, -0.230504, 0.913270,
		-0.941285, -0.117447, 0.316527,
		0.034300, -0.965958, -0.256416,
		37.109039, 29.901678, 35.524288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.695530, 30.111193, 36.110664>,  <37.085030, 30.577848, 35.703777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.695530, 30.111193, 36.110664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.972157, 29.858696, 35.970230>,  <37.138134, 29.707197, 35.885967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.972157, 29.858696, 35.970230>,  <36.695530, 30.111193, 36.110664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.972157, 29.858696, 35.970230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151896, -0.348100, 0.925069,
		-0.706158, -0.693079, -0.144852,
		0.691569, -0.631243, -0.351090,
		37.179626, 29.669323, 35.864902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.532463, 29.374969, 36.329865>,  <36.695530, 30.111193, 36.110664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.532463, 29.374969, 36.329865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.924221, 29.439783, 36.281662>,  <37.159275, 29.478672, 36.252739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.924221, 29.439783, 36.281662>,  <36.532463, 29.374969, 36.329865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.924221, 29.439783, 36.281662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176782, -0.399589, 0.899487,
		0.097596, -0.902260, -0.420003,
		0.979399, 0.162035, -0.120505,
		37.218040, 29.488394, 36.245510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.941063, 28.751932, 36.394661>,  <36.532463, 29.374969, 36.329865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.941063, 28.751932, 36.394661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.217461, 29.032764, 36.463486>,  <37.383301, 29.201263, 36.504780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.217461, 29.032764, 36.463486>,  <36.941063, 28.751932, 36.394661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.217461, 29.032764, 36.463486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186060, -0.402762, 0.896194,
		0.698503, -0.587252, -0.408936,
		0.690996, 0.702081, 0.172066,
		37.424759, 29.243389, 36.515106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.358715, 28.424608, 36.829220>,  <36.941063, 28.751932, 36.394661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.358715, 28.424608, 36.829220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.418808, 28.811924, 36.909065>,  <37.454865, 29.044313, 36.956970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.418808, 28.811924, 36.909065>,  <37.358715, 28.424608, 36.829220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.418808, 28.811924, 36.909065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106844, -0.216620, 0.970392,
		0.982861, -0.124453, -0.135998,
		0.150228, 0.968291, 0.199610,
		37.463875, 29.102411, 36.968948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.938671, 28.187963, 36.557178>,  <37.358715, 28.424608, 36.829220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.938671, 28.187963, 36.557178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.930763, 28.561491, 36.700058>,  <37.926018, 28.785608, 36.785786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.930763, 28.561491, 36.700058>,  <37.938671, 28.187963, 36.557178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.930763, 28.561491, 36.700058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392670, -0.321311, 0.861725,
		0.919467, 0.157297, -0.360330,
		-0.019768, 0.933819, 0.357201,
		37.924831, 28.841637, 36.807217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.653450, 28.376814, 36.740486>,  <37.938671, 28.187963, 36.557178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.653450, 28.376814, 36.740486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.391624, 28.594942, 36.949932>,  <38.234531, 28.725819, 37.075600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.391624, 28.594942, 36.949932>,  <38.653450, 28.376814, 36.740486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.391624, 28.594942, 36.949932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421394, -0.311864, 0.851568,
		0.627676, 0.778052, -0.025662,
		-0.654561, 0.545322, 0.523616,
		38.195255, 28.758539, 37.107018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.035603, 28.757519, 37.295582>,  <38.653450, 28.376814, 36.740486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.035603, 28.757519, 37.295582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.652809, 28.710999, 37.401913>,  <38.423134, 28.683086, 37.465710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.652809, 28.710999, 37.401913>,  <39.035603, 28.757519, 37.295582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.652809, 28.710999, 37.401913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283520, -0.180066, 0.941909,
		-0.061680, 0.976755, 0.205294,
		-0.956981, -0.116302, 0.265823,
		38.365715, 28.676107, 37.481659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.852901, 29.190311, 37.908062>,  <39.035603, 28.757519, 37.295582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.852901, 29.190311, 37.908062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.579201, 28.898613, 37.908978>,  <38.414982, 28.723595, 37.909527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.579201, 28.898613, 37.908978>,  <38.852901, 29.190311, 37.908062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.579201, 28.898613, 37.908978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152353, -0.139885, 0.978376,
		-0.713156, 0.669802, 0.206819,
		-0.684249, -0.729245, 0.002286,
		38.373924, 28.679840, 37.909664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.765511, 29.255125, 38.527935>,  <38.852901, 29.190311, 37.908062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.765511, 29.255125, 38.527935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.533672, 28.940802, 38.441612>,  <38.394569, 28.752207, 38.389820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.533672, 28.940802, 38.441612>,  <38.765511, 29.255125, 38.527935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.533672, 28.940802, 38.441612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008075, -0.259274, 0.965770,
		-0.814864, 0.561499, 0.143929,
		-0.579596, -0.785809, -0.215807,
		38.359795, 28.705059, 38.376869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.265285, 29.133387, 39.089668>,  <38.765511, 29.255125, 38.527935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.265285, 29.133387, 39.089668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.285137, 28.768456, 38.927090>,  <38.297047, 28.549498, 38.829544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.285137, 28.768456, 38.927090>,  <38.265285, 29.133387, 39.089668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.285137, 28.768456, 38.927090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076959, -0.402242, 0.912293,
		-0.995799, -0.076552, 0.050251,
		0.049625, -0.912327, -0.406443,
		38.300026, 28.494757, 38.805157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.756073, 28.630028, 39.327759>,  <38.265285, 29.133387, 39.089668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.756073, 28.630028, 39.327759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.042015, 28.382931, 39.196686>,  <38.213581, 28.234673, 39.118042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.042015, 28.382931, 39.196686>,  <37.756073, 28.630028, 39.327759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.042015, 28.382931, 39.196686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028606, -0.442384, 0.896369,
		-0.698688, -0.650147, -0.298569,
		0.714854, -0.617742, -0.327687,
		38.256470, 28.197609, 39.098381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.553802, 27.998711, 39.411697>,  <37.756073, 28.630028, 39.327759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.553802, 27.998711, 39.411697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.952000, 28.029661, 39.433659>,  <38.190918, 28.048231, 39.446835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.952000, 28.029661, 39.433659>,  <37.553802, 27.998711, 39.411697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.952000, 28.029661, 39.433659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020010, -0.394393, 0.918724,
		0.092739, -0.915679, -0.391066,
		0.995489, 0.077376, 0.054899,
		38.250645, 28.052874, 39.450127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.739311, 27.503178, 39.906139>,  <37.553802, 27.998711, 39.411697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.739311, 27.503178, 39.906139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.066620, 27.730888, 39.874241>,  <38.263004, 27.867514, 39.855103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.066620, 27.730888, 39.874241>,  <37.739311, 27.503178, 39.906139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.066620, 27.730888, 39.874241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297346, -0.300453, 0.906263,
		0.491954, -0.765280, -0.415123,
		0.818271, 0.569275, -0.079743,
		38.312099, 27.901670, 39.850319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.253918, 27.116505, 40.126854>,  <37.739311, 27.503178, 39.906139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.253918, 27.116505, 40.126854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.424980, 27.477274, 40.151005>,  <38.527618, 27.693735, 40.165497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.424980, 27.477274, 40.151005>,  <38.253918, 27.116505, 40.126854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.424980, 27.477274, 40.151005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292137, -0.201113, 0.934992,
		0.855435, -0.382214, -0.349492,
		0.427654, 0.901924, 0.060380,
		38.553276, 27.747850, 40.169117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.984707, 27.157698, 40.301636>,  <38.253918, 27.116505, 40.126854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.984707, 27.157698, 40.301636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.825146, 27.503069, 40.425163>,  <38.729408, 27.710291, 40.499279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.825146, 27.503069, 40.425163>,  <38.984707, 27.157698, 40.301636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.825146, 27.503069, 40.425163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299972, -0.195372, 0.933727,
		0.866540, 0.465105, -0.181069,
		-0.398905, 0.863428, 0.308816,
		38.705475, 27.762096, 40.517807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.378044, 27.271553, 40.909782>,  <38.984707, 27.157698, 40.301636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.378044, 27.271553, 40.909782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.086308, 27.542877, 40.945465>,  <38.911266, 27.705671, 40.966873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.086308, 27.542877, 40.945465>,  <39.378044, 27.271553, 40.909782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.086308, 27.542877, 40.945465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103304, -0.019710, 0.994455,
		0.676307, 0.734511, -0.055697,
		-0.729340, 0.678311, 0.089207,
		38.867504, 27.746370, 40.972229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.576649, 27.851992, 41.377598>,  <39.378044, 27.271553, 40.909782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.576649, 27.851992, 41.377598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.176731, 27.851461, 41.385723>,  <38.936779, 27.851143, 41.390598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.176731, 27.851461, 41.385723>,  <39.576649, 27.851992, 41.377598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.176731, 27.851461, 41.385723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020309, 0.004107, 0.999785,
		-0.001407, 0.999991, -0.004079,
		-0.999793, -0.001324, 0.020315,
		38.876793, 27.851065, 41.391819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.272331, 28.501089, 41.763832>,  <39.576649, 27.851992, 41.377598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.272331, 28.501089, 41.763832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.043934, 28.174332, 41.796452>,  <38.906895, 27.978277, 41.816025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.043934, 28.174332, 41.796452>,  <39.272331, 28.501089, 41.763832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.043934, 28.174332, 41.796452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087495, 0.038219, 0.995431,
		-0.816280, 0.575518, 0.049651,
		-0.570991, -0.816895, 0.081553,
		38.872635, 27.929262, 41.820919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.158634, 28.579981, 42.414772>,  <39.272331, 28.501089, 41.763832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.158634, 28.579981, 42.414772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.974255, 28.236036, 42.326984>,  <38.863628, 28.029671, 42.274311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.974255, 28.236036, 42.326984>,  <39.158634, 28.579981, 42.414772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.974255, 28.236036, 42.326984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134215, -0.176917, 0.975031,
		-0.877219, 0.478895, -0.033856,
		-0.460948, -0.859860, -0.219470,
		38.835972, 27.978079, 42.261143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.578217, 28.431997, 42.900738>,  <39.158634, 28.579981, 42.414772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.578217, 28.431997, 42.900738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.751762, 28.097137, 42.767506>,  <38.855888, 27.896221, 42.687569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.751762, 28.097137, 42.767506>,  <38.578217, 28.431997, 42.900738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.751762, 28.097137, 42.767506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027628, -0.381872, 0.923802,
		-0.900554, -0.391604, -0.188810,
		0.433866, -0.837150, -0.333077,
		38.881924, 27.845993, 42.667583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.214615, 27.960894, 43.208969>,  <38.578217, 28.431997, 42.900738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.214615, 27.960894, 43.208969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.577736, 27.825487, 43.109928>,  <38.795609, 27.744244, 43.050503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.577736, 27.825487, 43.109928>,  <38.214615, 27.960894, 43.208969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.577736, 27.825487, 43.109928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100361, -0.397882, 0.911931,
		-0.407235, -0.852694, -0.327219,
		0.907793, -0.338530, -0.247609,
		38.850075, 27.723932, 43.035648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.910046, 27.268808, 42.947781>,  <38.214615, 27.960894, 43.208969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.910046, 27.268808, 42.947781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.796936, 26.888329, 42.997192>,  <37.729069, 26.660040, 43.026840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.796936, 26.888329, 42.997192>,  <37.910046, 27.268808, 42.947781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.796936, 26.888329, 42.997192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.933330, 0.302559, 0.193268,
		-0.221211, -0.060642, -0.973339,
		-0.282773, -0.951199, 0.123528,
		37.712105, 26.602968, 43.034252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.230202, 27.032356, 42.299774>,  <37.910046, 27.268808, 42.947781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.230202, 27.032356, 42.299774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.284500, 27.428646, 42.302231>,  <38.317078, 27.666420, 42.303707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.284500, 27.428646, 42.302231>,  <38.230202, 27.032356, 42.299774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.284500, 27.428646, 42.302231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146371, -0.013921, -0.989132,
		-0.979872, 0.135167, -0.146904,
		0.135743, 0.990725, 0.006144,
		38.325222, 27.725864, 42.304073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.791294, 27.439806, 41.770424>,  <38.230202, 27.032356, 42.299774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.791294, 27.439806, 41.770424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.134899, 27.641726, 41.804535>,  <38.341064, 27.762877, 41.825001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.134899, 27.641726, 41.804535>,  <37.791294, 27.439806, 41.770424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.134899, 27.641726, 41.804535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109577, -0.018577, -0.993805,
		-0.500087, 0.863037, -0.071273,
		0.859014, 0.504799, 0.085279,
		38.392605, 27.793165, 41.830120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.628868, 27.893408, 41.262115>,  <37.791294, 27.439806, 41.770424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.628868, 27.893408, 41.262115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.023476, 27.921183, 41.321404>,  <38.260239, 27.937847, 41.356976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.023476, 27.921183, 41.321404>,  <37.628868, 27.893408, 41.262115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.023476, 27.921183, 41.321404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132018, 0.197729, -0.971326,
		-0.096751, 0.977794, 0.185896,
		0.986514, 0.069435, 0.148217,
		38.319431, 27.942013, 41.365868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.866825, 28.586136, 41.168533>,  <37.628868, 27.893408, 41.262115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.866825, 28.586136, 41.168533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.167732, 28.330198, 41.105675>,  <38.348278, 28.176636, 41.067959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.167732, 28.330198, 41.105675>,  <37.866825, 28.586136, 41.168533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.167732, 28.330198, 41.105675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039492, 0.194291, -0.980149,
		0.657673, 0.743540, 0.120890,
		0.752268, -0.639843, -0.157144,
		38.393414, 28.138245, 41.058533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.295593, 28.940275, 40.736340>,  <37.866825, 28.586136, 41.168533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.295593, 28.940275, 40.736340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.423325, 28.564507, 40.686508>,  <38.499962, 28.339045, 40.656609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.423325, 28.564507, 40.686508>,  <38.295593, 28.940275, 40.736340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.423325, 28.564507, 40.686508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010383, 0.127984, -0.991722,
		0.947588, 0.317975, 0.031114,
		0.319325, -0.939421, -0.124578,
		38.519123, 28.282681, 40.649136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.929771, 28.954834, 40.284832>,  <38.295593, 28.940275, 40.736340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.929771, 28.954834, 40.284832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.799934, 28.577490, 40.257381>,  <38.722031, 28.351084, 40.240910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.799934, 28.577490, 40.257381>,  <38.929771, 28.954834, 40.284832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.799934, 28.577490, 40.257381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023997, 0.064316, -0.997641,
		0.945550, -0.325472, 0.001762,
		-0.324591, -0.943362, -0.068625,
		38.702557, 28.294481, 40.236794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.461781, 28.529142, 39.841667>,  <38.929771, 28.954834, 40.284832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.461781, 28.529142, 39.841667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.099941, 28.358641, 39.842300>,  <38.882835, 28.256340, 39.842682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.099941, 28.358641, 39.842300>,  <39.461781, 28.529142, 39.841667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.099941, 28.358641, 39.842300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042407, 0.086301, -0.995366,
		0.424143, -0.900477, -0.096145,
		-0.904601, -0.426255, 0.001582,
		38.828560, 28.230764, 39.842773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.577751, 27.959442, 39.387451>,  <39.461781, 28.529142, 39.841667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.577751, 27.959442, 39.387451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.184158, 28.022636, 39.420490>,  <38.948002, 28.060553, 39.440315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.184158, 28.022636, 39.420490>,  <39.577751, 27.959442, 39.387451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.184158, 28.022636, 39.420490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074167, 0.058535, -0.995526,
		-0.162114, -0.985705, -0.045880,
		-0.983981, 0.157986, 0.082596,
		38.888966, 28.070032, 39.445271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.395802, 27.941433, 38.763939>,  <39.577751, 27.959442, 39.387451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.395802, 27.941433, 38.763939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.021950, 27.988596, 38.898144>,  <38.797638, 28.016893, 38.978664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.021950, 27.988596, 38.898144>,  <39.395802, 27.941433, 38.763939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.021950, 27.988596, 38.898144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340268, -0.022246, -0.940065,
		-0.103378, -0.992775, 0.060913,
		-0.934629, 0.117909, 0.335510,
		38.741562, 28.023968, 38.998798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.940411, 27.421072, 38.462406>,  <39.395802, 27.941433, 38.763939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.940411, 27.421072, 38.462406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.751720, 27.767231, 38.530010>,  <38.638508, 27.974926, 38.570572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.751720, 27.767231, 38.530010>,  <38.940411, 27.421072, 38.462406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.751720, 27.767231, 38.530010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310902, 0.016121, -0.950305,
		-0.825115, -0.500829, 0.261449,
		-0.471725, 0.865396, 0.169011,
		38.610203, 28.026850, 38.580715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.445915, 27.422203, 38.006001>,  <38.940411, 27.421072, 38.462406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.445915, 27.422203, 38.006001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.388794, 27.806120, 38.102673>,  <38.354523, 28.036470, 38.160675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.388794, 27.806120, 38.102673>,  <38.445915, 27.422203, 38.006001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.388794, 27.806120, 38.102673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378984, 0.172544, -0.909175,
		-0.914318, -0.221426, 0.339105,
		-0.142804, 0.959791, 0.241677,
		38.345951, 28.094057, 38.175175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.750015, 27.560637, 37.859089>,  <38.445915, 27.422203, 38.006001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.750015, 27.560637, 37.859089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.934509, 27.915327, 37.871574>,  <38.045208, 28.128141, 37.879066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.934509, 27.915327, 37.871574>,  <37.750015, 27.560637, 37.859089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.934509, 27.915327, 37.871574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449945, 0.264075, -0.853120,
		-0.764728, 0.379447, 0.520780,
		0.461238, 0.886727, 0.031215,
		38.072880, 28.181345, 37.880939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.245567, 28.254103, 37.892311>,  <37.750015, 27.560637, 37.859089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.245567, 28.254103, 37.892311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.603699, 28.335573, 37.733871>,  <37.818577, 28.384455, 37.638805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.603699, 28.335573, 37.733871>,  <37.245567, 28.254103, 37.892311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.603699, 28.335573, 37.733871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440337, 0.271077, -0.855933,
		-0.066957, 0.940763, 0.332389,
		0.895332, 0.203674, -0.396102,
		37.872299, 28.396675, 37.615040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.276703, 28.967440, 37.621624>,  <37.245567, 28.254103, 37.892311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.276703, 28.967440, 37.621624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.532993, 28.729811, 37.427078>,  <37.686768, 28.587234, 37.310352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.532993, 28.729811, 37.427078>,  <37.276703, 28.967440, 37.621624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.532993, 28.729811, 37.427078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429103, 0.248217, -0.868481,
		0.636662, 0.765159, -0.095878,
		0.640728, -0.594070, -0.486362,
		37.725212, 28.551590, 37.281170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.517086, 29.698360, 37.712303>,  <37.276703, 28.967440, 37.621624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.517086, 29.698360, 37.712303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.718952, 29.395733, 37.545971>,  <37.840073, 29.214157, 37.446171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.718952, 29.395733, 37.545971>,  <37.517086, 29.698360, 37.712303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.718952, 29.395733, 37.545971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370680, 0.245119, -0.895831,
		0.779686, 0.606236, -0.156742,
		0.504664, -0.756568, -0.415835,
		37.870350, 29.168762, 37.421219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.793976, 30.081060, 37.219521>,  <37.517086, 29.698360, 37.712303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.793976, 30.081060, 37.219521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.830994, 29.701670, 37.098309>,  <37.853207, 29.474035, 37.025581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.830994, 29.701670, 37.098309>,  <37.793976, 30.081060, 37.219521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.830994, 29.701670, 37.098309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172137, 0.284509, -0.943093,
		0.980716, 0.139443, -0.136938,
		0.092547, -0.948478, -0.303026,
		37.858757, 29.417126, 37.007401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.326527, 30.081295, 36.737778>,  <37.793976, 30.081060, 37.219521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.326527, 30.081295, 36.737778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.056011, 29.798542, 36.654877>,  <37.893703, 29.628891, 36.605137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.056011, 29.798542, 36.654877>,  <38.326527, 30.081295, 36.737778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.056011, 29.798542, 36.654877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035389, 0.312201, -0.949357,
		0.735786, -0.634705, -0.236154,
		-0.676289, -0.706881, -0.207251,
		37.853123, 29.586477, 36.592701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.492153, 29.805933, 35.993675>,  <38.326527, 30.081295, 36.737778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.492153, 29.805933, 35.993675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.108791, 29.718452, 36.067028>,  <37.878773, 29.665964, 36.111042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.108791, 29.718452, 36.067028>,  <38.492153, 29.805933, 35.993675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.108791, 29.718452, 36.067028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248356, 0.322430, -0.913432,
		0.140639, -0.920983, -0.363334,
		-0.958405, -0.218701, 0.183385,
		37.821270, 29.652842, 36.122044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.167824, 29.826443, 36.299526>,  <38.492153, 29.805933, 35.993675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.167824, 29.826443, 36.299526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.152542, 30.154919, 36.071777>,  <39.143375, 30.352005, 35.935127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.152542, 30.154919, 36.071777>,  <39.167824, 29.826443, 36.299526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.152542, 30.154919, 36.071777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950786, 0.205199, 0.232163,
		0.307485, -0.532485, -0.788614,
		-0.038200, 0.821190, -0.569375,
		39.141083, 30.401276, 35.900967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.855595, 29.906250, 36.042007>,  <39.167824, 29.826443, 36.299526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.855595, 29.906250, 36.042007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.670807, 30.260178, 36.017754>,  <39.559933, 30.472534, 36.003201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.670807, 30.260178, 36.017754>,  <39.855595, 29.906250, 36.042007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.670807, 30.260178, 36.017754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813688, 0.450045, 0.367928,
		0.352839, 0.120633, -0.927875,
		-0.461970, 0.884821, -0.060635,
		39.532215, 30.525623, 35.999561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.412418, 30.316957, 35.866531>,  <39.855595, 29.906250, 36.042007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.412418, 30.316957, 35.866531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.118713, 30.498993, 36.068024>,  <39.942490, 30.608213, 36.188919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.118713, 30.498993, 36.068024>,  <40.412418, 30.316957, 35.866531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.118713, 30.498993, 36.068024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678089, 0.456294, 0.576187,
		0.032364, 0.764651, -0.643631,
		-0.734267, 0.455087, 0.503734,
		39.898434, 30.635519, 36.219143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.480450, 31.040892, 35.919632>,  <40.412418, 30.316957, 35.866531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.480450, 31.040892, 35.919632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.258774, 30.939020, 36.236622>,  <40.125767, 30.877897, 36.426815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.258774, 30.939020, 36.236622>,  <40.480450, 31.040892, 35.919632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.258774, 30.939020, 36.236622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457518, 0.702139, 0.545599,
		-0.695379, 0.664936, -0.272597,
		-0.554189, -0.254680, 0.792472,
		40.092518, 30.862616, 36.474365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.944954, 31.622925, 36.164398>,  <40.480450, 31.040892, 35.919632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.944954, 31.622925, 36.164398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.114128, 31.389513, 36.441704>,  <40.215633, 31.249466, 36.608089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.114128, 31.389513, 36.441704>,  <39.944954, 31.622925, 36.164398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.114128, 31.389513, 36.441704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483836, 0.792295, 0.371715,
		-0.766179, 0.178217, 0.617421,
		0.422933, -0.583530, 0.693268,
		40.241009, 31.214455, 36.649685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.004898, 32.072773, 36.733574>,  <39.944954, 31.622925, 36.164398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.004898, 32.072773, 36.733574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.259102, 31.765697, 36.766502>,  <40.411625, 31.581451, 36.786259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.259102, 31.765697, 36.766502>,  <40.004898, 32.072773, 36.733574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.259102, 31.765697, 36.766502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703439, 0.619655, 0.348139,
		-0.318270, -0.163342, 0.933822,
		0.635513, -0.767689, 0.082317,
		40.449757, 31.535391, 36.791199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.310329, 32.214130, 37.456989>,  <40.004898, 32.072773, 36.733574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.310329, 32.214130, 37.456989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.530788, 31.962767, 37.237408>,  <40.663063, 31.811949, 37.105659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.530788, 31.962767, 37.237408>,  <40.310329, 32.214130, 37.456989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.530788, 31.962767, 37.237408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.831832, 0.465464, 0.302322,
		0.065535, -0.623257, 0.779266,
		0.551145, -0.628406, -0.548949,
		40.696133, 31.774244, 37.072723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.930866, 31.913599, 37.832466>,  <40.310329, 32.214130, 37.456989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.930866, 31.913599, 37.832466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.959209, 31.995668, 37.442001>,  <40.976215, 32.044910, 37.207722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.959209, 31.995668, 37.442001>,  <40.930866, 31.913599, 37.832466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.959209, 31.995668, 37.442001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788465, 0.587906, 0.180800,
		0.610984, -0.782477, -0.120116,
		0.070855, 0.205173, -0.976157,
		40.980465, 32.057220, 37.149155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.548080, 31.617117, 37.528915>,  <40.930866, 31.913599, 37.832466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.548080, 31.617117, 37.528915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.395786, 31.959831, 37.389805>,  <41.304409, 32.165459, 37.306339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.395786, 31.959831, 37.389805>,  <41.548080, 31.617117, 37.528915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.395786, 31.959831, 37.389805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749973, 0.506139, 0.425868,
		0.540904, -0.098682, -0.835275,
		-0.380740, 0.856788, -0.347781,
		41.281563, 32.216869, 37.285469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.001625, 32.026722, 37.154278>,  <41.548080, 31.617117, 37.528915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.001625, 32.026722, 37.154278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.747433, 32.271828, 37.342186>,  <41.594917, 32.418892, 37.454929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.747433, 32.271828, 37.342186>,  <42.001625, 32.026722, 37.154278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.747433, 32.271828, 37.342186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772103, 0.507763, 0.382144,
		-0.004369, 0.605557, -0.795790,
		-0.635482, 0.612763, 0.469770,
		41.556789, 32.455658, 37.483116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.571270, 32.500488, 37.217625>,  <42.001625, 32.026722, 37.154278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.571270, 32.500488, 37.217625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.563454, 32.396503, 37.603794>,  <42.558765, 32.334110, 37.835495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.563454, 32.396503, 37.603794>,  <42.571270, 32.500488, 37.217625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.563454, 32.396503, 37.603794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650147, -0.736875, -0.185265,
		0.759557, 0.624045, 0.183414,
		-0.019539, -0.259966, 0.965420,
		42.557590, 32.318512, 37.893421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.254528, 32.459946, 37.698963>,  <42.571270, 32.500488, 37.217625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.254528, 32.459946, 37.698963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.978916, 32.185638, 37.792728>,  <42.813549, 32.021053, 37.848988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.978916, 32.185638, 37.792728>,  <43.254528, 32.459946, 37.698963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.978916, 32.185638, 37.792728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577882, -0.715083, -0.393330,
		0.437361, -0.135552, 0.889011,
		-0.689034, -0.685771, 0.234416,
		42.772205, 31.979908, 37.863052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.581047, 31.982483, 38.112507>,  <43.254528, 32.459946, 37.698963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.581047, 31.982483, 38.112507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.270638, 31.848188, 37.898937>,  <43.084393, 31.767611, 37.770798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.270638, 31.848188, 37.898937>,  <43.581047, 31.982483, 38.112507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.270638, 31.848188, 37.898937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597067, -0.663836, -0.450370,
		-0.203228, -0.668283, 0.715609,
		-0.776021, -0.335739, -0.533920,
		43.037830, 31.747467, 37.738762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.142239, 31.434807, 37.968758>,  <43.581047, 31.982483, 38.112507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.142239, 31.434807, 37.968758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.204609, 31.829775, 37.958241>,  <44.242031, 32.066757, 37.951931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.204609, 31.829775, 37.958241>,  <44.142239, 31.434807, 37.968758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.204609, 31.829775, 37.958241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798478, -0.110333, 0.591827,
		0.581480, -0.113274, -0.805636,
		0.155927, 0.987419, -0.026291,
		44.251389, 32.125999, 37.950352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.828728, 31.647017, 37.896797>,  <44.142239, 31.434807, 37.968758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.828728, 31.647017, 37.896797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.700588, 31.977934, 38.081387>,  <44.623703, 32.176483, 38.192139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.700588, 31.977934, 38.081387>,  <44.828728, 31.647017, 37.896797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.700588, 31.977934, 38.081387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750559, -0.075548, 0.656470,
		0.577958, 0.556664, -0.596732,
		-0.320352, 0.827295, 0.461473,
		44.604485, 32.226124, 38.219830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.482700, 31.908932, 38.088440>,  <44.828728, 31.647017, 37.896797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.482700, 31.908932, 38.088440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.287750, 32.105728, 38.376999>,  <45.170780, 32.223804, 38.550133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.287750, 32.105728, 38.376999>,  <45.482700, 31.908932, 38.088440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.287750, 32.105728, 38.376999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851660, 0.085484, 0.517075,
		0.192728, 0.866394, -0.460671,
		-0.487371, 0.491990, 0.721398,
		45.141541, 32.253326, 38.593418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.823723, 32.568947, 38.333996>,  <45.482700, 31.908932, 38.088440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.823723, 32.568947, 38.333996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.610195, 32.409916, 38.632515>,  <45.482079, 32.314495, 38.811626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.610195, 32.409916, 38.632515>,  <45.823723, 32.568947, 38.333996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.610195, 32.409916, 38.632515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774352, 0.124734, 0.620338,
		-0.339724, 0.909049, 0.241282,
		-0.533822, -0.397581, 0.746300,
		45.450050, 32.290642, 38.856403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.976238, 33.245934, 37.952316>,  <45.823723, 32.568947, 38.333996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.976238, 33.245934, 37.952316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.184418, 33.536030, 37.772022>,  <46.309326, 33.710087, 37.663845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.184418, 33.536030, 37.772022>,  <45.976238, 33.245934, 37.952316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.184418, 33.536030, 37.772022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771232, 0.172661, -0.612691,
		-0.366522, 0.666495, 0.649188,
		0.520445, 0.725239, -0.450738,
		46.340549, 33.753601, 37.636803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.617283, 33.258026, 37.317360>,  <45.976238, 33.245934, 37.952316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.617283, 33.258026, 37.317360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.990643, 33.397739, 37.350277>,  <46.214657, 33.481567, 37.370026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.990643, 33.397739, 37.350277>,  <45.617283, 33.258026, 37.317360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.990643, 33.397739, 37.350277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170941, 0.634411, -0.753858,
		-0.315517, 0.689581, 0.651864,
		0.933396, 0.349285, 0.082290,
		46.270660, 33.502525, 37.374966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.498749, 33.934410, 37.355946>,  <45.617283, 33.258026, 37.317360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.498749, 33.934410, 37.355946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.859776, 33.850266, 37.205681>,  <46.076393, 33.799778, 37.115524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.859776, 33.850266, 37.205681>,  <45.498749, 33.934410, 37.355946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.859776, 33.850266, 37.205681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190138, 0.588075, -0.786140,
		0.386288, 0.780972, 0.490780,
		0.902568, -0.210360, -0.375658,
		46.130547, 33.787159, 37.092983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.947094, 34.510704, 37.278812>,  <45.498749, 33.934410, 37.355946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.947094, 34.510704, 37.278812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.040054, 34.236801, 37.002522>,  <46.095833, 34.072460, 36.836746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.040054, 34.236801, 37.002522>,  <45.947094, 34.510704, 37.278812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.040054, 34.236801, 37.002522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071796, 0.696155, -0.714293,
		0.969966, 0.215595, 0.112625,
		0.232402, -0.684754, -0.690725,
		46.109776, 34.031376, 36.795303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.235401, 34.905983, 36.690422>,  <45.947094, 34.510704, 37.278812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.235401, 34.905983, 36.690422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.448750, 35.244167, 36.679825>,  <46.576759, 35.447079, 36.673466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.448750, 35.244167, 36.679825>,  <46.235401, 34.905983, 36.690422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.448750, 35.244167, 36.679825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844280, -0.530181, 0.078098,
		0.051984, -0.064022, -0.996594,
		0.533376, 0.845464, -0.026492,
		46.608761, 35.497807, 36.671879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.780357, 34.903149, 36.159611>,  <46.235401, 34.905983, 36.690422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.780357, 34.903149, 36.159611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.893902, 35.134514, 36.465515>,  <46.962029, 35.273335, 36.649059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.893902, 35.134514, 36.465515>,  <46.780357, 34.903149, 36.159611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.893902, 35.134514, 36.465515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866962, -0.495548, 0.053001,
		0.409632, 0.647972, -0.642132,
		0.283864, 0.578415, 0.764759,
		46.979061, 35.308037, 36.694942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.451492, 35.086227, 36.025772>,  <46.780357, 34.903149, 36.159611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.451492, 35.086227, 36.025772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.366611, 35.091244, 36.416630>,  <47.315681, 35.094254, 36.651146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.366611, 35.091244, 36.416630>,  <47.451492, 35.086227, 36.025772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.366611, 35.091244, 36.416630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751117, -0.637556, 0.171305,
		0.625133, 0.770302, 0.125870,
		-0.212206, 0.012546, 0.977145,
		47.302948, 35.095009, 36.709774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.266449, 34.843685, 35.258934>,  <47.451492, 35.086227, 36.025772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.266449, 34.843685, 35.258934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.632019, 34.955780, 35.141483>,  <47.851360, 35.023037, 35.071011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.632019, 34.955780, 35.141483>,  <47.266449, 34.843685, 35.258934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.632019, 34.955780, 35.141483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405893, -0.630961, 0.661165,
		0.000013, -0.723435, -0.690393,
		0.913921, 0.280234, -0.293629,
		47.906197, 35.039852, 35.053394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.833183, 26.865788, 25.523359> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.598080, 27.179277, 25.443047>,  <34.457016, 27.367371, 25.394859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.598080, 27.179277, 25.443047>,  <34.833183, 26.865788, 25.523359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.598080, 27.179277, 25.443047> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234879, 0.072188, 0.969340,
		0.774189, 0.616901, 0.141650,
		-0.587762, 0.783723, -0.200784,
		34.421753, 27.414394, 25.382811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.933910, 27.403095, 26.046350>,  <34.833183, 26.865788, 25.523359>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.933910, 27.403095, 26.046350> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.568081, 27.431353, 25.887066>,  <34.348583, 27.448307, 25.791494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.568081, 27.431353, 25.887066>,  <34.933910, 27.403095, 26.046350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.568081, 27.431353, 25.887066> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396775, 0.033911, 0.917289,
		0.078303, 0.996925, -0.002985,
		-0.914570, 0.070642, -0.398211,
		34.293709, 27.452545, 25.767603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.737457, 28.026566, 26.398584>,  <34.933910, 27.403095, 26.046350>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.737457, 28.026566, 26.398584> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.418770, 27.833578, 26.253006>,  <34.227558, 27.717785, 26.165659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.418770, 27.833578, 26.253006>,  <34.737457, 28.026566, 26.398584>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.418770, 27.833578, 26.253006> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515193, 0.227405, 0.826356,
		-0.315927, 0.845879, -0.429743,
		-0.796723, -0.482468, -0.363947,
		34.179752, 27.688837, 26.143822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.179916, 28.418076, 26.669111>,  <34.737457, 28.026566, 26.398584>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.179916, 28.418076, 26.669111> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.045601, 28.048685, 26.594887>,  <33.965012, 27.827049, 26.550352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.045601, 28.048685, 26.594887>,  <34.179916, 28.418076, 26.669111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.045601, 28.048685, 26.594887> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420504, -0.029315, 0.906817,
		-0.842866, 0.382528, -0.378483,
		-0.335788, -0.923478, -0.185563,
		33.944866, 27.771641, 26.539217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.506702, 28.472963, 26.856234>,  <34.179916, 28.418076, 26.669111>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.506702, 28.472963, 26.856234> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.552723, 28.075636, 26.852674>,  <33.580338, 27.837238, 26.850540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.552723, 28.075636, 26.852674>,  <33.506702, 28.472963, 26.856234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.552723, 28.075636, 26.852674> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597588, -0.076366, 0.798158,
		-0.793505, -0.086515, -0.602382,
		0.115054, -0.993319, -0.008897,
		33.587238, 27.777639, 26.850006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.841331, 28.243422, 26.950018>,  <33.506702, 28.472963, 26.856234>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.841331, 28.243422, 26.950018> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.104118, 27.960770, 27.055136>,  <33.261791, 27.791178, 27.118206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.104118, 27.960770, 27.055136>,  <32.841331, 28.243422, 26.950018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.104118, 27.960770, 27.055136> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480304, -0.123611, 0.868348,
		-0.581117, -0.696701, -0.420607,
		0.656971, -0.706631, 0.262796,
		33.301208, 27.748781, 27.133974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.424938, 27.847755, 27.352804>,  <32.841331, 28.243422, 26.950018>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.424938, 27.847755, 27.352804> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.797626, 27.738806, 27.448898>,  <33.021240, 27.673437, 27.506556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.797626, 27.738806, 27.448898>,  <32.424938, 27.847755, 27.352804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.797626, 27.738806, 27.448898> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269234, -0.074060, 0.960223,
		-0.243748, -0.959337, -0.142336,
		0.931719, -0.272374, 0.240235,
		33.077141, 27.657095, 27.520969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.302231, 27.390608, 27.820112>,  <32.424938, 27.847755, 27.352804>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.302231, 27.390608, 27.820112> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.694485, 27.430960, 27.887266>,  <32.929836, 27.455170, 27.927559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.694485, 27.430960, 27.887266>,  <32.302231, 27.390608, 27.820112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.694485, 27.430960, 27.887266> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161083, -0.072221, 0.984295,
		0.111421, -0.992274, -0.054572,
		0.980631, 0.100881, 0.167886,
		32.988674, 27.461224, 27.937632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.507927, 26.853230, 28.282484>,  <32.302231, 27.390608, 27.820112>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.507927, 26.853230, 28.282484> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.760307, 27.161226, 28.320461>,  <32.911736, 27.346024, 28.343246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.760307, 27.161226, 28.320461>,  <32.507927, 26.853230, 28.282484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.760307, 27.161226, 28.320461> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109343, -0.032897, 0.993460,
		0.768080, -0.637204, 0.063437,
		0.630949, 0.769993, 0.094941,
		32.949593, 27.392223, 28.348944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.012985, 26.711994, 28.878056>,  <32.507927, 26.853230, 28.282484>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.012985, 26.711994, 28.878056> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.067276, 27.106470, 28.840082>,  <33.099850, 27.343155, 28.817297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.067276, 27.106470, 28.840082>,  <33.012985, 26.711994, 28.878056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.067276, 27.106470, 28.840082> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061541, 0.104028, 0.992669,
		0.988833, -0.128889, 0.074811,
		0.135726, 0.986187, -0.094935,
		33.107994, 27.402327, 28.811602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.420074, 26.931520, 29.511084>,  <33.012985, 26.711994, 28.878056>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.420074, 26.931520, 29.511084> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.251102, 27.267626, 29.375139>,  <33.149719, 27.469290, 29.293573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.251102, 27.267626, 29.375139>,  <33.420074, 26.931520, 29.511084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.251102, 27.267626, 29.375139> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038486, 0.357992, 0.932931,
		0.905577, 0.407180, -0.118889,
		-0.422432, 0.840265, -0.339860,
		33.124374, 27.519705, 29.273182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.764191, 27.427624, 29.878843>,  <33.420074, 26.931520, 29.511084>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.764191, 27.427624, 29.878843> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.418159, 27.592255, 29.764133>,  <33.210541, 27.691032, 29.695307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.418159, 27.592255, 29.764133>,  <33.764191, 27.427624, 29.878843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.418159, 27.592255, 29.764133> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132280, 0.364280, 0.921847,
		0.483877, 0.835407, -0.260688,
		-0.865081, 0.411577, -0.286775,
		33.158634, 27.715727, 29.678101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.759174, 27.992191, 30.267275>,  <33.764191, 27.427624, 29.878843>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.759174, 27.992191, 30.267275> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.379322, 27.945972, 30.150759>,  <33.151409, 27.918242, 30.080849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.379322, 27.945972, 30.150759>,  <33.759174, 27.992191, 30.267275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.379322, 27.945972, 30.150759> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312831, 0.295143, 0.902788,
		-0.018341, 0.948441, -0.316424,
		-0.949632, -0.115546, -0.291289,
		33.094433, 27.911308, 30.063372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.451675, 28.575150, 30.474157>,  <33.759174, 27.992191, 30.267275>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.451675, 28.575150, 30.474157> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.153805, 28.313074, 30.423265>,  <32.975082, 28.155828, 30.392731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.153805, 28.313074, 30.423265>,  <33.451675, 28.575150, 30.474157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.153805, 28.313074, 30.423265> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456446, 0.360853, 0.813291,
		-0.486949, 0.663709, -0.567777,
		-0.744673, -0.655191, -0.127231,
		32.930405, 28.116516, 30.385096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.894512, 28.960882, 30.472710>,  <33.451675, 28.575150, 30.474157>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.894512, 28.960882, 30.472710> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.774632, 28.587851, 30.553181>,  <32.702702, 28.364031, 30.601463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.774632, 28.587851, 30.553181>,  <32.894512, 28.960882, 30.472710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.774632, 28.587851, 30.553181> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326510, 0.298403, 0.896854,
		-0.896420, 0.203104, -0.393929,
		-0.299704, -0.932579, 0.201179,
		32.684719, 28.308077, 30.613535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.223854, 29.039097, 30.866703>,  <32.894512, 28.960882, 30.472710>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.223854, 29.039097, 30.866703> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.371208, 28.680643, 30.965685>,  <32.459621, 28.465570, 31.025074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.371208, 28.680643, 30.965685>,  <32.223854, 29.039097, 30.866703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.371208, 28.680643, 30.965685> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478188, 0.045615, 0.877072,
		-0.797263, -0.441429, -0.411717,
		0.368385, -0.896136, 0.247453,
		32.481724, 28.411802, 31.039921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.676411, 28.630329, 31.206116>,  <32.223854, 29.039097, 30.866703>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.676411, 28.630329, 31.206116> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.022305, 28.462812, 31.317003>,  <32.229839, 28.362303, 31.383535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.022305, 28.462812, 31.317003>,  <31.676411, 28.630329, 31.206116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.022305, 28.462812, 31.317003> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249216, 0.121411, 0.960807,
		-0.436036, -0.899929, 0.000619,
		0.864733, -0.418792, 0.277217,
		32.281723, 28.337175, 31.400167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.522892, 28.205454, 31.710121>,  <31.676411, 28.630329, 31.206116>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.522892, 28.205454, 31.710121> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.912424, 28.276169, 31.767252>,  <32.146145, 28.318598, 31.801531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.912424, 28.276169, 31.767252>,  <31.522892, 28.205454, 31.710121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.912424, 28.276169, 31.767252> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150502, 0.030714, 0.988132,
		0.170306, -0.983769, 0.056518,
		0.973830, 0.176791, 0.142829,
		32.204575, 28.329205, 31.810101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.763813, 27.901482, 32.283569>,  <31.522892, 28.205454, 31.710121>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.763813, 27.901482, 32.283569> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.080536, 28.144880, 32.262524>,  <32.270569, 28.290920, 32.249897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.080536, 28.144880, 32.262524>,  <31.763813, 27.901482, 32.283569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.080536, 28.144880, 32.262524> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035920, 0.039598, 0.998570,
		0.609711, -0.792567, 0.009497,
		0.791809, 0.608498, -0.052612,
		32.318077, 28.327429, 32.246738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.201344, 27.677414, 32.808613>,  <31.763813, 27.901482, 32.283569>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.201344, 27.677414, 32.808613> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.334633, 28.044704, 32.722992>,  <32.414608, 28.265079, 32.671619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.334633, 28.044704, 32.722992>,  <32.201344, 27.677414, 32.808613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.334633, 28.044704, 32.722992> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001579, 0.226485, 0.974013,
		0.942846, -0.324904, 0.074021,
		0.333225, 0.918228, -0.214053,
		32.434601, 28.320173, 32.658775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.842857, 27.934710, 33.295631>,  <32.201344, 27.677414, 32.808613>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.842857, 27.934710, 33.295631> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.638714, 28.258543, 33.179630>,  <32.516228, 28.452843, 33.110031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.638714, 28.258543, 33.179630>,  <32.842857, 27.934710, 33.295631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.638714, 28.258543, 33.179630> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038269, 0.315515, 0.948149,
		0.859107, 0.494998, -0.130045,
		-0.510363, 0.809585, -0.290004,
		32.485603, 28.501419, 33.092628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.338856, 27.825941, 33.867977>,  <32.842857, 27.934710, 33.295631>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.338856, 27.825941, 33.867977> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.230072, 27.562317, 34.148457>,  <33.164803, 27.404142, 34.316742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.230072, 27.562317, 34.148457>,  <33.338856, 27.825941, 33.867977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.230072, 27.562317, 34.148457> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477478, -0.725054, -0.496297,
		0.835495, 0.199832, 0.511873,
		-0.271960, -0.659063, 0.701195,
		33.148483, 27.364597, 34.358814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.770603, 28.172503, 34.364834>,  <33.338856, 27.825941, 33.867977>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.770603, 28.172503, 34.364834> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.161613, 28.168043, 34.449043>,  <34.396221, 28.165367, 34.499569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.161613, 28.168043, 34.449043>,  <33.770603, 28.172503, 34.364834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.161613, 28.168043, 34.449043> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203351, -0.213521, -0.955540,
		0.055605, 0.976875, -0.206454,
		0.977526, -0.011150, 0.210522,
		34.454872, 28.164698, 34.512199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.113194, 28.614277, 33.820515>,  <33.770603, 28.172503, 34.364834>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.113194, 28.614277, 33.820515> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.399872, 28.398901, 33.997799>,  <34.571880, 28.269676, 34.104168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.399872, 28.398901, 33.997799>,  <34.113194, 28.614277, 33.820515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.399872, 28.398901, 33.997799> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447850, -0.131815, -0.884339,
		0.534583, 0.832292, 0.146668,
		0.716695, -0.538437, 0.443208,
		34.614880, 28.237370, 34.130760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.795803, 28.904385, 33.585136>,  <34.113194, 28.614277, 33.820515>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.795803, 28.904385, 33.585136> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.867310, 28.524052, 33.686298>,  <34.910213, 28.295853, 33.746998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.867310, 28.524052, 33.686298>,  <34.795803, 28.904385, 33.585136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.867310, 28.524052, 33.686298> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409044, -0.161959, -0.898027,
		0.894832, 0.263989, 0.359979,
		0.178768, -0.950831, 0.252909,
		34.920940, 28.238802, 33.762173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.477894, 28.822647, 33.430450>,  <34.795803, 28.904385, 33.585136>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.477894, 28.822647, 33.430450> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.341560, 28.446960, 33.446976>,  <35.259762, 28.221548, 33.456890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.341560, 28.446960, 33.446976>,  <35.477894, 28.822647, 33.430450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.341560, 28.446960, 33.446976> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465119, -0.206652, -0.860790,
		0.817007, -0.274165, 0.507280,
		-0.340829, -0.939217, 0.041317,
		35.239311, 28.165195, 33.459370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.046654, 28.363523, 33.243011>,  <35.477894, 28.822647, 33.430450>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.046654, 28.363523, 33.243011> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.729980, 28.128359, 33.176567>,  <35.539974, 27.987261, 33.136700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.729980, 28.128359, 33.176567>,  <36.046654, 28.363523, 33.243011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.729980, 28.128359, 33.176567> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396594, -0.287755, -0.871728,
		0.464699, -0.756014, 0.460974,
		-0.791687, -0.587911, -0.166112,
		35.492474, 27.951986, 33.126732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.306705, 27.794258, 32.930809>,  <36.046654, 28.363523, 33.243011>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.306705, 27.794258, 32.930809> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.917942, 27.762526, 32.842175>,  <35.684685, 27.743486, 32.788994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.917942, 27.762526, 32.842175>,  <36.306705, 27.794258, 32.930809>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.917942, 27.762526, 32.842175> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234460, -0.243945, -0.941020,
		0.020596, -0.966539, 0.255692,
		-0.971908, -0.079331, -0.221591,
		35.626369, 27.738726, 32.775696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.255268, 27.225061, 32.573685>,  <36.306705, 27.794258, 32.930809>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.255268, 27.225061, 32.573685> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.925587, 27.426167, 32.469437>,  <35.727779, 27.546829, 32.406887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.925587, 27.426167, 32.469437>,  <36.255268, 27.225061, 32.573685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.925587, 27.426167, 32.469437> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135716, -0.271436, -0.952840,
		-0.549791, -0.820703, 0.155486,
		-0.824203, 0.502761, -0.260616,
		35.678326, 27.576994, 32.391251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.876995, 26.790121, 32.093151>,  <36.255268, 27.225061, 32.573685>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.876995, 26.790121, 32.093151> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.664547, 27.120827, 32.018993>,  <35.537079, 27.319250, 31.974499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.664547, 27.120827, 32.018993>,  <35.876995, 26.790121, 32.093151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.664547, 27.120827, 32.018993> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036139, -0.240709, -0.969924,
		-0.846523, -0.508451, 0.157725,
		-0.531125, 0.826763, -0.185391,
		35.505211, 27.368856, 31.963377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.348583, 26.591618, 31.665102>,  <35.876995, 26.790121, 32.093151>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.348583, 26.591618, 31.665102> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.385246, 26.980690, 31.579790>,  <35.407246, 27.214134, 31.528603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.385246, 26.980690, 31.579790>,  <35.348583, 26.591618, 31.665102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.385246, 26.980690, 31.579790> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033932, -0.211004, -0.976896,
		-0.995212, 0.096776, 0.013666,
		0.091656, 0.972683, -0.213277,
		35.412743, 27.272495, 31.515806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.753395, 26.780739, 31.147125>,  <35.348583, 26.591618, 31.665102>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.753395, 26.780739, 31.147125> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.069290, 27.023743, 31.113091>,  <35.258827, 27.169546, 31.092670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.069290, 27.023743, 31.113091>,  <34.753395, 26.780739, 31.147125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.069290, 27.023743, 31.113091> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016766, -0.160025, -0.986971,
		-0.613211, 0.778025, -0.136563,
		0.789741, 0.607511, -0.085085,
		35.306213, 27.205996, 31.087564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.582985, 27.294495, 30.568291>,  <34.753395, 26.780739, 31.147125>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.582985, 27.294495, 30.568291> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.979073, 27.296902, 30.624058>,  <35.216724, 27.298346, 30.657518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.979073, 27.296902, 30.624058>,  <34.582985, 27.294495, 30.568291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.979073, 27.296902, 30.624058> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138127, 0.099878, -0.985366,
		-0.019854, 0.994981, 0.098070,
		0.990216, 0.006018, 0.139416,
		35.276138, 27.298708, 30.665882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.897274, 27.913885, 30.144304>,  <34.582985, 27.294495, 30.568291>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.897274, 27.913885, 30.144304> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.223557, 27.688454, 30.196468>,  <35.419327, 27.553196, 30.227766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.223557, 27.688454, 30.196468>,  <34.897274, 27.913885, 30.144304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.223557, 27.688454, 30.196468> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302265, 0.223043, -0.926762,
		0.493215, 0.795382, 0.352287,
		0.815705, -0.563577, 0.130408,
		35.468269, 27.519381, 30.235590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.407642, 28.327396, 30.036909>,  <34.897274, 27.913885, 30.144304>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.407642, 28.327396, 30.036909> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.554565, 27.964863, 29.953344>,  <35.642719, 27.747343, 29.903206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.554565, 27.964863, 29.953344>,  <35.407642, 28.327396, 30.036909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.554565, 27.964863, 29.953344> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416700, 0.361167, -0.834218,
		0.831531, 0.219364, 0.510329,
		0.367311, -0.906332, -0.208912,
		35.664761, 27.692963, 29.890671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.762486, 28.431974, 29.449951>,  <35.407642, 28.327396, 30.036909>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.762486, 28.431974, 29.449951> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.839745, 28.040798, 29.481764>,  <35.886101, 27.806091, 29.500851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.839745, 28.040798, 29.481764>,  <35.762486, 28.431974, 29.449951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.839745, 28.040798, 29.481764> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547921, 0.040263, -0.835561,
		0.813927, 0.204961, 0.543611,
		0.193145, -0.977942, 0.079532,
		35.897690, 27.747416, 29.505623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.467003, 28.356564, 29.315235>,  <35.762486, 28.431974, 29.449951>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.467003, 28.356564, 29.315235> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.276627, 28.013279, 29.238348>,  <36.162399, 27.807308, 29.192215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.276627, 28.013279, 29.238348>,  <36.467003, 28.356564, 29.315235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.276627, 28.013279, 29.238348> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528860, -0.104653, -0.842232,
		0.702697, -0.502514, 0.503683,
		-0.475945, -0.858212, -0.192220,
		36.133842, 27.755816, 29.180681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.924641, 27.847498, 29.069380>,  <36.467003, 28.356564, 29.315235>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.924641, 27.847498, 29.069380> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.586536, 27.684774, 28.930786>,  <36.383675, 27.587141, 28.847630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.586536, 27.684774, 28.930786>,  <36.924641, 27.847498, 29.069380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.586536, 27.684774, 28.930786> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470449, -0.259025, -0.843554,
		0.253417, -0.876021, 0.410325,
		-0.845256, -0.406808, -0.346482,
		36.332958, 27.562733, 28.826841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.145943, 27.177258, 28.770624>,  <36.924641, 27.847498, 29.069380>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.145943, 27.177258, 28.770624> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.782204, 27.268839, 28.631676>,  <36.563961, 27.323788, 28.548306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.782204, 27.268839, 28.631676>,  <37.145943, 27.177258, 28.770624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.782204, 27.268839, 28.631676> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274797, -0.296357, -0.914691,
		-0.312377, -0.927226, 0.206572,
		-0.909344, 0.228963, -0.347374,
		36.509399, 27.337524, 28.527464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.862808, 26.570911, 28.265690>,  <37.145943, 27.177258, 28.770624>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.862808, 26.570911, 28.265690> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.666908, 26.905685, 28.167963>,  <36.549370, 27.106550, 28.109327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.666908, 26.905685, 28.167963>,  <36.862808, 26.570911, 28.265690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.666908, 26.905685, 28.167963> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262927, -0.125403, -0.956631,
		-0.831275, -0.532744, -0.158637,
		-0.489746, 0.836934, -0.244317,
		36.519985, 27.156765, 28.094667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.330280, 26.289579, 27.667225> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.378941, 26.682446, 27.609882>,  <36.408138, 26.918165, 27.575478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.378941, 26.682446, 27.609882>,  <36.330280, 26.289579, 27.667225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.378941, 26.682446, 27.609882> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065734, -0.152083, -0.986179,
		-0.990394, 0.110547, -0.083063,
		0.121651, 0.982166, -0.143355,
		36.415436, 26.977095, 27.566875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.977600, 26.392963, 27.074213>,  <36.330280, 26.289579, 27.667225>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.977600, 26.392963, 27.074213> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.169285, 26.742220, 27.109962>,  <36.284294, 26.951773, 27.131413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.169285, 26.742220, 27.109962>,  <35.977600, 26.392963, 27.074213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.169285, 26.742220, 27.109962> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110966, 0.040738, -0.992989,
		-0.870658, 0.485766, -0.077367,
		0.479209, 0.873139, 0.089373,
		36.313046, 27.004162, 27.136774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.774914, 26.727726, 26.465778>,  <35.977600, 26.392963, 27.074213>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.774914, 26.727726, 26.465778> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.091778, 26.931166, 26.600723>,  <36.281895, 27.053230, 26.681690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.091778, 26.931166, 26.600723>,  <35.774914, 26.727726, 26.465778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.091778, 26.931166, 26.600723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169448, 0.347759, -0.922145,
		-0.586323, 0.787649, 0.189299,
		0.792157, 0.508599, 0.337365,
		36.329426, 27.083746, 26.701933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.811592, 27.439087, 26.179863>,  <35.774914, 26.727726, 26.465778>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.811592, 27.439087, 26.179863> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.184525, 27.362539, 26.302588>,  <36.408283, 27.316610, 26.376223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.184525, 27.362539, 26.302588>,  <35.811592, 27.439087, 26.179863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.184525, 27.362539, 26.302588> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354252, 0.313210, -0.881138,
		0.072526, 0.930203, 0.359809,
		0.932333, -0.191369, 0.306810,
		36.464226, 27.305128, 26.394630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.115578, 28.054764, 25.952900>,  <35.811592, 27.439087, 26.179863>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.115578, 28.054764, 25.952900> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.400433, 27.776417, 25.990057>,  <36.571346, 27.609409, 26.012350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.400433, 27.776417, 25.990057>,  <36.115578, 28.054764, 25.952900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.400433, 27.776417, 25.990057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352429, 0.239919, -0.904562,
		0.607170, 0.676910, 0.416099,
		0.712137, -0.695868, 0.092891,
		36.614075, 27.567656, 26.017925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.730999, 28.370892, 25.803047>,  <36.115578, 28.054764, 25.952900>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.730999, 28.370892, 25.803047> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.755939, 27.979036, 25.726707>,  <36.770905, 27.743923, 25.680904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.755939, 27.979036, 25.726707>,  <36.730999, 28.370892, 25.803047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.755939, 27.979036, 25.726707> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285114, 0.200735, -0.937238,
		0.956464, 0.004026, 0.291825,
		0.062353, -0.979637, -0.190848,
		36.774647, 27.685144, 25.669453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.379799, 28.291109, 25.600197>,  <36.730999, 28.370892, 25.803047>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.379799, 28.291109, 25.600197> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.202888, 27.967045, 25.446295>,  <37.096745, 27.772606, 25.353954>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.202888, 27.967045, 25.446295>,  <37.379799, 28.291109, 25.600197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.202888, 27.967045, 25.446295> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408488, 0.199955, -0.890593,
		0.798457, -0.551050, 0.242506,
		-0.442271, -0.810161, -0.384753,
		37.070206, 27.723997, 25.330870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.844700, 28.074579, 25.277102>,  <37.379799, 28.291109, 25.600197>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.844700, 28.074579, 25.277102> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.565228, 27.825428, 25.136326>,  <37.397545, 27.675938, 25.051861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.565228, 27.825428, 25.136326>,  <37.844700, 28.074579, 25.277102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.565228, 27.825428, 25.136326> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513176, -0.093575, -0.853167,
		0.498487, -0.776701, 0.385027,
		-0.698685, -0.622880, -0.351939,
		37.355621, 27.638565, 25.030745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.186981, 27.529652, 24.982065>,  <37.844700, 28.074579, 25.277102>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.186981, 27.529652, 24.982065> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.823013, 27.502001, 24.818470>,  <37.604633, 27.485411, 24.720312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.823013, 27.502001, 24.818470>,  <38.186981, 27.529652, 24.982065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.823013, 27.502001, 24.818470> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409877, 0.001473, -0.912140,
		0.063658, -0.997607, 0.026994,
		-0.909917, -0.069129, -0.408990,
		37.550037, 27.481262, 24.695772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.360874, 27.067617, 24.566784>,  <38.186981, 27.529652, 24.982065>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.360874, 27.067617, 24.566784> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.024593, 27.243958, 24.441008>,  <37.822826, 27.349762, 24.365541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.024593, 27.243958, 24.441008>,  <38.360874, 27.067617, 24.566784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.024593, 27.243958, 24.441008> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296904, -0.110337, -0.948511,
		-0.452848, -0.890772, -0.038130,
		-0.840700, 0.440852, -0.314440,
		37.772385, 27.376213, 24.346676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.144287, 26.544188, 23.988089>,  <38.360874, 27.067617, 24.566784>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.144287, 26.544188, 23.988089> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.943932, 26.884998, 23.927214>,  <37.823719, 27.089485, 23.890690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.943932, 26.884998, 23.927214>,  <38.144287, 26.544188, 23.988089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.943932, 26.884998, 23.927214> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076046, -0.131829, -0.988351,
		-0.862165, -0.506626, 0.001238,
		-0.500888, 0.852027, -0.152185,
		37.793667, 27.140606, 23.881557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.790958, 26.499430, 23.436983>,  <38.144287, 26.544188, 23.988089>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.790958, 26.499430, 23.436983> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.800953, 26.898573, 23.461180>,  <37.806950, 27.138058, 23.475698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.800953, 26.898573, 23.461180>,  <37.790958, 26.499430, 23.436983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.800953, 26.898573, 23.461180> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179732, 0.055040, -0.982175,
		-0.983398, 0.035415, -0.177971,
		0.024989, 0.997856, 0.060491,
		37.808449, 27.197929, 23.479326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.506557, 26.766792, 22.837317>,  <37.790958, 26.499430, 23.436983>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.506557, 26.766792, 22.837317> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.715111, 27.079033, 22.975195>,  <37.840244, 27.266378, 23.057922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.715111, 27.079033, 22.975195>,  <37.506557, 26.766792, 22.837317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.715111, 27.079033, 22.975195> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205997, 0.276859, -0.938571,
		-0.828083, 0.560363, -0.016452,
		0.521386, 0.780604, 0.344695,
		37.871525, 27.313213, 23.078604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.274132, 27.336262, 22.394020>,  <37.506557, 26.766792, 22.837317>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.274132, 27.336262, 22.394020> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.599556, 27.486853, 22.571283>,  <37.794811, 27.577208, 22.677641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.599556, 27.486853, 22.571283>,  <37.274132, 27.336262, 22.394020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.599556, 27.486853, 22.571283> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191262, 0.546458, -0.815354,
		-0.549128, 0.748098, 0.372570,
		0.813558, 0.376476, 0.443158,
		37.843624, 27.599796, 22.704231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.241924, 28.033932, 22.397896>,  <37.274132, 27.336262, 22.394020>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.241924, 28.033932, 22.397896> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.636307, 27.997524, 22.453896>,  <37.872936, 27.975679, 22.487495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.636307, 27.997524, 22.453896>,  <37.241924, 28.033932, 22.397896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.636307, 27.997524, 22.453896> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160584, 0.746720, -0.645463,
		-0.045791, 0.658882, 0.750852,
		0.985959, -0.091019, 0.139999,
		37.932095, 27.970219, 22.495895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.498760, 28.709314, 22.436460>,  <37.241924, 28.033932, 22.397896>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.498760, 28.709314, 22.436460> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.795101, 28.468941, 22.316450>,  <37.972904, 28.324717, 22.244444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.795101, 28.468941, 22.316450>,  <37.498760, 28.709314, 22.436460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.795101, 28.468941, 22.316450> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270549, 0.675837, -0.685600,
		0.614770, 0.426756, 0.663277,
		0.740852, -0.600935, -0.300026,
		38.017357, 28.288660, 22.226442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.087048, 29.148542, 22.287970>,  <37.498760, 28.709314, 22.436460>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.087048, 29.148542, 22.287970> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.214081, 28.817566, 22.102722>,  <38.290302, 28.618980, 21.991573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.214081, 28.817566, 22.102722>,  <38.087048, 29.148542, 22.287970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.214081, 28.817566, 22.102722> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423281, 0.560753, -0.711611,
		0.848511, 0.029969, 0.528328,
		0.317588, -0.827441, -0.463120,
		38.309357, 28.569334, 21.963787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.773094, 29.345406, 21.963955>,  <38.087048, 29.148542, 22.287970>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.773094, 29.345406, 21.963955> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.655468, 29.018192, 21.766230>,  <38.584892, 28.821863, 21.647594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.655468, 29.018192, 21.766230>,  <38.773094, 29.345406, 21.963955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.655468, 29.018192, 21.766230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460244, 0.332079, -0.823346,
		0.837678, -0.469619, 0.278844,
		-0.294061, -0.818035, -0.494315,
		38.567249, 28.772781, 21.617935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.427441, 28.998472, 21.628397>,  <38.773094, 29.345406, 21.963955>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.427441, 28.998472, 21.628397> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.090607, 28.896130, 21.438480>,  <38.888508, 28.834724, 21.324530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.090607, 28.896130, 21.438480>,  <39.427441, 28.998472, 21.628397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.090607, 28.896130, 21.438480> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424498, 0.228626, -0.876089,
		0.332705, -0.939290, -0.083911,
		-0.842086, -0.255859, -0.474792,
		38.837982, 28.819372, 21.296043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.588448, 28.512821, 21.114882>,  <39.427441, 28.998472, 21.628397>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.588448, 28.512821, 21.114882> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.234985, 28.647606, 20.984888>,  <39.022907, 28.728477, 20.906893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.234985, 28.647606, 20.984888>,  <39.588448, 28.512821, 21.114882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.234985, 28.647606, 20.984888> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395215, 0.164871, -0.903672,
		-0.250925, -0.926970, -0.278862,
		-0.883652, 0.336964, -0.324982,
		38.969891, 28.748695, 20.887394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.445591, 28.236601, 20.495970>,  <39.588448, 28.512821, 21.114882>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.445591, 28.236601, 20.495970> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.194008, 28.547283, 20.482500>,  <39.043056, 28.733692, 20.474419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.194008, 28.547283, 20.482500>,  <39.445591, 28.236601, 20.495970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.194008, 28.547283, 20.482500> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184460, 0.107015, -0.976997,
		-0.755236, -0.620705, -0.210579,
		-0.628962, 0.776706, -0.033673,
		39.005318, 28.780294, 20.472399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.112041, 28.152729, 19.865702>,  <39.445591, 28.236601, 20.495970>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.112041, 28.152729, 19.865702> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.035938, 28.531374, 19.969801>,  <38.990276, 28.758560, 20.032261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.035938, 28.531374, 19.969801>,  <39.112041, 28.152729, 19.865702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.035938, 28.531374, 19.969801> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292372, 0.307697, -0.905451,
		-0.937188, -0.096178, -0.335304,
		-0.190256, 0.946611, 0.260250,
		38.978863, 28.815357, 20.047876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.755035, 28.532663, 19.202793>,  <39.112041, 28.152729, 19.865702>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.755035, 28.532663, 19.202793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.959171, 28.741718, 19.475969>,  <39.081654, 28.867151, 19.639875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.959171, 28.741718, 19.475969>,  <38.755035, 28.532663, 19.202793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.959171, 28.741718, 19.475969> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557309, 0.403822, -0.725490,
		-0.654954, 0.750852, -0.085186,
		0.510335, 0.522637, 0.682941,
		39.112270, 28.898510, 19.680851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.789333, 29.184738, 18.931032>,  <38.755035, 28.532663, 19.202793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.789333, 29.184738, 18.931032> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.105022, 29.039728, 19.129303>,  <39.294437, 28.952723, 19.248266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.105022, 29.039728, 19.129303>,  <38.789333, 29.184738, 18.931032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.105022, 29.039728, 19.129303> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579019, 0.170380, -0.797312,
		0.204594, 0.916267, 0.344379,
		0.789226, -0.362527, 0.495678,
		39.341789, 28.930969, 19.278006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.115719, 28.790173, 18.923355>,  <38.789333, 29.184738, 18.931032>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.115719, 28.790173, 18.923355> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.865772, 28.976368, 18.672638>,  <37.715805, 29.088085, 18.522207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.865772, 28.976368, 18.672638>,  <38.115719, 28.790173, 18.923355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.865772, 28.976368, 18.672638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650380, 0.133784, 0.747735,
		0.431915, 0.874885, 0.219146,
		-0.624865, 0.465486, -0.626791,
		37.678314, 29.116014, 18.484600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.860558, 29.341787, 19.357651>,  <38.115719, 28.790173, 18.923355>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.860558, 29.341787, 19.357651> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.602032, 29.274143, 19.060011>,  <37.446918, 29.233557, 18.881428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.602032, 29.274143, 19.060011>,  <37.860558, 29.341787, 19.357651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.602032, 29.274143, 19.060011> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747030, -0.058690, 0.662195,
		-0.155656, 0.983848, -0.088400,
		-0.646311, -0.169112, -0.744099,
		37.408138, 29.223410, 18.836781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.264008, 29.887577, 19.359900>,  <37.860558, 29.341787, 19.357651>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.264008, 29.887577, 19.359900> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.116291, 29.570148, 19.166460>,  <37.027660, 29.379692, 19.050396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.116291, 29.570148, 19.166460>,  <37.264008, 29.887577, 19.359900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.116291, 29.570148, 19.166460> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785009, -0.012132, 0.619366,
		-0.497378, 0.608357, -0.618480,
		-0.369292, -0.793571, -0.483600,
		37.005505, 29.332077, 19.021379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.554184, 30.026087, 19.278648>,  <37.264008, 29.887577, 19.359900>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.554184, 30.026087, 19.278648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.611748, 29.633614, 19.227156>,  <36.646286, 29.398130, 19.196260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.611748, 29.633614, 19.227156>,  <36.554184, 30.026087, 19.278648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.611748, 29.633614, 19.227156> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695100, -0.192816, 0.692573,
		-0.704362, -0.010187, -0.709768,
		0.143910, -0.981182, -0.128731,
		36.654922, 29.339258, 19.188536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.904839, 29.784460, 19.444897>,  <36.554184, 30.026087, 19.278648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.904839, 29.784460, 19.444897> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.118107, 29.446215, 19.455240>,  <36.246067, 29.243267, 19.461447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.118107, 29.446215, 19.455240>,  <35.904839, 29.784460, 19.444897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.118107, 29.446215, 19.455240> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614574, -0.366127, 0.698749,
		-0.581405, -0.388442, -0.714900,
		0.533167, -0.845615, 0.025858,
		36.278057, 29.192530, 19.462997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.453976, 29.157158, 19.412266>,  <35.904839, 29.784460, 19.444897>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.453976, 29.157158, 19.412266> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.792156, 29.032022, 19.585396>,  <35.995064, 28.956942, 19.689274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.792156, 29.032022, 19.585396>,  <35.453976, 29.157158, 19.412266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.792156, 29.032022, 19.585396> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533253, -0.450314, 0.716141,
		-0.029131, -0.836270, -0.547543,
		0.845454, -0.312841, 0.432825,
		36.045792, 28.938169, 19.715244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.244236, 28.536274, 19.710583>,  <35.453976, 29.157158, 19.412266>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.244236, 28.536274, 19.710583> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.591263, 28.608986, 19.895746>,  <35.799480, 28.652613, 20.006844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.591263, 28.608986, 19.895746>,  <35.244236, 28.536274, 19.710583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.591263, 28.608986, 19.895746> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346474, -0.446815, 0.824810,
		0.356769, -0.875963, -0.324660,
		0.867566, 0.181780, 0.462908,
		35.851532, 28.663519, 20.034618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.317089, 27.928709, 20.016727>,  <35.244236, 28.536274, 19.710583>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.317089, 27.928709, 20.016727> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.565269, 28.183939, 20.199112>,  <35.714176, 28.337078, 20.308542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.565269, 28.183939, 20.199112>,  <35.317089, 27.928709, 20.016727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.565269, 28.183939, 20.199112> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274622, -0.367818, 0.888422,
		0.734592, -0.676438, -0.052982,
		0.620450, 0.638077, 0.455960,
		35.751404, 28.375362, 20.335899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.662758, 27.462223, 20.538805>,  <35.317089, 27.928709, 20.016727>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.662758, 27.462223, 20.538805> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.699368, 27.837669, 20.671848>,  <35.721333, 28.062937, 20.751675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.699368, 27.837669, 20.671848>,  <35.662758, 27.462223, 20.538805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.699368, 27.837669, 20.671848> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135479, -0.319167, 0.937965,
		0.986544, -0.130909, 0.097950,
		0.091526, 0.938613, 0.332608,
		35.726826, 28.119253, 20.771631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.038868, 27.503080, 21.093988>,  <35.662758, 27.462223, 20.538805>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.038868, 27.503080, 21.093988> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.881405, 27.867117, 21.145784>,  <35.786926, 28.085539, 21.176863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.881405, 27.867117, 21.145784>,  <36.038868, 27.503080, 21.093988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.881405, 27.867117, 21.145784> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057639, -0.165026, 0.984604,
		0.917447, 0.380137, 0.117421,
		-0.393661, 0.910089, 0.129492,
		35.763306, 28.140144, 21.184631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.421448, 27.730480, 21.718634>,  <36.038868, 27.503080, 21.093988>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.421448, 27.730480, 21.718634> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.068485, 27.917698, 21.699499>,  <35.856709, 28.030027, 21.688019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.068485, 27.917698, 21.699499>,  <36.421448, 27.730480, 21.718634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.068485, 27.917698, 21.699499> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084873, -0.058351, 0.994682,
		0.462763, 0.881777, 0.091214,
		-0.882410, 0.468043, -0.047836,
		35.803761, 28.058111, 21.685148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.426090, 28.153305, 22.255920>,  <36.421448, 27.730480, 21.718634>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.426090, 28.153305, 22.255920> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.039841, 28.115976, 22.158875>,  <35.808090, 28.093578, 22.100647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.039841, 28.115976, 22.158875>,  <36.426090, 28.153305, 22.255920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.039841, 28.115976, 22.158875> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234362, -0.091207, 0.967862,
		-0.112452, 0.991449, 0.066200,
		-0.965624, -0.093324, -0.242615,
		35.750153, 28.087978, 22.086090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.989052, 28.660440, 22.700981>,  <36.426090, 28.153305, 22.255920>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.989052, 28.660440, 22.700981> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.768509, 28.357334, 22.561384>,  <35.636185, 28.175470, 22.477627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.768509, 28.357334, 22.561384>,  <35.989052, 28.660440, 22.700981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.768509, 28.357334, 22.561384> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381280, -0.143203, 0.913301,
		-0.742047, 0.636616, -0.209966,
		-0.551355, -0.757768, -0.348992,
		35.603104, 28.130003, 22.456686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.369484, 28.719942, 23.051638>,  <35.989052, 28.660440, 22.700981>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.369484, 28.719942, 23.051638> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.331524, 28.345385, 22.916489>,  <35.308746, 28.120649, 22.835400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.331524, 28.345385, 22.916489>,  <35.369484, 28.719942, 23.051638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.331524, 28.345385, 22.916489> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451633, -0.261969, 0.852878,
		-0.887143, 0.233533, -0.398046,
		-0.094899, -0.936394, -0.337875,
		35.303055, 28.064466, 22.815126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.720230, 28.536753, 23.138849>,  <35.369484, 28.719942, 23.051638>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.720230, 28.536753, 23.138849> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.934280, 28.199245, 23.122375>,  <35.062710, 27.996740, 23.112492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.934280, 28.199245, 23.122375>,  <34.720230, 28.536753, 23.138849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.934280, 28.199245, 23.122375> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459194, -0.331454, 0.824184,
		-0.709071, -0.422130, -0.564823,
		0.535125, -0.843768, -0.041185,
		35.094818, 27.946115, 23.110020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.239468, 28.035675, 23.181688>,  <34.720230, 28.536753, 23.138849>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.239468, 28.035675, 23.181688> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.582321, 27.850479, 23.271982>,  <34.788033, 27.739363, 23.326159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.582321, 27.850479, 23.271982>,  <34.239468, 28.035675, 23.181688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.582321, 27.850479, 23.271982> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448655, -0.455800, 0.768736,
		-0.253025, -0.760190, -0.598405,
		0.857139, -0.462986, 0.225734,
		34.839462, 27.711582, 23.339703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.035164, 27.374065, 23.393705>,  <34.239468, 28.035675, 23.181688>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.035164, 27.374065, 23.393705> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.396793, 27.417059, 23.559162>,  <34.613770, 27.442856, 23.658436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.396793, 27.417059, 23.559162>,  <34.035164, 27.374065, 23.393705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.396793, 27.417059, 23.559162> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351277, -0.364388, 0.862453,
		0.243426, -0.925023, -0.291677,
		0.904073, 0.107484, 0.413641,
		34.668015, 27.449305, 23.683254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.231731, 26.733295, 23.688896>,  <34.035164, 27.374065, 23.393705>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.231731, 26.733295, 23.688896> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.400730, 27.041424, 23.879934>,  <34.502129, 27.226301, 23.994558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.400730, 27.041424, 23.879934>,  <34.231731, 26.733295, 23.688896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.400730, 27.041424, 23.879934> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466083, -0.267275, 0.843404,
		0.777341, -0.578939, 0.246110,
		0.422501, 0.770321, 0.477597,
		34.527481, 27.272520, 24.023214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.965981, 26.744856, 24.364300>,  <34.231731, 26.733295, 23.688896>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.965981, 26.744856, 24.364300> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.211956, 27.050650, 24.441671>,  <34.359543, 27.234125, 24.488094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.211956, 27.050650, 24.441671>,  <33.965981, 26.744856, 24.364300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.211956, 27.050650, 24.441671> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364290, 0.057851, 0.929487,
		0.699386, -0.642044, 0.314068,
		0.614940, 0.764482, 0.193430,
		34.396439, 27.279995, 24.499701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.398026, 26.604818, 24.977074>,  <33.965981, 26.744856, 24.364300>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.398026, 26.604818, 24.977074> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.358501, 26.999317, 24.924072>,  <34.334789, 27.236015, 24.892271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.358501, 26.999317, 24.924072>,  <34.398026, 26.604818, 24.977074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.358501, 26.999317, 24.924072> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321747, 0.094338, 0.942114,
		0.941656, 0.135721, 0.308001,
		-0.098808, 0.986245, -0.132501,
		34.328857, 27.295191, 24.884321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<36.518448, 26.789667, 30.396463> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.194675, 27.017153, 30.337971>,  <36.000412, 27.153645, 30.302876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.194675, 27.017153, 30.337971>,  <36.518448, 26.789667, 30.396463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.194675, 27.017153, 30.337971> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194996, -0.025427, 0.980475,
		0.553890, 0.822143, 0.131478,
		-0.809434, 0.568712, -0.146231,
		35.951847, 27.187767, 30.294102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.582993, 27.399778, 30.787270>,  <36.518448, 26.789667, 30.396463>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.582993, 27.399778, 30.787270> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.190697, 27.339167, 30.737965>,  <35.955318, 27.302799, 30.708382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.190697, 27.339167, 30.737965>,  <36.582993, 27.399778, 30.787270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.190697, 27.339167, 30.737965> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141721, 0.117729, 0.982881,
		-0.134425, 0.981417, -0.136936,
		-0.980737, -0.151530, -0.123262,
		35.896477, 27.293707, 30.700987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.258224, 28.062937, 31.123217>,  <36.582993, 27.399778, 30.787270>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.258224, 28.062937, 31.123217> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.954403, 27.803072, 31.110464>,  <35.772110, 27.647154, 31.102812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.954403, 27.803072, 31.110464>,  <36.258224, 28.062937, 31.123217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.954403, 27.803072, 31.110464> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290541, 0.295016, 0.910248,
		-0.581946, 0.700648, -0.412834,
		-0.759556, -0.649660, -0.031883,
		35.726536, 27.608173, 31.100899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.673252, 28.473219, 31.152063>,  <36.258224, 28.062937, 31.123217>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.673252, 28.473219, 31.152063> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.632694, 28.106726, 31.307106>,  <35.608360, 27.886829, 31.400131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.632694, 28.106726, 31.307106>,  <35.673252, 28.473219, 31.152063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.632694, 28.106726, 31.307106> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438730, 0.390862, 0.809162,
		-0.892881, -0.088014, -0.441608,
		-0.101390, -0.916232, 0.387607,
		35.602276, 27.831856, 31.423388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.063755, 28.537231, 31.673632>,  <35.673252, 28.473219, 31.152063>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.063755, 28.537231, 31.673632> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.209881, 28.177876, 31.771152>,  <35.297554, 27.962261, 31.829666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.209881, 28.177876, 31.771152>,  <35.063755, 28.537231, 31.673632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.209881, 28.177876, 31.771152> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244907, 0.159923, 0.956266,
		-0.898091, -0.409045, -0.161601,
		0.365312, -0.898391, 0.243803,
		35.319473, 27.908358, 31.844294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.520832, 28.150652, 32.065456>,  <35.063755, 28.537231, 31.673632>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.520832, 28.150652, 32.065456> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.876186, 27.994961, 32.162846>,  <35.089397, 27.901546, 32.221279>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.876186, 27.994961, 32.162846>,  <34.520832, 28.150652, 32.065456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.876186, 27.994961, 32.162846> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280147, -0.039447, 0.959146,
		-0.363720, -0.920297, -0.144085,
		0.888384, -0.389226, 0.243471,
		35.142700, 27.878193, 32.235886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.358974, 27.742577, 32.530922>,  <34.520832, 28.150652, 32.065456>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.358974, 27.742577, 32.530922> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.753712, 27.716536, 32.590130>,  <34.990555, 27.700911, 32.625656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.753712, 27.716536, 32.590130>,  <34.358974, 27.742577, 32.530922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.753712, 27.716536, 32.590130> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150737, -0.038950, 0.987806,
		-0.058547, -0.997118, -0.048252,
		0.986838, -0.065106, 0.148022,
		35.049763, 27.697004, 32.634537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.508450, 27.071468, 32.937233>,  <34.358974, 27.742577, 32.530922>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.508450, 27.071468, 32.937233> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.788147, 27.349436, 33.004349>,  <34.955963, 27.516216, 33.044621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.788147, 27.349436, 33.004349>,  <34.508450, 27.071468, 32.937233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.788147, 27.349436, 33.004349> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132613, -0.104550, 0.985638,
		0.702480, -0.711449, 0.019050,
		0.699240, 0.694917, 0.167792,
		34.997917, 27.557911, 33.054688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.841579, 26.898487, 33.644409>,  <34.508450, 27.071468, 32.937233>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.841579, 26.898487, 33.644409> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.964256, 27.274372, 33.583908>,  <35.037861, 27.499903, 33.547607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.964256, 27.274372, 33.583908>,  <34.841579, 26.898487, 33.644409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.964256, 27.274372, 33.583908> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011471, 0.155250, 0.987809,
		0.951739, -0.304689, 0.036834,
		0.306693, 0.939714, -0.151253,
		35.056263, 27.556286, 33.538532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.384861, 27.069927, 34.116192>,  <34.841579, 26.898487, 33.644409>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.384861, 27.069927, 34.116192> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.197617, 27.409702, 34.018764>,  <35.085270, 27.613567, 33.960308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.197617, 27.409702, 34.018764>,  <35.384861, 27.069927, 34.116192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.197617, 27.409702, 34.018764> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069910, 0.239172, 0.968457,
		0.880898, 0.470377, -0.052576,
		-0.468114, 0.849436, -0.243570,
		35.057182, 27.664534, 33.945694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.640976, 27.580551, 34.602783>,  <35.384861, 27.069927, 34.116192>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.640976, 27.580551, 34.602783> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.318729, 27.772158, 34.463341>,  <35.125381, 27.887121, 34.379677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.318729, 27.772158, 34.463341>,  <35.640976, 27.580551, 34.602783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.318729, 27.772158, 34.463341> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165590, 0.382905, 0.908825,
		0.568823, 0.789891, -0.229155,
		-0.805618, 0.479015, -0.348603,
		35.077045, 27.915863, 34.358761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.693375, 28.215168, 34.817150>,  <35.640976, 27.580551, 34.602783>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.693375, 28.215168, 34.817150> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.304291, 28.183594, 34.729877>,  <35.070839, 28.164650, 34.677513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.304291, 28.183594, 34.729877>,  <35.693375, 28.215168, 34.817150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.304291, 28.183594, 34.729877> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231428, 0.397384, 0.887990,
		0.016609, 0.914251, -0.404808,
		-0.972710, -0.078935, -0.218184,
		35.012478, 28.159914, 34.664421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.254932, 28.929211, 34.940350>,  <35.693375, 28.215168, 34.817150>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.254932, 28.929211, 34.940350> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.020596, 28.608633, 34.988483>,  <34.879993, 28.416286, 35.017365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.020596, 28.608633, 34.988483>,  <35.254932, 28.929211, 34.940350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.020596, 28.608633, 34.988483> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295415, 0.349453, 0.889164,
		-0.754666, 0.485358, -0.441482,
		-0.585840, -0.801442, 0.120338,
		34.844845, 28.368200, 35.024586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.018116, 29.253902, 34.756123>,  <35.254932, 28.929211, 34.940350>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.018116, 29.253902, 34.756123> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.254784, 29.519411, 34.939133>,  <36.396786, 29.678717, 35.048939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.254784, 29.519411, 34.939133>,  <36.018116, 29.253902, 34.756123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.254784, 29.519411, 34.939133> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205560, 0.424550, -0.881761,
		-0.779533, 0.615761, 0.114749,
		0.591671, 0.663774, 0.457526,
		36.432285, 29.718544, 35.076389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.699421, 29.810024, 34.539772>,  <36.018116, 29.253902, 34.756123>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.699421, 29.810024, 34.539772> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.084110, 29.878292, 34.625530>,  <36.314922, 29.919252, 34.676987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.084110, 29.878292, 34.625530>,  <35.699421, 29.810024, 34.539772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.084110, 29.878292, 34.625530> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132009, 0.397063, -0.908248,
		-0.240140, 0.901783, 0.359334,
		0.961721, 0.170671, 0.214394,
		36.372627, 29.929493, 34.689850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.741470, 30.492449, 34.351372>,  <35.699421, 29.810024, 34.539772>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.741470, 30.492449, 34.351372> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.098438, 30.311972, 34.352886>,  <36.312618, 30.203686, 34.353794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.098438, 30.311972, 34.352886>,  <35.741470, 30.492449, 34.351372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.098438, 30.311972, 34.352886> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240198, 0.467946, -0.850489,
		0.381963, 0.759901, 0.525979,
		0.892418, -0.451194, 0.003789,
		36.366165, 30.176613, 34.354023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.261654, 31.043472, 34.176292>,  <35.741470, 30.492449, 34.351372>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.261654, 31.043472, 34.176292> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.441120, 30.691536, 34.113579>,  <36.548801, 30.480375, 34.075951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.441120, 30.691536, 34.113579>,  <36.261654, 31.043472, 34.176292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.441120, 30.691536, 34.113579> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189254, 0.264994, -0.945495,
		0.873431, 0.394540, 0.285407,
		0.448667, -0.879839, -0.156786,
		36.575722, 30.427584, 34.066544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.991917, 31.208405, 33.774700>,  <36.261654, 31.043472, 34.176292>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.991917, 31.208405, 33.774700> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.874668, 30.829969, 33.719566>,  <36.804317, 30.602909, 33.686485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.874668, 30.829969, 33.719566>,  <36.991917, 31.208405, 33.774700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.874668, 30.829969, 33.719566> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277128, 0.053904, -0.959320,
		0.915031, -0.319394, 0.246387,
		-0.293120, -0.946087, -0.137837,
		36.786732, 30.546143, 33.678215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.531036, 30.900585, 33.368984>,  <36.991917, 31.208405, 33.774700>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.531036, 30.900585, 33.368984> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.205265, 30.673840, 33.319397>,  <37.009800, 30.537792, 33.289646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.205265, 30.673840, 33.319397>,  <37.531036, 30.900585, 33.368984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.205265, 30.673840, 33.319397> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013912, 0.194507, -0.980802,
		0.580094, -0.800520, -0.150527,
		-0.814431, -0.566864, -0.123970,
		36.960938, 30.503780, 33.282207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.677528, 30.592955, 32.772076>,  <37.531036, 30.900585, 33.368984>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.677528, 30.592955, 32.772076> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.279919, 30.578194, 32.813168>,  <37.041351, 30.569338, 32.837822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.279919, 30.578194, 32.813168>,  <37.677528, 30.592955, 32.772076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.279919, 30.578194, 32.813168> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109115, 0.310207, -0.944386,
		0.002982, -0.949953, -0.312380,
		-0.994025, -0.036902, 0.102729,
		36.981712, 30.567123, 32.843987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.567005, 30.290220, 32.150974>,  <37.677528, 30.592955, 32.772076>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.567005, 30.290220, 32.150974> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.226036, 30.453619, 32.281509>,  <37.021454, 30.551659, 32.359833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.226036, 30.453619, 32.281509>,  <37.567005, 30.290220, 32.150974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.226036, 30.453619, 32.281509> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243983, 0.241254, -0.939292,
		-0.462431, -0.880298, -0.105984,
		-0.852426, 0.408499, 0.326341,
		36.970306, 30.576168, 32.379410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.132530, 30.051346, 31.696085>,  <37.567005, 30.290220, 32.150974>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.132530, 30.051346, 31.696085> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.924858, 30.362120, 31.838537>,  <36.800255, 30.548584, 31.924007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.924858, 30.362120, 31.838537>,  <37.132530, 30.051346, 31.696085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.924858, 30.362120, 31.838537> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275051, 0.242634, -0.930309,
		-0.809199, -0.580948, 0.087727,
		-0.519176, 0.776935, 0.356130,
		36.769104, 30.595200, 31.945375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.592064, 30.060633, 31.227255>,  <37.132530, 30.051346, 31.696085>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.592064, 30.060633, 31.227255> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.562523, 30.426664, 31.385838>,  <36.544800, 30.646282, 31.480988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.562523, 30.426664, 31.385838>,  <36.592064, 30.060633, 31.227255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.562523, 30.426664, 31.385838> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250636, 0.367753, -0.895511,
		-0.965260, -0.165504, 0.202192,
		-0.073854, 0.915077, 0.396458,
		36.540367, 30.701187, 31.504774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.888622, 30.284979, 31.165703>,  <36.592064, 30.060633, 31.227255>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.888622, 30.284979, 31.165703> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.085079, 30.631239, 31.204548>,  <36.202953, 30.838995, 31.227856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.085079, 30.631239, 31.204548>,  <35.888622, 30.284979, 31.165703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.085079, 30.631239, 31.204548> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430065, 0.337925, -0.837168,
		-0.757510, 0.369405, 0.538255,
		0.491144, 0.865648, 0.097113,
		36.232422, 30.890934, 31.233683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.349342, 30.808563, 31.260557>,  <35.888622, 30.284979, 31.165703>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.349342, 30.808563, 31.260557> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.692760, 30.963430, 31.126095>,  <35.898811, 31.056351, 31.045418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.692760, 30.963430, 31.126095>,  <35.349342, 30.808563, 31.260557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.692760, 30.963430, 31.126095> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460486, 0.293888, -0.837605,
		-0.225502, 0.873917, 0.430602,
		0.858547, 0.387167, -0.336154,
		35.950325, 31.079580, 31.025249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.090843, 31.406517, 30.800432>,  <35.349342, 30.808563, 31.260557>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.090843, 31.406517, 30.800432> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.478333, 31.379702, 30.704870>,  <35.710827, 31.363613, 30.647533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.478333, 31.379702, 30.704870>,  <35.090843, 31.406517, 30.800432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.478333, 31.379702, 30.704870> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191074, 0.412726, -0.890588,
		0.158304, 0.908385, 0.387010,
		0.968726, -0.067036, -0.238905,
		35.768951, 31.359591, 30.633198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.327549, 32.070477, 30.522795>,  <35.090843, 31.406517, 30.800432>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.327549, 32.070477, 30.522795> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.576981, 31.793480, 30.377687>,  <35.726639, 31.627281, 30.290623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.576981, 31.793480, 30.377687>,  <35.327549, 32.070477, 30.522795>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.576981, 31.793480, 30.377687> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104292, 0.386200, -0.916500,
		0.774772, 0.609345, 0.168605,
		0.623580, -0.692494, -0.362767,
		35.764053, 31.585732, 30.268858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.806171, 32.450119, 30.107899>,  <35.327549, 32.070477, 30.522795>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.806171, 32.450119, 30.107899> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.823975, 32.070820, 29.982134>,  <35.834656, 31.843241, 29.906675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.823975, 32.070820, 29.982134>,  <35.806171, 32.450119, 30.107899>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.823975, 32.070820, 29.982134> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060498, 0.311587, -0.948290,
		0.997176, 0.061224, -0.043500,
		0.044504, -0.948243, -0.314411,
		35.837326, 31.786346, 29.887810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.259014, 33.176579, 30.100063>,  <35.806171, 32.450119, 30.107899>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.259014, 33.176579, 30.100063> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.942406, 33.421036, 30.099012>,  <35.752441, 33.567711, 30.098383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.942406, 33.421036, 30.099012>,  <36.259014, 33.176579, 30.100063>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.942406, 33.421036, 30.099012> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288062, -0.369287, 0.883542,
		0.538997, 0.700098, 0.468344,
		-0.791519, 0.611138, -0.002627,
		35.704948, 33.604378, 30.098225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.181164, 33.369614, 30.795229>,  <36.259014, 33.176579, 30.100063>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.181164, 33.369614, 30.795229> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.836800, 33.477036, 30.622389>,  <35.630180, 33.541489, 30.518684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.836800, 33.477036, 30.622389>,  <36.181164, 33.369614, 30.795229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.836800, 33.477036, 30.622389> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466941, -0.079896, 0.880672,
		0.201987, 0.959945, 0.194183,
		-0.860911, 0.268556, -0.432100,
		35.578526, 33.557602, 30.492760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.948269, 33.759804, 31.356955>,  <36.181164, 33.369614, 30.795229>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.948269, 33.759804, 31.356955> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.631100, 33.662094, 31.133667>,  <35.440800, 33.603466, 30.999695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.631100, 33.662094, 31.133667>,  <35.948269, 33.759804, 31.356955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.631100, 33.662094, 31.133667> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571568, -0.019308, 0.820327,
		-0.211165, 0.969514, -0.124311,
		-0.792918, -0.244276, -0.558220,
		35.393223, 33.588810, 30.966202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.433254, 34.148075, 31.656410>,  <35.948269, 33.759804, 31.356955>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.433254, 34.148075, 31.656410> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.245827, 33.875038, 31.432085>,  <35.133369, 33.711216, 31.297489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.245827, 33.875038, 31.432085>,  <35.433254, 34.148075, 31.656410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.245827, 33.875038, 31.432085> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560037, -0.261441, 0.786134,
		-0.683228, 0.682435, -0.259773,
		-0.468570, -0.682592, -0.560813,
		35.105255, 33.670261, 31.263842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.748653, 34.303429, 31.699064>,  <35.433254, 34.148075, 31.656410>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.748653, 34.303429, 31.699064> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.740147, 33.918980, 31.588943>,  <34.735043, 33.688309, 31.522871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.740147, 33.918980, 31.588943>,  <34.748653, 34.303429, 31.699064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.740147, 33.918980, 31.588943> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567842, -0.215023, 0.794557,
		-0.822863, 0.173227, -0.541192,
		-0.021270, -0.961123, -0.275300,
		34.733765, 33.630642, 31.506353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.075691, 34.043850, 31.735106>,  <34.748653, 34.303429, 31.699064>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.075691, 34.043850, 31.735106> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.314987, 33.724068, 31.756945>,  <34.458565, 33.532200, 31.770048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.314987, 33.724068, 31.756945>,  <34.075691, 34.043850, 31.735106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.314987, 33.724068, 31.756945> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459954, -0.286799, 0.840351,
		-0.656161, -0.527848, -0.539286,
		0.598244, -0.799452, 0.054599,
		34.494461, 33.484234, 31.773325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.683952, 33.600266, 31.976706>,  <34.075691, 34.043850, 31.735106>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.683952, 33.600266, 31.976706> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.034725, 33.428146, 32.062351>,  <34.245190, 33.324875, 32.113739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.034725, 33.428146, 32.062351>,  <33.683952, 33.600266, 31.976706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.034725, 33.428146, 32.062351> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366615, -0.310793, 0.876927,
		-0.310793, -0.847499, -0.430295,
		-0.876927, 0.430295, -0.214113,
		34.297802, 33.299057, 32.126587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.465839, 32.945457, 32.227325>,  <33.683952, 33.600266, 31.976706>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.465839, 32.945457, 32.227325> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.842129, 33.014427, 32.344158>,  <34.067902, 33.055809, 32.414257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.842129, 33.014427, 32.344158>,  <33.465839, 32.945457, 32.227325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.842129, 33.014427, 32.344158> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243442, -0.256368, 0.935420,
		0.236166, -0.951076, -0.199196,
		0.940724, 0.172422, 0.292078,
		34.124348, 33.066154, 32.431782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.708508, 32.304493, 32.541508>,  <33.465839, 32.945457, 32.227325>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.708508, 32.304493, 32.541508> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.951721, 32.590832, 32.678829>,  <34.097649, 32.762634, 32.761223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.951721, 32.590832, 32.678829>,  <33.708508, 32.304493, 32.541508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.951721, 32.590832, 32.678829> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106671, -0.354831, 0.928825,
		0.786711, -0.601379, -0.139390,
		0.608036, 0.715847, 0.343299,
		34.134132, 32.805588, 32.781818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.209766, 32.058716, 33.001217>,  <33.708508, 32.304493, 32.541508>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.209766, 32.058716, 33.001217> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.226238, 32.445709, 33.101044>,  <34.236122, 32.677906, 33.160938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.226238, 32.445709, 33.101044>,  <34.209766, 32.058716, 33.001217>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.226238, 32.445709, 33.101044> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250451, -0.231805, 0.939968,
		0.967253, -0.101211, 0.232761,
		0.041180, 0.967483, 0.249563,
		34.238594, 32.735954, 33.175911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.363953, 31.992126, 33.637028>,  <34.209766, 32.058716, 33.001217>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.363953, 31.992126, 33.637028> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.261673, 32.378811, 33.640858>,  <34.200306, 32.610821, 33.643158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.261673, 32.378811, 33.640858>,  <34.363953, 31.992126, 33.637028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.261673, 32.378811, 33.640858> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311190, -0.091681, 0.945915,
		0.915303, 0.238887, 0.324273,
		-0.255696, 0.966710, 0.009576,
		34.184963, 32.668823, 33.643730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.712914, 32.303001, 34.199341>,  <34.363953, 31.992126, 33.637028>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.712914, 32.303001, 34.199341> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.417618, 32.550735, 34.092430>,  <34.240440, 32.699375, 34.028286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.417618, 32.550735, 34.092430>,  <34.712914, 32.303001, 34.199341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.417618, 32.550735, 34.092430> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429405, -0.125911, 0.894292,
		0.520213, 0.774966, 0.358897,
		-0.738235, 0.619334, -0.267273,
		34.196148, 32.736534, 34.012249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.089909, 34.583050, 27.291212> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.739185, 34.568127, 27.099453>,  <37.528751, 34.559174, 26.984398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.739185, 34.568127, 27.099453>,  <38.089909, 34.583050, 27.291212>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.739185, 34.568127, 27.099453> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480459, 0.027955, 0.876571,
		-0.019298, 0.998913, -0.042434,
		-0.876805, -0.037304, -0.479397,
		37.476143, 34.556934, 26.955633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.633312, 35.157505, 27.516811>,  <38.089909, 34.583050, 27.291212>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.633312, 35.157505, 27.516811> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.373619, 34.884380, 27.382786>,  <37.217804, 34.720505, 27.302370>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.373619, 34.884380, 27.382786>,  <37.633312, 35.157505, 27.516811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.373619, 34.884380, 27.382786> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517051, 0.073128, 0.852825,
		-0.557816, 0.726926, -0.400524,
		-0.649230, -0.682811, -0.335066,
		37.178848, 34.679539, 27.282267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.902058, 35.410191, 27.654726>,  <37.633312, 35.157505, 27.516811>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.902058, 35.410191, 27.654726> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.868198, 35.014481, 27.607101>,  <36.847885, 34.777054, 27.578527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.868198, 35.014481, 27.607101>,  <36.902058, 35.410191, 27.654726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.868198, 35.014481, 27.607101> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606051, -0.043729, 0.794223,
		-0.790909, 0.139384, -0.595848,
		-0.084646, -0.989272, -0.119059,
		36.842804, 34.717697, 27.571384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.309807, 35.283604, 27.996614>,  <36.902058, 35.410191, 27.654726>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.309807, 35.283604, 27.996614> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.416908, 34.901443, 27.946775>,  <36.481167, 34.672150, 27.916872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.416908, 34.901443, 27.946775>,  <36.309807, 35.283604, 27.996614>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.416908, 34.901443, 27.946775> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588214, -0.264512, 0.764223,
		-0.763095, -0.131329, -0.632802,
		0.267749, -0.955399, -0.124598,
		36.497234, 34.614822, 27.909395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.708920, 34.875538, 27.907404>,  <36.309807, 35.283604, 27.996614>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.708920, 34.875538, 27.907404> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.986927, 34.633774, 28.063166>,  <36.153732, 34.488716, 28.156624>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.986927, 34.633774, 28.063166>,  <35.708920, 34.875538, 27.907404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.986927, 34.633774, 28.063166> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637862, -0.268400, 0.721868,
		-0.331795, -0.750093, -0.572077,
		0.695014, -0.604418, 0.389402,
		36.195431, 34.452450, 28.179987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.313465, 34.325054, 28.026812>,  <35.708920, 34.875538, 27.907404>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.313465, 34.325054, 28.026812> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.647312, 34.254848, 28.235657>,  <35.847622, 34.212723, 28.360964>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.647312, 34.254848, 28.235657>,  <35.313465, 34.325054, 28.026812>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.647312, 34.254848, 28.235657> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550810, -0.272765, 0.788801,
		0.003966, -0.945935, -0.324332,
		0.834621, -0.175517, 0.522112,
		35.897697, 34.202194, 28.392290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.115452, 33.679646, 28.471668>,  <35.313465, 34.325054, 28.026812>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.115452, 33.679646, 28.471668> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.432178, 33.846497, 28.650118>,  <35.622215, 33.946609, 28.757187>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.432178, 33.846497, 28.650118>,  <35.115452, 33.679646, 28.471668>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.432178, 33.846497, 28.650118> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408862, -0.180598, 0.894548,
		0.453713, -0.890722, 0.027548,
		0.791819, 0.417131, 0.446122,
		35.669724, 33.971638, 28.783955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.256828, 33.188354, 29.026798>,  <35.115452, 33.679646, 28.471668>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.256828, 33.188354, 29.026798> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.476154, 33.496796, 29.156265>,  <35.607750, 33.681858, 29.233946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.476154, 33.496796, 29.156265>,  <35.256828, 33.188354, 29.026798>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.476154, 33.496796, 29.156265> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356855, -0.134288, 0.924457,
		0.756313, -0.622392, 0.201539,
		0.548310, 0.771100, 0.323668,
		35.640648, 33.728127, 29.253366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.712833, 32.952854, 29.530870>,  <35.256828, 33.188354, 29.026798>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.712833, 32.952854, 29.530870> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.656036, 33.342590, 29.600723>,  <35.621956, 33.576431, 29.642635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.656036, 33.342590, 29.600723>,  <35.712833, 32.952854, 29.530870>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.656036, 33.342590, 29.600723> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298622, -0.210367, 0.930898,
		0.943749, 0.080035, 0.320831,
		-0.141996, 0.974341, 0.174633,
		35.613438, 33.634892, 29.653112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.227997, 32.425568, 29.356491>,  <35.712833, 32.952854, 29.530870>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.227997, 32.425568, 29.356491> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.060318, 32.063847, 29.388794>,  <35.959713, 31.846815, 29.408175>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.060318, 32.063847, 29.388794>,  <36.227997, 32.425568, 29.356491>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.060318, 32.063847, 29.388794> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078730, -0.052405, -0.995518,
		0.904477, -0.423672, -0.049228,
		-0.419193, -0.904299, 0.080755,
		35.934559, 31.792557, 29.413021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.599644, 32.101486, 28.794991>,  <36.227997, 32.425568, 29.356491>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.599644, 32.101486, 28.794991> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.258072, 31.926563, 28.907824>,  <36.053131, 31.821609, 28.975523>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.258072, 31.926563, 28.907824>,  <36.599644, 32.101486, 28.794991>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.258072, 31.926563, 28.907824> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269654, -0.091776, -0.958574,
		0.445082, -0.894616, -0.039553,
		-0.853925, -0.437310, 0.282085,
		36.001896, 31.795370, 28.992449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.547440, 31.448191, 28.400074>,  <36.599644, 32.101486, 28.794991>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.547440, 31.448191, 28.400074> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.170303, 31.523775, 28.509867>,  <35.944019, 31.569126, 28.575743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.170303, 31.523775, 28.509867>,  <36.547440, 31.448191, 28.400074>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.170303, 31.523775, 28.509867> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295382, -0.092612, -0.950880,
		-0.154262, -0.977607, 0.143135,
		-0.942843, 0.188965, 0.274481,
		35.887451, 31.580463, 28.592211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.218761, 30.989025, 28.009537>,  <36.547440, 31.448191, 28.400074>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.218761, 30.989025, 28.009537> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.940056, 31.258774, 28.107304>,  <35.772831, 31.420624, 28.165964>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.940056, 31.258774, 28.107304>,  <36.218761, 30.989025, 28.009537>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.940056, 31.258774, 28.107304> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304593, 0.030336, -0.951999,
		-0.649418, -0.737767, 0.184272,
		-0.696764, 0.674374, 0.244419,
		35.731026, 31.461086, 28.180630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.712605, 30.755829, 27.813185>,  <36.218761, 30.989025, 28.009537>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.712605, 30.755829, 27.813185> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.592709, 31.134937, 27.856796>,  <35.520771, 31.362402, 27.882963>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.592709, 31.134937, 27.856796>,  <35.712605, 30.755829, 27.813185>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.592709, 31.134937, 27.856796> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274912, 0.023629, -0.961179,
		-0.913554, -0.318075, 0.253472,
		-0.299737, 0.947771, 0.109029,
		35.502789, 31.419270, 27.889505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.067749, 30.809732, 27.625822>,  <35.712605, 30.755829, 27.813185>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.067749, 30.809732, 27.625822> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.192768, 31.186758, 27.578680>,  <35.267780, 31.412973, 27.550394>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.192768, 31.186758, 27.578680>,  <35.067749, 30.809732, 27.625822>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.192768, 31.186758, 27.578680> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229459, -0.045481, -0.972255,
		-0.921772, 0.330917, 0.202065,
		0.312546, 0.942563, -0.117855,
		35.286533, 31.469526, 27.543324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.582741, 31.119608, 27.115873>,  <35.067749, 30.809732, 27.625822>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.582741, 31.119608, 27.115873> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.934494, 31.310049, 27.115017>,  <35.145546, 31.424314, 27.114504>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.934494, 31.310049, 27.115017>,  <34.582741, 31.119608, 27.115873>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.934494, 31.310049, 27.115017> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096616, -0.182853, -0.978381,
		-0.466201, 0.860169, -0.206798,
		0.879387, 0.476103, -0.002140,
		35.198311, 31.452879, 27.114374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.528126, 31.462244, 26.504662>,  <34.582741, 31.119608, 27.115873>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.528126, 31.462244, 26.504662> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.914143, 31.525064, 26.588602>,  <35.145752, 31.562757, 26.638966>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.914143, 31.525064, 26.588602>,  <34.528126, 31.462244, 26.504662>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.914143, 31.525064, 26.588602> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230238, -0.125274, -0.965037,
		-0.125274, 0.979613, -0.157053,
		0.965037, 0.157053, 0.209850,
		35.203655, 31.572180, 26.651558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.701389, 31.957481, 26.042994>,  <34.528126, 31.462244, 26.504662>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.701389, 31.957481, 26.042994> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.034000, 31.771564, 26.164667>,  <35.233566, 31.660015, 26.237671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.034000, 31.771564, 26.164667>,  <34.701389, 31.957481, 26.042994>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.034000, 31.771564, 26.164667> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344316, 0.001555, -0.938852,
		0.435898, 0.885418, 0.161329,
		0.831528, -0.464793, 0.304186,
		35.283459, 31.632126, 26.255922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.197803, 32.309639, 25.678898>,  <34.701389, 31.957481, 26.042994>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.197803, 32.309639, 25.678898> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.369492, 31.963409, 25.782085>,  <35.472504, 31.755671, 25.843998>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.369492, 31.963409, 25.782085>,  <35.197803, 32.309639, 25.678898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.369492, 31.963409, 25.782085> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405958, -0.070254, -0.911188,
		0.806826, 0.495825, 0.321233,
		0.429221, -0.865576, 0.257967,
		35.498257, 31.703737, 25.859476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.041203, 32.347939, 25.630846>,  <35.197803, 32.309639, 25.678898>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.041203, 32.347939, 25.630846> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.933102, 31.963017, 25.618597>,  <35.868240, 31.732063, 25.611248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.933102, 31.963017, 25.618597>,  <36.041203, 32.347939, 25.630846>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.933102, 31.963017, 25.618597> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664210, -0.163323, -0.729487,
		0.696986, -0.217483, 0.683309,
		-0.270251, -0.962303, -0.030621,
		35.852028, 31.674326, 25.609411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.701145, 31.934776, 25.588104>,  <36.041203, 32.347939, 25.630846>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.701145, 31.934776, 25.588104> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.401634, 31.704287, 25.457079>,  <36.221928, 31.565992, 25.378464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.401634, 31.704287, 25.457079>,  <36.701145, 31.934776, 25.588104>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.401634, 31.704287, 25.457079> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629675, -0.464074, -0.623013,
		0.206980, -0.672757, 0.710322,
		-0.748778, -0.576223, -0.327564,
		36.177002, 31.531420, 25.358810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.077480, 31.363209, 25.436066>,  <36.701145, 31.934776, 25.588104>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.077480, 31.363209, 25.436066> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.731331, 31.327131, 25.238890>,  <36.523640, 31.305485, 25.120584>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.731331, 31.327131, 25.238890>,  <37.077480, 31.363209, 25.436066>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.731331, 31.327131, 25.238890> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481033, -0.425233, -0.766670,
		-0.140466, -0.900578, 0.411373,
		-0.865376, -0.090193, -0.492939,
		36.471718, 31.300074, 25.091007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.052414, 30.680573, 25.255558>,  <37.077480, 31.363209, 25.436066>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.052414, 30.680573, 25.255558> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.800861, 30.869354, 25.008408>,  <36.649929, 30.982622, 24.860117>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.800861, 30.869354, 25.008408>,  <37.052414, 30.680573, 25.255558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.800861, 30.869354, 25.008408> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465937, -0.407419, -0.785438,
		-0.622422, -0.781838, 0.036319,
		-0.628883, 0.471952, -0.617874,
		36.612198, 31.010941, 24.823046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<32.406487, 30.287378, 22.904575> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.770126, 30.313004, 23.069225>,  <32.988312, 30.328379, 23.168016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.770126, 30.313004, 23.069225>,  <32.406487, 30.287378, 22.904575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.770126, 30.313004, 23.069225> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356559, -0.391302, 0.848380,
		0.215422, -0.918030, -0.332889,
		0.909098, 0.064065, 0.411627,
		33.042854, 30.332224, 23.192713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.480095, 29.665787, 23.317869>,  <32.406487, 30.287378, 22.904575>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.480095, 29.665787, 23.317869> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.784920, 29.865534, 23.482744>,  <32.967815, 29.985382, 23.581669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.784920, 29.865534, 23.482744>,  <32.480095, 29.665787, 23.317869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.784920, 29.865534, 23.482744> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326147, -0.253897, 0.910585,
		0.559371, -0.828352, -0.030617,
		0.762058, 0.499369, 0.412187,
		33.013538, 30.015345, 23.606400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.624897, 29.183138, 23.898090>,  <32.480095, 29.665787, 23.317869>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.624897, 29.183138, 23.898090> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.758102, 29.554518, 23.963919>,  <32.838024, 29.777346, 24.003416>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.758102, 29.554518, 23.963919>,  <32.624897, 29.183138, 23.898090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.758102, 29.554518, 23.963919> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218824, -0.093670, 0.971258,
		0.917180, -0.359453, 0.171973,
		0.333013, 0.928450, 0.164569,
		32.858006, 29.833054, 24.013288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.139088, 29.096025, 24.469357>,  <32.624897, 29.183138, 23.898090>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.139088, 29.096025, 24.469357> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.011494, 29.472750, 24.426949>,  <32.934937, 29.698784, 24.401505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.011494, 29.472750, 24.426949>,  <33.139088, 29.096025, 24.469357>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.011494, 29.472750, 24.426949> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000019, 0.111870, 0.993723,
		0.947760, 0.316980, -0.035702,
		-0.318984, 0.941811, -0.106020,
		32.915798, 29.755293, 24.395142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.530407, 29.533497, 24.991501>,  <33.139088, 29.096025, 24.469357>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.530407, 29.533497, 24.991501> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.197010, 29.730143, 24.890623>,  <32.996971, 29.848129, 24.830095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.197010, 29.730143, 24.890623>,  <33.530407, 29.533497, 24.991501>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.197010, 29.730143, 24.890623> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298756, -0.017027, 0.954178,
		0.464793, 0.870647, 0.161065,
		-0.833494, 0.491614, -0.252196,
		32.946960, 29.877626, 24.814964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.497917, 30.200087, 25.442581>,  <33.530407, 29.533497, 24.991501>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.497917, 30.200087, 25.442581> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.124058, 30.116676, 25.327383>,  <32.899742, 30.066629, 25.258265>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.124058, 30.116676, 25.327383>,  <33.497917, 30.200087, 25.442581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.124058, 30.116676, 25.327383> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303143, 0.044041, 0.951927,
		-0.185818, 0.977025, -0.104376,
		-0.934653, -0.208526, -0.287994,
		32.843662, 30.054119, 25.240984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.137783, 30.677912, 25.743029>,  <33.497917, 30.200087, 25.442581>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.137783, 30.677912, 25.743029> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.863327, 30.399147, 25.659582>,  <32.698654, 30.231888, 25.609514>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.863327, 30.399147, 25.659582>,  <33.137783, 30.677912, 25.743029>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.863327, 30.399147, 25.659582> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315123, 0.026272, 0.948687,
		-0.655671, 0.716676, -0.237639,
		-0.686144, -0.696912, -0.208615,
		32.657482, 30.190073, 25.596998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.461662, 30.921928, 26.011589>,  <33.137783, 30.677912, 25.743029>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.461662, 30.921928, 26.011589> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.428555, 30.524694, 25.978285>,  <32.408688, 30.286354, 25.958303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.428555, 30.524694, 25.978285>,  <32.461662, 30.921928, 26.011589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.428555, 30.524694, 25.978285> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403542, -0.042990, 0.913951,
		-0.911209, 0.109248, -0.397193,
		-0.082772, -0.993085, -0.083259,
		32.403725, 30.226768, 25.953308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.798937, 30.771162, 26.291849>,  <32.461662, 30.921928, 26.011589>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.798937, 30.771162, 26.291849> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.983578, 30.416399, 26.284693>,  <32.094364, 30.203541, 26.280399>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.983578, 30.416399, 26.284693>,  <31.798937, 30.771162, 26.291849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.983578, 30.416399, 26.284693> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266620, -0.157948, 0.950771,
		-0.846070, -0.434109, -0.309377,
		0.461604, -0.886906, -0.017893,
		32.122059, 30.150328, 26.279325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.393408, 30.340782, 26.619267>,  <31.798937, 30.771162, 26.291849>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.393408, 30.340782, 26.619267> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.740576, 30.143261, 26.640703>,  <31.948877, 30.024748, 26.653564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.740576, 30.143261, 26.640703>,  <31.393408, 30.340782, 26.619267>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.740576, 30.143261, 26.640703> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079037, -0.030782, 0.996396,
		-0.490376, -0.869028, -0.065745,
		0.867920, -0.493805, 0.053591,
		32.000954, 29.995119, 26.656780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.250488, 29.579802, 26.954479>,  <31.393408, 30.340782, 26.619267>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.250488, 29.579802, 26.954479> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.630781, 29.692841, 27.005461>,  <31.858957, 29.760664, 27.036051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.630781, 29.692841, 27.005461>,  <31.250488, 29.579802, 26.954479>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.630781, 29.692841, 27.005461> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071739, -0.199421, 0.977284,
		0.301598, -0.938280, -0.169323,
		0.950732, 0.282600, 0.127456,
		31.916000, 29.777620, 27.043697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.520813, 29.022757, 27.400570>,  <31.250488, 29.579802, 26.954479>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.520813, 29.022757, 27.400570> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.758995, 29.341051, 27.444820>,  <31.901905, 29.532028, 27.471371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.758995, 29.341051, 27.444820>,  <31.520813, 29.022757, 27.400570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.758995, 29.341051, 27.444820> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018468, -0.124108, 0.992097,
		0.803176, -0.592793, -0.059205,
		0.595456, 0.795735, 0.110628,
		31.937632, 29.579771, 27.478008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.026031, 28.727129, 27.867170>,  <31.520813, 29.022757, 27.400570>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.026031, 28.727129, 27.867170> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.088531, 29.122156, 27.860304>,  <32.126034, 29.359173, 27.856184>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.088531, 29.122156, 27.860304>,  <32.026031, 28.727129, 27.867170>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.088531, 29.122156, 27.860304> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168797, 0.043824, 0.984676,
		0.973187, -0.150961, 0.173546,
		0.156253, 0.987568, -0.017167,
		32.135406, 29.418427, 27.855154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.591854, 28.916819, 28.308882>,  <32.026031, 28.727129, 27.867170>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.591854, 28.916819, 28.308882> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.375130, 29.252245, 28.286102>,  <32.245094, 29.453501, 28.272434>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.375130, 29.252245, 28.286102>,  <32.591854, 28.916819, 28.308882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.375130, 29.252245, 28.286102> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074755, 0.019410, 0.997013,
		0.837168, 0.544452, 0.052170,
		-0.541813, 0.838567, -0.056949,
		32.212585, 29.503815, 28.269018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.288235, 28.697317, 28.663145>,  <32.591854, 28.916819, 28.308882>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.288235, 28.697317, 28.663145> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.219673, 28.306915, 28.716862>,  <33.178535, 28.072674, 28.749092>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.219673, 28.306915, 28.716862>,  <33.288235, 28.697317, 28.663145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.219673, 28.306915, 28.716862> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309435, -0.182745, -0.933196,
		0.935345, -0.118397, 0.333333,
		-0.171403, -0.976005, 0.134294,
		33.168251, 28.014114, 28.757151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.901333, 28.300064, 28.571505>,  <33.288235, 28.697317, 28.663145>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.901333, 28.300064, 28.571505> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.600876, 28.049086, 28.489439>,  <33.420601, 27.898499, 28.440199>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.600876, 28.049086, 28.489439>,  <33.901333, 28.300064, 28.571505>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.600876, 28.049086, 28.489439> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419052, -0.213067, -0.882609,
		0.510074, -0.748943, 0.422976,
		-0.751146, -0.627445, -0.205166,
		33.375530, 27.860851, 28.427889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.203949, 27.831100, 28.247849>,  <33.901333, 28.300064, 28.571505>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.203949, 27.831100, 28.247849> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.828697, 27.727310, 28.156116>,  <33.603546, 27.665035, 28.101078>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.828697, 27.727310, 28.156116>,  <34.203949, 27.831100, 28.247849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.828697, 27.727310, 28.156116> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300696, -0.281914, -0.911102,
		0.171760, -0.923686, 0.342495,
		-0.938126, -0.259478, -0.229328,
		33.547260, 27.649467, 28.087318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.300560, 27.280741, 27.838125>,  <34.203949, 27.831100, 28.247849>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.300560, 27.280741, 27.838125> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.928192, 27.389381, 27.740461>,  <33.704769, 27.454565, 27.681862>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.928192, 27.389381, 27.740461>,  <34.300560, 27.280741, 27.838125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.928192, 27.389381, 27.740461> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125434, -0.390102, -0.912188,
		-0.342995, -0.879804, 0.329088,
		-0.930925, 0.271597, -0.244160,
		33.648914, 27.470861, 27.667213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.852997, 26.694807, 27.503042>,  <34.300560, 27.280741, 27.838125>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.852997, 26.694807, 27.503042> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.707176, 27.044218, 27.374010>,  <33.619686, 27.253864, 27.296591>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.707176, 27.044218, 27.374010>,  <33.852997, 26.694807, 27.503042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.707176, 27.044218, 27.374010> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189192, -0.269713, -0.944172,
		-0.911763, -0.405225, -0.066941,
		-0.364547, 0.873526, -0.322579,
		33.597813, 27.306276, 27.277237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.476376, 26.485981, 26.900009>,  <33.852997, 26.694807, 27.503042>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.476376, 26.485981, 26.900009> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.535412, 26.879818, 26.862501>,  <33.570835, 27.116119, 26.839996>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.535412, 26.879818, 26.862501>,  <33.476376, 26.485981, 26.900009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.535412, 26.879818, 26.862501> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260424, -0.130152, -0.956682,
		-0.954147, 0.116778, -0.275621,
		0.147592, 0.984593, -0.093772,
		33.579689, 27.175196, 26.834370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.264484, 26.735313, 26.206833>,  <33.476376, 26.485981, 26.900009>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.264484, 26.735313, 26.206833> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.464939, 27.068653, 26.300123>,  <33.585213, 27.268658, 26.356096>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.464939, 27.068653, 26.300123>,  <33.264484, 26.735313, 26.206833>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.464939, 27.068653, 26.300123> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261565, 0.111036, -0.958778,
		-0.824893, 0.541479, -0.162331,
		0.501133, 0.833350, 0.233224,
		33.615280, 27.318659, 26.370090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.082428, 27.148710, 25.704454>,  <33.264484, 26.735313, 26.206833>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.082428, 27.148710, 25.704454> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.409767, 27.336203, 25.837482>,  <33.606171, 27.448698, 25.917299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.409767, 27.336203, 25.837482>,  <33.082428, 27.148710, 25.704454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.409767, 27.336203, 25.837482> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258135, 0.217242, -0.941367,
		-0.513494, 0.856212, 0.056784,
		0.818346, 0.468729, 0.332571,
		33.655270, 27.476822, 25.937254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.177509, 27.769686, 25.275093>,  <33.082428, 27.148710, 25.704454>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.177509, 27.769686, 25.275093> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.531105, 27.653999, 25.422018>,  <33.743263, 27.584587, 25.510172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.531105, 27.653999, 25.422018>,  <33.177509, 27.769686, 25.275093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.531105, 27.653999, 25.422018> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438104, 0.238232, -0.866782,
		0.163183, 0.927146, 0.337301,
		0.883989, -0.289217, 0.367311,
		33.796303, 27.567234, 25.532211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.569824, 28.370932, 25.157534>,  <33.177509, 27.769686, 25.275093>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.569824, 28.370932, 25.157534> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.819668, 28.060215, 25.189665>,  <33.969574, 27.873785, 25.208942>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.819668, 28.060215, 25.189665>,  <33.569824, 28.370932, 25.157534>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.819668, 28.060215, 25.189665> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214201, 0.071500, -0.974169,
		0.750984, 0.625685, 0.211049,
		0.624613, -0.776792, 0.080327,
		34.007053, 27.827177, 25.213762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.179276, 28.597429, 24.872322>,  <33.569824, 28.370932, 25.157534>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.179276, 28.597429, 24.872322> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.198261, 28.197908, 24.867640>,  <34.209652, 27.958195, 24.864830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.198261, 28.197908, 24.867640>,  <34.179276, 28.597429, 24.872322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.198261, 28.197908, 24.867640> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417882, 0.030498, -0.907989,
		0.907261, 0.038203, 0.418830,
		0.047461, -0.998805, -0.011705,
		34.212502, 27.898268, 24.864128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.850616, 28.508026, 24.609917>,  <34.179276, 28.597429, 24.872322>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.850616, 28.508026, 24.609917> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.698059, 28.139889, 24.575266>,  <34.606525, 27.919006, 24.554476>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.698059, 28.139889, 24.575266>,  <34.850616, 28.508026, 24.609917>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.698059, 28.139889, 24.575266> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598918, -0.174630, -0.781538,
		0.704156, -0.349957, 0.617814,
		-0.381394, -0.920345, -0.086629,
		34.583641, 27.863785, 24.549276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.372463, 28.081247, 24.620983>,  <34.850616, 28.508026, 24.609917>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.372463, 28.081247, 24.620983> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.109379, 27.843233, 24.436224>,  <34.951527, 27.700424, 24.325369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.109379, 27.843233, 24.436224>,  <35.372463, 28.081247, 24.620983>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.109379, 27.843233, 24.436224> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671768, -0.185912, -0.717052,
		0.340801, -0.781900, 0.522003,
		-0.657710, -0.595037, -0.461897,
		34.912067, 27.664722, 24.297655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.718616, 27.433224, 24.449577>,  <35.372463, 28.081247, 24.620983>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.718616, 27.433224, 24.449577> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.410210, 27.497597, 24.203119>,  <35.225166, 27.536221, 24.055244>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.410210, 27.497597, 24.203119>,  <35.718616, 27.433224, 24.449577>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.410210, 27.497597, 24.203119> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570922, -0.253932, -0.780747,
		-0.282109, -0.953739, 0.103904,
		-0.771014, 0.160934, -0.616147,
		35.178905, 27.545876, 24.018274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.186794, 26.954350, 24.731321>,  <35.718616, 27.433224, 24.449577>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.186794, 26.954350, 24.731321> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.541550, 27.127726, 24.795275>,  <36.754402, 27.231750, 24.833647>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.541550, 27.127726, 24.795275>,  <36.186794, 26.954350, 24.731321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.541550, 27.127726, 24.795275> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067493, -0.220806, 0.972980,
		0.457030, -0.873714, -0.166576,
		0.886887, 0.433438, 0.159885,
		36.807617, 27.257757, 24.843241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.551926, 26.557024, 25.133579>,  <36.186794, 26.954350, 24.731321>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.551926, 26.557024, 25.133579> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.712341, 26.918724, 25.192225>,  <36.808590, 27.135744, 25.227411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.712341, 26.918724, 25.192225>,  <36.551926, 26.557024, 25.133579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.712341, 26.918724, 25.192225> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029527, -0.147205, 0.988665,
		0.915583, -0.400827, -0.032336,
		0.401043, 0.904250, 0.146614,
		36.832653, 27.189999, 25.236208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.001732, 26.394733, 25.591656>,  <36.551926, 26.557024, 25.133579>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.001732, 26.394733, 25.591656> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.924080, 26.786083, 25.620211>,  <36.877487, 27.020893, 25.637342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.924080, 26.786083, 25.620211>,  <37.001732, 26.394733, 25.591656>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.924080, 26.786083, 25.620211> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165410, -0.104375, 0.980686,
		0.966929, 0.178574, 0.182095,
		-0.194132, 0.978375, 0.071385,
		36.865841, 27.079596, 25.641626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.428143, 26.607759, 26.060764>,  <37.001732, 26.394733, 25.591656>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.428143, 26.607759, 26.060764> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.155045, 26.899975, 26.066055>,  <36.991188, 27.075304, 26.069231>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.155045, 26.899975, 26.066055>,  <37.428143, 26.607759, 26.060764>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.155045, 26.899975, 26.066055> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056201, -0.070558, 0.995923,
		0.728494, 0.679216, 0.089230,
		-0.682743, 0.730539, 0.013229,
		36.950222, 27.119137, 26.070024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698051, 26.949650, 26.663826>,  <37.428143, 26.607759, 26.060764>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.698051, 26.949650, 26.663826> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.325737, 27.070364, 26.581306>,  <37.102348, 27.142792, 26.531796>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.325737, 27.070364, 26.581306>,  <37.698051, 26.949650, 26.663826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.325737, 27.070364, 26.581306> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173681, 0.131491, 0.975984,
		0.321662, 0.944265, -0.069977,
		-0.930789, 0.301783, -0.206297,
		37.046501, 27.160898, 26.519417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.520298, 27.486916, 27.108135>,  <37.698051, 26.949650, 26.663826>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.520298, 27.486916, 27.108135> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.156567, 27.384665, 26.976816>,  <36.938328, 27.323315, 26.898026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.156567, 27.384665, 26.976816>,  <37.520298, 27.486916, 27.108135>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.156567, 27.384665, 26.976816> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369950, 0.135613, 0.919101,
		-0.190425, 0.957217, -0.217886,
		-0.909327, -0.255627, -0.328298,
		36.883770, 27.307976, 26.878326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.145500, 27.970917, 27.277529>,  <37.520298, 27.486916, 27.108135>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.145500, 27.970917, 27.277529> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.873257, 27.683205, 27.221811>,  <36.709911, 27.510576, 27.188381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.873257, 27.683205, 27.221811>,  <37.145500, 27.970917, 27.277529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.873257, 27.683205, 27.221811> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459882, 0.271422, 0.845481,
		-0.570332, 0.639502, -0.515517,
		-0.680610, -0.719283, -0.139294,
		36.669075, 27.467421, 27.180023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.499260, 28.270317, 27.454744>,  <37.145500, 27.970917, 27.277529>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.499260, 28.270317, 27.454744> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.504341, 27.873863, 27.507645>,  <36.507389, 27.635990, 27.539385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.504341, 27.873863, 27.507645>,  <36.499260, 28.270317, 27.454744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.504341, 27.873863, 27.507645> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372670, 0.118040, 0.920425,
		-0.927877, -0.060977, -0.367867,
		0.012701, -0.991135, 0.132251,
		36.508152, 27.576523, 27.547319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.839668, 28.150099, 27.716436>,  <36.499260, 28.270317, 27.454744>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.839668, 28.150099, 27.716436> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.026424, 27.813833, 27.826200>,  <36.138477, 27.612074, 27.892059>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.026424, 27.813833, 27.826200>,  <35.839668, 28.150099, 27.716436>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.026424, 27.813833, 27.826200> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520453, -0.010339, 0.853828,
		-0.714945, -0.541459, -0.442353,
		0.466886, -0.840663, 0.274412,
		36.166489, 27.561634, 27.908524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.278046, 27.669371, 27.992249>,  <35.839668, 28.150099, 27.716436>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.278046, 27.669371, 27.992249> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.640560, 27.582138, 28.137072>,  <35.858070, 27.529799, 28.223967>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.640560, 27.582138, 28.137072>,  <35.278046, 27.669371, 27.992249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.640560, 27.582138, 28.137072> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359346, 0.053422, 0.931674,
		-0.222522, -0.974467, -0.029951,
		0.906286, -0.218081, 0.362059,
		35.912445, 27.516714, 28.245689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.191685, 27.078312, 28.448267>,  <35.278046, 27.669371, 27.992249>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.191685, 27.078312, 28.448267> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.535599, 27.253042, 28.554060>,  <35.741947, 27.357880, 28.617535>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.535599, 27.253042, 28.554060>,  <35.191685, 27.078312, 28.448267>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.535599, 27.253042, 28.554060> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249916, -0.091712, 0.963914,
		0.445318, -0.894859, 0.030317,
		0.859787, 0.436825, 0.264481,
		35.793533, 27.384090, 28.633404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.582439, 26.636335, 28.785318>,  <35.191685, 27.078312, 28.448267>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.582439, 26.636335, 28.785318> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.765465, 26.977011, 28.887499>,  <35.875282, 27.181416, 28.948807>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.765465, 26.977011, 28.887499>,  <35.582439, 26.636335, 28.785318>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.765465, 26.977011, 28.887499> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003661, -0.285485, 0.958376,
		0.889168, -0.439456, -0.127510,
		0.457567, 0.851690, 0.255453,
		35.902737, 27.232517, 28.964134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.513329, 26.552263, 29.452349>,  <35.582439, 26.636335, 28.785318>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.513329, 26.552263, 29.452349> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.691822, 26.910229, 29.453642>,  <35.798916, 27.125008, 29.454418>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.691822, 26.910229, 29.453642>,  <35.513329, 26.552263, 29.452349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.691822, 26.910229, 29.453642> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045634, -0.026361, 0.998610,
		0.893754, -0.445463, -0.052602,
		0.446231, 0.894912, 0.003232,
		35.825691, 27.178703, 29.454611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.198681, 26.486937, 29.817690>,  <35.513329, 26.552263, 29.452349>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.198681, 26.486937, 29.817690> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.059883, 26.861216, 29.843182>,  <35.976604, 27.085783, 29.858477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.059883, 26.861216, 29.843182>,  <36.198681, 26.486937, 29.817690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.059883, 26.861216, 29.843182> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053305, -0.048165, 0.997416,
		0.936350, 0.349498, -0.033165,
		-0.346997, 0.935698, 0.063730,
		35.955784, 27.141926, 29.862301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<36.960590, 30.225004, 24.509514> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.832130, 30.589897, 24.407776>,  <36.755054, 30.808834, 24.346733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.832130, 30.589897, 24.407776>,  <36.960590, 30.225004, 24.509514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.832130, 30.589897, 24.407776> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456116, -0.086377, -0.885719,
		-0.829952, -0.400460, -0.388344,
		-0.321151, 0.912234, -0.254345,
		36.735786, 30.863567, 24.331472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.684643, 30.203566, 23.811073>,  <36.960590, 30.225004, 24.509514>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.684643, 30.203566, 23.811073> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.782566, 30.585539, 23.878216>,  <36.841320, 30.814722, 23.918501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.782566, 30.585539, 23.878216>,  <36.684643, 30.203566, 23.811073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.782566, 30.585539, 23.878216> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501497, 0.023458, -0.864842,
		-0.829802, 0.295899, -0.473152,
		0.244806, 0.954931, 0.167858,
		36.856007, 30.872019, 23.928574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.503326, 30.539236, 23.117153>,  <36.684643, 30.203566, 23.811073>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.503326, 30.539236, 23.117153> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.744019, 30.786806, 23.319082>,  <36.888435, 30.935349, 23.440239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.744019, 30.786806, 23.319082>,  <36.503326, 30.539236, 23.117153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.744019, 30.786806, 23.319082> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596483, 0.072094, -0.799381,
		-0.531152, 0.782134, -0.325797,
		0.601735, 0.618925, 0.504823,
		36.924538, 30.972485, 23.470530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.458836, 31.224676, 22.834501>,  <36.503326, 30.539236, 23.117153>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.458836, 31.224676, 22.834501> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.813473, 31.169258, 23.011028>,  <37.026253, 31.136007, 23.116945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.813473, 31.169258, 23.011028>,  <36.458836, 31.224676, 22.834501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.813473, 31.169258, 23.011028> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462465, 0.284243, -0.839841,
		-0.009084, 0.948689, 0.316081,
		0.886591, -0.138547, 0.441317,
		37.079449, 31.127693, 23.143423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.908558, 31.677799, 22.484083>,  <36.458836, 31.224676, 22.834501>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.908558, 31.677799, 22.484083> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.187103, 31.470215, 22.682379>,  <37.354229, 31.345663, 22.801355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.187103, 31.470215, 22.682379>,  <36.908558, 31.677799, 22.484083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.187103, 31.470215, 22.682379> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695346, 0.316853, -0.645056,
		0.177683, 0.793903, 0.581503,
		0.696363, -0.518962, 0.495738,
		37.396011, 31.314526, 22.831100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.476513, 32.176441, 22.563183>,  <36.908558, 31.677799, 22.484083>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.476513, 32.176441, 22.563183> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.620296, 31.805218, 22.602152>,  <37.706566, 31.582483, 22.625534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.620296, 31.805218, 22.602152>,  <37.476513, 32.176441, 22.563183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.620296, 31.805218, 22.602152> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617120, 0.158108, -0.770821,
		0.699965, 0.337200, 0.629559,
		0.359459, -0.928061, 0.097423,
		37.728134, 31.526800, 22.631378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.181263, 32.300117, 22.625954>,  <37.476513, 32.176441, 22.563183>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.181263, 32.300117, 22.625954> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.163715, 31.913891, 22.523384>,  <38.153187, 31.682154, 22.461843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.163715, 31.913891, 22.523384>,  <38.181263, 32.300117, 22.625954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.163715, 31.913891, 22.523384> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772394, 0.130007, -0.621696,
		0.633627, -0.225333, 0.740096,
		-0.043871, -0.965569, -0.256422,
		38.150555, 31.624220, 22.446457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.896076, 32.093807, 22.541327>,  <38.181263, 32.300117, 22.625954>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.896076, 32.093807, 22.541327> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.665382, 31.835474, 22.341215>,  <38.526966, 31.680473, 22.221149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.665382, 31.835474, 22.341215>,  <38.896076, 32.093807, 22.541327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.665382, 31.835474, 22.341215> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707916, -0.089465, -0.700607,
		0.407720, -0.758217, 0.508795,
		-0.576732, -0.645835, -0.500277,
		38.492363, 31.641724, 22.191132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.314732, 31.534264, 22.501738>,  <38.896076, 32.093807, 22.541327>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.314732, 31.534264, 22.501738> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.042324, 31.509516, 22.209877>,  <38.878880, 31.494667, 22.034761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.042324, 31.509516, 22.209877>,  <39.314732, 31.534264, 22.501738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.042324, 31.509516, 22.209877> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724647, -0.200321, -0.659362,
		-0.105369, -0.977775, 0.181255,
		-0.681017, -0.061870, -0.729649,
		38.838020, 31.490955, 21.990982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.438580, 30.917568, 22.123095>,  <39.314732, 31.534264, 22.501738>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.438580, 30.917568, 22.123095> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.216816, 31.134819, 21.870859>,  <39.083759, 31.265169, 21.719517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.216816, 31.134819, 21.870859>,  <39.438580, 30.917568, 22.123095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.216816, 31.134819, 21.870859> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603521, -0.259351, -0.753989,
		-0.573055, -0.798594, -0.184000,
		-0.554410, 0.543125, -0.630590,
		39.050491, 31.297756, 21.681683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.572193, 30.534964, 21.428663>,  <39.438580, 30.917568, 22.123095>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.572193, 30.534964, 21.428663> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.405304, 30.891470, 21.357588>,  <39.305172, 31.105373, 21.314943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.405304, 30.891470, 21.357588>,  <39.572193, 30.534964, 21.428663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.405304, 30.891470, 21.357588> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462450, 0.039898, -0.885747,
		-0.782345, -0.451726, -0.428812,
		-0.417224, 0.891264, -0.177686,
		39.280136, 31.158850, 21.304281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.133953, 30.446688, 20.864983>,  <39.572193, 30.534964, 21.428663>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.133953, 30.446688, 20.864983> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.267155, 30.823006, 20.890316>,  <39.347076, 31.048796, 20.905516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.267155, 30.823006, 20.890316>,  <39.133953, 30.446688, 20.864983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.267155, 30.823006, 20.890316> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470311, -0.107505, -0.875928,
		-0.817261, 0.321475, -0.478267,
		0.333005, 0.940796, 0.063333,
		39.367058, 31.105244, 20.909315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.636021, 30.587267, 20.267820>,  <39.133953, 30.446688, 20.864983>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.636021, 30.587267, 20.267820> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.666107, 30.921440, 20.485590>,  <39.684158, 31.121944, 20.616251>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.666107, 30.921440, 20.485590>,  <39.636021, 30.587267, 20.267820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.666107, 30.921440, 20.485590> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382258, 0.528418, -0.758059,
		-0.920989, -0.151090, 0.359097,
		0.075219, 0.835432, 0.544423,
		39.688671, 31.172070, 20.648916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.525490, 29.839546, 20.424946>,  <39.636021, 30.587267, 20.267820>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.525490, 29.839546, 20.424946> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.315052, 29.636209, 20.152237>,  <39.188789, 29.514208, 19.988611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.315052, 29.636209, 20.152237>,  <39.525490, 29.839546, 20.424946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.315052, 29.636209, 20.152237> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486599, -0.477547, 0.731553,
		-0.697457, 0.716616, 0.003876,
		-0.526093, -0.508341, -0.681774,
		39.157223, 29.483707, 19.947704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.770271, 30.018806, 20.430895>,  <39.525490, 29.839546, 20.424946>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.770271, 30.018806, 20.430895> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.820045, 29.640835, 20.309814>,  <38.849911, 29.414053, 20.237167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.820045, 29.640835, 20.309814>,  <38.770271, 30.018806, 20.430895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.820045, 29.640835, 20.309814> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561414, -0.318594, 0.763749,
		-0.818125, 0.074899, -0.570142,
		0.124440, -0.944927, -0.302699,
		38.857376, 29.357357, 20.219006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.143036, 29.724037, 20.588200>,  <38.770271, 30.018806, 20.430895>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.143036, 29.724037, 20.588200> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.409515, 29.432091, 20.526922>,  <38.569405, 29.256922, 20.490156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.409515, 29.432091, 20.526922>,  <38.143036, 29.724037, 20.588200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.409515, 29.432091, 20.526922> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499715, -0.589359, 0.634777,
		-0.553587, -0.346338, -0.757358,
		0.666203, -0.729867, -0.153191,
		38.609375, 29.213131, 20.480965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.747307, 29.246792, 20.656338>,  <38.143036, 29.724037, 20.588200>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.747307, 29.246792, 20.656338> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.108715, 29.080576, 20.698233>,  <38.325562, 28.980846, 20.723370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.108715, 29.080576, 20.698233>,  <37.747307, 29.246792, 20.656338>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.108715, 29.080576, 20.698233> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354741, -0.588133, 0.726814,
		-0.240419, -0.693850, -0.678802,
		0.903525, -0.415538, 0.104739,
		38.379772, 28.955914, 20.729654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.680496, 28.488903, 20.755333>,  <37.747307, 29.246792, 20.656338>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.680496, 28.488903, 20.755333> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.042461, 28.573851, 20.902859>,  <38.259640, 28.624819, 20.991375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.042461, 28.573851, 20.902859>,  <37.680496, 28.488903, 20.755333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.042461, 28.573851, 20.902859> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204621, -0.542757, 0.814583,
		0.373172, -0.812597, -0.447693,
		0.904916, 0.212372, 0.368816,
		38.313938, 28.637562, 21.013504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.096710, 27.842531, 20.930981>,  <37.680496, 28.488903, 20.755333>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.096710, 27.842531, 20.930981> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.268246, 28.123014, 21.158808>,  <38.371166, 28.291304, 21.295504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.268246, 28.123014, 21.158808>,  <38.096710, 27.842531, 20.930981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.268246, 28.123014, 21.158808> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077261, -0.599705, 0.796483,
		0.900070, -0.385570, -0.203001,
		0.428840, 0.701207, 0.569566,
		38.396896, 28.333376, 21.329678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.571663, 27.427435, 21.404497>,  <38.096710, 27.842531, 20.930981>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.571663, 27.427435, 21.404497> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.493141, 27.785507, 21.564552>,  <38.446026, 28.000351, 21.660585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.493141, 27.785507, 21.564552>,  <38.571663, 27.427435, 21.404497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.493141, 27.785507, 21.564552> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185728, -0.434639, 0.881246,
		0.962792, 0.098679, 0.251584,
		-0.196309, 0.895182, 0.400140,
		38.434250, 28.054062, 21.684595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.039387, 27.522371, 21.982273>,  <38.571663, 27.427435, 21.404497>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.039387, 27.522371, 21.982273> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.737377, 27.770452, 22.067392>,  <38.556171, 27.919300, 22.118464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.737377, 27.770452, 22.067392>,  <39.039387, 27.522371, 21.982273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.737377, 27.770452, 22.067392> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139451, -0.469002, 0.872118,
		0.640692, 0.628799, 0.440598,
		-0.755028, 0.620201, 0.212799,
		38.510868, 27.956512, 22.131231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.194111, 27.703062, 22.633526>,  <39.039387, 27.522371, 21.982273>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.194111, 27.703062, 22.633526> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.806820, 27.795904, 22.596283>,  <38.574448, 27.851610, 22.573938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.806820, 27.795904, 22.596283>,  <39.194111, 27.703062, 22.633526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.806820, 27.795904, 22.596283> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169767, -0.336646, 0.926201,
		0.183632, 0.912577, 0.365352,
		-0.968224, 0.232105, -0.093106,
		38.516354, 27.865536, 22.568352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.914295, 28.001984, 23.341990>,  <39.194111, 27.703062, 22.633526>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.914295, 28.001984, 23.341990> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.592934, 27.886606, 23.133627>,  <38.400116, 27.817379, 23.008610>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.592934, 27.886606, 23.133627>,  <38.914295, 28.001984, 23.341990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.592934, 27.886606, 23.133627> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491723, -0.171946, 0.853606,
		-0.335785, 0.941931, -0.003692,
		-0.803403, -0.288443, -0.520906,
		38.351913, 27.800074, 22.977356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.405396, 28.416836, 23.516911>,  <38.914295, 28.001984, 23.341990>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.405396, 28.416836, 23.516911> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.252792, 28.069324, 23.390625>,  <38.161232, 27.860817, 23.314854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.252792, 28.069324, 23.390625>,  <38.405396, 28.416836, 23.516911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.252792, 28.069324, 23.390625> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514071, -0.084445, 0.853581,
		-0.768234, 0.487945, -0.414398,
		-0.381507, -0.868780, -0.315712,
		38.138340, 27.808691, 23.295912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.779835, 28.480219, 23.702009>,  <38.405396, 28.416836, 23.516911>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.779835, 28.480219, 23.702009> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.789001, 28.087107, 23.628672>,  <37.794502, 27.851238, 23.584669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.789001, 28.087107, 23.628672>,  <37.779835, 28.480219, 23.702009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.789001, 28.087107, 23.628672> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613050, -0.158679, 0.773945,
		-0.789712, 0.094665, -0.606130,
		0.022914, -0.982782, -0.183345,
		37.795876, 27.792273, 23.573668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.192478, 28.209898, 23.509628>,  <37.779835, 28.480219, 23.702009>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.192478, 28.209898, 23.509628> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.376904, 27.881426, 23.644140>,  <37.487560, 27.684343, 23.724848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.376904, 27.881426, 23.644140>,  <37.192478, 28.209898, 23.509628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.376904, 27.881426, 23.644140> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538586, 0.042210, 0.841513,
		-0.705227, -0.569107, -0.422814,
		0.461064, -0.821180, 0.336281,
		37.515224, 27.635073, 23.745024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.719212, 27.869123, 23.924646>,  <37.192478, 28.209898, 23.509628>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.719212, 27.869123, 23.924646> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.055904, 27.694387, 24.051550>,  <37.257919, 27.589546, 24.127693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.055904, 27.694387, 24.051550>,  <36.719212, 27.869123, 23.924646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.055904, 27.694387, 24.051550> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450976, -0.245831, 0.858014,
		-0.296822, -0.865297, -0.403928,
		0.841735, -0.436839, 0.317260,
		37.308426, 27.563335, 24.146729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.454803, 27.261749, 24.084225>,  <36.719212, 27.869123, 23.924646>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.454803, 27.261749, 24.084225> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.796497, 27.349068, 24.272957>,  <37.001514, 27.401459, 24.386196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.796497, 27.349068, 24.272957>,  <36.454803, 27.261749, 24.084225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.796497, 27.349068, 24.272957> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474307, -0.044341, 0.879242,
		0.212858, -0.974874, 0.065662,
		0.854239, 0.218298, 0.471828,
		37.052769, 27.414557, 24.414505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.940235, 27.069963, 23.555950>,  <36.454803, 27.261749, 24.084225>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.940235, 27.069963, 23.555950> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.575142, 27.211891, 23.474939>,  <35.356087, 27.297049, 23.426332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.575142, 27.211891, 23.474939>,  <35.940235, 27.069963, 23.555950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.575142, 27.211891, 23.474939> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314246, 0.292939, -0.903015,
		-0.261079, -0.887857, -0.378876,
		-0.912736, 0.354819, -0.202526,
		35.301323, 27.318336, 23.414181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.852818, 26.927921, 22.799709>,  <35.940235, 27.069963, 23.555950>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.852818, 26.927921, 22.799709> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.584698, 27.214132, 22.878422>,  <35.423828, 27.385859, 22.925650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.584698, 27.214132, 22.878422>,  <35.852818, 26.927921, 22.799709>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.584698, 27.214132, 22.878422> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027424, 0.288875, -0.956974,
		-0.741587, -0.636059, -0.213254,
		-0.670296, 0.715528, 0.196783,
		35.383610, 27.428791, 22.937456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.278584, 26.854038, 22.317350>,  <35.852818, 26.927921, 22.799709>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.278584, 26.854038, 22.317350> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.269989, 27.221056, 22.476171>,  <35.264832, 27.441267, 22.571465>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.269989, 27.221056, 22.476171>,  <35.278584, 26.854038, 22.317350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.269989, 27.221056, 22.476171> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243218, 0.390009, -0.888109,
		-0.969734, 0.077488, -0.231543,
		-0.021485, 0.917545, 0.397051,
		35.263542, 27.496319, 22.595287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.737930, 27.241949, 22.028986>,  <35.278584, 26.854038, 22.317350>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.737930, 27.241949, 22.028986> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.015369, 27.502960, 22.151052>,  <35.181835, 27.659567, 22.224293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.015369, 27.502960, 22.151052>,  <34.737930, 27.241949, 22.028986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.015369, 27.502960, 22.151052> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002732, 0.426007, -0.904716,
		-0.720355, 0.626677, 0.297261,
		0.693600, 0.652528, 0.305164,
		35.223450, 27.698719, 22.242601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.518669, 27.890497, 21.804031>,  <34.737930, 27.241949, 22.028986>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.518669, 27.890497, 21.804031> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.904392, 27.953463, 21.889196>,  <35.135826, 27.991241, 21.940294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.904392, 27.953463, 21.889196>,  <34.518669, 27.890497, 21.804031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.904392, 27.953463, 21.889196> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112287, 0.485103, -0.867218,
		-0.239795, 0.860173, 0.450113,
		0.964308, 0.157413, 0.212911,
		35.193684, 28.000687, 21.953070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.680279, 28.622553, 21.696405>,  <34.518669, 27.890497, 21.804031>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.680279, 28.622553, 21.696405> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.031372, 28.432068, 21.675238>,  <35.242027, 28.317778, 21.662537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.031372, 28.432068, 21.675238>,  <34.680279, 28.622553, 21.696405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.031372, 28.432068, 21.675238> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211520, 0.484212, -0.848998,
		0.429927, 0.734003, 0.525739,
		0.877737, -0.476211, -0.052919,
		35.294693, 28.289204, 21.659363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.127346, 29.218040, 21.507870>,  <34.680279, 28.622553, 21.696405>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.127346, 29.218040, 21.507870> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.288727, 28.874289, 21.382208>,  <35.385555, 28.668037, 21.306810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.288727, 28.874289, 21.382208>,  <35.127346, 29.218040, 21.507870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.288727, 28.874289, 21.382208> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323328, 0.455087, -0.829672,
		0.855972, 0.233154, 0.461466,
		0.403448, -0.859381, -0.314156,
		35.409760, 28.616474, 21.287960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.337734, 29.937082, 21.375593>,  <35.127346, 29.218040, 21.507870>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.337734, 29.937082, 21.375593> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.254528, 30.319977, 21.295164>,  <35.204605, 30.549713, 21.246906>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.254528, 30.319977, 21.295164>,  <35.337734, 29.937082, 21.375593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.254528, 30.319977, 21.295164> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602609, 0.036503, 0.797201,
		0.770448, 0.287002, 0.569245,
		-0.208019, 0.957234, -0.201074,
		35.192123, 30.607147, 21.234842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.398472, 30.230715, 22.005974>,  <35.337734, 29.937082, 21.375593>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.398472, 30.230715, 22.005974> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.163960, 30.483303, 21.802990>,  <35.023251, 30.634855, 21.681200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.163960, 30.483303, 21.802990>,  <35.398472, 30.230715, 22.005974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.163960, 30.483303, 21.802990> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632928, 0.033935, 0.773467,
		0.505642, 0.774657, 0.379781,
		-0.586283, 0.631471, -0.507460,
		34.988075, 30.672745, 21.650751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.156670, 30.832148, 22.473545>,  <35.398472, 30.230715, 22.005974>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.156670, 30.832148, 22.473545> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.881596, 30.814980, 22.183651>,  <34.716549, 30.804678, 22.009714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.881596, 30.814980, 22.183651>,  <35.156670, 30.832148, 22.473545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.881596, 30.814980, 22.183651> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718043, -0.107226, 0.687689,
		-0.107226, 0.993308, 0.042920,
		-0.687689, -0.042920, -0.724735,
		34.675289, 30.802103, 21.966230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.651749, 31.259346, 22.703991>,  <35.156670, 30.832148, 22.473545>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.651749, 31.259346, 22.703991> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.487164, 31.017239, 22.431419>,  <34.388412, 30.871975, 22.267876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.487164, 31.017239, 22.431419>,  <34.651749, 31.259346, 22.703991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.487164, 31.017239, 22.431419> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.869476, 0.036460, 0.492628,
		-0.273326, 0.795187, -0.541267,
		-0.411466, -0.605267, -0.681430,
		34.363724, 30.835659, 22.226990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.996105, 31.524282, 22.638472>,  <34.651749, 31.259346, 22.703991>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.996105, 31.524282, 22.638472> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.975815, 31.151262, 22.495485>,  <33.963642, 30.927450, 22.409695>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.975815, 31.151262, 22.495485>,  <33.996105, 31.524282, 22.638472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.975815, 31.151262, 22.495485> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722517, -0.212837, 0.657776,
		-0.689490, 0.291640, -0.662985,
		-0.050726, -0.932548, -0.357464,
		33.960598, 30.871498, 22.388247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.332893, 31.411343, 22.456474>,  <33.996105, 31.524282, 22.638472>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.332893, 31.411343, 22.456474> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.495632, 31.055616, 22.539991>,  <33.593277, 30.842180, 22.590101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.495632, 31.055616, 22.539991>,  <33.332893, 31.411343, 22.456474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.495632, 31.055616, 22.539991> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731587, -0.180329, 0.657466,
		-0.547042, -0.420239, -0.723978,
		0.406847, -0.889315, 0.208794,
		33.617687, 30.788822, 22.602631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.791763, 31.005302, 22.671724>,  <33.332893, 31.411343, 22.456474>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.791763, 31.005302, 22.671724> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.084843, 30.764986, 22.799606>,  <33.260689, 30.620796, 22.876335>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.084843, 30.764986, 22.799606>,  <32.791763, 31.005302, 22.671724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.084843, 30.764986, 22.799606> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568233, -0.281540, 0.773205,
		-0.374526, -0.748188, -0.547673,
		0.732694, -0.600791, 0.319701,
		33.304653, 30.584749, 22.895517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<37.759151, 34.086273, 20.224001> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.085987, 33.855713, 20.228556>,  <38.282089, 33.717377, 20.231289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.085987, 33.855713, 20.228556>,  <37.759151, 34.086273, 20.224001>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.085987, 33.855713, 20.228556> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157901, 0.242745, 0.957153,
		-0.554465, -0.780282, 0.289358,
		0.817090, -0.576398, 0.011386,
		38.331116, 33.682793, 20.231972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698711, 33.828896, 20.813419>,  <37.759151, 34.086273, 20.224001>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.698711, 33.828896, 20.813419> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.079803, 33.727238, 20.746830>,  <38.308460, 33.666241, 20.706877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.079803, 33.727238, 20.746830>,  <37.698711, 33.828896, 20.813419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.079803, 33.727238, 20.746830> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206435, 0.139496, 0.968466,
		-0.222910, -0.957053, 0.185367,
		0.952731, -0.254147, -0.166474,
		38.365623, 33.650993, 20.696888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.823528, 33.232430, 21.240652>,  <37.698711, 33.828896, 20.813419>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.823528, 33.232430, 21.240652> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.181309, 33.392662, 21.161167>,  <38.395977, 33.488800, 21.113476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.181309, 33.392662, 21.161167>,  <37.823528, 33.232430, 21.240652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.181309, 33.392662, 21.161167> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095445, 0.263120, 0.960030,
		0.436854, -0.877670, 0.197115,
		0.894455, 0.400580, -0.198714,
		38.449646, 33.512836, 21.101553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.258694, 33.003597, 21.798391>,  <37.823528, 33.232430, 21.240652>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.258694, 33.003597, 21.798391> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.441891, 33.338684, 21.679415>,  <38.551807, 33.539738, 21.608028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.441891, 33.338684, 21.679415>,  <38.258694, 33.003597, 21.798391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.441891, 33.338684, 21.679415> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067221, 0.301003, 0.951251,
		0.886412, -0.455659, 0.081544,
		0.457991, 0.837719, -0.297443,
		38.579288, 33.590000, 21.590181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.767372, 33.073307, 22.175411>,  <38.258694, 33.003597, 21.798391>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.767372, 33.073307, 22.175411> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.756470, 33.444771, 22.027439>,  <38.749928, 33.667648, 21.938656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.756470, 33.444771, 22.027439>,  <38.767372, 33.073307, 22.175411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.756470, 33.444771, 22.027439> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141929, 0.369913, 0.918162,
		0.989501, -0.027474, -0.141888,
		-0.027260, 0.928660, -0.369929,
		38.748291, 33.723370, 21.916460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.275749, 33.385395, 22.442377>,  <38.767372, 33.073307, 22.175411>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.275749, 33.385395, 22.442377> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.038990, 33.693119, 22.346195>,  <38.896935, 33.877754, 22.288486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.038990, 33.693119, 22.346195>,  <39.275749, 33.385395, 22.442377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.038990, 33.693119, 22.346195> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106447, 0.370320, 0.922785,
		0.798955, 0.520597, -0.301082,
		-0.591896, 0.769313, -0.240453,
		38.861420, 33.923912, 22.274059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.546822, 33.943085, 22.837053>,  <39.275749, 33.385395, 22.442377>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.546822, 33.943085, 22.837053> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.179325, 34.073467, 22.747913>,  <38.958828, 34.151695, 22.694429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.179325, 34.073467, 22.747913>,  <39.546822, 33.943085, 22.837053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.179325, 34.073467, 22.747913> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072753, 0.414986, 0.906914,
		0.388090, 0.849436, -0.357552,
		-0.918745, 0.325952, -0.222851,
		38.903702, 34.171253, 22.681059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.518917, 34.659737, 23.029148>,  <39.546822, 33.943085, 22.837053>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.518917, 34.659737, 23.029148> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.140919, 34.529087, 23.022264>,  <38.914120, 34.450699, 23.018135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.140919, 34.529087, 23.022264>,  <39.518917, 34.659737, 23.029148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.140919, 34.529087, 23.022264> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162696, 0.423775, 0.891036,
		-0.283742, 0.844826, -0.453607,
		-0.944997, -0.326625, -0.017207,
		38.857418, 34.431099, 23.017103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.043922, 35.225727, 23.401157>,  <39.518917, 34.659737, 23.029148>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.043922, 35.225727, 23.401157> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.798813, 34.909893, 23.414190>,  <38.651749, 34.720390, 23.422010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.798813, 34.909893, 23.414190>,  <39.043922, 35.225727, 23.401157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.798813, 34.909893, 23.414190> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295989, 0.267546, 0.916957,
		-0.732737, 0.552239, -0.397653,
		-0.612770, -0.789589, 0.032584,
		38.614983, 34.673016, 23.423965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.371513, 35.458370, 23.710978>,  <39.043922, 35.225727, 23.401157>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.371513, 35.458370, 23.710978> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.338181, 35.061115, 23.743792>,  <38.318180, 34.822762, 23.763479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.338181, 35.061115, 23.743792>,  <38.371513, 35.458370, 23.710978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.338181, 35.061115, 23.743792> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499162, 0.112848, 0.859129,
		-0.862493, 0.030644, -0.505141,
		-0.083332, -0.993140, 0.082034,
		38.313183, 34.763172, 23.768402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.675869, 35.331829, 23.977074>,  <38.371513, 35.458370, 23.710978>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.675869, 35.331829, 23.977074> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.897202, 35.015553, 24.081865>,  <38.029999, 34.825787, 24.144741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.897202, 35.015553, 24.081865>,  <37.675869, 35.331829, 23.977074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.897202, 35.015553, 24.081865> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249454, 0.142778, 0.957803,
		-0.794733, -0.595331, -0.118239,
		0.553327, -0.790693, 0.261978,
		38.063198, 34.778343, 24.160460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.200489, 34.866898, 24.278740>,  <37.675869, 35.331829, 23.977074>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.200489, 34.866898, 24.278740> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.563831, 34.761391, 24.408546>,  <37.781837, 34.698086, 24.486431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.563831, 34.761391, 24.408546>,  <37.200489, 34.866898, 24.278740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.563831, 34.761391, 24.408546> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347334, -0.043677, 0.936724,
		-0.232907, -0.963596, -0.131291,
		0.908358, -0.263771, 0.324517,
		37.836338, 34.682259, 24.505901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.851990, 34.280384, 24.017796>,  <37.200489, 34.866898, 24.278740>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.851990, 34.280384, 24.017796> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.510075, 34.381706, 23.836613>,  <36.304924, 34.442501, 23.727903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.510075, 34.381706, 23.836613>,  <36.851990, 34.280384, 24.017796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.510075, 34.381706, 23.836613> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452928, -0.061973, -0.889391,
		-0.253358, -0.965399, -0.061755,
		-0.854790, 0.253305, -0.452957,
		36.253639, 34.457699, 23.700726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.776733, 33.818817, 23.415249>,  <36.851990, 34.280384, 24.017796>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.776733, 33.818817, 23.415249> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.506615, 34.096325, 23.315119>,  <36.344543, 34.262829, 23.255041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.506615, 34.096325, 23.315119>,  <36.776733, 33.818817, 23.415249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.506615, 34.096325, 23.315119> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288785, -0.063587, -0.955280,
		-0.678657, -0.717389, -0.157408,
		-0.675298, 0.693765, -0.250325,
		36.304024, 34.304455, 23.240021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.340004, 33.498772, 22.957520>,  <36.776733, 33.818817, 23.415249>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.340004, 33.498772, 22.957520> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.250622, 33.884808, 22.902876>,  <36.196991, 34.116428, 22.870090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.250622, 33.884808, 22.902876>,  <36.340004, 33.498772, 22.957520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.250622, 33.884808, 22.902876> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039204, -0.148939, -0.988069,
		-0.973925, -0.215437, 0.071117,
		-0.223459, 0.965093, -0.136610,
		36.183582, 34.174335, 22.861893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.806000, 33.497063, 22.523081>,  <36.340004, 33.498772, 22.957520>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.806000, 33.497063, 22.523081> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.964722, 33.861111, 22.475372>,  <36.059956, 34.079540, 22.446747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.964722, 33.861111, 22.475372>,  <35.806000, 33.497063, 22.523081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.964722, 33.861111, 22.475372> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014116, -0.135976, -0.990612,
		-0.917795, 0.391394, -0.066803,
		0.396803, 0.910122, -0.119273,
		36.083763, 34.134148, 22.439590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.294315, 33.857353, 22.101765>,  <35.806000, 33.497063, 22.523081>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.294315, 33.857353, 22.101765> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.659756, 34.016518, 22.068306>,  <35.879021, 34.112015, 22.048231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.659756, 34.016518, 22.068306>,  <35.294315, 33.857353, 22.101765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.659756, 34.016518, 22.068306> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014530, -0.173641, -0.984702,
		-0.406347, 0.900842, -0.152857,
		0.913603, 0.397910, -0.083648,
		35.933838, 34.135891, 22.043211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.192913, 34.342751, 21.577702>,  <35.294315, 33.857353, 22.101765>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.192913, 34.342751, 21.577702> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.583290, 34.256908, 21.593077>,  <35.817516, 34.205402, 21.602303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.583290, 34.256908, 21.593077>,  <35.192913, 34.342751, 21.577702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.583290, 34.256908, 21.593077> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006900, -0.206618, -0.978397,
		0.217914, 0.954595, -0.203129,
		0.975944, -0.214608, 0.038439,
		35.876072, 34.192528, 21.604609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.391708, 34.567608, 21.046194>,  <35.192913, 34.342751, 21.577702>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.391708, 34.567608, 21.046194> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.707397, 34.334038, 21.122255>,  <35.896812, 34.193893, 21.167892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.707397, 34.334038, 21.122255>,  <35.391708, 34.567608, 21.046194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.707397, 34.334038, 21.122255> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206438, -0.039352, -0.977668,
		0.578370, 0.810851, 0.089488,
		0.789222, -0.583928, 0.190151,
		35.944164, 34.158859, 21.179300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.986996, 34.842003, 20.646025>,  <35.391708, 34.567608, 21.046194>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.986996, 34.842003, 20.646025> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.114559, 34.469479, 20.716406>,  <36.191097, 34.245964, 20.758635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.114559, 34.469479, 20.716406>,  <35.986996, 34.842003, 20.646025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.114559, 34.469479, 20.716406> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387027, -0.041498, -0.921134,
		0.865162, 0.361857, 0.347207,
		0.318911, -0.931309, 0.175951,
		36.210232, 34.190086, 20.769192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.596161, 34.772507, 20.275261>,  <35.986996, 34.842003, 20.646025>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.596161, 34.772507, 20.275261> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.526699, 34.383385, 20.336561>,  <36.485023, 34.149910, 20.373341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.526699, 34.383385, 20.336561>,  <36.596161, 34.772507, 20.275261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.526699, 34.383385, 20.336561> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299204, -0.200376, -0.932913,
		0.938255, -0.116152, 0.325864,
		-0.173655, -0.972810, 0.153251,
		36.474602, 34.091541, 20.382536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.103828, 34.335846, 19.953499>,  <36.596161, 34.772507, 20.275261>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.103828, 34.335846, 19.953499> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.794739, 34.083118, 19.977829>,  <36.609283, 33.931484, 19.992426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.794739, 34.083118, 19.977829>,  <37.103828, 34.335846, 19.953499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.794739, 34.083118, 19.977829> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285022, -0.431011, -0.856149,
		0.567145, -0.644235, 0.513136,
		-0.772729, -0.631816, 0.060824,
		36.562920, 33.893574, 19.996077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.327881, 33.682926, 19.697121>,  <37.103828, 34.335846, 19.953499>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.327881, 33.682926, 19.697121> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.928493, 33.675636, 19.676243>,  <36.688862, 33.671261, 19.663715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.928493, 33.675636, 19.676243>,  <37.327881, 33.682926, 19.697121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.928493, 33.675636, 19.676243> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055224, -0.284434, -0.957104,
		0.002603, -0.958522, 0.285005,
		-0.998471, -0.018230, -0.052194,
		36.628952, 33.670166, 19.660585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.137501, 32.966122, 19.402706>,  <37.327881, 33.682926, 19.697121>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.137501, 32.966122, 19.402706> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.818611, 33.202587, 19.353794>,  <36.627277, 33.344467, 19.324448>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.818611, 33.202587, 19.353794>,  <37.137501, 32.966122, 19.402706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.818611, 33.202587, 19.353794> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114294, -0.346702, -0.930986,
		-0.592762, -0.728231, 0.343967,
		-0.797227, 0.591167, -0.122279,
		36.579445, 33.379936, 19.317110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.892025, 32.839104, 19.520908>,  <37.137501, 32.966122, 19.402706>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.892025, 32.839104, 19.520908> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.282707, 32.863121, 19.603317>,  <38.517117, 32.877533, 19.652761>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.282707, 32.863121, 19.603317>,  <37.892025, 32.839104, 19.520908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.282707, 32.863121, 19.603317> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138374, 0.910020, 0.390790,
		-0.164019, -0.410194, 0.897128,
		0.976704, 0.060042, 0.206021,
		38.575718, 32.881134, 19.665123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.219883, 32.240746, 19.986389>,  <37.892025, 32.839104, 19.520908>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.219883, 32.240746, 19.986389> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.956001, 32.210075, 19.687347>,  <37.797672, 32.191673, 19.507921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.956001, 32.210075, 19.687347>,  <38.219883, 32.240746, 19.986389>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.956001, 32.210075, 19.687347> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699306, -0.301720, 0.648025,
		-0.275255, 0.950308, 0.145426,
		-0.659702, -0.076675, -0.747606,
		37.758091, 32.187073, 19.463066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.616512, 32.582748, 20.202538>,  <38.219883, 32.240746, 19.986389>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.616512, 32.582748, 20.202538> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.481045, 32.340542, 19.914465>,  <37.399765, 32.195217, 19.741621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.481045, 32.340542, 19.914465>,  <37.616512, 32.582748, 20.202538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.481045, 32.340542, 19.914465> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718292, -0.328013, 0.613566,
		-0.607751, 0.725094, -0.323848,
		-0.338666, -0.605513, -0.720179,
		37.379444, 32.158886, 19.698412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.784225, 32.644920, 20.163828>,  <37.616512, 32.582748, 20.202538>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.784225, 32.644920, 20.163828> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.863167, 32.295826, 19.985220>,  <36.910530, 32.086369, 19.878056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.863167, 32.295826, 19.985220>,  <36.784225, 32.644920, 20.163828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.863167, 32.295826, 19.985220> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828532, -0.391952, 0.399886,
		-0.524010, 0.291037, -0.800444,
		0.197354, -0.872738, -0.446520,
		36.922375, 32.034004, 19.851265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.066517, 32.292320, 19.897320>,  <36.784225, 32.644920, 20.163828>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.066517, 32.292320, 19.897320> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.344784, 32.010944, 19.955585>,  <36.511745, 31.842119, 19.990545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.344784, 32.010944, 19.955585>,  <36.066517, 32.292320, 19.897320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.344784, 32.010944, 19.955585> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692056, -0.601904, 0.398459,
		-0.192616, -0.378003, -0.905545,
		0.695670, -0.703438, 0.145664,
		36.553486, 31.799913, 19.999285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.608166, 31.700226, 19.813269>,  <36.066517, 32.292320, 19.897320>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.608166, 31.700226, 19.813269> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.948799, 31.541349, 19.950115>,  <36.153179, 31.446024, 20.032223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.948799, 31.541349, 19.950115>,  <35.608166, 31.700226, 19.813269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.948799, 31.541349, 19.950115> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524218, -0.645027, 0.556000,
		-0.000164, -0.652824, -0.757509,
		0.851585, -0.397191, 0.342116,
		36.204273, 31.422192, 20.052750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.511845, 31.035509, 19.707912>,  <35.608166, 31.700226, 19.813269>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.511845, 31.035509, 19.707912> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.759796, 31.082617, 20.018238>,  <35.908566, 31.110882, 20.204433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.759796, 31.082617, 20.018238>,  <35.511845, 31.035509, 19.707912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.759796, 31.082617, 20.018238> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578485, -0.599432, 0.553206,
		0.530199, -0.791714, -0.303444,
		0.619875, 0.117771, 0.775813,
		35.945759, 31.117949, 20.250982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.674316, 30.289557, 20.040340>,  <35.511845, 31.035509, 19.707912>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.674316, 30.289557, 20.040340> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.736183, 30.587383, 20.300093>,  <35.773304, 30.766079, 20.455944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.736183, 30.587383, 20.300093>,  <35.674316, 30.289557, 20.040340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.736183, 30.587383, 20.300093> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603239, -0.449370, 0.658915,
		0.782420, -0.493643, 0.379652,
		0.154664, 0.744569, 0.649381,
		35.782581, 30.810755, 20.494907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.596291, 30.001980, 20.688877>,  <35.674316, 30.289557, 20.040340>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.596291, 30.001980, 20.688877> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.529560, 30.387815, 20.770599>,  <35.489521, 30.619316, 20.819633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.529560, 30.387815, 20.770599>,  <35.596291, 30.001980, 20.688877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.529560, 30.387815, 20.770599> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484838, -0.260679, 0.834852,
		0.858546, 0.040217, 0.511156,
		-0.166823, 0.964587, 0.204306,
		35.479511, 30.677191, 20.831892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.790493, 29.376881, 21.106897>,  <35.596291, 30.001980, 20.688877>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.790493, 29.376881, 21.106897> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.772846, 28.992220, 20.998615>,  <35.762257, 28.761423, 20.933647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.772846, 28.992220, 20.998615>,  <35.790493, 29.376881, 21.106897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.772846, 28.992220, 20.998615> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703355, 0.162533, -0.692007,
		0.709468, -0.220929, 0.669212,
		-0.044116, -0.961651, -0.270703,
		35.759613, 28.703724, 20.917404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.449677, 29.232481, 21.059179>,  <35.790493, 29.376881, 21.106897>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.449677, 29.232481, 21.059179> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.238754, 28.974165, 20.838308>,  <36.112202, 28.819176, 20.705786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.238754, 28.974165, 20.838308>,  <36.449677, 29.232481, 21.059179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.238754, 28.974165, 20.838308> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621475, 0.150019, -0.768936,
		0.579409, -0.748632, 0.322236,
		-0.527309, -0.645790, -0.552178,
		36.080563, 28.780428, 20.672655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.928478, 29.104824, 20.608406>,  <36.449677, 29.232481, 21.059179>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.928478, 29.104824, 20.608406> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.600491, 28.954550, 20.435659>,  <36.403698, 28.864386, 20.332012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.600491, 28.954550, 20.435659>,  <36.928478, 29.104824, 20.608406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.600491, 28.954550, 20.435659> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455557, 0.028510, -0.889750,
		0.346579, -0.926309, 0.147768,
		-0.819970, -0.375685, -0.431867,
		36.354500, 28.841845, 20.306099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.147472, 28.527153, 20.239767>,  <36.928478, 29.104824, 20.608406>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.147472, 28.527153, 20.239767> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.801769, 28.658981, 20.087748>,  <36.594345, 28.738079, 19.996536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.801769, 28.658981, 20.087748>,  <37.147472, 28.527153, 20.239767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.801769, 28.658981, 20.087748> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409260, 0.021361, -0.912168,
		-0.292508, -0.943888, -0.153343,
		-0.864260, 0.329573, -0.380048,
		36.542492, 28.757853, 19.973734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.103981, 28.245741, 19.562281>,  <37.147472, 28.527153, 20.239767>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.103981, 28.245741, 19.562281> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.836475, 28.540979, 19.526585>,  <36.675972, 28.718122, 19.505167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.836475, 28.540979, 19.526585>,  <37.103981, 28.245741, 19.562281>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.836475, 28.540979, 19.526585> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271755, 0.130953, -0.953415,
		-0.692027, -0.661864, -0.288158,
		-0.668766, 0.738098, -0.089242,
		36.635845, 28.762409, 19.499811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.826889, 28.028090, 19.010729>,  <37.103981, 28.245741, 19.562281>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.826889, 28.028090, 19.010729> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.775387, 28.422127, 19.056356>,  <36.744484, 28.658548, 19.083733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.775387, 28.422127, 19.056356>,  <36.826889, 28.028090, 19.010729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.775387, 28.422127, 19.056356> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428274, 0.158985, -0.889553,
		-0.894429, -0.065684, -0.442361,
		-0.128758, 0.985094, 0.114070,
		36.736759, 28.717655, 19.090578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.547779, 28.328167, 18.341066>,  <36.826889, 28.028090, 19.010729>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.547779, 28.328167, 18.341066> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.678135, 28.643867, 18.549252>,  <36.756348, 28.833288, 18.674162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.678135, 28.643867, 18.549252>,  <36.547779, 28.328167, 18.341066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.678135, 28.643867, 18.549252> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567995, 0.276630, -0.775150,
		-0.755762, 0.548235, -0.358138,
		0.325892, 0.789250, 0.520461,
		36.775902, 28.880642, 18.705389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.497704, 28.900093, 17.917645>,  <36.547779, 28.328167, 18.341066>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.497704, 28.900093, 17.917645> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.777649, 28.998301, 18.185946>,  <36.945618, 29.057224, 18.346926>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.777649, 28.998301, 18.185946>,  <36.497704, 28.900093, 17.917645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.777649, 28.998301, 18.185946> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607955, 0.288183, -0.739825,
		-0.374941, 0.925565, 0.052425,
		0.699864, 0.245519, 0.670754,
		36.987610, 29.071957, 18.387171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.777958, 29.509474, 17.636337>,  <36.497704, 28.900093, 17.917645>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.777958, 29.509474, 17.636337> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.052254, 29.393431, 17.903349>,  <37.216831, 29.323805, 18.063557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.052254, 29.393431, 17.903349>,  <36.777958, 29.509474, 17.636337>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.052254, 29.393431, 17.903349> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727789, 0.261889, -0.633827,
		0.009060, 0.920462, 0.390726,
		0.685741, -0.290109, 0.667530,
		37.257977, 29.306398, 18.103607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<31.750162, 29.308199, 33.201195> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.987986, 29.607639, 33.318562>,  <32.130680, 29.787304, 33.388981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.987986, 29.607639, 33.318562>,  <31.750162, 29.308199, 33.201195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.987986, 29.607639, 33.318562> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709013, -0.660233, 0.247775,
		0.379210, 0.060722, -0.923316,
		0.594559, 0.748602, 0.293420,
		32.166351, 29.832220, 33.406586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.973953, 29.576275, 32.591999>,  <31.750162, 29.308199, 33.201195>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.973953, 29.576275, 32.591999> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.150936, 29.261740, 32.764465>,  <32.257126, 29.073019, 32.867947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.150936, 29.261740, 32.764465>,  <31.973953, 29.576275, 32.591999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.150936, 29.261740, 32.764465> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625136, -0.074284, -0.776973,
		0.642992, 0.613315, 0.458701,
		0.442455, -0.786338, 0.431168,
		32.283672, 29.025839, 32.893814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.726078, 29.510366, 32.303902>,  <31.973953, 29.576275, 32.591999>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.726078, 29.510366, 32.303902> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.641342, 29.139269, 32.426811>,  <32.590500, 28.916611, 32.500557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.641342, 29.139269, 32.426811>,  <32.726078, 29.510366, 32.303902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.641342, 29.139269, 32.426811> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249385, -0.355313, -0.900866,
		0.944951, -0.114207, 0.306634,
		-0.211836, -0.927744, 0.307272,
		32.577793, 28.860945, 32.518993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.345802, 29.041328, 32.170109>,  <32.726078, 29.510366, 32.303902>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.345802, 29.041328, 32.170109> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.020969, 28.809219, 32.194771>,  <32.826069, 28.669954, 32.209568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.020969, 28.809219, 32.194771>,  <33.345802, 29.041328, 32.170109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.020969, 28.809219, 32.194771> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267574, -0.464181, -0.844358,
		0.518579, -0.669191, 0.532220,
		-0.812084, -0.580275, 0.061657,
		32.777344, 28.635138, 32.213268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.522549, 28.306814, 32.047127>,  <33.345802, 29.041328, 32.170109>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.522549, 28.306814, 32.047127> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.129292, 28.315157, 31.974468>,  <32.893337, 28.320162, 31.930872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.129292, 28.315157, 31.974468>,  <33.522549, 28.306814, 32.047127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.129292, 28.315157, 31.974468> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132924, -0.600652, -0.788384,
		-0.125552, -0.799239, 0.587753,
		-0.983142, 0.020856, -0.181651,
		32.834351, 28.321413, 31.919973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.165852, 27.619560, 31.947649>,  <33.522549, 28.306814, 32.047127>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.165852, 27.619560, 31.947649> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.933296, 27.879622, 31.751980>,  <32.793762, 28.035658, 31.634579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.933296, 27.879622, 31.751980>,  <33.165852, 27.619560, 31.947649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.933296, 27.879622, 31.751980> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092261, -0.544666, -0.833563,
		-0.808380, -0.529753, 0.256677,
		-0.581385, 0.650154, -0.489173,
		32.758881, 28.074667, 31.605228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.957939, 27.301762, 31.322531>,  <33.165852, 27.619560, 31.947649>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.957939, 27.301762, 31.322531> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.740398, 27.627392, 31.241043>,  <32.609875, 27.822771, 31.192150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.740398, 27.627392, 31.241043>,  <32.957939, 27.301762, 31.322531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.740398, 27.627392, 31.241043> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081156, -0.292644, -0.952772,
		-0.835246, -0.501636, 0.225223,
		-0.543854, 0.814077, -0.203719,
		32.577244, 27.871614, 31.179928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.432217, 27.046217, 30.909977>,  <32.957939, 27.301762, 31.322531>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.432217, 27.046217, 30.909977> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.495510, 27.432386, 30.827108>,  <32.533485, 27.664087, 30.777388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.495510, 27.432386, 30.827108>,  <32.432217, 27.046217, 30.909977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.495510, 27.432386, 30.827108> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106365, -0.191928, -0.975628,
		-0.981656, 0.176413, 0.072318,
		0.158233, 0.965423, -0.207172,
		32.542980, 27.722013, 30.764957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.929285, 27.346306, 30.434517>,  <32.432217, 27.046217, 30.909977>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.929285, 27.346306, 30.434517> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.268032, 27.555101, 30.393841>,  <32.471279, 27.680378, 30.369434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.268032, 27.555101, 30.393841>,  <31.929285, 27.346306, 30.434517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.268032, 27.555101, 30.393841> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083027, -0.059096, -0.994793,
		-0.525279, 0.850903, -0.006707,
		0.846870, 0.521988, -0.101690,
		32.522095, 27.711699, 30.363335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.848715, 27.806767, 29.822235>,  <31.929285, 27.346306, 30.434517>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.848715, 27.806767, 29.822235> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.243755, 27.829355, 29.880819>,  <32.480782, 27.842909, 29.915970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.243755, 27.829355, 29.880819>,  <31.848715, 27.806767, 29.822235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.243755, 27.829355, 29.880819> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146351, 0.006100, -0.989214,
		-0.056757, 0.998386, -0.002241,
		0.987603, 0.056473, 0.146461,
		32.540035, 27.846296, 29.924757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.051174, 28.241133, 29.256639>,  <31.848715, 27.806767, 29.822235>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.051174, 28.241133, 29.256639> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.389557, 28.071526, 29.385986>,  <32.592587, 27.969761, 29.463594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.389557, 28.071526, 29.385986>,  <32.051174, 28.241133, 29.256639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.389557, 28.071526, 29.385986> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391805, 0.082889, -0.916307,
		0.361726, 0.901853, 0.236252,
		0.845957, -0.424017, 0.323368,
		32.643345, 27.944321, 29.482996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.651314, 28.693506, 29.006351>,  <32.051174, 28.241133, 29.256639>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.651314, 28.693506, 29.006351> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.791893, 28.326828, 29.082403>,  <32.876240, 28.106821, 29.128035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.791893, 28.326828, 29.082403>,  <32.651314, 28.693506, 29.006351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.791893, 28.326828, 29.082403> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369793, -0.050645, -0.927733,
		0.860078, 0.396363, 0.321188,
		0.351453, -0.916696, 0.190131,
		32.897327, 28.051819, 29.139442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.710648, 29.367657, 29.040537>,  <32.651314, 28.693506, 29.006351>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.710648, 29.367657, 29.040537> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.409874, 29.568583, 28.869761>,  <32.229412, 29.689138, 28.767294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.409874, 29.568583, 28.869761>,  <32.710648, 29.367657, 29.040537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.409874, 29.568583, 28.869761> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340383, 0.258798, 0.903971,
		0.564570, 0.825047, -0.023619,
		-0.751931, 0.502315, -0.426941,
		32.184296, 29.719276, 28.741678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.741989, 30.036489, 29.266424>,  <32.710648, 29.367657, 29.040537>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.741989, 30.036489, 29.266424> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.361595, 30.010235, 29.145546>,  <32.133358, 29.994482, 29.073019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.361595, 30.010235, 29.145546>,  <32.741989, 30.036489, 29.266424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.361595, 30.010235, 29.145546> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308735, 0.257409, 0.915655,
		0.017685, 0.964071, -0.265057,
		-0.950984, -0.065639, -0.302195,
		32.076302, 29.990543, 29.054888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.370319, 30.746456, 29.485647>,  <32.741989, 30.036489, 29.266424>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.370319, 30.746456, 29.485647> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.093937, 30.460697, 29.441425>,  <31.928108, 30.289242, 29.414892>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.093937, 30.460697, 29.441425>,  <32.370319, 30.746456, 29.485647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.093937, 30.460697, 29.441425> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442404, 0.296932, 0.846233,
		-0.571719, 0.633616, -0.521218,
		-0.690953, -0.714396, -0.110553,
		31.886650, 30.246378, 29.408258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.701847, 31.100183, 29.558155>,  <32.370319, 30.746456, 29.485647>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.701847, 31.100183, 29.558155> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.596333, 30.720581, 29.627211>,  <31.533024, 30.492819, 29.668644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.596333, 30.720581, 29.627211>,  <31.701847, 31.100183, 29.558155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.596333, 30.720581, 29.627211> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409058, 0.272149, 0.870980,
		-0.873549, 0.159133, -0.459987,
		-0.263787, -0.949006, 0.172641,
		31.517197, 30.435879, 29.679003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.018982, 31.104502, 29.734289>,  <31.701847, 31.100183, 29.558155>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.018982, 31.104502, 29.734289> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.141294, 30.763872, 29.904617>,  <31.214682, 30.559494, 30.006815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.141294, 30.763872, 29.904617>,  <31.018982, 31.104502, 29.734289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.141294, 30.763872, 29.904617> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371170, 0.305239, 0.876962,
		-0.876774, -0.426209, -0.222743,
		0.305779, -0.851572, 0.425821,
		31.233028, 30.508400, 30.032364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.570225, 30.914392, 30.303268>,  <31.018982, 31.104502, 29.734289>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.570225, 30.914392, 30.303268> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.908356, 30.717220, 30.385675>,  <31.111235, 30.598917, 30.435120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.908356, 30.717220, 30.385675>,  <30.570225, 30.914392, 30.303268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.908356, 30.717220, 30.385675> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084107, 0.258025, 0.962470,
		-0.527589, -0.830928, 0.176656,
		0.845326, -0.492931, 0.206018,
		31.161953, 30.569342, 30.447481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.345423, 30.574432, 30.953087>,  <30.570225, 30.914392, 30.303268>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.345423, 30.574432, 30.953087> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.745342, 30.580074, 30.958773>,  <30.985294, 30.583460, 30.962183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.745342, 30.580074, 30.958773>,  <30.345423, 30.574432, 30.953087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.745342, 30.580074, 30.958773> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016261, 0.157766, 0.987343,
		0.011683, -0.987376, 0.157964,
		0.999800, 0.014104, 0.014213,
		31.045282, 30.584307, 30.963036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.493484, 30.164017, 31.546085>,  <30.345423, 30.574432, 30.953087>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.493484, 30.164017, 31.546085> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.802658, 30.401718, 31.457151>,  <30.988163, 30.544338, 31.403791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.802658, 30.401718, 31.457151>,  <30.493484, 30.164017, 31.546085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.802658, 30.401718, 31.457151> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061745, 0.278309, 0.958505,
		0.631472, -0.754591, 0.178423,
		0.772936, 0.594253, -0.222337,
		31.034538, 30.579994, 31.390450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.863138, 30.251068, 32.246372>,  <30.493484, 30.164017, 31.546085>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.863138, 30.251068, 32.246372> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.057112, 30.518129, 32.020424>,  <31.173496, 30.678366, 31.884855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.057112, 30.518129, 32.020424>,  <30.863138, 30.251068, 32.246372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.057112, 30.518129, 32.020424> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091122, 0.603811, 0.791902,
		0.869792, -0.435491, 0.231969,
		0.484932, 0.667652, -0.564872,
		31.202591, 30.718426, 31.850962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.452862, 30.440544, 32.549248>,  <30.863138, 30.251068, 32.246372>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.452862, 30.440544, 32.549248> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.386761, 30.759989, 32.317764>,  <31.347099, 30.951656, 32.178875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.386761, 30.759989, 32.317764>,  <31.452862, 30.440544, 32.549248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.386761, 30.759989, 32.317764> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019204, 0.584063, 0.811481,
		0.986064, 0.145213, -0.081182,
		-0.165253, 0.798614, -0.578712,
		31.337185, 30.999573, 32.144150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.056297, 30.984264, 32.704693>,  <31.452862, 30.440544, 32.549248>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.056297, 30.984264, 32.704693> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.719376, 31.144691, 32.560658>,  <31.517221, 31.240948, 32.474236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.719376, 31.144691, 32.560658>,  <32.056297, 30.984264, 32.704693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.719376, 31.144691, 32.560658> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092266, 0.550922, 0.829441,
		0.531042, 0.731868, -0.427041,
		-0.842307, 0.401067, -0.360089,
		31.466684, 31.265011, 32.452629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.058163, 31.619022, 32.874687>,  <32.056297, 30.984264, 32.704693>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.058163, 31.619022, 32.874687> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.665993, 31.571630, 32.811794>,  <31.430691, 31.543196, 32.774059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.665993, 31.571630, 32.811794>,  <32.058163, 31.619022, 32.874687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.665993, 31.571630, 32.811794> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194777, 0.467357, 0.862345,
		-0.028684, 0.876094, -0.481287,
		-0.980428, -0.118479, -0.157237,
		31.371864, 31.536087, 32.764622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.869867, 32.249786, 32.733822>,  <32.058163, 31.619022, 32.874687>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.869867, 32.249786, 32.733822> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.553743, 32.067310, 32.897430>,  <31.364069, 31.957825, 32.995594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.553743, 32.067310, 32.897430>,  <31.869867, 32.249786, 32.733822>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.553743, 32.067310, 32.897430> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054828, 0.612235, 0.788773,
		-0.610247, 0.645802, -0.458845,
		-0.790312, -0.456189, 0.409023,
		31.316650, 31.930454, 33.020138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.662857, 32.656010, 33.222610>,  <31.869867, 32.249786, 32.733822>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.662857, 32.656010, 33.222610> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.404364, 32.373016, 33.337044>,  <31.249268, 32.203220, 33.405704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.404364, 32.373016, 33.337044>,  <31.662857, 32.656010, 33.222610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.404364, 32.373016, 33.337044> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103007, 0.452313, 0.885891,
		-0.756155, 0.543025, -0.365176,
		-0.646234, -0.707487, 0.286083,
		31.210493, 32.160770, 33.422867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.035606, 32.975220, 33.278992>,  <31.662857, 32.656010, 33.222610>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.035606, 32.975220, 33.278992> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.081406, 32.663486, 33.525417>,  <31.108885, 32.476448, 33.673271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.081406, 32.663486, 33.525417>,  <31.035606, 32.975220, 33.278992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.081406, 32.663486, 33.525417> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027230, 0.622372, 0.782248,
		-0.993050, -0.072792, 0.092483,
		0.114500, -0.779330, 0.616064,
		31.115755, 32.429688, 33.710236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.797586, 33.506756, 32.763130>,  <31.035606, 32.975220, 33.278992>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.797586, 33.506756, 32.763130> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.019247, 33.649445, 33.063972>,  <31.152245, 33.735058, 33.244476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.019247, 33.649445, 33.063972>,  <30.797586, 33.506756, 32.763130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.019247, 33.649445, 33.063972> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363225, 0.709344, -0.604068,
		-0.748987, 0.607930, 0.263514,
		0.554153, 0.356724, 0.752105,
		31.185493, 33.756462, 33.289604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.770340, 34.234642, 32.838432>,  <30.797586, 33.506756, 32.763130>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.770340, 34.234642, 32.838432> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.125067, 34.099407, 32.964451>,  <31.337902, 34.018265, 33.040062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.125067, 34.099407, 32.964451>,  <30.770340, 34.234642, 32.838432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.125067, 34.099407, 32.964451> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424335, 0.325756, -0.844880,
		0.183018, 0.882938, 0.432349,
		0.886817, -0.338089, 0.315042,
		31.391111, 33.997982, 33.058964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.244995, 34.570648, 32.602802>,  <30.770340, 34.234642, 32.838432>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.244995, 34.570648, 32.602802> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.506716, 34.269863, 32.634892>,  <31.663748, 34.089390, 32.654144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.506716, 34.269863, 32.634892>,  <31.244995, 34.570648, 32.602802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.506716, 34.269863, 32.634892> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523107, 0.373437, -0.766097,
		0.546119, 0.543226, 0.637699,
		0.654303, -0.751965, 0.080224,
		31.703007, 34.044273, 32.658958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.933573, 34.827526, 32.544823>,  <31.244995, 34.570648, 32.602802>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.933573, 34.827526, 32.544823> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.971392, 34.446503, 32.429104>,  <31.994083, 34.217888, 32.359673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.971392, 34.446503, 32.429104>,  <31.933573, 34.827526, 32.544823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.971392, 34.446503, 32.429104> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568920, 0.290170, -0.769500,
		0.816939, -0.091832, 0.569365,
		0.094548, -0.952559, -0.289297,
		31.999756, 34.160736, 32.342316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.600773, 34.805870, 32.314667>,  <31.933573, 34.827526, 32.544823>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.600773, 34.805870, 32.314667> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.428814, 34.489994, 32.139587>,  <32.325638, 34.300468, 32.034542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.428814, 34.489994, 32.139587>,  <32.600773, 34.805870, 32.314667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.428814, 34.489994, 32.139587> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397268, 0.269886, -0.877120,
		0.810782, -0.550952, 0.197697,
		-0.429896, -0.789692, -0.437694,
		32.299847, 34.253086, 32.008278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.053715, 34.519348, 31.930254>,  <32.600773, 34.805870, 32.314667>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.053715, 34.519348, 31.930254> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.714653, 34.389069, 31.762728>,  <32.511215, 34.310902, 31.662212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.714653, 34.389069, 31.762728>,  <33.053715, 34.519348, 31.930254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.714653, 34.389069, 31.762728> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378387, 0.182224, -0.907534,
		0.371899, -0.927748, -0.031224,
		-0.847653, -0.325696, -0.418817,
		32.460358, 34.291359, 31.637083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.237915, 33.978363, 31.403858>,  <33.053715, 34.519348, 31.930254>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.237915, 33.978363, 31.403858> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.866875, 34.098278, 31.314701>,  <32.644249, 34.170227, 31.261206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.866875, 34.098278, 31.314701>,  <33.237915, 33.978363, 31.403858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.866875, 34.098278, 31.314701> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232329, -0.004287, -0.972628,
		-0.292537, -0.953996, -0.065673,
		-0.927602, 0.299788, -0.222895,
		32.588593, 34.188213, 31.247833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.154251, 33.724533, 30.770964>,  <33.237915, 33.978363, 31.403858>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.154251, 33.724533, 30.770964> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.862118, 33.997478, 30.783514>,  <32.686836, 34.161247, 30.791044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.862118, 33.997478, 30.783514>,  <33.154251, 33.724533, 30.770964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.862118, 33.997478, 30.783514> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102526, 0.154914, -0.982593,
		-0.675351, -0.714405, -0.183099,
		-0.730335, 0.682368, 0.031376,
		32.643017, 34.202190, 30.792927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.643791, 33.559494, 30.225718>,  <33.154251, 33.724533, 30.770964>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.643791, 33.559494, 30.225718> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.575420, 33.946785, 30.298737>,  <32.534397, 34.179157, 30.342548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.575420, 33.946785, 30.298737>,  <32.643791, 33.559494, 30.225718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.575420, 33.946785, 30.298737> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044392, 0.177519, -0.983116,
		-0.984283, -0.176142, 0.012639,
		-0.170925, 0.968226, 0.182548,
		32.524143, 34.237251, 30.353500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.192097, 33.640987, 29.734035>,  <32.643791, 33.559494, 30.225718>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.192097, 33.640987, 29.734035> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.321217, 34.008495, 29.824953>,  <32.398689, 34.229000, 29.879503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.321217, 34.008495, 29.824953>,  <32.192097, 33.640987, 29.734035>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.321217, 34.008495, 29.824953> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104967, 0.203918, -0.973344,
		-0.940629, 0.338052, -0.030616,
		0.322798, 0.918770, 0.227296,
		32.418056, 34.284126, 29.893143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.790758, 34.179379, 29.318846>,  <32.192097, 33.640987, 29.734035>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.790758, 34.179379, 29.318846> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.133778, 34.352375, 29.430243>,  <32.339588, 34.456173, 29.497080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.133778, 34.352375, 29.430243>,  <31.790758, 34.179379, 29.318846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.133778, 34.352375, 29.430243> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168069, 0.276110, -0.946317,
		-0.486168, 0.858321, 0.164090,
		0.857551, 0.432491, 0.278493,
		32.391045, 34.482121, 29.513790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.923235, 34.724140, 28.802290>,  <31.790758, 34.179379, 29.318846>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.923235, 34.724140, 28.802290> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.276943, 34.664223, 28.979208>,  <32.489170, 34.628273, 29.085360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.276943, 34.664223, 28.979208>,  <31.923235, 34.724140, 28.802290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.276943, 34.664223, 28.979208> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466964, 0.277999, -0.839441,
		0.002785, 0.948830, 0.315775,
		0.884272, -0.149793, 0.442295,
		32.542225, 34.619286, 29.111897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.323906, 35.255157, 28.496777>,  <31.923235, 34.724140, 28.802290>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.323906, 35.255157, 28.496777> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.576916, 34.988235, 28.654058>,  <32.728722, 34.828083, 28.748428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.576916, 34.988235, 28.654058>,  <32.323906, 35.255157, 28.496777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.576916, 34.988235, 28.654058> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542028, 0.018725, -0.840151,
		0.553276, 0.744547, 0.373544,
		0.632527, -0.667307, 0.393205,
		32.766674, 34.788044, 28.772020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.938503, 35.628323, 28.436523>,  <32.323906, 35.255157, 28.496777>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.938503, 35.628323, 28.436523> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.995583, 35.232563, 28.447329>,  <33.029831, 34.995106, 28.453812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.995583, 35.232563, 28.447329>,  <32.938503, 35.628323, 28.436523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.995583, 35.232563, 28.447329> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555541, 0.057476, -0.829500,
		0.819153, 0.133376, 0.557853,
		0.142699, -0.989398, 0.027014,
		33.038391, 34.935745, 28.455433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.460587, 35.496758, 27.991207>,  <32.938503, 35.628323, 28.436523>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.460587, 35.496758, 27.991207> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.410355, 35.104988, 28.054398>,  <33.380215, 34.869926, 28.092312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.410355, 35.104988, 28.054398>,  <33.460587, 35.496758, 27.991207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.410355, 35.104988, 28.054398> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636440, -0.201688, -0.744491,
		0.761034, 0.007046, 0.648674,
		-0.125584, -0.979425, 0.157976,
		33.372681, 34.811161, 28.101789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.162800, 35.207783, 28.003036>,  <33.460587, 35.496758, 27.991207>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.162800, 35.207783, 28.003036> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.877289, 34.976841, 27.844452>,  <33.705982, 34.838276, 27.749300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.877289, 34.976841, 27.844452>,  <34.162800, 35.207783, 28.003036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.877289, 34.976841, 27.844452> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645913, -0.323810, -0.691335,
		0.270764, -0.749542, 0.604047,
		-0.713781, -0.577350, -0.396463,
		33.663155, 34.803635, 27.725513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.526836, 34.638821, 27.649996>,  <34.162800, 35.207783, 28.003036>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.526836, 34.638821, 27.649996> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.164051, 34.641323, 27.481527>,  <33.946381, 34.642826, 27.380445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.164051, 34.641323, 27.481527>,  <34.526836, 34.638821, 27.649996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.164051, 34.641323, 27.481527> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396330, -0.325939, -0.858304,
		-0.142648, -0.945370, 0.293133,
		-0.906959, 0.006258, -0.421173,
		33.891964, 34.643200, 27.355175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.449368, 34.011902, 27.359379>,  <34.526836, 34.638821, 27.649996>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.449368, 34.011902, 27.359379> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.184071, 34.245373, 27.172009>,  <34.024891, 34.385456, 27.059586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.184071, 34.245373, 27.172009>,  <34.449368, 34.011902, 27.359379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.184071, 34.245373, 27.172009> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272907, -0.394183, -0.877577,
		-0.696869, -0.709887, 0.102150,
		-0.663247, 0.583678, -0.468427,
		33.985096, 34.420475, 27.031481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.122910, 33.549717, 26.856424>,  <34.449368, 34.011902, 27.359379>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.122910, 33.549717, 26.856424> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.030075, 33.916103, 26.725492>,  <33.974373, 34.135937, 26.646935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.030075, 33.916103, 26.725492>,  <34.122910, 33.549717, 26.856424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.030075, 33.916103, 26.725492> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257776, -0.266565, -0.928706,
		-0.937916, -0.299917, -0.174248,
		-0.232086, 0.915965, -0.327328,
		33.960449, 34.190891, 26.627295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.901047, 33.431877, 26.173019>,  <34.122910, 33.549717, 26.856424>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.901047, 33.431877, 26.173019> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.973133, 33.825317, 26.170265>,  <34.016384, 34.061382, 26.168613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.973133, 33.825317, 26.170265>,  <33.901047, 33.431877, 26.173019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.973133, 33.825317, 26.170265> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338282, -0.068550, -0.938545,
		-0.923628, 0.166809, -0.345089,
		0.180213, 0.983603, -0.006886,
		34.027199, 34.120399, 26.168200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.647335, 33.726166, 25.527443>,  <33.901047, 33.431877, 26.173019>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.647335, 33.726166, 25.527443> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.945145, 33.964542, 25.647808>,  <34.123829, 34.107567, 25.720028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.945145, 33.964542, 25.647808>,  <33.647335, 33.726166, 25.527443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.945145, 33.964542, 25.647808> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348835, 0.037044, -0.936452,
		-0.569214, 0.802176, -0.180304,
		0.744520, 0.595938, 0.300913,
		34.168499, 34.143322, 25.738083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.701984, 34.173782, 24.900145>,  <33.647335, 33.726166, 25.527443>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.701984, 34.173782, 24.900145> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.032734, 34.235352, 25.116508>,  <34.231186, 34.272293, 25.246326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.032734, 34.235352, 25.116508>,  <33.701984, 34.173782, 24.900145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.032734, 34.235352, 25.116508> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535273, 0.079633, -0.840917,
		-0.172508, 0.984869, -0.016542,
		0.826876, 0.153919, 0.540912,
		34.280796, 34.281528, 25.278782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.124237, 34.755005, 24.592331>,  <33.701984, 34.173782, 24.900145>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.124237, 34.755005, 24.592331> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.398998, 34.575611, 24.821075>,  <34.563854, 34.467976, 24.958323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.398998, 34.575611, 24.821075>,  <34.124237, 34.755005, 24.592331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.398998, 34.575611, 24.821075> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685558, 0.138726, -0.714678,
		0.241188, 0.882960, 0.402752,
		0.686905, -0.448482, 0.571862,
		34.605068, 34.441067, 24.992634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.620491, 35.177059, 24.701565>,  <34.124237, 34.755005, 24.592331>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.620491, 35.177059, 24.701565> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.801205, 34.824917, 24.759348>,  <34.909634, 34.613632, 24.794018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.801205, 34.824917, 24.759348>,  <34.620491, 35.177059, 24.701565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.801205, 34.824917, 24.759348> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727854, 0.270096, -0.630299,
		0.515869, 0.389901, 0.762795,
		0.451782, -0.880355, 0.144457,
		34.936741, 34.560810, 24.802685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.316853, 35.365654, 24.581993>,  <34.620491, 35.177059, 24.701565>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.316853, 35.365654, 24.581993> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.321800, 34.965813, 24.571812>,  <35.324768, 34.725910, 24.565702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.321800, 34.965813, 24.571812>,  <35.316853, 35.365654, 24.581993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.321800, 34.965813, 24.571812> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658457, 0.027303, -0.752123,
		0.752516, -0.007455, 0.658531,
		0.012373, -0.999599, -0.025455,
		35.325512, 34.665932, 24.564175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.012341, 35.244335, 24.610184>,  <35.316853, 35.365654, 24.581993>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.012341, 35.244335, 24.610184> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.841591, 34.918182, 24.453756>,  <35.739140, 34.722492, 24.359900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.841591, 34.918182, 24.453756>,  <36.012341, 35.244335, 24.610184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.841591, 34.918182, 24.453756> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700617, -0.024774, -0.713107,
		0.571765, -0.578397, 0.581844,
		-0.426873, -0.815379, -0.391070,
		35.713528, 34.673569, 24.336435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.536591, 34.754932, 24.545567>,  <36.012341, 35.244335, 24.610184>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.536591, 34.754932, 24.545567> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.237034, 34.683411, 24.290319>,  <36.057301, 34.640495, 24.137171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.237034, 34.683411, 24.290319>,  <36.536591, 34.754932, 24.545567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.237034, 34.683411, 24.290319> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654323, -0.046914, -0.754759,
		0.105019, -0.982765, 0.152131,
		-0.748888, -0.178807, -0.638118,
		36.012367, 34.629768, 24.098885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.094025, 34.270836, 24.685514>,  <36.536591, 34.754932, 24.545567>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.094025, 34.270836, 24.685514> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.449448, 34.414124, 24.800161>,  <37.662701, 34.500095, 24.868950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.449448, 34.414124, 24.800161>,  <37.094025, 34.270836, 24.685514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.449448, 34.414124, 24.800161> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282174, -0.065860, 0.957100,
		0.361732, -0.931310, 0.042561,
		0.888554, 0.358224, 0.286615,
		37.716015, 34.521591, 24.886147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.294197, 33.800522, 25.177412>,  <37.094025, 34.270836, 24.685514>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.294197, 33.800522, 25.177412> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.514584, 34.126968, 25.247149>,  <37.646816, 34.322834, 25.288990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.514584, 34.126968, 25.247149>,  <37.294197, 33.800522, 25.177412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.514584, 34.126968, 25.247149> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345952, 0.033248, 0.937663,
		0.759443, -0.576934, 0.300655,
		0.550966, 0.816114, 0.174342,
		37.679874, 34.371803, 25.299452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.740204, 33.605778, 25.730486>,  <37.294197, 33.800522, 25.177412>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.740204, 33.605778, 25.730486> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.729877, 34.005638, 25.728104>,  <37.723682, 34.245552, 25.726675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.729877, 34.005638, 25.728104>,  <37.740204, 33.605778, 25.730486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.729877, 34.005638, 25.728104> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071336, 0.004098, 0.997444,
		0.997118, 0.026180, 0.071205,
		-0.025821, 0.999649, -0.005953,
		37.722130, 34.305534, 25.726318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.212231, 33.784348, 26.145319>,  <37.740204, 33.605778, 25.730486>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.212231, 33.784348, 26.145319> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.970829, 34.102962, 26.159777>,  <37.825989, 34.294132, 26.168451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.970829, 34.102962, 26.159777>,  <38.212231, 33.784348, 26.145319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.970829, 34.102962, 26.159777> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185908, -0.184645, 0.965062,
		0.775385, 0.575699, 0.259517,
		-0.603504, 0.796540, 0.036144,
		37.789780, 34.341923, 26.170620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.261841, 34.082813, 26.806652>,  <38.212231, 33.784348, 26.145319>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.261841, 34.082813, 26.806652> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.923615, 34.250172, 26.674004>,  <37.720680, 34.350586, 26.594414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.923615, 34.250172, 26.674004>,  <38.261841, 34.082813, 26.806652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.923615, 34.250172, 26.674004> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306408, 0.128350, 0.943208,
		0.437196, 0.899151, 0.019671,
		-0.845561, 0.418394, -0.331621,
		37.669945, 34.375690, 26.574518>
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
