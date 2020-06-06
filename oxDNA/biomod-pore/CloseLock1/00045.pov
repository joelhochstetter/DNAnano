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
	<24.361839, 35.494377, 34.827885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.385944, 35.099281, 34.770290>,  <24.400408, 34.862225, 34.735733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.385944, 35.099281, 34.770290>,  <24.361839, 35.494377, 34.827885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.385944, 35.099281, 34.770290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863815, 0.123887, -0.488340,
		0.500193, -0.094948, 0.860693,
		0.060262, -0.987743, -0.143985,
		24.404022, 34.802959, 34.727097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.996428, 35.289402, 35.080486>,  <24.361839, 35.494377, 34.827885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.996428, 35.289402, 35.080486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.909489, 35.009365, 34.808418>,  <24.857325, 34.841343, 34.645176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.909489, 35.009365, 34.808418>,  <24.996428, 35.289402, 35.080486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.909489, 35.009365, 34.808418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857708, 0.195649, -0.475456,
		0.465936, -0.686730, 0.557947,
		-0.217348, -0.700088, -0.680174,
		24.844284, 34.799339, 34.604366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.590744, 34.850163, 34.891827>,  <24.996428, 35.289402, 35.080486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.590744, 34.850163, 34.891827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.350220, 34.798096, 34.576488>,  <25.205906, 34.766857, 34.387287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.350220, 34.798096, 34.576488>,  <25.590744, 34.850163, 34.891827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.350220, 34.798096, 34.576488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781726, 0.108306, -0.614145,
		0.165324, -0.985559, 0.036629,
		-0.601309, -0.130167, -0.788342,
		25.169827, 34.759045, 34.339985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.813850, 34.336189, 34.464031>,  <25.590744, 34.850163, 34.891827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.813850, 34.336189, 34.464031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.627155, 34.603504, 34.232327>,  <25.515139, 34.763893, 34.093304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.627155, 34.603504, 34.232327>,  <25.813850, 34.336189, 34.464031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.627155, 34.603504, 34.232327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764770, -0.023966, -0.643857,
		-0.444166, -0.743515, -0.499902,
		-0.466737, 0.668290, -0.579263,
		25.487135, 34.803989, 34.058548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.750492, 34.067394, 33.760536>,  <25.813850, 34.336189, 34.464031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.750492, 34.067394, 33.760536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.775322, 34.466114, 33.780655>,  <25.790220, 34.705345, 33.792725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.775322, 34.466114, 33.780655>,  <25.750492, 34.067394, 33.760536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.775322, 34.466114, 33.780655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707980, -0.008458, -0.706182,
		-0.703499, 0.079446, -0.706242,
		0.062077, 0.996803, 0.050296,
		25.793945, 34.765156, 33.795742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.619425, 34.277927, 33.046391>,  <25.750492, 34.067394, 33.760536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.619425, 34.277927, 33.046391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.823990, 34.566139, 33.233704>,  <25.946730, 34.739067, 33.346092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.823990, 34.566139, 33.233704>,  <25.619425, 34.277927, 33.046391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.823990, 34.566139, 33.233704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585327, 0.106898, -0.803720,
		-0.629165, 0.685131, -0.367079,
		0.511413, 0.720534, 0.468282,
		25.977413, 34.782299, 33.374187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.498253, 34.940945, 32.686386>,  <25.619425, 34.277927, 33.046391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.498253, 34.940945, 32.686386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.850149, 34.938984, 32.876556>,  <26.061287, 34.937809, 32.990658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.850149, 34.938984, 32.876556>,  <25.498253, 34.940945, 32.686386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.850149, 34.938984, 32.876556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459984, 0.261758, -0.848467,
		-0.120291, 0.965121, 0.232533,
		0.879741, -0.004898, 0.475428,
		26.114071, 34.937515, 33.019184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.679310, 35.583099, 32.799595>,  <25.498253, 34.940945, 32.686386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.679310, 35.583099, 32.799595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.996929, 35.341511, 32.772163>,  <26.187500, 35.196556, 32.755707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.996929, 35.341511, 32.772163>,  <25.679310, 35.583099, 32.799595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.996929, 35.341511, 32.772163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316264, 0.506846, -0.801925,
		0.519100, 0.615079, 0.593476,
		0.794048, -0.603974, -0.068576,
		26.235144, 35.160320, 32.751591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.173065, 36.000755, 32.683121>,  <25.679310, 35.583099, 32.799595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.173065, 36.000755, 32.683121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.331238, 35.654388, 32.560600>,  <26.426142, 35.446568, 32.487087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.331238, 35.654388, 32.560600>,  <26.173065, 36.000755, 32.683121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.331238, 35.654388, 32.560600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422685, 0.467629, -0.776312,
		0.815458, 0.177509, 0.550926,
		0.395431, -0.865918, -0.306302,
		26.449867, 35.394611, 32.468708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.899527, 36.090900, 32.539196>,  <26.173065, 36.000755, 32.683121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.899527, 36.090900, 32.539196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.786390, 35.777672, 32.317638>,  <26.718510, 35.589733, 32.184704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.786390, 35.777672, 32.317638>,  <26.899527, 36.090900, 32.539196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.786390, 35.777672, 32.317638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493443, 0.376400, -0.784116,
		0.822506, -0.495091, 0.279943,
		-0.282838, -0.783076, -0.553890,
		26.701538, 35.542747, 32.151470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.580641, 35.896282, 32.094818>,  <26.899527, 36.090900, 32.539196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.580641, 35.896282, 32.094818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.258066, 35.750759, 31.908354>,  <27.064522, 35.663445, 31.796476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.258066, 35.750759, 31.908354>,  <27.580641, 35.896282, 32.094818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.258066, 35.750759, 31.908354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401689, 0.241480, -0.883365,
		0.433948, -0.899626, -0.048598,
		-0.806433, -0.363813, -0.466160,
		27.016136, 35.641617, 31.768505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.852175, 35.605011, 31.484819>,  <27.580641, 35.896282, 32.094818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.852175, 35.605011, 31.484819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.460360, 35.616550, 31.405149>,  <27.225269, 35.623474, 31.357347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.460360, 35.616550, 31.405149>,  <27.852175, 35.605011, 31.484819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.460360, 35.616550, 31.405149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199559, 0.267301, -0.942723,
		0.026042, -0.963181, -0.267589,
		-0.979540, 0.028849, -0.199173,
		27.166498, 35.625206, 31.345398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.838493, 35.226906, 30.875168>,  <27.852175, 35.605011, 31.484819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.838493, 35.226906, 30.875168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.523550, 35.468292, 30.925594>,  <27.334583, 35.613125, 30.955851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.523550, 35.468292, 30.925594>,  <27.838493, 35.226906, 30.875168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.523550, 35.468292, 30.925594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169008, 0.407948, -0.897226,
		-0.592874, -0.685134, -0.423192,
		-0.787360, 0.603465, 0.126069,
		27.287342, 35.649330, 30.963415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.504595, 35.145206, 30.258011>,  <27.838493, 35.226906, 30.875168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.504595, 35.145206, 30.258011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.342541, 35.484547, 30.394341>,  <27.245308, 35.688152, 30.476139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.342541, 35.484547, 30.394341>,  <27.504595, 35.145206, 30.258011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.342541, 35.484547, 30.394341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144255, 0.427437, -0.892462,
		-0.902804, -0.312403, -0.295549,
		-0.405136, 0.848353, 0.340826,
		27.221001, 35.739052, 30.496588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.893826, 35.384491, 29.762245>,  <27.504595, 35.145206, 30.258011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.893826, 35.384491, 29.762245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.069590, 35.683304, 29.961788>,  <27.175047, 35.862591, 30.081514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.069590, 35.683304, 29.961788>,  <26.893826, 35.384491, 29.762245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.069590, 35.683304, 29.961788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126595, 0.498299, -0.857713,
		-0.889322, 0.440040, 0.124386,
		0.439409, 0.747036, 0.498855,
		27.201412, 35.907413, 30.111444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.781633, 36.060951, 29.297169>,  <26.893826, 35.384491, 29.762245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.781633, 36.060951, 29.297169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.062895, 36.183102, 29.554018>,  <27.231651, 36.256393, 29.708128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.062895, 36.183102, 29.554018>,  <26.781633, 36.060951, 29.297169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.062895, 36.183102, 29.554018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480953, 0.460874, -0.745842,
		-0.523701, 0.833271, 0.177192,
		0.703151, 0.305377, 0.642124,
		27.273840, 36.274715, 29.746655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.833366, 36.743088, 29.012835>,  <26.781633, 36.060951, 29.297169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.833366, 36.743088, 29.012835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.156174, 36.666588, 29.236315>,  <27.349857, 36.620689, 29.370403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.156174, 36.666588, 29.236315>,  <26.833366, 36.743088, 29.012835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.156174, 36.666588, 29.236315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538827, 0.625617, -0.564154,
		-0.241637, 0.756325, 0.607935,
		0.807017, -0.191251, 0.558700,
		27.398279, 36.609211, 29.403925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.144590, 37.348026, 29.056231>,  <26.833366, 36.743088, 29.012835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.144590, 37.348026, 29.056231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.436472, 37.082512, 29.121853>,  <27.611601, 36.923203, 29.161226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.436472, 37.082512, 29.121853>,  <27.144590, 37.348026, 29.056231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.436472, 37.082512, 29.121853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650038, 0.599031, -0.467560,
		0.212086, 0.447824, 0.868604,
		0.729706, -0.663789, 0.164056,
		27.655384, 36.883377, 29.171070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.749172, 37.715282, 29.198044>,  <27.144590, 37.348026, 29.056231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.749172, 37.715282, 29.198044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.899796, 37.362408, 29.084946>,  <27.990170, 37.150681, 29.017086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.899796, 37.362408, 29.084946>,  <27.749172, 37.715282, 29.198044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.899796, 37.362408, 29.084946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676295, 0.470370, -0.566902,
		0.633110, 0.022252, 0.773742,
		0.376560, -0.882188, -0.282747,
		28.012764, 37.097752, 29.000122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.469002, 37.949039, 29.129156>,  <27.749172, 37.715282, 29.198044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.469002, 37.949039, 29.129156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.407564, 37.603317, 28.937582>,  <28.370701, 37.395882, 28.822638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.407564, 37.603317, 28.937582>,  <28.469002, 37.949039, 29.129156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.407564, 37.603317, 28.937582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521511, 0.340782, -0.782237,
		0.839307, -0.369917, 0.398404,
		-0.153594, -0.864308, -0.478936,
		28.361486, 37.344025, 28.793901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.146076, 37.765694, 28.838768>,  <28.469002, 37.949039, 29.129156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.146076, 37.765694, 28.838768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.888391, 37.546829, 28.625000>,  <28.733782, 37.415508, 28.496738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.888391, 37.546829, 28.625000>,  <29.146076, 37.765694, 28.838768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.888391, 37.546829, 28.625000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556631, 0.143806, -0.818219,
		0.524552, -0.824580, 0.211927,
		-0.644211, -0.547163, -0.534421,
		28.695127, 37.382679, 28.464674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.504801, 37.150749, 28.462660>,  <29.146076, 37.765694, 28.838768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.504801, 37.150749, 28.462660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.162622, 37.214203, 28.265459>,  <28.957315, 37.252277, 28.147139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.162622, 37.214203, 28.265459>,  <29.504801, 37.150749, 28.462660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.162622, 37.214203, 28.265459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459780, -0.205501, -0.863928,
		-0.238371, -0.965713, 0.102852,
		-0.855442, 0.158646, -0.493001,
		28.905989, 37.261795, 28.117559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.576727, 36.706005, 27.955420>,  <29.504801, 37.150749, 28.462660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.576727, 36.706005, 27.955420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.306837, 36.966499, 27.816484>,  <29.144903, 37.122795, 27.733124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.306837, 36.966499, 27.816484>,  <29.576727, 36.706005, 27.955420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.306837, 36.966499, 27.816484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495944, 0.051508, -0.866826,
		-0.546614, -0.757129, -0.357729,
		-0.674725, 0.651232, -0.347338,
		29.104420, 37.161869, 27.712282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.449722, 36.512989, 27.314592>,  <29.576727, 36.706005, 27.955420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.449722, 36.512989, 27.314592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.341692, 36.897926, 27.326994>,  <29.276875, 37.128887, 27.334435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.341692, 36.897926, 27.326994>,  <29.449722, 36.512989, 27.314592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.341692, 36.897926, 27.326994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579798, 0.188255, -0.792713,
		-0.768696, -0.196116, -0.608805,
		-0.270074, 0.962340, 0.031003,
		29.260670, 37.186630, 27.336294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.215847, 36.592838, 26.659914>,  <29.449722, 36.512989, 27.314592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.215847, 36.592838, 26.659914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.306877, 36.959160, 26.792290>,  <29.361496, 37.178951, 26.871716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.306877, 36.959160, 26.792290>,  <29.215847, 36.592838, 26.659914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.306877, 36.959160, 26.792290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488517, 0.186618, -0.852364,
		-0.842354, 0.355647, -0.404914,
		0.227577, 0.915800, 0.330938,
		29.375151, 37.233898, 26.891571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.018002, 37.237907, 26.263432>,  <29.215847, 36.592838, 26.659914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.018002, 37.237907, 26.263432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.352200, 37.338943, 26.458632>,  <29.552719, 37.399567, 26.575752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.352200, 37.338943, 26.458632>,  <29.018002, 37.237907, 26.263432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.352200, 37.338943, 26.458632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397600, 0.335108, -0.854176,
		-0.379289, 0.907690, 0.179552,
		0.835497, 0.252589, 0.488000,
		29.602848, 37.414719, 26.605032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.106689, 38.009911, 26.117622>,  <29.018002, 37.237907, 26.263432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.106689, 38.009911, 26.117622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.427227, 37.783169, 26.194067>,  <29.619551, 37.647125, 26.239933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.427227, 37.783169, 26.194067>,  <29.106689, 38.009911, 26.117622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.427227, 37.783169, 26.194067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338659, 0.166542, -0.926053,
		0.493107, 0.806810, 0.325428,
		0.801346, -0.566853, 0.191111,
		29.667631, 37.613113, 26.251400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.812393, 38.335957, 25.878925>,  <29.106689, 38.009911, 26.117622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.812393, 38.335957, 25.878925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.832445, 37.937195, 25.854673>,  <29.844477, 37.697937, 25.840122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.832445, 37.937195, 25.854673>,  <29.812393, 38.335957, 25.878925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.832445, 37.937195, 25.854673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468131, 0.077077, -0.880291,
		0.882236, 0.015747, 0.470544,
		0.050130, -0.996901, -0.060629,
		29.847485, 37.638126, 25.836485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.549898, 38.247456, 25.695063>,  <29.812393, 38.335957, 25.878925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.549898, 38.247456, 25.695063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.627663, 38.638145, 25.731297>,  <30.674322, 38.872559, 25.753036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.627663, 38.638145, 25.731297>,  <30.549898, 38.247456, 25.695063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.627663, 38.638145, 25.731297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542857, -0.184048, 0.819410,
		0.817013, -0.110130, -0.566005,
		0.194413, 0.976728, 0.090585,
		30.685987, 38.931164, 25.758472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.355925, 38.403080, 25.655214>,  <30.549898, 38.247456, 25.695063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.355925, 38.403080, 25.655214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.140965, 38.678444, 25.850065>,  <31.011988, 38.843662, 25.966976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.140965, 38.678444, 25.850065>,  <31.355925, 38.403080, 25.655214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.140965, 38.678444, 25.850065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574553, -0.123957, 0.809026,
		0.617323, 0.714653, -0.328912,
		-0.537402, 0.688408, 0.487128,
		30.979744, 38.884968, 25.996204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.858267, 38.838791, 26.057777>,  <31.355925, 38.403080, 25.655214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.858267, 38.838791, 26.057777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.493921, 38.792690, 26.216295>,  <31.275314, 38.765030, 26.311405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.493921, 38.792690, 26.216295>,  <31.858267, 38.838791, 26.057777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.493921, 38.792690, 26.216295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412581, -0.278405, 0.867334,
		0.010370, 0.953524, 0.301138,
		-0.910862, -0.115249, 0.396293,
		31.220663, 38.758114, 26.335184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.669016, 39.421707, 26.686882>,  <31.858267, 38.838791, 26.057777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.669016, 39.421707, 26.686882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.480028, 39.069839, 26.708649>,  <31.366636, 38.858719, 26.721708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.480028, 39.069839, 26.708649>,  <31.669016, 39.421707, 26.686882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.480028, 39.069839, 26.708649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184714, -0.038459, 0.982040,
		-0.861775, 0.474033, 0.180658,
		-0.472468, -0.879667, 0.054417,
		31.338287, 38.805939, 26.724974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.996878, 39.390728, 27.078093>,  <31.669016, 39.421707, 26.686882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.996878, 39.390728, 27.078093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.229519, 39.065338, 27.077379>,  <31.369102, 38.870106, 27.076950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.229519, 39.065338, 27.077379>,  <30.996878, 39.390728, 27.078093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.229519, 39.065338, 27.077379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069499, 0.047503, 0.996450,
		-0.810499, -0.579661, 0.084163,
		0.581602, -0.813472, -0.001785,
		31.403999, 38.821297, 27.076843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.689642, 38.821049, 27.489985>,  <30.996878, 39.390728, 27.078093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.689642, 38.821049, 27.489985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.088411, 38.790688, 27.482132>,  <31.327673, 38.772472, 27.477421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.088411, 38.790688, 27.482132>,  <30.689642, 38.821049, 27.489985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.088411, 38.790688, 27.482132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011666, -0.103990, 0.994510,
		-0.077521, -0.991678, -0.102785,
		0.996922, -0.075897, -0.019630,
		31.387487, 38.767918, 27.476242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.036276, 38.160267, 27.808475>,  <30.689642, 38.821049, 27.489985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.036276, 38.160267, 27.808475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.268934, 38.484890, 27.830614>,  <31.408529, 38.679665, 27.843897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.268934, 38.484890, 27.830614>,  <31.036276, 38.160267, 27.808475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.268934, 38.484890, 27.830614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017160, -0.080264, 0.996626,
		0.813260, -0.578735, -0.060612,
		0.581647, 0.811556, 0.055344,
		31.443428, 38.728355, 27.847218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.745583, 37.972878, 28.126329>,  <31.036276, 38.160267, 27.808475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.745583, 37.972878, 28.126329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.613420, 38.340847, 28.210775>,  <31.534122, 38.561630, 28.261444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.613420, 38.340847, 28.210775>,  <31.745583, 37.972878, 28.126329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.613420, 38.340847, 28.210775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112128, -0.183837, 0.976540,
		0.937155, 0.346326, -0.042409,
		-0.330405, 0.919925, 0.211117,
		31.514299, 38.616825, 28.274111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.238056, 38.188629, 28.635412>,  <31.745583, 37.972878, 28.126329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.238056, 38.188629, 28.635412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.876671, 38.360096, 28.635195>,  <31.659840, 38.462978, 28.635065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.876671, 38.360096, 28.635195>,  <32.238056, 38.188629, 28.635412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.876671, 38.360096, 28.635195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127185, -0.266841, 0.955311,
		0.409367, 0.863156, 0.295601,
		-0.903461, 0.428669, -0.000544,
		31.605633, 38.488697, 28.635031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.118649, 38.709850, 29.192900>,  <32.238056, 38.188629, 28.635412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.118649, 38.709850, 29.192900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.762104, 38.550686, 29.106056>,  <31.548176, 38.455189, 29.053951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.762104, 38.550686, 29.106056>,  <32.118649, 38.709850, 29.192900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.762104, 38.550686, 29.106056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132170, -0.229994, 0.964175,
		-0.433589, 0.888127, 0.152417,
		-0.891365, -0.397911, -0.217106,
		31.494694, 38.431313, 29.040924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.851540, 38.661877, 29.837946>,  <32.118649, 38.709850, 29.192900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.851540, 38.661877, 29.837946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.591841, 38.452808, 29.616930>,  <31.436022, 38.327370, 29.484322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.591841, 38.452808, 29.616930>,  <31.851540, 38.661877, 29.837946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.591841, 38.452808, 29.616930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313238, -0.478254, 0.820460,
		-0.693082, 0.705756, 0.146785,
		-0.649245, -0.522668, -0.552539,
		31.397068, 38.296009, 29.451168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.217993, 38.700935, 30.100855>,  <31.851540, 38.661877, 29.837946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.217993, 38.700935, 30.100855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.205435, 38.366089, 29.882404>,  <31.197901, 38.165180, 29.751333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.205435, 38.366089, 29.882404>,  <31.217993, 38.700935, 30.100855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.205435, 38.366089, 29.882404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389927, -0.492843, 0.777858,
		-0.920311, 0.237370, -0.310941,
		-0.031395, -0.837115, -0.546126,
		31.196016, 38.114956, 29.718567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.564905, 38.476536, 30.359827>,  <31.217993, 38.700935, 30.100855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.564905, 38.476536, 30.359827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.762180, 38.179096, 30.179237>,  <30.880545, 38.000633, 30.070883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.762180, 38.179096, 30.179237>,  <30.564905, 38.476536, 30.359827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.762180, 38.179096, 30.179237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315101, -0.636438, 0.704029,
		-0.810851, -0.204957, -0.548191,
		0.493186, -0.743598, -0.451474,
		30.910135, 37.956017, 30.043795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.071194, 38.009899, 30.298807>,  <30.564905, 38.476536, 30.359827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.071194, 38.009899, 30.298807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.403181, 37.789860, 30.261824>,  <30.602373, 37.657837, 30.239634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.403181, 37.789860, 30.261824>,  <30.071194, 38.009899, 30.298807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.403181, 37.789860, 30.261824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425410, -0.731427, 0.532955,
		-0.360802, -0.403003, -0.841077,
		0.829969, -0.550094, -0.092459,
		30.652172, 37.624832, 30.234085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.816793, 37.350819, 30.120792>,  <30.071194, 38.009899, 30.298807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.816793, 37.350819, 30.120792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.189577, 37.310158, 30.260002>,  <30.413246, 37.285763, 30.343529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.189577, 37.310158, 30.260002>,  <29.816793, 37.350819, 30.120792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.189577, 37.310158, 30.260002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303043, -0.745368, 0.593794,
		0.199048, -0.658858, -0.725456,
		0.931958, -0.101651, 0.348026,
		30.469164, 37.279663, 30.364410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.949347, 36.767765, 30.053101>,  <29.816793, 37.350819, 30.120792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.949347, 36.767765, 30.053101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.220053, 36.864487, 30.331242>,  <30.382477, 36.922520, 30.498127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.220053, 36.864487, 30.331242>,  <29.949347, 36.767765, 30.053101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.220053, 36.864487, 30.331242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382443, -0.691603, 0.612717,
		0.629066, -0.680600, -0.375579,
		0.676767, 0.241802, 0.695355,
		30.423082, 36.937027, 30.539848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.118940, 36.166943, 30.238504>,  <29.949347, 36.767765, 30.053101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.118940, 36.166943, 30.238504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.283176, 36.393444, 30.524378>,  <30.381718, 36.529346, 30.695902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.283176, 36.393444, 30.524378>,  <30.118940, 36.166943, 30.238504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.283176, 36.393444, 30.524378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296735, -0.658155, 0.691940,
		0.862187, -0.496173, -0.102204,
		0.410588, 0.566254, 0.714685,
		30.406353, 36.563320, 30.738783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.502928, 35.727123, 30.674831>,  <30.118940, 36.166943, 30.238504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.502928, 35.727123, 30.674831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.409338, 36.053619, 30.886120>,  <30.353184, 36.249516, 31.012892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.409338, 36.053619, 30.886120>,  <30.502928, 35.727123, 30.674831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.409338, 36.053619, 30.886120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384500, -0.576691, 0.720824,
		0.892981, -0.034446, 0.448774,
		-0.233974, 0.816236, 0.528219,
		30.339146, 36.298489, 31.044586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.715750, 35.681686, 31.333279>,  <30.502928, 35.727123, 30.674831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.715750, 35.681686, 31.333279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.441080, 35.966957, 31.389641>,  <30.276279, 36.138119, 31.423458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.441080, 35.966957, 31.389641>,  <30.715750, 35.681686, 31.333279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.441080, 35.966957, 31.389641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437870, -0.560477, 0.702948,
		0.580303, 0.420997, 0.697144,
		-0.686672, 0.713181, 0.140905,
		30.235079, 36.180912, 31.431911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.658369, 35.787975, 32.035995>,  <30.715750, 35.681686, 31.333279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.658369, 35.787975, 32.035995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.323862, 35.936420, 31.874537>,  <30.123158, 36.025490, 31.777660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.323862, 35.936420, 31.874537>,  <30.658369, 35.787975, 32.035995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.323862, 35.936420, 31.874537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532548, -0.374409, 0.759085,
		0.130578, 0.849760, 0.510742,
		-0.836266, 0.371115, -0.403649,
		30.072983, 36.047756, 31.753443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.275772, 36.086227, 32.556240>,  <30.658369, 35.787975, 32.035995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.275772, 36.086227, 32.556240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.007814, 35.994781, 32.273689>,  <29.847040, 35.939915, 32.104156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.007814, 35.994781, 32.273689>,  <30.275772, 36.086227, 32.556240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.007814, 35.994781, 32.273689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610959, -0.370851, 0.699427,
		-0.421863, 0.900113, 0.108756,
		-0.669896, -0.228617, -0.706381,
		29.806845, 35.926197, 32.061775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.746780, 36.349117, 32.959095>,  <30.275772, 36.086227, 32.556240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.746780, 36.349117, 32.959095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.565327, 36.139191, 32.670990>,  <29.456453, 36.013233, 32.498127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.565327, 36.139191, 32.670990>,  <29.746780, 36.349117, 32.959095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.565327, 36.139191, 32.670990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743845, -0.222146, 0.630353,
		-0.490825, 0.821715, -0.289611,
		-0.453635, -0.524819, -0.720264,
		29.429235, 35.981747, 32.454910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.044678, 36.459957, 33.016460>,  <29.746780, 36.349117, 32.959095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.044678, 36.459957, 33.016460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.060431, 36.121620, 32.803669>,  <29.069881, 35.918617, 32.675995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.060431, 36.121620, 32.803669>,  <29.044678, 36.459957, 33.016460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.060431, 36.121620, 32.803669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813356, -0.336390, 0.474651,
		-0.580431, 0.413994, -0.701219,
		0.039381, -0.845843, -0.531976,
		29.072245, 35.867867, 32.644077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.298254, 36.247055, 32.831150>,  <29.044678, 36.459957, 33.016460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.298254, 36.247055, 32.831150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.545719, 35.933743, 32.806725>,  <28.694199, 35.745754, 32.792068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.545719, 35.933743, 32.806725>,  <28.298254, 36.247055, 32.831150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.545719, 35.933743, 32.806725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652653, -0.555647, 0.515073,
		-0.437377, -0.278801, -0.854968,
		0.618664, -0.783279, -0.061067,
		28.731318, 35.698757, 32.788406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.905483, 35.676006, 32.730759>,  <28.298254, 36.247055, 32.831150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.905483, 35.676006, 32.730759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.243256, 35.487450, 32.832527>,  <28.445919, 35.374313, 32.893589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.243256, 35.487450, 32.832527>,  <27.905483, 35.676006, 32.730759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.243256, 35.487450, 32.832527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528037, -0.652637, 0.543361,
		-0.090095, -0.593171, -0.800019,
		0.844429, -0.471394, 0.254417,
		28.496584, 35.346031, 32.908852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.764315, 34.953636, 32.734589>,  <27.905483, 35.676006, 32.730759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.764315, 34.953636, 32.734589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.091259, 34.979786, 32.963551>,  <28.287426, 34.995476, 33.100929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.091259, 34.979786, 32.963551>,  <27.764315, 34.953636, 32.734589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.091259, 34.979786, 32.963551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368736, -0.704029, 0.606941,
		0.442669, -0.707156, -0.551339,
		0.817360, 0.065376, 0.572406,
		28.336468, 34.999397, 33.135273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.120724, 34.305012, 32.675880>,  <27.764315, 34.953636, 32.734589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.120724, 34.305012, 32.675880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.206936, 34.461025, 33.033970>,  <28.258663, 34.554634, 33.248825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.206936, 34.461025, 33.033970>,  <28.120724, 34.305012, 32.675880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.206936, 34.461025, 33.033970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383907, -0.809102, 0.444937,
		0.897866, -0.439579, -0.024649,
		0.215528, 0.390031, 0.895223,
		28.271595, 34.578033, 33.302536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.425785, 33.728252, 33.105656>,  <28.120724, 34.305012, 32.675880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.425785, 33.728252, 33.105656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.303429, 34.019936, 33.350502>,  <28.230015, 34.194946, 33.497410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.303429, 34.019936, 33.350502>,  <28.425785, 33.728252, 33.105656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.303429, 34.019936, 33.350502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501040, -0.669995, 0.547782,
		0.809561, -0.139131, 0.570310,
		-0.305892, 0.729211, 0.612112,
		28.211660, 34.238701, 33.534134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.486876, 33.404743, 33.830826>,  <28.425785, 33.728252, 33.105656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.486876, 33.404743, 33.830826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.234766, 33.715225, 33.837303>,  <28.083500, 33.901512, 33.841190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.234766, 33.715225, 33.837303>,  <28.486876, 33.404743, 33.830826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.234766, 33.715225, 33.837303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617838, -0.514094, 0.594964,
		0.470136, 0.364989, 0.803589,
		-0.630276, 0.776202, 0.016190,
		28.045683, 33.948086, 33.842159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.900179, 32.856022, 33.933514>,  <28.486876, 33.404743, 33.830826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.900179, 32.856022, 33.933514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.255680, 32.760284, 33.777134>,  <29.468981, 32.702843, 33.683308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.255680, 32.760284, 33.777134>,  <28.900179, 32.856022, 33.933514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.255680, 32.760284, 33.777134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448837, 0.627596, 0.636136,
		0.093101, -0.740837, 0.665201,
		0.888751, -0.239342, -0.390944,
		29.522305, 32.688480, 33.659851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.327671, 32.732262, 34.558632>,  <28.900179, 32.856022, 33.933514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.327671, 32.732262, 34.558632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.490517, 32.894115, 34.231091>,  <29.588224, 32.991230, 34.034565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.490517, 32.894115, 34.231091>,  <29.327671, 32.732262, 34.558632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.490517, 32.894115, 34.231091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174146, 0.845682, 0.504475,
		0.896621, -0.347980, 0.273826,
		0.407117, 0.404637, -0.818856,
		29.612652, 33.015507, 33.985435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.965631, 32.978573, 34.715427>,  <29.327671, 32.732262, 34.558632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.965631, 32.978573, 34.715427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.845375, 33.195042, 34.401295>,  <29.773222, 33.324924, 34.212814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.845375, 33.195042, 34.401295>,  <29.965631, 32.978573, 34.715427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.845375, 33.195042, 34.401295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390814, 0.821021, 0.416159,
		0.869988, -0.181803, -0.458332,
		-0.300641, 0.541176, -0.785330,
		29.755182, 33.357395, 34.165695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.539175, 33.263981, 34.371334>,  <29.965631, 32.978573, 34.715427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.539175, 33.263981, 34.371334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.212374, 33.492897, 34.343090>,  <30.016293, 33.630245, 34.326145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.212374, 33.492897, 34.343090>,  <30.539175, 33.263981, 34.371334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.212374, 33.492897, 34.343090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458381, 0.718863, 0.522611,
		0.349842, 0.394612, -0.849643,
		-0.817005, 0.572292, -0.070606,
		29.967272, 33.664585, 34.321907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.597061, 33.927094, 34.035275>,  <30.539175, 33.263981, 34.371334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.597061, 33.927094, 34.035275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.333605, 33.907490, 34.335617>,  <30.175531, 33.895729, 34.515823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.333605, 33.907490, 34.335617>,  <30.597061, 33.927094, 34.035275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.333605, 33.907490, 34.335617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595552, 0.575950, 0.559999,
		-0.459900, 0.816015, -0.350160,
		-0.658642, -0.049005, 0.750859,
		30.136013, 33.892788, 34.560875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.404118, 34.535076, 34.161808>,  <30.597061, 33.927094, 34.035275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.404118, 34.535076, 34.161808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.389803, 34.307018, 34.490116>,  <30.381214, 34.170185, 34.687099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.389803, 34.307018, 34.490116>,  <30.404118, 34.535076, 34.161808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.389803, 34.307018, 34.490116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476001, 0.712421, 0.515635,
		-0.878716, 0.409137, 0.245894,
		-0.035785, -0.570143, 0.820766,
		30.379066, 34.135975, 34.736347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.169086, 34.896969, 34.591789>,  <30.404118, 34.535076, 34.161808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.169086, 34.896969, 34.591789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.404919, 34.651505, 34.801861>,  <30.546417, 34.504227, 34.927906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.404919, 34.651505, 34.801861>,  <30.169086, 34.896969, 34.591789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.404919, 34.651505, 34.801861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302776, 0.770711, 0.560652,
		-0.748814, -0.171537, 0.640198,
		0.589580, -0.613661, 0.525181,
		30.581793, 34.467407, 34.959415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.118536, 35.051521, 35.308880>,  <30.169086, 34.896969, 34.591789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.118536, 35.051521, 35.308880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.473352, 34.869652, 35.276821>,  <30.686243, 34.760529, 35.257584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.473352, 34.869652, 35.276821>,  <30.118536, 35.051521, 35.308880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.473352, 34.869652, 35.276821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435311, 0.765827, 0.473299,
		-0.153819, -0.454726, 0.877248,
		0.887042, -0.454678, -0.080149,
		30.739466, 34.733250, 35.252777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.497715, 35.347782, 35.884933>,  <30.118536, 35.051521, 35.308880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.497715, 35.347782, 35.884933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.803356, 35.185719, 35.684139>,  <30.986740, 35.088482, 35.563663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.803356, 35.185719, 35.684139>,  <30.497715, 35.347782, 35.884933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.803356, 35.185719, 35.684139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617410, 0.684829, 0.387059,
		0.186957, -0.605686, 0.773429,
		0.764103, -0.405159, -0.501990,
		31.032587, 35.064171, 35.533543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.992043, 35.178520, 36.293770>,  <30.497715, 35.347782, 35.884933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.992043, 35.178520, 36.293770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.212519, 35.211159, 35.961617>,  <31.344805, 35.230740, 35.762325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.212519, 35.211159, 35.961617>,  <30.992043, 35.178520, 36.293770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.212519, 35.211159, 35.961617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683120, 0.527317, 0.505256,
		0.479098, -0.845742, 0.234917,
		0.551192, 0.081591, -0.830380,
		31.377876, 35.235638, 35.712502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.646982, 35.065369, 36.491409>,  <30.992043, 35.178520, 36.293770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.646982, 35.065369, 36.491409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.655396, 35.274372, 36.150459>,  <31.660442, 35.399776, 35.945889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.655396, 35.274372, 36.150459>,  <31.646982, 35.065369, 36.491409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.655396, 35.274372, 36.150459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640323, 0.647716, 0.412856,
		0.767818, -0.554477, -0.320954,
		0.021032, 0.522513, -0.852372,
		31.661705, 35.431126, 35.894749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.412647, 35.100296, 36.362354>,  <31.646982, 35.065369, 36.491409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.412647, 35.100296, 36.362354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.256096, 35.365627, 36.107224>,  <32.162167, 35.524826, 35.954147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.256096, 35.365627, 36.107224>,  <32.412647, 35.100296, 36.362354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.256096, 35.365627, 36.107224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664028, 0.683429, 0.303302,
		0.637097, -0.304828, -0.707946,
		-0.391375, 0.663328, -0.637825,
		32.138683, 35.564625, 35.915874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.878403, 35.572292, 36.091461>,  <32.412647, 35.100296, 36.362354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.878403, 35.572292, 36.091461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.532257, 35.767693, 36.046715>,  <32.324570, 35.884933, 36.019867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.532257, 35.767693, 36.046715>,  <32.878403, 35.572292, 36.091461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.532257, 35.767693, 36.046715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376293, 0.780801, 0.498751,
		0.330984, 0.389507, -0.859496,
		-0.865363, 0.488501, -0.111864,
		32.272648, 35.914242, 36.013157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.129486, 36.222561, 35.915234>,  <32.878403, 35.572292, 36.091461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.129486, 36.222561, 35.915234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.748192, 36.221844, 36.036125>,  <32.519417, 36.221413, 36.108662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.748192, 36.221844, 36.036125>,  <33.129486, 36.222561, 35.915234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.748192, 36.221844, 36.036125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181515, 0.796150, 0.577233,
		-0.241655, 0.605097, -0.758591,
		-0.953234, -0.001795, 0.302228,
		32.462223, 36.221306, 36.126793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.831619, 36.808838, 35.753059>,  <33.129486, 36.222561, 35.915234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.831619, 36.808838, 35.753059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.592945, 36.679440, 36.046810>,  <32.449741, 36.601799, 36.223061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.592945, 36.679440, 36.046810>,  <32.831619, 36.808838, 35.753059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.592945, 36.679440, 36.046810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215919, 0.816674, 0.535184,
		-0.772879, 0.477905, -0.417451,
		-0.596689, -0.323497, 0.734379,
		32.413937, 36.582390, 36.267124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.590981, 37.522003, 36.093422>,  <32.831619, 36.808838, 35.753059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.590981, 37.522003, 36.093422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.510319, 37.240936, 36.366360>,  <32.461922, 37.072296, 36.530125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.510319, 37.240936, 36.366360>,  <32.590981, 37.522003, 36.093422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.510319, 37.240936, 36.366360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040725, 0.690042, 0.722623,
		-0.978610, 0.173508, -0.110533,
		-0.201654, -0.702665, 0.682348,
		32.449821, 37.030136, 36.571064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.102020, 37.754192, 36.512463>,  <32.590981, 37.522003, 36.093422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.102020, 37.754192, 36.512463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.274689, 37.472198, 36.737549>,  <32.378292, 37.303001, 36.872601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.274689, 37.472198, 36.737549>,  <32.102020, 37.754192, 36.512463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.274689, 37.472198, 36.737549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068355, 0.647605, 0.758904,
		-0.899436, -0.289134, 0.327744,
		0.431673, -0.704988, 0.562716,
		32.404190, 37.260700, 36.906364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.702219, 37.780876, 37.083054>,  <32.102020, 37.754192, 36.512463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.702219, 37.780876, 37.083054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.054523, 37.623116, 37.187897>,  <32.265907, 37.528458, 37.250805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.054523, 37.623116, 37.187897>,  <31.702219, 37.780876, 37.083054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.054523, 37.623116, 37.187897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024818, 0.514289, 0.857258,
		-0.472906, -0.761546, 0.443178,
		0.880763, -0.394404, 0.262110,
		32.318752, 37.504795, 37.266529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.724869, 37.635876, 37.738255>,  <31.702219, 37.780876, 37.083054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.724869, 37.635876, 37.738255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.119751, 37.676476, 37.689060>,  <32.356682, 37.700836, 37.659546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.119751, 37.676476, 37.689060>,  <31.724869, 37.635876, 37.738255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.119751, 37.676476, 37.689060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032151, 0.628718, 0.776968,
		0.156184, -0.770981, 0.617410,
		0.987205, 0.101500, -0.122983,
		32.415913, 37.706924, 37.652164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.855574, 37.628586, 38.352936>,  <31.724869, 37.635876, 37.738255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.855574, 37.628586, 38.352936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.164562, 37.786652, 38.154087>,  <32.349957, 37.881489, 38.034779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.164562, 37.786652, 38.154087>,  <31.855574, 37.628586, 38.352936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.164562, 37.786652, 38.154087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061804, 0.732320, 0.678150,
		0.632034, -0.554576, 0.541274,
		0.772472, 0.395161, -0.497126,
		32.396305, 37.905201, 38.004948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.237339, 37.724804, 38.886383>,  <31.855574, 37.628586, 38.352936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.237339, 37.724804, 38.886383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.417233, 37.941914, 38.602654>,  <32.525169, 38.072178, 38.432415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.417233, 37.941914, 38.602654>,  <32.237339, 37.724804, 38.886383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.417233, 37.941914, 38.602654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293964, 0.659969, 0.691394,
		0.843402, -0.519457, 0.137253,
		0.449731, 0.542775, -0.709321,
		32.552151, 38.104748, 38.389858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.814743, 37.732201, 39.140316>,  <32.237339, 37.724804, 38.886383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.814743, 37.732201, 39.140316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.800556, 38.044117, 38.890301>,  <32.792046, 38.231266, 38.740292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.800556, 38.044117, 38.890301>,  <32.814743, 37.732201, 39.140316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.800556, 38.044117, 38.890301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179963, 0.620190, 0.763529,
		0.983034, -0.085404, -0.162330,
		-0.035467, 0.779788, -0.625038,
		32.789917, 38.278053, 38.702789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.459206, 38.190334, 39.194836>,  <32.814743, 37.732201, 39.140316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.459206, 38.190334, 39.194836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.130535, 38.378460, 39.066048>,  <32.933334, 38.491333, 38.988773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.130535, 38.378460, 39.066048>,  <33.459206, 38.190334, 39.194836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.130535, 38.378460, 39.066048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198536, 0.765692, 0.611800,
		0.534265, 0.438776, -0.722521,
		-0.821672, 0.470309, -0.321970,
		32.884033, 38.519554, 38.969456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.668865, 38.846897, 39.169083>,  <33.459206, 38.190334, 39.194836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.668865, 38.846897, 39.169083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.270233, 38.879757, 39.165707>,  <33.031052, 38.899471, 39.163681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.270233, 38.879757, 39.165707>,  <33.668865, 38.846897, 39.169083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.270233, 38.879757, 39.165707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057374, 0.762287, 0.644692,
		0.059395, 0.642005, -0.764396,
		-0.996584, 0.082148, -0.008442,
		32.971256, 38.904400, 39.163174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.556732, 39.529877, 39.271141>,  <33.668865, 38.846897, 39.169083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.556732, 39.529877, 39.271141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.190063, 39.403297, 39.368767>,  <32.970062, 39.327351, 39.427341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.190063, 39.403297, 39.368767>,  <33.556732, 39.529877, 39.271141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.190063, 39.403297, 39.368767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058207, 0.709922, 0.701871,
		-0.395372, 0.629181, -0.669188,
		-0.916675, -0.316451, 0.244060,
		32.915062, 39.308361, 39.441986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.206318, 40.105320, 39.374538>,  <33.556732, 39.529877, 39.271141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.206318, 40.105320, 39.374538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.988205, 39.827526, 39.562313>,  <32.857338, 39.660851, 39.674976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.988205, 39.827526, 39.562313>,  <33.206318, 40.105320, 39.374538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.988205, 39.827526, 39.562313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255471, 0.671050, 0.696008,
		-0.798377, 0.259592, -0.543329,
		-0.545279, -0.694481, 0.469433,
		32.824623, 39.619183, 39.703144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.570457, 40.405300, 39.410938>,  <33.206318, 40.105320, 39.374538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.570457, 40.405300, 39.410938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.582863, 40.130024, 39.700886>,  <32.590305, 39.964859, 39.874855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.582863, 40.130024, 39.700886>,  <32.570457, 40.405300, 39.410938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.582863, 40.130024, 39.700886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427584, 0.646372, 0.631962,
		-0.903443, -0.329543, -0.274212,
		0.031016, -0.688190, 0.724868,
		32.592167, 39.923569, 39.918346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.953354, 40.448189, 39.684830>,  <32.570457, 40.405300, 39.410938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.953354, 40.448189, 39.684830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.176189, 40.276234, 39.969040>,  <32.309891, 40.173061, 40.139568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.176189, 40.276234, 39.969040>,  <31.953354, 40.448189, 39.684830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.176189, 40.276234, 39.969040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455153, 0.557586, 0.694214,
		-0.694611, -0.710140, 0.114963,
		0.557091, -0.429883, 0.710528,
		32.343315, 40.147270, 40.182198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.481022, 40.271648, 40.156616>,  <31.953354, 40.448189, 39.684830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.481022, 40.271648, 40.156616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.826265, 40.273232, 40.358620>,  <32.033413, 40.274181, 40.479820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.826265, 40.273232, 40.358620>,  <31.481022, 40.271648, 40.156616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.826265, 40.273232, 40.358620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477760, 0.330498, 0.813951,
		-0.163681, -0.943798, 0.287147,
		0.863107, 0.003959, 0.505006,
		32.085197, 40.274418, 40.510120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.204969, 40.200165, 40.770126>,  <31.481022, 40.271648, 40.156616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.204969, 40.200165, 40.770126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.588146, 40.290493, 40.840950>,  <31.818052, 40.344688, 40.883446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.588146, 40.290493, 40.840950>,  <31.204969, 40.200165, 40.770126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.588146, 40.290493, 40.840950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260520, 0.425717, 0.866542,
		0.120305, -0.876225, 0.466644,
		0.957944, 0.225820, 0.177058,
		31.875530, 40.358238, 40.894066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.311058, 40.007710, 41.499039>,  <31.204969, 40.200165, 40.770126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.311058, 40.007710, 41.499039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.599279, 40.273540, 41.419899>,  <31.772211, 40.433041, 41.372414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.599279, 40.273540, 41.419899>,  <31.311058, 40.007710, 41.499039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.599279, 40.273540, 41.419899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266778, 0.529065, 0.805556,
		0.640028, -0.527662, 0.558513,
		0.720551, 0.664577, -0.197848,
		31.815445, 40.472912, 41.360546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.608644, 39.982868, 42.121124>,  <31.311058, 40.007710, 41.499039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.608644, 39.982868, 42.121124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.684296, 40.323944, 41.926334>,  <31.729687, 40.528591, 41.809460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.684296, 40.323944, 41.926334>,  <31.608644, 39.982868, 42.121124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.684296, 40.323944, 41.926334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346077, 0.521990, 0.779588,
		0.918945, 0.021089, 0.393821,
		0.189130, 0.852691, -0.486978,
		31.741035, 40.579750, 41.780239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.788921, 40.466900, 42.590641>,  <31.608644, 39.982868, 42.121124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.788921, 40.466900, 42.590641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.683132, 40.707344, 42.288986>,  <31.619659, 40.851612, 42.107994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.683132, 40.707344, 42.288986>,  <31.788921, 40.466900, 42.590641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.683132, 40.707344, 42.288986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313785, 0.685790, 0.656682,
		0.911918, 0.410309, 0.007248,
		-0.264472, 0.601115, -0.754133,
		31.603790, 40.887680, 42.062748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.010746, 41.125172, 42.741295>,  <31.788921, 40.466900, 42.590641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.010746, 41.125172, 42.741295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.721811, 41.176662, 42.469513>,  <31.548449, 41.207558, 42.306446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.721811, 41.176662, 42.469513>,  <32.010746, 41.125172, 42.741295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.721811, 41.176662, 42.469513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475050, 0.621637, 0.622812,
		0.502544, 0.772656, -0.387882,
		-0.722341, 0.128727, -0.679450,
		31.505110, 41.215282, 42.265678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.807522, 41.851868, 42.702007>,  <32.010746, 41.125172, 42.741295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.807522, 41.851868, 42.702007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.484581, 41.731014, 42.499268>,  <31.290815, 41.658501, 42.377625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.484581, 41.731014, 42.499268>,  <31.807522, 41.851868, 42.702007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.484581, 41.731014, 42.499268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558818, 0.667328, 0.492337,
		0.189480, 0.680726, -0.707609,
		-0.807354, -0.302136, -0.506847,
		31.242374, 41.640373, 42.347214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.508854, 42.574276, 42.515633>,  <31.807522, 41.851868, 42.702007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.508854, 42.574276, 42.515633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.234472, 42.284573, 42.487583>,  <31.069843, 42.110752, 42.470753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.234472, 42.284573, 42.487583>,  <31.508854, 42.574276, 42.515633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.234472, 42.284573, 42.487583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650855, 0.567618, 0.504180,
		-0.325350, 0.391488, -0.860747,
		-0.685955, -0.724256, -0.070128,
		31.028687, 42.067295, 42.466545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.910543, 42.813927, 42.231262>,  <31.508854, 42.574276, 42.515633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.910543, 42.813927, 42.231262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.762148, 42.502487, 42.433708>,  <30.673111, 42.315624, 42.555176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.762148, 42.502487, 42.433708>,  <30.910543, 42.813927, 42.231262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.762148, 42.502487, 42.433708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576769, 0.620334, 0.531529,
		-0.727809, -0.094721, -0.679208,
		-0.370988, -0.778597, 0.506117,
		30.650852, 42.268909, 42.585545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.154705, 42.905304, 42.254906>,  <30.910543, 42.813927, 42.231262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.154705, 42.905304, 42.254906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.208218, 42.614174, 42.523941>,  <30.240326, 42.439495, 42.685364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.208218, 42.614174, 42.523941>,  <30.154705, 42.905304, 42.254906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.208218, 42.614174, 42.523941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701604, 0.409761, 0.582964,
		-0.699896, -0.549882, -0.455825,
		0.133782, -0.727822, 0.672589,
		30.248352, 42.395828, 42.725719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.499763, 42.645412, 42.458855>,  <30.154705, 42.905304, 42.254906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.499763, 42.645412, 42.458855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.758900, 42.559258, 42.751133>,  <29.914381, 42.507565, 42.926498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.758900, 42.559258, 42.751133>,  <29.499763, 42.645412, 42.458855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.758900, 42.559258, 42.751133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673158, 0.287144, 0.681474,
		-0.356597, -0.933357, 0.041032,
		0.647841, -0.215390, 0.730691,
		29.953253, 42.494640, 42.970341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.095406, 42.276215, 42.984985>,  <29.499763, 42.645412, 42.458855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.095406, 42.276215, 42.984985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.417105, 42.458073, 43.138081>,  <29.610125, 42.567188, 43.229939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.417105, 42.458073, 43.138081>,  <29.095406, 42.276215, 42.984985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.417105, 42.458073, 43.138081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584154, 0.486309, 0.649821,
		0.109308, -0.746194, 0.656694,
		0.804249, 0.454641, 0.382735,
		29.658379, 42.594463, 43.252899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.879654, 42.395077, 43.789200>,  <29.095406, 42.276215, 42.984985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.879654, 42.395077, 43.789200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.196148, 42.636757, 43.751492>,  <29.386044, 42.781765, 43.728867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.196148, 42.636757, 43.751492>,  <28.879654, 42.395077, 43.789200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.196148, 42.636757, 43.751492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379281, 0.605811, 0.699385,
		0.479683, -0.517620, 0.708501,
		0.791233, 0.604204, -0.094274,
		29.433517, 42.818020, 43.723209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.240864, 42.470806, 44.447727>,  <28.879654, 42.395077, 43.789200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.240864, 42.470806, 44.447727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.355974, 42.791546, 44.238258>,  <29.425041, 42.983990, 44.112579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.355974, 42.791546, 44.238258>,  <29.240864, 42.470806, 44.447727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.355974, 42.791546, 44.238258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522767, 0.589672, 0.615631,
		0.802434, 0.096593, 0.588872,
		0.287776, 0.801846, -0.523669,
		29.442307, 43.032101, 44.081158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.390163, 42.953789, 44.959778>,  <29.240864, 42.470806, 44.447727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.390163, 42.953789, 44.959778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.344721, 43.178692, 44.632130>,  <29.317455, 43.313633, 44.435539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.344721, 43.178692, 44.632130>,  <29.390163, 42.953789, 44.959778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.344721, 43.178692, 44.632130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509218, 0.674981, 0.533945,
		0.853106, 0.477772, 0.209628,
		-0.113609, 0.562258, -0.819121,
		29.310638, 43.347370, 44.386395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.624065, 43.562214, 45.100742>,  <29.390163, 42.953789, 44.959778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.624065, 43.562214, 45.100742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.358671, 43.614624, 44.806091>,  <29.199434, 43.646072, 44.629299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.358671, 43.614624, 44.806091>,  <29.624065, 43.562214, 45.100742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.358671, 43.614624, 44.806091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480350, 0.680243, 0.553654,
		0.573631, 0.721180, -0.388390,
		-0.663484, 0.131030, -0.736628,
		29.159626, 43.653934, 44.585102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.495459, 44.318855, 45.089848>,  <29.624065, 43.562214, 45.100742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.495459, 44.318855, 45.089848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.199696, 44.140163, 44.888367>,  <29.022238, 44.032948, 44.767479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.199696, 44.140163, 44.888367>,  <29.495459, 44.318855, 45.089848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.199696, 44.140163, 44.888367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670991, 0.550334, 0.496893,
		0.055229, 0.705385, -0.706670,
		-0.739406, -0.446726, -0.503701,
		28.977875, 44.006145, 44.737255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.058853, 44.814415, 44.858902>,  <29.495459, 44.318855, 45.089848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.058853, 44.814415, 44.858902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.824059, 44.492245, 44.826080>,  <28.683182, 44.298943, 44.806389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.824059, 44.492245, 44.826080>,  <29.058853, 44.814415, 44.858902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.824059, 44.492245, 44.826080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769490, 0.523527, 0.365794,
		-0.251665, 0.277854, -0.927072,
		-0.586984, -0.805430, -0.082052,
		28.647963, 44.250614, 44.801464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.344526, 45.051037, 44.551796>,  <29.058853, 44.814415, 44.858902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.344526, 45.051037, 44.551796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.309090, 44.723377, 44.778473>,  <28.287828, 44.526779, 44.914478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.309090, 44.723377, 44.778473>,  <28.344526, 45.051037, 44.551796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.309090, 44.723377, 44.778473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603667, 0.496696, 0.623601,
		-0.792299, -0.286849, -0.538498,
		-0.088591, -0.819152, 0.566693,
		28.282513, 44.477631, 44.948483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.643311, 44.928047, 44.710014>,  <28.344526, 45.051037, 44.551796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.643311, 44.928047, 44.710014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.831530, 44.758278, 45.019451>,  <27.944460, 44.656414, 45.205112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.831530, 44.758278, 45.019451>,  <27.643311, 44.928047, 44.710014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.831530, 44.758278, 45.019451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620573, 0.464072, 0.632081,
		-0.627276, -0.777494, -0.045022,
		0.470546, -0.424428, 0.773593,
		27.972694, 44.630951, 45.251530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.064501, 45.270657, 45.176003>,  <27.643311, 44.928047, 44.710014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.064501, 45.270657, 45.176003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.223545, 44.911652, 45.252296>,  <27.318972, 44.696247, 45.298073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.223545, 44.911652, 45.252296>,  <27.064501, 45.270657, 45.176003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.223545, 44.911652, 45.252296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601841, 0.412009, 0.684132,
		-0.692599, -0.157228, 0.703978,
		0.397610, -0.897512, 0.190731,
		27.342829, 44.642399, 45.309517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.922283, 45.172531, 45.873444>,  <27.064501, 45.270657, 45.176003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.922283, 45.172531, 45.873444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.251791, 44.983490, 45.748188>,  <27.449495, 44.870068, 45.673035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.251791, 44.983490, 45.748188>,  <26.922283, 45.172531, 45.873444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.251791, 44.983490, 45.748188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534477, 0.463221, 0.706937,
		-0.189048, -0.749717, 0.634181,
		0.823769, -0.472600, -0.313135,
		27.498922, 44.841709, 45.654247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.081539, 44.965672, 46.477058>,  <26.922283, 45.172531, 45.873444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.081539, 44.965672, 46.477058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.392529, 45.008686, 46.229198>,  <27.579123, 45.034492, 46.080482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.392529, 45.008686, 46.229198>,  <27.081539, 44.965672, 46.477058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.392529, 45.008686, 46.229198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615287, 0.073945, 0.784828,
		0.130219, -0.991447, -0.008676,
		0.777474, 0.107538, -0.619653,
		27.625771, 45.040947, 46.043301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.622324, 44.404427, 46.404194>,  <27.081539, 44.965672, 46.477058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.622324, 44.404427, 46.404194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.782854, 44.764843, 46.338383>,  <27.879173, 44.981091, 46.298897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.782854, 44.764843, 46.338383>,  <27.622324, 44.404427, 46.404194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.782854, 44.764843, 46.338383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550774, -0.093881, 0.829358,
		0.731836, -0.423460, -0.533945,
		0.401327, 0.901037, -0.164526,
		27.903252, 45.035152, 46.289024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.242924, 44.447216, 46.712967>,  <27.622324, 44.404427, 46.404194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.242924, 44.447216, 46.712967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.162352, 44.838379, 46.690601>,  <28.114008, 45.073078, 46.677181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.162352, 44.838379, 46.690601>,  <28.242924, 44.447216, 46.712967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.162352, 44.838379, 46.690601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430180, 0.139605, 0.891884,
		0.879984, 0.155598, -0.448795,
		-0.201429, 0.977906, -0.055915,
		28.101923, 45.131752, 46.673828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.816559, 44.909328, 46.635624>,  <28.242924, 44.447216, 46.712967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.816559, 44.909328, 46.635624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.505688, 45.041523, 46.849827>,  <28.319164, 45.120838, 46.978348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.505688, 45.041523, 46.849827>,  <28.816559, 44.909328, 46.635624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.505688, 45.041523, 46.849827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566861, -0.001838, 0.823811,
		0.273242, 0.943809, -0.185911,
		-0.777179, 0.330486, 0.535511,
		28.272533, 45.140667, 47.010479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.946785, 44.404255, 46.168079>,  <28.816559, 44.909328, 46.635624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.946785, 44.404255, 46.168079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.143602, 44.059326, 46.215916>,  <29.261692, 43.852371, 46.244617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.143602, 44.059326, 46.215916>,  <28.946785, 44.404255, 46.168079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.143602, 44.059326, 46.215916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840707, 0.506332, 0.191937,
		-0.226062, 0.006098, 0.974094,
		0.492044, -0.862317, 0.119588,
		29.291216, 43.800632, 46.251793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.385855, 44.463299, 46.821957>,  <28.946785, 44.404255, 46.168079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.385855, 44.463299, 46.821957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.532173, 44.264332, 46.507309>,  <29.619965, 44.144951, 46.318520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.532173, 44.264332, 46.507309>,  <29.385855, 44.463299, 46.821957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.532173, 44.264332, 46.507309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818596, 0.574099, 0.017640,
		0.442824, -0.650377, 0.617185,
		0.365798, -0.497414, -0.786620,
		29.641912, 44.115108, 46.271324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.057487, 43.909836, 47.098766>,  <29.385855, 44.463299, 46.821957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.057487, 43.909836, 47.098766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.683130, 43.787796, 47.169216>,  <28.458517, 43.714573, 47.211487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.683130, 43.787796, 47.169216>,  <29.057487, 43.909836, 47.098766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.683130, 43.787796, 47.169216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333973, -0.927499, 0.167954,
		0.112111, 0.216007, 0.969934,
		-0.935892, -0.305103, 0.176124,
		28.402363, 43.696266, 47.222054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.071129, 43.564453, 47.770378>,  <29.057487, 43.909836, 47.098766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.071129, 43.564453, 47.770378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.779087, 43.436241, 47.528980>,  <28.603863, 43.359314, 47.384140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.779087, 43.436241, 47.528980>,  <29.071129, 43.564453, 47.770378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.779087, 43.436241, 47.528980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290049, -0.945020, 0.151028,
		-0.618724, -0.064776, 0.782933,
		-0.730104, -0.320534, -0.603495,
		28.560057, 43.340080, 47.347931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.589184, 43.049976, 48.115959>,  <29.071129, 43.564453, 47.770378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.589184, 43.049976, 48.115959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.585478, 42.999058, 47.719231>,  <28.583254, 42.968506, 47.481194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.585478, 42.999058, 47.719231>,  <28.589184, 43.049976, 48.115959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.585478, 42.999058, 47.719231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126359, -0.984063, 0.125116,
		-0.991941, -0.124166, 0.025202,
		-0.009265, -0.127293, -0.991822,
		28.582699, 42.960869, 47.421684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.508005, 42.433460, 48.082420>,  <28.589184, 43.049976, 48.115959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.508005, 42.433460, 48.082420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.563583, 42.499557, 47.691853>,  <28.596931, 42.539215, 47.457512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.563583, 42.499557, 47.691853>,  <28.508005, 42.433460, 48.082420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.563583, 42.499557, 47.691853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150707, -0.978024, -0.144071,
		-0.978765, -0.127134, -0.160797,
		0.138947, 0.165245, -0.976416,
		28.605267, 42.549129, 47.398930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.995958, 41.950073, 47.632648>,  <28.508005, 42.433460, 48.082420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.995958, 41.950073, 47.632648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.322309, 42.044067, 47.421318>,  <28.518120, 42.100464, 47.294521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.322309, 42.044067, 47.421318>,  <27.995958, 41.950073, 47.632648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.322309, 42.044067, 47.421318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101636, -0.957752, -0.269037,
		-0.569221, 0.165805, -0.805292,
		0.815878, 0.234988, -0.528321,
		28.567074, 42.114563, 47.262821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.909586, 41.515099, 47.029778>,  <27.995958, 41.950073, 47.632648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.909586, 41.515099, 47.029778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.290060, 41.635811, 47.003941>,  <28.518345, 41.708237, 46.988438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.290060, 41.635811, 47.003941>,  <27.909586, 41.515099, 47.029778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.290060, 41.635811, 47.003941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258282, -0.892982, -0.368612,
		-0.168921, 0.333935, -0.927337,
		0.951187, 0.301780, -0.064594,
		28.575417, 41.726345, 46.984562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.078375, 41.458305, 46.366550>,  <27.909586, 41.515099, 47.029778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.078375, 41.458305, 46.366550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.430447, 41.451160, 46.556274>,  <28.641689, 41.446873, 46.670109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.430447, 41.451160, 46.556274>,  <28.078375, 41.458305, 46.366550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.430447, 41.451160, 46.556274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316276, -0.723042, -0.614150,
		0.353915, 0.690573, -0.630756,
		0.880178, -0.017864, 0.474307,
		28.694500, 41.445801, 46.698566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.672672, 41.541508, 45.877808>,  <28.078375, 41.458305, 46.366550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.672672, 41.541508, 45.877808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.829893, 41.379959, 46.208237>,  <28.924225, 41.283028, 46.406494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.829893, 41.379959, 46.208237>,  <28.672672, 41.541508, 45.877808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.829893, 41.379959, 46.208237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529613, -0.634964, -0.562433,
		0.751678, 0.658565, -0.035677,
		0.393052, -0.403873, 0.826073,
		28.947809, 41.258797, 46.456059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.385523, 41.468472, 45.739136>,  <28.672672, 41.541508, 45.877808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.385523, 41.468472, 45.739136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.335663, 41.206066, 46.036888>,  <29.305746, 41.048622, 46.215542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.335663, 41.206066, 46.036888>,  <29.385523, 41.468472, 45.739136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.335663, 41.206066, 46.036888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594897, -0.649843, -0.473076,
		0.794078, 0.383863, 0.471264,
		-0.124651, -0.656013, 0.744385,
		29.298267, 41.009262, 46.260204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.071976, 41.157524, 45.864410>,  <29.385523, 41.468472, 45.739136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.071976, 41.157524, 45.864410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.802855, 40.918770, 46.039253>,  <29.641382, 40.775517, 46.144161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.802855, 40.918770, 46.039253>,  <30.071976, 41.157524, 45.864410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.802855, 40.918770, 46.039253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418119, -0.794199, -0.440935,
		0.610340, -0.113898, 0.783908,
		-0.672801, -0.596887, 0.437109,
		29.601015, 40.739704, 46.170387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.506229, 40.657135, 46.164997>,  <30.071976, 41.157524, 45.864410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.506229, 40.657135, 46.164997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.137154, 40.505489, 46.136948>,  <29.915709, 40.414501, 46.120117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.137154, 40.505489, 46.136948>,  <30.506229, 40.657135, 46.164997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.137154, 40.505489, 46.136948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367199, -0.808677, -0.459571,
		0.117526, -0.449790, 0.885368,
		-0.922688, -0.379118, -0.070122,
		29.860348, 40.391754, 46.115910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.671938, 40.047855, 46.339119>,  <30.506229, 40.657135, 46.164997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.671938, 40.047855, 46.339119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.324841, 39.997910, 46.146690>,  <30.116583, 39.967941, 46.031235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.324841, 39.997910, 46.146690>,  <30.671938, 40.047855, 46.339119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.324841, 39.997910, 46.146690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356590, -0.830658, -0.427610,
		-0.346215, -0.542602, 0.765323,
		-0.867744, -0.124862, -0.481072,
		30.064518, 39.960449, 46.002369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.344858, 39.402348, 46.488163>,  <30.671938, 40.047855, 46.339119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.344858, 39.402348, 46.488163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.224571, 39.519222, 46.125023>,  <30.152399, 39.589348, 45.907139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.224571, 39.519222, 46.125023>,  <30.344858, 39.402348, 46.488163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.224571, 39.519222, 46.125023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280409, -0.882752, -0.376988,
		-0.911559, -0.367937, 0.183526,
		-0.300716, 0.292185, -0.907853,
		30.134356, 39.606876, 45.852669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.351072, 38.823666, 46.194763>,  <30.344858, 39.402348, 46.488163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.351072, 38.823666, 46.194763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.231663, 39.037338, 45.878399>,  <30.160017, 39.165543, 45.688580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.231663, 39.037338, 45.878399>,  <30.351072, 38.823666, 46.194763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.231663, 39.037338, 45.878399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010484, -0.826811, -0.562382,
		-0.954345, -0.176175, 0.241221,
		-0.298522, 0.534177, -0.790911,
		30.142107, 39.197590, 45.641125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.892176, 38.526119, 45.946510>,  <30.351072, 38.823666, 46.194763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.892176, 38.526119, 45.946510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.060490, 38.730728, 45.646835>,  <30.161478, 38.853493, 45.467030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.060490, 38.730728, 45.646835>,  <29.892176, 38.526119, 45.946510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.060490, 38.730728, 45.646835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221328, -0.858793, -0.462047,
		-0.879746, 0.028607, -0.474582,
		0.420786, 0.511523, -0.749189,
		30.186726, 38.884186, 45.422077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.608793, 38.204689, 45.188915>,  <29.892176, 38.526119, 45.946510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.608793, 38.204689, 45.188915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.942951, 38.408375, 45.106148>,  <30.143446, 38.530586, 45.056488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.942951, 38.408375, 45.106148>,  <29.608793, 38.204689, 45.188915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.942951, 38.408375, 45.106148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203135, -0.635832, -0.744617,
		-0.510733, 0.580018, -0.634610,
		0.835397, 0.509212, -0.206919,
		30.193571, 38.561138, 45.044071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.621828, 38.431705, 44.421959>,  <29.608793, 38.204689, 45.188915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.621828, 38.431705, 44.421959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.993673, 38.387226, 44.562500>,  <30.216782, 38.360538, 44.646824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.993673, 38.387226, 44.562500>,  <29.621828, 38.431705, 44.421959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.993673, 38.387226, 44.562500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178281, -0.698712, -0.692833,
		0.322541, 0.706708, -0.629707,
		0.929614, -0.111202, 0.351356,
		30.272558, 38.353867, 44.667908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.960674, 38.344048, 43.848610>,  <29.621828, 38.431705, 44.421959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.960674, 38.344048, 43.848610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.229200, 38.219170, 44.117493>,  <30.390316, 38.144241, 44.278824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.229200, 38.219170, 44.117493>,  <29.960674, 38.344048, 43.848610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.229200, 38.219170, 44.117493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371394, -0.643180, -0.669616,
		0.641406, 0.699179, -0.315828,
		0.671316, -0.312199, 0.672210,
		30.430595, 38.125511, 44.319157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.565561, 38.299843, 43.553661>,  <29.960674, 38.344048, 43.848610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.565561, 38.299843, 43.553661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.639311, 38.055141, 43.861366>,  <30.683561, 37.908318, 44.045990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.639311, 38.055141, 43.861366>,  <30.565561, 38.299843, 43.553661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.639311, 38.055141, 43.861366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411042, -0.662949, -0.625734,
		0.892777, 0.431567, 0.129227,
		0.184376, -0.611758, 0.769258,
		30.694624, 37.871613, 44.092144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.231110, 38.103260, 43.443439>,  <30.565561, 38.299843, 43.553661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.231110, 38.103260, 43.443439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.072979, 37.837135, 43.696762>,  <30.978100, 37.677460, 43.848755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.072979, 37.837135, 43.696762>,  <31.231110, 38.103260, 43.443439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.072979, 37.837135, 43.696762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264516, -0.742722, -0.615138,
		0.879629, -0.075662, 0.469605,
		-0.395329, -0.665311, 0.633306,
		30.954380, 37.637543, 43.886753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.653749, 37.548363, 43.323624>,  <31.231110, 38.103260, 43.443439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.653749, 37.548363, 43.323624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.347647, 37.387379, 43.524586>,  <31.163984, 37.290791, 43.645161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.347647, 37.387379, 43.524586>,  <31.653749, 37.548363, 43.323624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.347647, 37.387379, 43.524586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081576, -0.834802, -0.544473,
		0.638534, -0.375678, 0.671670,
		-0.765258, -0.402456, 0.502403,
		31.118069, 37.266644, 43.675308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.891624, 36.922970, 43.706402>,  <31.653749, 37.548363, 43.323624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.891624, 36.922970, 43.706402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.505243, 36.905384, 43.604420>,  <31.273415, 36.894833, 43.543228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.505243, 36.905384, 43.604420>,  <31.891624, 36.922970, 43.706402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.505243, 36.905384, 43.604420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195336, -0.770117, -0.607259,
		-0.169649, -0.636386, 0.752484,
		-0.965952, -0.043966, -0.254959,
		31.215458, 36.892193, 43.527931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.784538, 36.174564, 43.610603>,  <31.891624, 36.922970, 43.706402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.784538, 36.174564, 43.610603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.460224, 36.343410, 43.448395>,  <31.265636, 36.444717, 43.351070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.460224, 36.343410, 43.448395>,  <31.784538, 36.174564, 43.610603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.460224, 36.343410, 43.448395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070141, -0.757856, -0.648641,
		-0.581129, -0.497464, 0.644065,
		-0.810783, 0.422119, -0.405519,
		31.216990, 36.470047, 43.326740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.356762, 35.610149, 43.530548>,  <31.784538, 36.174564, 43.610603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.356762, 35.610149, 43.530548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.236319, 35.899944, 43.282532>,  <31.164053, 36.073822, 43.133720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.236319, 35.899944, 43.282532>,  <31.356762, 35.610149, 43.530548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.236319, 35.899944, 43.282532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012403, -0.647186, -0.762231,
		-0.953509, -0.237205, 0.185888,
		-0.301109, 0.724489, -0.620039,
		31.145987, 36.117290, 43.096519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.859293, 35.328281, 43.183453>,  <31.356762, 35.610149, 43.530548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.859293, 35.328281, 43.183453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.978851, 35.637966, 42.960293>,  <31.050587, 35.823776, 42.826397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.978851, 35.637966, 42.960293>,  <30.859293, 35.328281, 43.183453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.978851, 35.637966, 42.960293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117420, -0.610020, -0.783638,
		-0.947034, 0.168718, -0.273241,
		0.298897, 0.774216, -0.557898,
		31.068520, 35.870232, 42.792923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.457888, 35.208225, 42.622711>,  <30.859293, 35.328281, 43.183453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.457888, 35.208225, 42.622711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.752153, 35.454422, 42.509598>,  <30.928713, 35.602142, 42.441730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.752153, 35.454422, 42.509598>,  <30.457888, 35.208225, 42.622711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.752153, 35.454422, 42.509598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100743, -0.512269, -0.852896,
		-0.669815, 0.598955, -0.438864,
		0.735662, 0.615495, -0.282784,
		30.972853, 35.639069, 42.424763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.317537, 35.305847, 41.924934>,  <30.457888, 35.208225, 42.622711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.317537, 35.305847, 41.924934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.702843, 35.408489, 41.956631>,  <30.934025, 35.470074, 41.975647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.702843, 35.408489, 41.956631>,  <30.317537, 35.305847, 41.924934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.702843, 35.408489, 41.956631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191544, -0.449624, -0.872439,
		-0.188246, 0.855565, -0.482257,
		0.963262, 0.256607, 0.079238,
		30.991821, 35.485470, 41.980404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.455940, 35.602940, 41.289482>,  <30.317537, 35.305847, 41.924934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.455940, 35.602940, 41.289482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.821884, 35.506187, 41.418800>,  <31.041451, 35.448135, 41.496391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.821884, 35.506187, 41.418800>,  <30.455940, 35.602940, 41.289482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.821884, 35.506187, 41.418800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131182, -0.579210, -0.804554,
		0.381863, 0.778467, -0.498166,
		0.914861, -0.241879, 0.323300,
		31.096342, 35.433624, 41.515789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.933577, 35.687504, 40.720020>,  <30.455940, 35.602940, 41.289482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.933577, 35.687504, 40.720020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.113373, 35.436085, 40.973911>,  <31.221251, 35.285233, 41.126247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.113373, 35.436085, 40.973911>,  <30.933577, 35.687504, 40.720020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.113373, 35.436085, 40.973911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222037, -0.609643, -0.760944,
		0.865249, 0.482972, -0.134468,
		0.449492, -0.628549, 0.634731,
		31.248220, 35.247520, 41.164330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.612894, 35.561050, 40.478493>,  <30.933577, 35.687504, 40.720020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.612894, 35.561050, 40.478493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.507309, 35.238663, 40.690434>,  <31.443958, 35.045231, 40.817596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.507309, 35.238663, 40.690434>,  <31.612894, 35.561050, 40.478493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.507309, 35.238663, 40.690434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468334, -0.587330, -0.660081,
		0.843200, 0.073910, 0.532496,
		-0.263964, -0.805966, 0.529851,
		31.428120, 34.996872, 40.849388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.261623, 35.157520, 40.541584>,  <31.612894, 35.561050, 40.478493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.261623, 35.157520, 40.541584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.956255, 34.906616, 40.603203>,  <31.773035, 34.756073, 40.640175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.956255, 34.906616, 40.603203>,  <32.261623, 35.157520, 40.541584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.956255, 34.906616, 40.603203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359847, -0.611105, -0.705026,
		0.536379, -0.482795, 0.692248,
		-0.763419, -0.627264, 0.154052,
		31.727230, 34.718437, 40.649418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.573223, 34.582733, 40.366722>,  <32.261623, 35.157520, 40.541584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.573223, 34.582733, 40.366722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.187008, 34.479813, 40.382336>,  <31.955278, 34.418060, 40.391705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.187008, 34.479813, 40.382336>,  <32.573223, 34.582733, 40.366722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.187008, 34.479813, 40.382336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168461, -0.732252, -0.659869,
		0.198368, -0.630556, 0.750366,
		-0.965542, -0.257304, 0.039031,
		31.897345, 34.402622, 40.394047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.557838, 33.905796, 40.351139>,  <32.573223, 34.582733, 40.366722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.557838, 33.905796, 40.351139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.186455, 33.994427, 40.231895>,  <31.963625, 34.047604, 40.160347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.186455, 33.994427, 40.231895>,  <32.557838, 33.905796, 40.351139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.186455, 33.994427, 40.231895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096576, -0.630978, -0.769766,
		-0.358665, -0.743485, 0.564437,
		-0.928457, 0.221577, -0.298112,
		31.907917, 34.060902, 40.142460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.191727, 33.237011, 40.229507>,  <32.557838, 33.905796, 40.351139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.191727, 33.237011, 40.229507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.040730, 33.545887, 40.025066>,  <31.950132, 33.731213, 39.902401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.040730, 33.545887, 40.025066>,  <32.191727, 33.237011, 40.229507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.040730, 33.545887, 40.025066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009094, -0.548819, -0.835891,
		-0.925969, -0.320188, 0.200151,
		-0.377489, 0.772190, -0.511102,
		31.927483, 33.777542, 39.871735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.696720, 32.878296, 39.808842>,  <32.191727, 33.237011, 40.229507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.696720, 32.878296, 39.808842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.759426, 33.245945, 39.664265>,  <31.797050, 33.466534, 39.577518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.759426, 33.245945, 39.664265>,  <31.696720, 32.878296, 39.808842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.759426, 33.245945, 39.664265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229757, -0.389870, -0.891747,
		-0.960539, 0.056752, -0.272293,
		0.156767, 0.919119, -0.361447,
		31.806456, 33.521679, 39.555832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.396437, 32.940098, 39.106190>,  <31.696720, 32.878296, 39.808842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.396437, 32.940098, 39.106190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.699142, 33.201530, 39.110935>,  <31.880766, 33.358391, 39.113781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.699142, 33.201530, 39.110935>,  <31.396437, 32.940098, 39.106190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.699142, 33.201530, 39.110935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213519, -0.229992, -0.949481,
		-0.617834, 0.721066, -0.313602,
		0.756764, 0.653581, 0.011864,
		31.926172, 33.397606, 39.114494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.417261, 33.212749, 38.457973>,  <31.396437, 32.940098, 39.106190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.417261, 33.212749, 38.457973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.776253, 33.319084, 38.598747>,  <31.991648, 33.382885, 38.683212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.776253, 33.319084, 38.598747>,  <31.417261, 33.212749, 38.457973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.776253, 33.319084, 38.598747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373829, -0.035049, -0.926835,
		-0.234052, 0.963381, -0.130833,
		0.897481, 0.265837, 0.351936,
		32.045498, 33.398834, 38.704327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.660107, 33.455853, 37.837402>,  <31.417261, 33.212749, 38.457973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.660107, 33.455853, 37.837402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.968431, 33.412167, 38.088455>,  <32.153427, 33.385956, 38.239086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.968431, 33.412167, 38.088455>,  <31.660107, 33.455853, 37.837402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.968431, 33.412167, 38.088455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620226, -0.096334, -0.778485,
		0.145487, 0.989339, -0.006515,
		0.770813, -0.109219, 0.627629,
		32.199677, 33.379402, 38.276745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.166405, 33.850464, 37.586319>,  <31.660107, 33.455853, 37.837402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.166405, 33.850464, 37.586319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.391014, 33.614815, 37.818745>,  <32.525780, 33.473427, 37.958199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.391014, 33.614815, 37.818745>,  <32.166405, 33.850464, 37.586319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.391014, 33.614815, 37.818745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672416, -0.084374, -0.735349,
		0.482235, 0.803628, 0.348756,
		0.561521, -0.589120, 0.581060,
		32.559471, 33.438080, 37.993061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.822968, 34.218990, 37.740875>,  <32.166405, 33.850464, 37.586319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.822968, 34.218990, 37.740875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.861309, 33.821819, 37.768875>,  <32.884315, 33.583515, 37.785675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.861309, 33.821819, 37.768875>,  <32.822968, 34.218990, 37.740875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.861309, 33.821819, 37.768875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562289, -0.004016, -0.826931,
		0.821366, 0.118628, 0.557929,
		0.095857, -0.992931, 0.070002,
		32.890064, 33.523941, 37.789875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.478405, 34.116203, 37.583023>,  <32.822968, 34.218990, 37.740875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.478405, 34.116203, 37.583023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.325363, 33.747986, 37.551498>,  <33.233540, 33.527054, 37.532585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.325363, 33.747986, 37.551498>,  <33.478405, 34.116203, 37.583023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.325363, 33.747986, 37.551498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636131, -0.200606, -0.745046,
		0.670039, -0.335191, 0.662340,
		-0.382602, -0.920546, -0.078811,
		33.210583, 33.471821, 37.527855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.018929, 33.631088, 37.565937>,  <33.478405, 34.116203, 37.583023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.018929, 33.631088, 37.565937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.706280, 33.460453, 37.383911>,  <33.518688, 33.358070, 37.274696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.706280, 33.460453, 37.383911>,  <34.018929, 33.631088, 37.565937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.706280, 33.460453, 37.383911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589434, -0.266519, -0.762584,
		0.204027, -0.864285, 0.459765,
		-0.781626, -0.426589, -0.455062,
		33.471790, 33.332478, 37.247391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.723454, 33.358402, 37.292267>,  <34.018929, 33.631088, 37.565937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.723454, 33.358402, 37.292267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.084557, 33.293137, 37.451473>,  <35.301216, 33.253979, 37.546997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.084557, 33.293137, 37.451473>,  <34.723454, 33.358402, 37.292267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.084557, 33.293137, 37.451473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108078, 0.809552, 0.577013,
		-0.416360, -0.563917, 0.713192,
		0.902753, -0.163165, 0.398012,
		35.355381, 33.244186, 37.570877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.740700, 33.176468, 38.084827>,  <34.723454, 33.358402, 37.292267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.740700, 33.176468, 38.084827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.087391, 33.346794, 37.980934>,  <35.295406, 33.448990, 37.918598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.087391, 33.346794, 37.980934>,  <34.740700, 33.176468, 38.084827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.087391, 33.346794, 37.980934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157901, 0.728206, 0.666921,
		0.473127, -0.537026, 0.698393,
		0.866728, 0.425815, -0.259737,
		35.347408, 33.474541, 37.903011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.012569, 33.300903, 38.698841>,  <34.740700, 33.176468, 38.084827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.012569, 33.300903, 38.698841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.229733, 33.537872, 38.460754>,  <35.360031, 33.680054, 38.317902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.229733, 33.537872, 38.460754>,  <35.012569, 33.300903, 38.698841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.229733, 33.537872, 38.460754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049428, 0.684996, 0.726869,
		0.838338, -0.424041, 0.342606,
		0.542906, 0.592427, -0.595217,
		35.392605, 33.715599, 38.282188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.400139, 33.590607, 39.175728>,  <35.012569, 33.300903, 38.698841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.400139, 33.590607, 39.175728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.463657, 33.816929, 38.852089>,  <35.501766, 33.952724, 38.657906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.463657, 33.816929, 38.852089>,  <35.400139, 33.590607, 39.175728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.463657, 33.816929, 38.852089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055654, 0.813066, 0.579505,
		0.985742, -0.137051, 0.097620,
		0.158794, 0.565810, -0.809101,
		35.511295, 33.986671, 38.609360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.981991, 34.047379, 39.343876>,  <35.400139, 33.590607, 39.175728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.981991, 34.047379, 39.343876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.771439, 34.224991, 39.053841>,  <35.645107, 34.331558, 38.879818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.771439, 34.224991, 39.053841>,  <35.981991, 34.047379, 39.343876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.771439, 34.224991, 39.053841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081183, 0.822654, 0.562716,
		0.846364, 0.355068, -0.396982,
		-0.526382, 0.444034, -0.725090,
		35.613525, 34.358200, 38.836315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.269512, 34.694225, 39.228996>,  <35.981991, 34.047379, 39.343876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.269512, 34.694225, 39.228996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.884159, 34.755917, 39.141258>,  <35.652946, 34.792931, 39.088615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.884159, 34.755917, 39.141258>,  <36.269512, 34.694225, 39.228996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.884159, 34.755917, 39.141258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040971, 0.723750, 0.688845,
		0.264988, 0.672607, -0.690928,
		-0.963381, 0.154228, -0.219342,
		35.595146, 34.802185, 39.075455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.168415, 35.383595, 39.193756>,  <36.269512, 34.694225, 39.228996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.168415, 35.383595, 39.193756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.788612, 35.259956, 39.215302>,  <35.560730, 35.185772, 39.228230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.788612, 35.259956, 39.215302>,  <36.168415, 35.383595, 39.193756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.788612, 35.259956, 39.215302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204448, 0.739753, 0.641066,
		-0.237998, 0.597682, -0.765593,
		-0.949504, -0.309097, 0.053865,
		35.503761, 35.167229, 39.231461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.749256, 36.017242, 39.100235>,  <36.168415, 35.383595, 39.193756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.749256, 36.017242, 39.100235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.551949, 35.722309, 39.284851>,  <35.433563, 35.545349, 39.395622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.551949, 35.722309, 39.284851>,  <35.749256, 36.017242, 39.100235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.551949, 35.722309, 39.284851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232738, 0.623106, 0.746707,
		-0.838165, 0.260908, -0.478964,
		-0.493268, -0.737337, 0.461543,
		35.403969, 35.501106, 39.423313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.207706, 36.320431, 39.395157>,  <35.749256, 36.017242, 39.100235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.207706, 36.320431, 39.395157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.217438, 35.981247, 39.606956>,  <35.223274, 35.777737, 39.734035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.217438, 35.981247, 39.606956>,  <35.207706, 36.320431, 39.395157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.217438, 35.981247, 39.606956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147191, 0.520850, 0.840863,
		-0.988809, -0.098393, -0.112142,
		0.024326, -0.847959, 0.529503,
		35.224735, 35.726860, 39.765808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.834343, 36.524601, 40.004997>,  <35.207706, 36.320431, 39.395157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.834343, 36.524601, 40.004997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.938541, 36.161133, 40.135506>,  <35.001060, 35.943050, 40.213810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.938541, 36.161133, 40.135506>,  <34.834343, 36.524601, 40.004997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.938541, 36.161133, 40.135506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257941, 0.260153, 0.930477,
		-0.930381, -0.326543, -0.166616,
		0.260495, -0.908675, 0.326270,
		35.016689, 35.888531, 40.233387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.289867, 36.224861, 40.497868>,  <34.834343, 36.524601, 40.004997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.289867, 36.224861, 40.497868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.643021, 36.055790, 40.579716>,  <34.854912, 35.954350, 40.628826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.643021, 36.055790, 40.579716>,  <34.289867, 36.224861, 40.497868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.643021, 36.055790, 40.579716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049181, 0.350111, 0.935416,
		-0.467018, -0.835922, 0.288318,
		0.882879, -0.422677, 0.204620,
		34.907883, 35.928986, 40.641102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.159004, 35.712860, 41.134823>,  <34.289867, 36.224861, 40.497868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.159004, 35.712860, 41.134823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.552528, 35.781471, 41.114086>,  <34.788643, 35.822639, 41.101643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.552528, 35.781471, 41.114086>,  <34.159004, 35.712860, 41.134823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.552528, 35.781471, 41.114086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004777, 0.264105, 0.964482,
		0.179130, -0.949118, 0.259011,
		0.983814, 0.171531, -0.051843,
		34.847672, 35.832932, 41.098534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.724018, 35.195541, 41.545494>,  <34.159004, 35.712860, 41.134823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.724018, 35.195541, 41.545494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.921654, 35.538784, 41.489594>,  <35.040234, 35.744728, 41.456051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.921654, 35.538784, 41.489594>,  <34.724018, 35.195541, 41.545494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.921654, 35.538784, 41.489594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220995, 0.279425, 0.934389,
		0.840858, -0.430782, 0.327697,
		0.494085, 0.858107, -0.139756,
		35.069878, 35.796215, 41.447666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.036263, 35.228481, 42.140556>,  <34.724018, 35.195541, 41.545494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.036263, 35.228481, 42.140556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.997059, 35.591972, 41.978268>,  <34.973537, 35.810066, 41.880894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.997059, 35.591972, 41.978268>,  <35.036263, 35.228481, 42.140556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.997059, 35.591972, 41.978268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267838, 0.368553, 0.890186,
		0.958466, 0.195914, 0.207270,
		-0.098010, 0.908728, -0.405719,
		34.967655, 35.864590, 41.856552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.465897, 35.699696, 42.640293>,  <35.036263, 35.228481, 42.140556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.465897, 35.699696, 42.640293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.214367, 35.933807, 42.435539>,  <35.063450, 36.074276, 42.312687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.214367, 35.933807, 42.435539>,  <35.465897, 35.699696, 42.640293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.214367, 35.933807, 42.435539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200152, 0.514303, 0.833925,
		0.751342, 0.626850, -0.206263,
		-0.628827, 0.585279, -0.511883,
		35.025719, 36.109390, 42.281975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.588554, 36.412884, 42.920883>,  <35.465897, 35.699696, 42.640293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.588554, 36.412884, 42.920883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.228260, 36.436970, 42.748817>,  <35.012081, 36.451424, 42.645576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.228260, 36.436970, 42.748817>,  <35.588554, 36.412884, 42.920883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.228260, 36.436970, 42.748817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366578, 0.425859, 0.827203,
		0.233002, 0.902783, -0.361514,
		-0.900739, 0.060217, -0.430167,
		34.958038, 36.455036, 42.619766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.445934, 36.999943, 43.163010>,  <35.588554, 36.412884, 42.920883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.445934, 36.999943, 43.163010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.087666, 36.886826, 43.025723>,  <34.872704, 36.818954, 42.943348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.087666, 36.886826, 43.025723>,  <35.445934, 36.999943, 43.163010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.087666, 36.886826, 43.025723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442162, 0.483640, 0.755371,
		-0.047621, 0.828323, -0.558224,
		-0.895670, -0.282797, -0.343221,
		34.818966, 36.801987, 42.922756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.011387, 37.696033, 43.128056>,  <35.445934, 36.999943, 43.163010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.011387, 37.696033, 43.128056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.781857, 37.369289, 43.151615>,  <34.644138, 37.173244, 43.165749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.781857, 37.369289, 43.151615>,  <35.011387, 37.696033, 43.128056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.781857, 37.369289, 43.151615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504710, 0.409351, 0.760065,
		-0.644973, 0.406421, -0.647173,
		-0.573827, -0.816856, 0.058896,
		34.609707, 37.124233, 43.169285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.281288, 37.992203, 43.268425>,  <35.011387, 37.696033, 43.128056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.281288, 37.992203, 43.268425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.236698, 37.604454, 43.355953>,  <34.209946, 37.371803, 43.408470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.236698, 37.604454, 43.355953>,  <34.281288, 37.992203, 43.268425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.236698, 37.604454, 43.355953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642757, 0.238267, 0.728075,
		-0.757917, -0.059491, -0.649633,
		-0.111473, -0.969376, 0.218825,
		34.203255, 37.313641, 43.421600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.548134, 37.869774, 43.277626>,  <34.281288, 37.992203, 43.268425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.548134, 37.869774, 43.277626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.711548, 37.578701, 43.498020>,  <33.809597, 37.404057, 43.630257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.711548, 37.578701, 43.498020>,  <33.548134, 37.869774, 43.277626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.711548, 37.578701, 43.498020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587610, 0.252237, 0.768824,
		-0.698435, -0.637855, -0.324544,
		0.408537, -0.727679, 0.550982,
		33.834110, 37.360397, 43.663315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.985737, 37.495567, 43.488808>,  <33.548134, 37.869774, 43.277626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.985737, 37.495567, 43.488808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.294624, 37.431923, 43.734852>,  <33.479958, 37.393734, 43.882477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.294624, 37.431923, 43.734852>,  <32.985737, 37.495567, 43.488808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.294624, 37.431923, 43.734852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569580, 0.255594, 0.781185,
		-0.281514, -0.953601, 0.106747,
		0.772223, -0.159113, 0.615106,
		33.526291, 37.384190, 43.919384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.760006, 37.045650, 44.087765>,  <32.985737, 37.495567, 43.488808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.760006, 37.045650, 44.087765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.076633, 37.250481, 44.221142>,  <33.266609, 37.373379, 44.301170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.076633, 37.250481, 44.221142>,  <32.760006, 37.045650, 44.087765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.076633, 37.250481, 44.221142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525531, 0.292035, 0.799082,
		0.311814, -0.807770, 0.500280,
		0.791574, 0.512077, 0.333448,
		33.314106, 37.404106, 44.321175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.704716, 37.043369, 44.859608>,  <32.760006, 37.045650, 44.087765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.704716, 37.043369, 44.859608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.981983, 37.321934, 44.785275>,  <33.148342, 37.489071, 44.740673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.981983, 37.321934, 44.785275>,  <32.704716, 37.043369, 44.859608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.981983, 37.321934, 44.785275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302218, 0.514881, 0.802223,
		0.654356, -0.499913, 0.567366,
		0.693168, 0.696408, -0.185833,
		33.189934, 37.530857, 44.729523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.952980, 37.270725, 45.537441>,  <32.704716, 37.043369, 44.859608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.952980, 37.270725, 45.537441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.050804, 37.573551, 45.295105>,  <33.109497, 37.755249, 45.149704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.050804, 37.573551, 45.295105>,  <32.952980, 37.270725, 45.537441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.050804, 37.573551, 45.295105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484793, 0.636579, 0.599786,
		0.839742, 0.147022, 0.522703,
		0.244560, 0.757068, -0.605837,
		33.124172, 37.800671, 45.113354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.330360, 37.868389, 45.952415>,  <32.952980, 37.270725, 45.537441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.330360, 37.868389, 45.952415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.202118, 38.048500, 45.619080>,  <33.125172, 38.156567, 45.419079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.202118, 38.048500, 45.619080>,  <33.330360, 37.868389, 45.952415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.202118, 38.048500, 45.619080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179545, 0.834947, 0.520219,
		0.930040, 0.316410, -0.186847,
		-0.320609, 0.450277, -0.833343,
		33.105934, 38.183582, 45.369076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.653595, 38.515339, 45.994301>,  <33.330360, 37.868389, 45.952415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.653595, 38.515339, 45.994301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.365227, 38.594521, 45.728645>,  <33.192204, 38.642029, 45.569252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.365227, 38.594521, 45.728645>,  <33.653595, 38.515339, 45.994301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.365227, 38.594521, 45.728645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124513, 0.905741, 0.405129,
		0.681737, 0.374761, -0.628322,
		-0.720924, 0.197957, -0.664140,
		33.148949, 38.653908, 45.529404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.838085, 39.156216, 45.745827>,  <33.653595, 38.515339, 45.994301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.838085, 39.156216, 45.745827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.450653, 39.132305, 45.649265>,  <33.218193, 39.117958, 45.591328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.450653, 39.132305, 45.649265>,  <33.838085, 39.156216, 45.745827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.450653, 39.132305, 45.649265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097964, 0.983911, 0.149409,
		0.228591, 0.168364, -0.958853,
		-0.968581, -0.059780, -0.241406,
		33.160080, 39.114372, 45.576843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.672451, 39.765671, 45.328472>,  <33.838085, 39.156216, 45.745827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.672451, 39.765671, 45.328472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.331108, 39.620956, 45.478615>,  <33.126301, 39.534126, 45.568699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.331108, 39.620956, 45.478615>,  <33.672451, 39.765671, 45.328472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.331108, 39.620956, 45.478615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221430, 0.903361, 0.367298,
		-0.471966, 0.230321, -0.851000,
		-0.853356, -0.361789, 0.375356,
		33.075100, 39.512421, 45.591221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.099022, 40.034702, 44.913383>,  <33.672451, 39.765671, 45.328472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.099022, 40.034702, 44.913383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.984928, 39.940598, 45.285038>,  <32.916473, 39.884136, 45.508030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.984928, 39.940598, 45.285038>,  <33.099022, 40.034702, 44.913383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.984928, 39.940598, 45.285038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250367, 0.954038, 0.164707,
		-0.925180, -0.185645, -0.331027,
		-0.285235, -0.235262, 0.929136,
		32.899357, 39.870018, 45.563778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.591209, 40.470470, 44.993362>,  <33.099022, 40.034702, 44.913383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.591209, 40.470470, 44.993362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.654404, 40.353176, 45.370522>,  <32.692322, 40.282799, 45.596817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.654404, 40.353176, 45.370522>,  <32.591209, 40.470470, 44.993362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.654404, 40.353176, 45.370522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213694, 0.922106, 0.322578,
		-0.964041, -0.252455, 0.083019,
		0.157989, -0.293237, 0.942895,
		32.701801, 40.265205, 45.653389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.121555, 40.795013, 45.394600>,  <32.591209, 40.470470, 44.993362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.121555, 40.795013, 45.394600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.387623, 40.698532, 45.677265>,  <32.547264, 40.640644, 45.846863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.387623, 40.698532, 45.677265>,  <32.121555, 40.795013, 45.394600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.387623, 40.698532, 45.677265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221162, 0.840281, 0.494991,
		-0.713190, -0.485539, 0.505581,
		0.665168, -0.241207, 0.706662,
		32.587173, 40.626171, 45.889263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.666605, 40.887543, 45.973785>,  <32.121555, 40.795013, 45.394600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.666605, 40.887543, 45.973785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.052280, 40.907051, 46.078060>,  <32.283688, 40.918758, 46.140625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.052280, 40.907051, 46.078060>,  <31.666605, 40.887543, 45.973785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.052280, 40.907051, 46.078060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218001, 0.705544, 0.674302,
		-0.151040, -0.706985, 0.690912,
		0.964190, 0.048773, 0.260689,
		32.341537, 40.921684, 46.156265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.549133, 40.830273, 46.650867>,  <31.666605, 40.887543, 45.973785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.549133, 40.830273, 46.650867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.918280, 40.965473, 46.577034>,  <32.139767, 41.046593, 46.532734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.918280, 40.965473, 46.577034>,  <31.549133, 40.830273, 46.650867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.918280, 40.965473, 46.577034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126826, 0.719292, 0.683033,
		0.363636, -0.606939, 0.706678,
		0.922867, 0.338001, -0.184585,
		32.195141, 41.066872, 46.521660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.780806, 40.997654, 47.204651>,  <31.549133, 40.830273, 46.650867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.780806, 40.997654, 47.204651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.003540, 41.217838, 46.955837>,  <32.137180, 41.349949, 46.806549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.003540, 41.217838, 46.955837>,  <31.780806, 40.997654, 47.204651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.003540, 41.217838, 46.955837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155492, 0.804715, 0.572936,
		0.815938, -0.222311, 0.533687,
		0.556836, 0.550464, -0.622030,
		32.170589, 41.382977, 46.769230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.232201, 41.372406, 47.609653>,  <31.780806, 40.997654, 47.204651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.232201, 41.372406, 47.609653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.213642, 41.589142, 47.273972>,  <32.202507, 41.719181, 47.072563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.213642, 41.589142, 47.273972>,  <32.232201, 41.372406, 47.609653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.213642, 41.589142, 47.273972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155802, 0.825900, 0.541862,
		0.986698, 0.155889, 0.046101,
		-0.046395, 0.541837, -0.839202,
		32.199722, 41.751694, 47.022209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.331585, 42.084423, 47.820549>,  <32.232201, 41.372406, 47.609653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.331585, 42.084423, 47.820549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.226639, 42.169559, 47.444069>,  <32.163670, 42.220642, 47.218182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.226639, 42.169559, 47.444069>,  <32.331585, 42.084423, 47.820549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.226639, 42.169559, 47.444069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312500, 0.904069, 0.291553,
		0.912967, 0.370619, -0.170683,
		-0.262365, 0.212839, -0.941204,
		32.147930, 42.233410, 47.161709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.569912, 42.888355, 47.699841>,  <32.331585, 42.084423, 47.820549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.569912, 42.888355, 47.699841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.287876, 42.745945, 47.454536>,  <32.118656, 42.660500, 47.307354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.287876, 42.745945, 47.454536>,  <32.569912, 42.888355, 47.699841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.287876, 42.745945, 47.454536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461640, 0.886926, 0.015859,
		0.538273, 0.294289, -0.789719,
		-0.705089, -0.356030, -0.613263,
		32.076351, 42.639137, 47.270557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.546875, 43.351109, 47.121487>,  <32.569912, 42.888355, 47.699841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.546875, 43.351109, 47.121487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.198025, 43.163742, 47.178017>,  <31.988714, 43.051323, 47.211937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.198025, 43.163742, 47.178017>,  <32.546875, 43.351109, 47.121487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.198025, 43.163742, 47.178017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454562, 0.882576, 0.120137,
		-0.181008, 0.040532, -0.982646,
		-0.872129, -0.468419, 0.141328,
		31.936386, 43.023216, 47.220417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.227673, 43.975845, 47.032658>,  <32.546875, 43.351109, 47.121487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.227673, 43.975845, 47.032658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.542744, 44.220081, 46.999817>,  <32.731785, 44.366623, 46.980114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.542744, 44.220081, 46.999817>,  <32.227673, 43.975845, 47.032658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.542744, 44.220081, 46.999817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500501, -0.711901, -0.492642,
		-0.359251, 0.346951, -0.866350,
		0.787678, 0.610591, -0.082102,
		32.779049, 44.403259, 46.975185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.410480, 44.102436, 46.253536>,  <32.227673, 43.975845, 47.032658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.410480, 44.102436, 46.253536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.742687, 44.190067, 46.458374>,  <32.942013, 44.242645, 46.581276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.742687, 44.190067, 46.458374>,  <32.410480, 44.102436, 46.253536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.742687, 44.190067, 46.458374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531048, -0.588756, -0.609388,
		0.167996, 0.778057, -0.605314,
		0.830521, 0.219076, 0.512094,
		32.991844, 44.255791, 46.612003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.966393, 44.507626, 45.846527>,  <32.410480, 44.102436, 46.253536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.966393, 44.507626, 45.846527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.178680, 44.325027, 46.132172>,  <33.306053, 44.215469, 46.303558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.178680, 44.325027, 46.132172>,  <32.966393, 44.507626, 45.846527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.178680, 44.325027, 46.132172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593343, -0.401532, -0.697650,
		0.605211, 0.793967, 0.057758,
		0.530719, -0.456496, 0.714107,
		33.337894, 44.188080, 46.346405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.630035, 44.620159, 45.592400>,  <32.966393, 44.507626, 45.846527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.630035, 44.620159, 45.592400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.652424, 44.315487, 45.850613>,  <33.665859, 44.132683, 46.005543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.652424, 44.315487, 45.850613>,  <33.630035, 44.620159, 45.592400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.652424, 44.315487, 45.850613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524742, -0.527612, -0.668036,
		0.849419, 0.376133, 0.370150,
		0.055975, -0.761676, 0.645536,
		33.669216, 44.086983, 46.044273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.284569, 44.362225, 45.428600>,  <33.630035, 44.620159, 45.592400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.284569, 44.362225, 45.428600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.101418, 44.074139, 45.637077>,  <33.991528, 43.901287, 45.762165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.101418, 44.074139, 45.637077>,  <34.284569, 44.362225, 45.428600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.101418, 44.074139, 45.637077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412855, -0.691471, -0.592806,
		0.787334, -0.056259, 0.613954,
		-0.457882, -0.720211, 0.521192,
		33.964054, 43.858074, 45.793434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.821625, 43.771854, 45.635780>,  <34.284569, 44.362225, 45.428600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.821625, 43.771854, 45.635780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.461334, 43.600174, 45.608986>,  <34.245159, 43.497166, 45.592907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.461334, 43.600174, 45.608986>,  <34.821625, 43.771854, 45.635780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.461334, 43.600174, 45.608986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408390, -0.784123, -0.467300,
		0.148037, -0.448265, 0.881558,
		-0.900724, -0.429197, -0.066988,
		34.191116, 43.471416, 45.588890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.987461, 42.985806, 45.685234>,  <34.821625, 43.771854, 45.635780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.987461, 42.985806, 45.685234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.613979, 43.035023, 45.550732>,  <34.389893, 43.064552, 45.470032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.613979, 43.035023, 45.550732>,  <34.987461, 42.985806, 45.685234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.613979, 43.035023, 45.550732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136991, -0.744892, -0.652969,
		-0.330814, -0.655741, 0.678650,
		-0.933700, 0.123042, -0.336251,
		34.333870, 43.071934, 45.449856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.691940, 42.297924, 45.700962>,  <34.987461, 42.985806, 45.685234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.691940, 42.297924, 45.700962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.508556, 42.507381, 45.413738>,  <34.398525, 42.633057, 45.241405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.508556, 42.507381, 45.413738>,  <34.691940, 42.297924, 45.700962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.508556, 42.507381, 45.413738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254047, -0.697039, -0.670520,
		-0.851630, -0.489828, 0.186534,
		-0.458461, 0.523647, -0.718059,
		34.371017, 42.664474, 45.198322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.354973, 41.755203, 45.368912>,  <34.691940, 42.297924, 45.700962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.354973, 41.755203, 45.368912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.366055, 42.073608, 45.127056>,  <34.372704, 42.264652, 44.981941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.366055, 42.073608, 45.127056>,  <34.354973, 41.755203, 45.368912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.366055, 42.073608, 45.127056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050183, -0.605217, -0.794477,
		-0.998356, -0.008332, -0.056714,
		0.027704, 0.796017, -0.604640,
		34.374367, 42.312412, 44.945663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.980537, 41.606583, 44.852562>,  <34.354973, 41.755203, 45.368912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.980537, 41.606583, 44.852562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.206341, 41.901905, 44.704918>,  <34.341824, 42.079098, 44.616333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.206341, 41.901905, 44.704918>,  <33.980537, 41.606583, 44.852562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.206341, 41.901905, 44.704918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158434, -0.535773, -0.829365,
		-0.810081, 0.409702, -0.419420,
		0.564507, 0.738303, -0.369109,
		34.375694, 42.123394, 44.594185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.812546, 41.658600, 44.155998>,  <33.980537, 41.606583, 44.852562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.812546, 41.658600, 44.155998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.174793, 41.825676, 44.185337>,  <34.392143, 41.925922, 44.202942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.174793, 41.825676, 44.185337>,  <33.812546, 41.658600, 44.155998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.174793, 41.825676, 44.185337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247507, -0.380130, -0.891202,
		-0.344365, 0.825248, -0.447636,
		0.905623, 0.417692, 0.073351,
		34.446480, 41.950985, 44.207344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.935577, 41.911572, 43.484070>,  <33.812546, 41.658600, 44.155998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.935577, 41.911572, 43.484070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.291313, 41.908058, 43.666935>,  <34.504757, 41.905949, 43.776653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.291313, 41.908058, 43.666935>,  <33.935577, 41.911572, 43.484070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.291313, 41.908058, 43.666935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393253, -0.495418, -0.774541,
		0.233290, 0.868610, -0.437141,
		0.889341, -0.008786, 0.457159,
		34.558117, 41.905422, 43.804081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.402298, 41.964962, 42.956089>,  <33.935577, 41.911572, 43.484070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.402298, 41.964962, 42.956089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.626965, 41.832397, 43.259323>,  <34.761765, 41.752857, 43.441265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.626965, 41.832397, 43.259323>,  <34.402298, 41.964962, 42.956089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.626965, 41.832397, 43.259323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392796, -0.699613, -0.596869,
		0.728180, 0.633013, -0.262769,
		0.561663, -0.331414, 0.758090,
		34.795464, 41.732975, 43.486752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.150620, 41.981319, 42.748211>,  <34.402298, 41.964962, 42.956089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.150620, 41.981319, 42.748211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.104618, 41.736446, 43.061134>,  <35.077019, 41.589523, 43.248886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.104618, 41.736446, 43.061134>,  <35.150620, 41.981319, 42.748211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.104618, 41.736446, 43.061134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546677, -0.696551, -0.464715,
		0.829409, 0.374226, 0.414773,
		-0.115002, -0.612186, 0.782306,
		35.070118, 41.552792, 43.295826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.825031, 41.754925, 42.819237>,  <35.150620, 41.981319, 42.748211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.825031, 41.754925, 42.819237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.579945, 41.494919, 42.999035>,  <35.432892, 41.338913, 43.106915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.579945, 41.494919, 42.999035>,  <35.825031, 41.754925, 42.819237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.579945, 41.494919, 42.999035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528333, -0.759899, -0.378707,
		0.587740, 0.005443, 0.809032,
		-0.612721, -0.650019, 0.449498,
		35.396130, 41.299911, 43.133884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.265766, 41.265137, 43.058559>,  <35.825031, 41.754925, 42.819237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.265766, 41.265137, 43.058559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.916977, 41.069851, 43.044075>,  <35.707703, 40.952679, 43.035385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.916977, 41.069851, 43.044075>,  <36.265766, 41.265137, 43.058559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.916977, 41.069851, 43.044075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480206, -0.838578, -0.257273,
		0.095240, -0.241723, 0.965660,
		-0.871970, -0.488218, -0.036211,
		35.655384, 40.923386, 43.033211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.361755, 40.456749, 43.342350>,  <36.265766, 41.265137, 43.058559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.361755, 40.456749, 43.342350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.019711, 40.475136, 43.135788>,  <35.814484, 40.486168, 43.011848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.019711, 40.475136, 43.135788>,  <36.361755, 40.456749, 43.342350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.019711, 40.475136, 43.135788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191340, -0.897762, -0.396752,
		-0.481850, -0.438076, 0.758887,
		-0.855108, 0.045970, -0.516408,
		35.763180, 40.488926, 42.980865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.019222, 39.923923, 43.461266>,  <36.361755, 40.456749, 43.342350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.019222, 39.923923, 43.461266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.841843, 40.006439, 43.112373>,  <35.735413, 40.055950, 42.903038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.841843, 40.006439, 43.112373>,  <36.019222, 39.923923, 43.461266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.841843, 40.006439, 43.112373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045628, -0.966695, -0.251831,
		-0.895136, -0.151474, 0.419270,
		-0.443452, 0.206293, -0.872235,
		35.708809, 40.068329, 42.850704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.717995, 39.349770, 43.266266>,  <36.019222, 39.923923, 43.461266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.717995, 39.349770, 43.266266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.660828, 39.534092, 42.915897>,  <35.626526, 39.644684, 42.705677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.660828, 39.534092, 42.915897>,  <35.717995, 39.349770, 43.266266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.660828, 39.534092, 42.915897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201120, -0.853017, -0.481573,
		-0.969084, -0.244991, 0.029237,
		-0.142921, 0.460804, -0.875918,
		35.617950, 39.672333, 42.653122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.240089, 38.968170, 42.926514>,  <35.717995, 39.349770, 43.266266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.240089, 38.968170, 42.926514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.454216, 39.167416, 42.653656>,  <35.582691, 39.286964, 42.489941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.454216, 39.167416, 42.653656>,  <35.240089, 38.968170, 42.926514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.454216, 39.167416, 42.653656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260514, -0.865598, -0.427636,
		-0.803473, 0.051212, -0.593134,
		0.535316, 0.498114, -0.682143,
		35.614811, 39.316849, 42.449013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.034912, 38.703644, 42.266739>,  <35.240089, 38.968170, 42.926514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.034912, 38.703644, 42.266739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.385994, 38.867073, 42.166580>,  <35.596645, 38.965130, 42.106483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.385994, 38.867073, 42.166580>,  <35.034912, 38.703644, 42.266739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.385994, 38.867073, 42.166580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261320, -0.846097, -0.464576,
		-0.401671, 0.342329, -0.849395,
		0.877708, 0.408571, -0.250396,
		35.649307, 38.989643, 42.091461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.270988, 38.398258, 41.546700>,  <35.034912, 38.703644, 42.266739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.270988, 38.398258, 41.546700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.587135, 38.551376, 41.738026>,  <35.776825, 38.643250, 41.852821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.587135, 38.551376, 41.738026>,  <35.270988, 38.398258, 41.546700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.587135, 38.551376, 41.738026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553164, -0.781475, -0.288629,
		0.263303, 0.492709, -0.829403,
		0.790368, 0.382799, 0.478313,
		35.824245, 38.666218, 41.881519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.716076, 38.435577, 40.933598>,  <35.270988, 38.398258, 41.546700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.716076, 38.435577, 40.933598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.961105, 38.464489, 41.248436>,  <36.108124, 38.481838, 41.437340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.961105, 38.464489, 41.248436>,  <35.716076, 38.435577, 40.933598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.961105, 38.464489, 41.248436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661476, -0.591979, -0.460445,
		0.432665, 0.802706, -0.410445,
		0.612577, 0.072281, 0.787099,
		36.144878, 38.486172, 41.484566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.303635, 38.328091, 40.674652>,  <35.716076, 38.435577, 40.933598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.303635, 38.328091, 40.674652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.387920, 38.263283, 41.060265>,  <36.438492, 38.224400, 41.291630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.387920, 38.263283, 41.060265>,  <36.303635, 38.328091, 40.674652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.387920, 38.263283, 41.060265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701827, -0.661397, -0.264562,
		0.680469, 0.732328, -0.025657,
		0.210716, -0.162020, 0.964027,
		36.451134, 38.214676, 41.349472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.059586, 38.461258, 40.758415>,  <36.303635, 38.328091, 40.674652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.059586, 38.461258, 40.758415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.924183, 38.217915, 41.045555>,  <36.842941, 38.071907, 41.217838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.924183, 38.217915, 41.045555>,  <37.059586, 38.461258, 40.758415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.924183, 38.217915, 41.045555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671176, -0.690796, -0.268932,
		0.659497, 0.390771, 0.642154,
		-0.338506, -0.608358, 0.717854,
		36.822632, 38.035408, 41.260910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.640106, 38.245640, 41.038532>,  <37.059586, 38.461258, 40.758415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.640106, 38.245640, 41.038532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.356071, 37.974739, 41.115593>,  <37.185650, 37.812199, 41.161831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.356071, 37.974739, 41.115593>,  <37.640106, 38.245640, 41.038532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.356071, 37.974739, 41.115593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614259, -0.729573, -0.300680,
		0.344189, -0.095170, 0.934065,
		-0.710084, -0.677248, 0.192652,
		37.143047, 37.771564, 41.173389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.967861, 37.760250, 41.300240>,  <37.640106, 38.245640, 41.038532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.967861, 37.760250, 41.300240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.642464, 37.577698, 41.156044>,  <37.447227, 37.468166, 41.069527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.642464, 37.577698, 41.156044>,  <37.967861, 37.760250, 41.300240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.642464, 37.577698, 41.156044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579694, -0.686172, -0.439457,
		-0.046793, -0.566464, 0.822757,
		-0.813489, -0.456384, -0.360484,
		37.398418, 37.440784, 41.047897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.150166, 37.078228, 41.402950>,  <37.967861, 37.760250, 41.300240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.150166, 37.078228, 41.402950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.846909, 37.068848, 41.142281>,  <37.664955, 37.063221, 40.985878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.846909, 37.068848, 41.142281>,  <38.150166, 37.078228, 41.402950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.846909, 37.068848, 41.142281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533143, -0.597724, -0.598736,
		-0.375478, -0.801359, 0.465661,
		-0.758139, -0.023452, -0.651671,
		37.619469, 37.061813, 40.946777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.181446, 36.435600, 41.133011>,  <38.150166, 37.078228, 41.402950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.181446, 36.435600, 41.133011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.961090, 36.624161, 40.857533>,  <37.828876, 36.737297, 40.692245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.961090, 36.624161, 40.857533>,  <38.181446, 36.435600, 41.133011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.961090, 36.624161, 40.857533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389251, -0.584826, -0.711661,
		-0.738245, -0.660123, 0.138682,
		-0.550888, 0.471398, -0.688698,
		37.795822, 36.765579, 40.650925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.726959, 35.888092, 40.763657>,  <38.181446, 36.435600, 41.133011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.726959, 35.888092, 40.763657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.794487, 36.194141, 40.515114>,  <37.835003, 36.377769, 40.365986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.794487, 36.194141, 40.515114>,  <37.726959, 35.888092, 40.763657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.794487, 36.194141, 40.515114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316468, -0.639104, -0.700994,
		-0.933461, -0.078302, -0.350028,
		0.168815, 0.765124, -0.621359,
		37.845131, 36.423679, 40.328705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.599529, 35.602585, 40.184799>,  <37.726959, 35.888092, 40.763657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.599529, 35.602585, 40.184799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.759487, 35.944309, 40.051987>,  <37.855461, 36.149342, 39.972301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.759487, 35.944309, 40.051987>,  <37.599529, 35.602585, 40.184799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.759487, 35.944309, 40.051987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395869, -0.487710, -0.778091,
		-0.826662, 0.179717, -0.533228,
		0.399897, 0.854307, -0.332027,
		37.879456, 36.200600, 39.952377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.372250, 35.752949, 39.466885>,  <37.599529, 35.602585, 40.184799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.372250, 35.752949, 39.466885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.726807, 35.930973, 39.517838>,  <37.939541, 36.037788, 39.548409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.726807, 35.930973, 39.517838>,  <37.372250, 35.752949, 39.466885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.726807, 35.930973, 39.517838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337282, -0.432409, -0.836220,
		-0.317085, 0.784185, -0.533396,
		0.886396, 0.445058, 0.127381,
		37.992725, 36.064491, 39.556053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.517941, 36.024158, 38.863178>,  <37.372250, 35.752949, 39.466885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.517941, 36.024158, 38.863178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.870735, 36.022221, 39.051678>,  <38.082413, 36.021057, 39.164776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.870735, 36.022221, 39.051678>,  <37.517941, 36.024158, 38.863178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.870735, 36.022221, 39.051678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408644, -0.490244, -0.769851,
		0.234755, 0.871572, -0.430410,
		0.881986, -0.004841, 0.471250,
		38.135330, 36.020767, 39.193054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.019493, 36.125427, 38.373421>,  <37.517941, 36.024158, 38.863178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.019493, 36.125427, 38.373421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.232952, 35.961029, 38.669071>,  <38.361027, 35.862392, 38.846462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.232952, 35.961029, 38.669071>,  <38.019493, 36.125427, 38.373421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.232952, 35.961029, 38.669071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578742, -0.459801, -0.673528,
		0.616665, 0.787190, -0.007513,
		0.533649, -0.410993, 0.739123,
		38.393047, 35.837730, 38.890808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.731693, 36.348370, 38.267082>,  <38.019493, 36.125427, 38.373421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.731693, 36.348370, 38.267082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.738647, 36.008160, 38.477341>,  <38.742821, 35.804031, 38.603497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.738647, 36.008160, 38.477341>,  <38.731693, 36.348370, 38.267082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.738647, 36.008160, 38.477341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515121, -0.442964, -0.733780,
		0.856941, 0.283527, 0.430423,
		0.017385, -0.850526, 0.525645,
		38.743862, 35.753002, 38.635033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.429321, 36.081844, 38.257973>,  <38.731693, 36.348370, 38.267082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.429321, 36.081844, 38.257973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.224510, 35.757511, 38.371376>,  <39.101624, 35.562912, 38.439419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.224510, 35.757511, 38.371376>,  <39.429321, 36.081844, 38.257973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.224510, 35.757511, 38.371376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431632, -0.528229, -0.731210,
		0.742646, -0.252029, 0.620450,
		-0.512026, -0.810836, 0.283504,
		39.070904, 35.514259, 38.456429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.888786, 35.493866, 38.379845>,  <39.429321, 36.081844, 38.257973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.888786, 35.493866, 38.379845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.534084, 35.310062, 38.359783>,  <39.321262, 35.199780, 38.347748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.534084, 35.310062, 38.359783>,  <39.888786, 35.493866, 38.379845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.534084, 35.310062, 38.359783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392875, -0.692077, -0.605540,
		0.243538, -0.556672, 0.794233,
		-0.886757, -0.459507, -0.050155,
		39.268059, 35.172211, 38.344738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.134068, 34.792175, 38.421127>,  <39.888786, 35.493866, 38.379845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.134068, 34.792175, 38.421127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.765335, 34.811195, 38.267265>,  <39.544094, 34.822609, 38.174946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.765335, 34.811195, 38.267265>,  <40.134068, 34.792175, 38.421127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.765335, 34.811195, 38.267265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302686, -0.531553, -0.791096,
		-0.242085, -0.845689, 0.475609,
		-0.921833, 0.047552, -0.384659,
		39.488785, 34.825462, 38.151867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.065964, 34.165005, 38.130299>,  <40.134068, 34.792175, 38.421127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.065964, 34.165005, 38.130299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.777912, 34.395454, 37.975639>,  <39.605080, 34.533726, 37.882843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.777912, 34.395454, 37.975639>,  <40.065964, 34.165005, 38.130299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.777912, 34.395454, 37.975639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186399, -0.376131, -0.907624,
		-0.668333, -0.725677, 0.163474,
		-0.720129, 0.576124, -0.386646,
		39.561874, 34.568291, 37.859646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.546139, 33.852169, 37.670605>,  <40.065964, 34.165005, 38.130299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.546139, 33.852169, 37.670605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.676064, 34.220413, 37.583912>,  <39.754021, 34.441360, 37.531898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.676064, 34.220413, 37.583912>,  <39.546139, 33.852169, 37.670605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.676064, 34.220413, 37.583912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487644, -0.359363, -0.795652,
		-0.810370, 0.152753, -0.565656,
		0.324814, 0.920611, -0.216729,
		39.773506, 34.496597, 37.518894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.475372, 33.997730, 36.880737>,  <39.546139, 33.852169, 37.670605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.475372, 33.997730, 36.880737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.745293, 34.172745, 37.118462>,  <39.907246, 34.277752, 37.261097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.745293, 34.172745, 37.118462>,  <39.475372, 33.997730, 36.880737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.745293, 34.172745, 37.118462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721210, -0.561766, -0.405308,
		0.156526, 0.702125, -0.694636,
		0.674800, 0.437537, 0.594311,
		39.947731, 34.304005, 37.296757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.956776, 34.179108, 36.348450>,  <39.475372, 33.997730, 36.880737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.956776, 34.179108, 36.348450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.078423, 34.153160, 36.728619>,  <40.151413, 34.137592, 36.956718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.078423, 34.153160, 36.728619>,  <39.956776, 34.179108, 36.348450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.078423, 34.153160, 36.728619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839723, -0.452881, -0.299608,
		0.449863, 0.889208, -0.083258,
		0.304120, -0.064869, 0.950423,
		40.169659, 34.133701, 37.013744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.563313, 34.577888, 36.549767>,  <39.956776, 34.179108, 36.348450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.563313, 34.577888, 36.549767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.497658, 34.216187, 36.707439>,  <40.458263, 33.999165, 36.802044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.497658, 34.216187, 36.707439>,  <40.563313, 34.577888, 36.549767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.497658, 34.216187, 36.707439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848474, -0.333238, -0.411151,
		0.503141, 0.266964, 0.821936,
		-0.164138, -0.904258, 0.394178,
		40.448418, 33.944908, 36.825691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.162018, 34.409458, 36.939838>,  <40.563313, 34.577888, 36.549767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.162018, 34.409458, 36.939838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.989685, 34.076981, 36.799271>,  <40.886284, 33.877495, 36.714928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.989685, 34.076981, 36.799271>,  <41.162018, 34.409458, 36.939838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.989685, 34.076981, 36.799271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837969, -0.223943, -0.497652,
		0.334947, -0.508886, 0.792998,
		-0.430834, -0.831195, -0.351421,
		40.860435, 33.827621, 36.693844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.556046, 34.659569, 36.420994>,  <41.162018, 34.409458, 36.939838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.556046, 34.659569, 36.420994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.751736, 35.005062, 36.469368>,  <41.869148, 35.212357, 36.498390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.751736, 35.005062, 36.469368>,  <41.556046, 34.659569, 36.420994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.751736, 35.005062, 36.469368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850523, -0.503171, 0.153064,
		0.193056, 0.027972, -0.980789,
		0.489223, 0.863734, 0.120932,
		41.898502, 35.264183, 36.505646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.101585, 34.763512, 35.796864>,  <41.556046, 34.659569, 36.420994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.101585, 34.763512, 35.796864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.151081, 34.899094, 36.169914>,  <42.180779, 34.980442, 36.393745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.151081, 34.899094, 36.169914>,  <42.101585, 34.763512, 35.796864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.151081, 34.899094, 36.169914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638738, -0.746467, 0.186550,
		0.759409, 0.572621, -0.308873,
		0.123741, 0.338957, 0.932629,
		42.188202, 35.000782, 36.449703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.755947, 35.000381, 36.015255>,  <42.101585, 34.763512, 35.796864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.755947, 35.000381, 36.015255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.563644, 34.806835, 36.307762>,  <42.448265, 34.690708, 36.483265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.563644, 34.806835, 36.307762>,  <42.755947, 35.000381, 36.015255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.563644, 34.806835, 36.307762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602030, -0.788480, -0.125933,
		0.637524, 0.379702, 0.670366,
		-0.480753, -0.483866, 0.731267,
		42.419418, 34.661674, 36.527142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.267334, 34.304779, 36.040192>,  <42.755947, 35.000381, 36.015255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.267334, 34.304779, 36.040192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.353306, 34.119247, 35.696411>,  <43.404888, 34.007927, 35.490143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.353306, 34.119247, 35.696411>,  <43.267334, 34.304779, 36.040192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.353306, 34.119247, 35.696411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323816, -0.864088, 0.385351,
		-0.921383, 0.195481, -0.335916,
		0.214932, -0.463831, -0.859456,
		43.417786, 33.980099, 35.438576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.665932, 33.939381, 35.637981>,  <43.267334, 34.304779, 36.040192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.665932, 33.939381, 35.637981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.012238, 33.747475, 35.581017>,  <43.220020, 33.632332, 35.546837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.012238, 33.747475, 35.581017>,  <42.665932, 33.939381, 35.637981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.012238, 33.747475, 35.581017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414978, -0.847263, 0.331569,
		-0.279737, -0.227961, -0.932620,
		0.865760, -0.479769, -0.142412,
		43.271965, 33.603542, 35.538292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.483234, 33.284267, 35.394413>,  <42.665932, 33.939381, 35.637981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.483234, 33.284267, 35.394413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.856892, 33.209175, 35.515823>,  <43.081085, 33.164120, 35.588669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.856892, 33.209175, 35.515823>,  <42.483234, 33.284267, 35.394413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.856892, 33.209175, 35.515823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272923, -0.923774, 0.268616,
		0.229967, -0.333767, -0.914174,
		0.934146, -0.187727, 0.303530,
		43.137135, 33.152859, 35.606884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.590298, 32.639679, 35.197952>,  <42.483234, 33.284267, 35.394413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.590298, 32.639679, 35.197952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.856781, 32.698887, 35.490326>,  <43.016670, 32.734413, 35.665749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.856781, 32.698887, 35.490326>,  <42.590298, 32.639679, 35.197952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.856781, 32.698887, 35.490326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129289, -0.942341, 0.308671,
		0.734476, -0.300139, -0.608656,
		0.666206, 0.148019, 0.730931,
		43.056644, 32.743294, 35.709606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.939304, 31.967226, 35.308243>,  <42.590298, 32.639679, 35.197952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.939304, 31.967226, 35.308243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.018589, 32.177063, 35.639427>,  <43.066158, 32.302967, 35.838139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.018589, 32.177063, 35.639427>,  <42.939304, 31.967226, 35.308243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.018589, 32.177063, 35.639427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018351, -0.842584, 0.538252,
		0.979988, -0.121879, -0.157380,
		0.198208, 0.524593, 0.827959,
		43.078053, 32.334442, 35.887814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.560322, 31.768280, 35.547848>,  <42.939304, 31.967226, 35.308243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.560322, 31.768280, 35.547848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.396168, 31.930399, 35.874607>,  <43.297676, 32.027668, 36.070663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.396168, 31.930399, 35.874607>,  <43.560322, 31.768280, 35.547848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.396168, 31.930399, 35.874607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230646, -0.820548, 0.522975,
		0.882263, 0.403034, 0.243259,
		-0.410382, 0.405295, 0.816898,
		43.273052, 32.051987, 36.119675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.061028, 31.657091, 36.053989>,  <43.560322, 31.768280, 35.547848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.061028, 31.657091, 36.053989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.715569, 31.702255, 36.250504>,  <43.508293, 31.729353, 36.368412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.715569, 31.702255, 36.250504>,  <44.061028, 31.657091, 36.053989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.715569, 31.702255, 36.250504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087068, -0.926532, 0.366002,
		0.496518, 0.358873, 0.790367,
		-0.863649, 0.112911, 0.491286,
		43.456474, 31.736128, 36.397888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.172928, 31.341454, 36.663536>,  <44.061028, 31.657091, 36.053989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.172928, 31.341454, 36.663536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.773552, 31.353941, 36.645000>,  <43.533928, 31.361433, 36.633877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.773552, 31.353941, 36.645000>,  <44.172928, 31.341454, 36.663536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.773552, 31.353941, 36.645000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049348, -0.881666, 0.469287,
		-0.026207, 0.470840, 0.881829,
		-0.998438, 0.031218, -0.046341,
		43.474022, 31.363306, 36.631100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.997650, 31.230431, 37.346233>,  <44.172928, 31.341454, 36.663536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.997650, 31.230431, 37.346233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.688732, 31.117846, 37.118431>,  <43.503380, 31.050295, 36.981750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.688732, 31.117846, 37.118431>,  <43.997650, 31.230431, 37.346233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.688732, 31.117846, 37.118431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106126, -0.826731, 0.552497,
		-0.626338, 0.487130, 0.608609,
		-0.772294, -0.281460, -0.569510,
		43.457043, 31.033407, 36.947578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.405777, 31.091009, 37.875118>,  <43.997650, 31.230431, 37.346233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.405777, 31.091009, 37.875118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.252544, 30.893419, 37.562904>,  <43.160606, 30.774866, 37.375576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.252544, 30.893419, 37.562904>,  <43.405777, 31.091009, 37.875118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.252544, 30.893419, 37.562904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047397, -0.854397, 0.517455,
		-0.922499, 0.161231, 0.350714,
		-0.383079, -0.493975, -0.780538,
		43.137619, 30.745228, 37.328743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.999054, 30.622063, 38.150394>,  <43.405777, 31.091009, 37.875118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.999054, 30.622063, 38.150394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.053303, 30.472055, 37.783577>,  <43.085854, 30.382051, 37.563488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.053303, 30.472055, 37.783577>,  <42.999054, 30.622063, 38.150394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.053303, 30.472055, 37.783577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021431, -0.926489, 0.375712,
		-0.990528, -0.031303, -0.133692,
		0.135625, -0.375018, -0.917042,
		43.093990, 30.359550, 37.508465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.535557, 29.997850, 37.982498>,  <42.999054, 30.622063, 38.150394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.535557, 29.997850, 37.982498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.849014, 29.967463, 37.735878>,  <43.037090, 29.949230, 37.587906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.849014, 29.967463, 37.735878>,  <42.535557, 29.997850, 37.982498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.849014, 29.967463, 37.735878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075788, -0.973388, 0.216268,
		-0.616570, -0.216204, -0.757031,
		0.783643, -0.075970, -0.616548,
		43.084106, 29.944672, 37.550915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.486801, 29.338833, 37.822182>,  <42.535557, 29.997850, 37.982498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.486801, 29.338833, 37.822182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.861145, 29.391962, 37.691624>,  <43.085751, 29.423840, 37.613289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.861145, 29.391962, 37.691624>,  <42.486801, 29.338833, 37.822182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.861145, 29.391962, 37.691624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206470, -0.957281, 0.202441,
		-0.285560, -0.256846, -0.923301,
		0.935856, 0.132824, -0.326393,
		43.141903, 29.431808, 37.593704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.567879, 28.719986, 37.501873>,  <42.486801, 29.338833, 37.822182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.567879, 28.719986, 37.501873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.932022, 28.877028, 37.554199>,  <43.150509, 28.971252, 37.585594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.932022, 28.877028, 37.554199>,  <42.567879, 28.719986, 37.501873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.932022, 28.877028, 37.554199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337332, -0.887137, 0.314952,
		0.239704, -0.242590, -0.940049,
		0.910357, 0.392604, 0.130817,
		43.205128, 28.994808, 37.593445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.026127, 28.474823, 37.023987>,  <42.567879, 28.719986, 37.501873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.026127, 28.474823, 37.023987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.263241, 28.575556, 37.329975>,  <43.405510, 28.635996, 37.513569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.263241, 28.575556, 37.329975>,  <43.026127, 28.474823, 37.023987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.263241, 28.575556, 37.329975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412718, -0.910638, -0.020036,
		0.691567, 0.327595, -0.643752,
		0.592789, 0.251832, 0.764972,
		43.441078, 28.651106, 37.559467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.604137, 28.131342, 36.924934>,  <43.026127, 28.474823, 37.023987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.604137, 28.131342, 36.924934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.616676, 28.237560, 37.310371>,  <43.624199, 28.301291, 37.541634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.616676, 28.237560, 37.310371>,  <43.604137, 28.131342, 36.924934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.616676, 28.237560, 37.310371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510397, -0.833144, 0.212991,
		0.859367, 0.485135, -0.161654,
		0.031351, 0.265545, 0.963589,
		43.626083, 28.317225, 37.599449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.135521, 27.798607, 37.119511>,  <43.604137, 28.131342, 36.924934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.135521, 27.798607, 37.119511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.995880, 27.882496, 37.484837>,  <43.912094, 27.932829, 37.704033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.995880, 27.882496, 37.484837>,  <44.135521, 27.798607, 37.119511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.995880, 27.882496, 37.484837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449316, -0.817829, 0.359542,
		0.822340, 0.535884, 0.191273,
		-0.349101, 0.209724, 0.913315,
		43.891151, 27.945414, 37.758831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.726009, 27.856077, 37.608543>,  <44.135521, 27.798607, 37.119511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.726009, 27.856077, 37.608543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.410004, 27.780733, 37.841919>,  <44.220402, 27.735527, 37.981945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.410004, 27.780733, 37.841919>,  <44.726009, 27.856077, 37.608543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.410004, 27.780733, 37.841919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501099, -0.746678, 0.437460,
		0.353242, 0.637960, 0.684272,
		-0.790013, -0.188359, 0.583439,
		44.173000, 27.724226, 38.016953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.963139, 27.641022, 38.281429>,  <44.726009, 27.856077, 37.608543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.963139, 27.641022, 38.281429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.585747, 27.510342, 38.259129>,  <44.359310, 27.431932, 38.245750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.585747, 27.510342, 38.259129>,  <44.963139, 27.641022, 38.281429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.585747, 27.510342, 38.259129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296489, -0.907176, 0.298538,
		-0.148107, 0.265136, 0.952768,
		-0.943482, -0.326701, -0.055749,
		44.302704, 27.412331, 38.242405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.722473, 27.336716, 39.033405>,  <44.963139, 27.641022, 38.281429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.722473, 27.336716, 39.033405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.524658, 27.183895, 38.721130>,  <44.405972, 27.092203, 38.533764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.524658, 27.183895, 38.721130>,  <44.722473, 27.336716, 39.033405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.524658, 27.183895, 38.721130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246507, -0.922980, 0.295536,
		-0.833470, -0.046293, 0.550623,
		-0.494533, -0.382053, -0.780688,
		44.376297, 27.069279, 38.486923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.469147, 26.719667, 39.123249>,  <44.722473, 27.336716, 39.033405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.469147, 26.719667, 39.123249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.481762, 26.660164, 38.727901>,  <44.489330, 26.624462, 38.490692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.481762, 26.660164, 38.727901>,  <44.469147, 26.719667, 39.123249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.481762, 26.660164, 38.727901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286680, -0.945968, 0.151525,
		-0.957507, -0.288125, 0.012815,
		0.031535, -0.148760, -0.988370,
		44.491222, 26.615536, 38.431389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.943302, 26.220341, 38.921856>,  <44.469147, 26.719667, 39.123249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.943302, 26.220341, 38.921856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.266094, 26.219450, 38.685623>,  <44.459770, 26.218916, 38.543884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.266094, 26.219450, 38.685623>,  <43.943302, 26.220341, 38.921856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.266094, 26.219450, 38.685623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101119, -0.984706, 0.141880,
		-0.581860, -0.174213, -0.794411,
		0.806978, -0.002224, -0.590577,
		44.508186, 26.218782, 38.508450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.576481, 25.652967, 39.041088>,  <43.943302, 26.220341, 38.921856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.576481, 25.652967, 39.041088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.916553, 25.442392, 39.038307>,  <44.120598, 25.316048, 39.036640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.916553, 25.442392, 39.038307>,  <43.576481, 25.652967, 39.041088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.916553, 25.442392, 39.038307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254841, -0.399938, -0.880401,
		0.460695, 0.750276, -0.474180,
		0.850186, -0.526436, -0.006952,
		44.171608, 25.284462, 39.036221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.008278, 25.672161, 38.437134>,  <43.576481, 25.652967, 39.041088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.008278, 25.672161, 38.437134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.077583, 25.311296, 38.595165>,  <44.119167, 25.094778, 38.689983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.077583, 25.311296, 38.595165>,  <44.008278, 25.672161, 38.437134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.077583, 25.311296, 38.595165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186251, -0.423918, -0.886343,
		0.967105, 0.079984, -0.241476,
		0.173260, -0.902162, 0.395076,
		44.129562, 25.040648, 38.713688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.625759, 25.229839, 38.135078>,  <44.008278, 25.672161, 38.437134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.625759, 25.229839, 38.135078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.298370, 25.037130, 38.260296>,  <44.101936, 24.921505, 38.335426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.298370, 25.037130, 38.260296>,  <44.625759, 25.229839, 38.135078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.298370, 25.037130, 38.260296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193917, -0.281249, -0.939838,
		0.540830, -0.829938, 0.136772,
		-0.818474, -0.481770, 0.313047,
		44.052830, 24.892599, 38.354210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.415905, 24.594604, 37.674026>,  <44.625759, 25.229839, 38.135078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.415905, 24.594604, 37.674026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.720615, 24.852150, 37.702705>,  <44.903442, 25.006678, 37.719913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.720615, 24.852150, 37.702705>,  <44.415905, 24.594604, 37.674026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.720615, 24.852150, 37.702705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612676, -0.680028, -0.402727,
		-0.210546, 0.350714, -0.912508,
		0.761773, 0.643864, 0.071697,
		44.949146, 25.045309, 37.724213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.704979, 24.648172, 36.970650>,  <44.415905, 24.594604, 37.674026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.704979, 24.648172, 36.970650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.012615, 24.734833, 37.211170>,  <45.197197, 24.786829, 37.355484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.012615, 24.734833, 37.211170>,  <44.704979, 24.648172, 36.970650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.012615, 24.734833, 37.211170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614290, -0.510366, -0.601809,
		0.176502, 0.832219, -0.525603,
		0.769087, 0.216652, 0.601304,
		45.243340, 24.799828, 37.391563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.272190, 25.073248, 36.702148>,  <44.704979, 24.648172, 36.970650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.272190, 25.073248, 36.702148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.368362, 24.772161, 36.947296>,  <45.426064, 24.591511, 37.094387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.368362, 24.772161, 36.947296>,  <45.272190, 25.073248, 36.702148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.368362, 24.772161, 36.947296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194866, -0.581111, -0.790150,
		0.950906, 0.309403, 0.006963,
		0.240428, -0.752715, 0.612874,
		45.440491, 24.546347, 37.131157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.948307, 24.906029, 36.518997>,  <45.272190, 25.073248, 36.702148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.948307, 24.906029, 36.518997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.699001, 24.624245, 36.654804>,  <45.549416, 24.455173, 36.736290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.699001, 24.624245, 36.654804>,  <45.948307, 24.906029, 36.518997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.699001, 24.624245, 36.654804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280387, -0.606606, -0.743917,
		0.730015, -0.368463, 0.575599,
		-0.623267, -0.704461, 0.339519,
		45.512020, 24.412907, 36.756660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.424171, 24.744080, 35.956715>,  <45.948307, 24.906029, 36.518997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.424171, 24.744080, 35.956715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.799316, 24.817783, 36.074333>,  <47.024403, 24.862005, 36.144905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.799316, 24.817783, 36.074333>,  <46.424171, 24.744080, 35.956715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.799316, 24.817783, 36.074333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223982, 0.325764, -0.918537,
		-0.265038, 0.927322, 0.264251,
		0.937863, 0.184260, 0.294043,
		47.080677, 24.873062, 36.162544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.626507, 25.544949, 35.820591>,  <46.424171, 24.744080, 35.956715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.626507, 25.544949, 35.820591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.941044, 25.298098, 35.832058>,  <47.129765, 25.149988, 35.838940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.941044, 25.298098, 35.832058>,  <46.626507, 25.544949, 35.820591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.941044, 25.298098, 35.832058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206836, 0.219253, -0.953492,
		0.582139, 0.755701, 0.300052,
		0.786342, -0.617126, 0.028671,
		47.176945, 25.112959, 35.840660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.549454, 25.587337, 35.132843>,  <46.626507, 25.544949, 35.820591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.549454, 25.587337, 35.132843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.159756, 25.612881, 35.046341>,  <45.925938, 25.628206, 34.994442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.159756, 25.612881, 35.046341>,  <46.549454, 25.587337, 35.132843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.159756, 25.612881, 35.046341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094303, 0.986549, -0.133518,
		0.204817, -0.150473, -0.967165,
		-0.974247, 0.063860, -0.216252,
		45.867481, 25.632038, 34.981464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.485664, 25.885496, 34.437073>,  <46.549454, 25.587337, 35.132843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.485664, 25.885496, 34.437073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.134781, 25.973438, 34.607800>,  <45.924252, 26.026203, 34.710236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.134781, 25.973438, 34.607800>,  <46.485664, 25.885496, 34.437073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.134781, 25.973438, 34.607800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179073, 0.974665, -0.134015,
		-0.445463, -0.041128, -0.894355,
		-0.877209, 0.219854, 0.426812,
		45.871616, 26.039394, 34.735844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.423962, 26.553391, 34.258812>,  <46.485664, 25.885496, 34.437073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.423962, 26.553391, 34.258812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.129177, 26.536951, 34.528687>,  <45.952305, 26.527088, 34.690609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.129177, 26.536951, 34.528687>,  <46.423962, 26.553391, 34.258812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.129177, 26.536951, 34.528687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031013, 0.995043, 0.094490,
		-0.675223, 0.090559, -0.732033,
		-0.736962, -0.041099, 0.674684,
		45.908089, 26.524622, 34.731091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.909519, 26.942381, 33.945908>,  <46.423962, 26.553391, 34.258812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.909519, 26.942381, 33.945908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.831814, 26.927206, 34.337994>,  <45.785191, 26.918102, 34.573246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.831814, 26.927206, 34.337994>,  <45.909519, 26.942381, 33.945908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.831814, 26.927206, 34.337994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197416, 0.980319, -0.001184,
		-0.960880, -0.193741, -0.197927,
		-0.194261, -0.037936, 0.980216,
		45.773537, 26.915825, 34.632057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.225594, 27.167759, 34.056541>,  <45.909519, 26.942381, 33.945908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.225594, 27.167759, 34.056541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.376297, 27.219652, 34.423412>,  <45.466721, 27.250788, 34.643536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.376297, 27.219652, 34.423412>,  <45.225594, 27.167759, 34.056541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.376297, 27.219652, 34.423412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436617, 0.898125, 0.052317,
		-0.816956, -0.420168, 0.395022,
		0.376761, 0.129733, 0.917181,
		45.489326, 27.258572, 34.698566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.692177, 27.475231, 34.377342>,  <45.225594, 27.167759, 34.056541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.692177, 27.475231, 34.377342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.003567, 27.517878, 34.624763>,  <45.190403, 27.543467, 34.773216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.003567, 27.517878, 34.624763>,  <44.692177, 27.475231, 34.377342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.003567, 27.517878, 34.624763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232346, 0.964413, 0.126188,
		-0.583084, -0.241953, 0.775546,
		0.778478, 0.106617, 0.618550,
		45.237110, 27.549862, 34.810329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.356243, 27.772488, 34.921452>,  <44.692177, 27.475231, 34.377342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.356243, 27.772488, 34.921452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.746357, 27.860569, 34.928654>,  <44.980427, 27.913418, 34.932976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.746357, 27.860569, 34.928654>,  <44.356243, 27.772488, 34.921452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.746357, 27.860569, 34.928654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219875, 0.959356, 0.176895,
		0.021676, -0.176483, 0.984065,
		0.975287, 0.220205, 0.018009,
		45.038944, 27.926630, 34.934055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.471878, 28.200951, 35.458389>,  <44.356243, 27.772488, 34.921452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.471878, 28.200951, 35.458389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.780502, 28.272310, 35.214138>,  <44.965675, 28.315126, 35.067589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.780502, 28.272310, 35.214138>,  <44.471878, 28.200951, 35.458389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.780502, 28.272310, 35.214138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077720, 0.979118, 0.187851,
		0.631389, -0.097480, 0.769315,
		0.771562, 0.178398, -0.610628,
		45.011971, 28.325830, 35.030949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.845688, 28.802786, 35.799374>,  <44.471878, 28.200951, 35.458389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.845688, 28.802786, 35.799374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.009769, 28.785467, 35.434990>,  <45.108219, 28.775076, 35.216358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.009769, 28.785467, 35.434990>,  <44.845688, 28.802786, 35.799374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.009769, 28.785467, 35.434990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152706, 0.988031, 0.021805,
		0.899116, -0.148054, 0.411910,
		0.410208, -0.043296, -0.910964,
		45.132832, 28.772478, 35.161701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.426895, 29.140852, 35.826118>,  <44.845688, 28.802786, 35.799374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.426895, 29.140852, 35.826118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.312069, 29.132883, 35.443039>,  <45.243172, 29.128101, 35.213192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.312069, 29.132883, 35.443039>,  <45.426895, 29.140852, 35.826118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.312069, 29.132883, 35.443039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065868, 0.997007, -0.040485,
		0.955642, -0.074704, -0.284898,
		-0.287070, -0.019924, -0.957703,
		45.225948, 29.126905, 35.155727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.996853, 29.505739, 35.557495>,  <45.426895, 29.140852, 35.826118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.996853, 29.505739, 35.557495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.699799, 29.515055, 35.289780>,  <45.521568, 29.520643, 35.129150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.699799, 29.515055, 35.289780>,  <45.996853, 29.505739, 35.557495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.699799, 29.515055, 35.289780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232448, 0.946227, -0.224994,
		0.628063, -0.322664, -0.708113,
		-0.742633, 0.023289, -0.669293,
		45.477009, 29.522041, 35.088993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.264153, 29.736437, 34.886158>,  <45.996853, 29.505739, 35.557495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.264153, 29.736437, 34.886158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.875427, 29.820097, 34.929680>,  <45.642193, 29.870293, 34.955795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.875427, 29.820097, 34.929680>,  <46.264153, 29.736437, 34.886158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.875427, 29.820097, 34.929680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201578, 0.976472, -0.076612,
		-0.122272, -0.052519, -0.991106,
		-0.971811, 0.209153, 0.108809,
		45.583885, 29.882843, 34.962322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.193150, 30.208309, 34.480927>,  <46.264153, 29.736437, 34.886158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.193150, 30.208309, 34.480927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.845230, 30.254831, 34.672726>,  <45.636478, 30.282743, 34.787807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.845230, 30.254831, 34.672726>,  <46.193150, 30.208309, 34.480927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.845230, 30.254831, 34.672726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036417, 0.984304, -0.172684,
		-0.492059, -0.132739, -0.860382,
		-0.869800, 0.116303, 0.479502,
		45.584290, 30.289722, 34.816578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.854664, 30.649290, 34.024921>,  <46.193150, 30.208309, 34.480927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.854664, 30.649290, 34.024921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.668694, 30.670431, 34.378429>,  <45.557110, 30.683117, 34.590534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.668694, 30.670431, 34.378429>,  <45.854664, 30.649290, 34.024921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.668694, 30.670431, 34.378429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099693, 0.988742, -0.111579,
		-0.879717, -0.139982, -0.454427,
		-0.464930, 0.052855, 0.883768,
		45.529213, 30.686287, 34.643559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.152657, 31.098131, 33.923027>,  <45.854664, 30.649290, 34.024921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.152657, 31.098131, 33.923027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.276947, 31.120926, 34.302544>,  <45.351521, 31.134604, 34.530254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.276947, 31.120926, 34.302544>,  <45.152657, 31.098131, 33.923027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.276947, 31.120926, 34.302544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129885, 0.991383, -0.017007,
		-0.941584, -0.117949, 0.315449,
		0.310725, 0.056986, 0.948790,
		45.370163, 31.138021, 34.587181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.763481, 31.664389, 34.217819>,  <45.152657, 31.098131, 33.923027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.763481, 31.664389, 34.217819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.054302, 31.612667, 34.487537>,  <45.228794, 31.581635, 34.649368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.054302, 31.612667, 34.487537>,  <44.763481, 31.664389, 34.217819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.054302, 31.612667, 34.487537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198800, 0.979682, -0.026489,
		-0.657168, 0.153308, 0.737988,
		0.727055, -0.129304, 0.674293,
		45.272419, 31.573875, 34.689827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.602100, 31.994011, 34.873974>,  <44.763481, 31.664389, 34.217819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.602100, 31.994011, 34.873974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.001904, 31.984598, 34.882233>,  <45.241787, 31.978951, 34.887188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.001904, 31.984598, 34.882233>,  <44.602100, 31.994011, 34.873974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.001904, 31.984598, 34.882233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016701, 0.958662, 0.284055,
		-0.026476, -0.283571, 0.958586,
		0.999510, -0.023530, 0.020645,
		45.301758, 31.977539, 34.888428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.781940, 32.422207, 35.499214>,  <44.602100, 31.994011, 34.873974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.781940, 32.422207, 35.499214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.112732, 32.386162, 35.277229>,  <45.311207, 32.364536, 35.144039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.112732, 32.386162, 35.277229>,  <44.781940, 32.422207, 35.499214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.112732, 32.386162, 35.277229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193406, 0.972427, 0.130307,
		0.527921, -0.215095, 0.821604,
		0.826978, -0.090111, -0.554966,
		45.360825, 32.359127, 35.110741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.204048, 32.911022, 35.789597>,  <44.781940, 32.422207, 35.499214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.204048, 32.911022, 35.789597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.369061, 32.837677, 35.432678>,  <45.468067, 32.793671, 35.218525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.369061, 32.837677, 35.432678>,  <45.204048, 32.911022, 35.789597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.369061, 32.837677, 35.432678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311474, 0.948886, -0.050986,
		0.856038, -0.256895, 0.448559,
		0.412533, -0.183360, -0.892298,
		45.492821, 32.782669, 35.164989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.978291, 33.071156, 35.807674>,  <45.204048, 32.911022, 35.789597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.978291, 33.071156, 35.807674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.848282, 33.101192, 35.430588>,  <45.770275, 33.119213, 35.204334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.848282, 33.101192, 35.430588>,  <45.978291, 33.071156, 35.807674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.848282, 33.101192, 35.430588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339977, 0.939478, -0.042385,
		0.882482, -0.334279, -0.330883,
		-0.325026, 0.075089, -0.942720,
		45.750774, 33.123718, 35.147774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.419514, 33.455154, 35.610546>,  <45.978291, 33.071156, 35.807674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.419514, 33.455154, 35.610546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.171730, 33.492447, 35.298756>,  <46.023060, 33.514824, 35.111683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.171730, 33.492447, 35.298756>,  <46.419514, 33.455154, 35.610546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.171730, 33.492447, 35.298756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319525, 0.936898, -0.141870,
		0.717063, -0.336944, -0.610156,
		-0.619455, 0.093230, -0.779476,
		45.985893, 33.520416, 35.064911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.827312, 33.828896, 35.004292>,  <46.419514, 33.455154, 35.610546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.827312, 33.828896, 35.004292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.437122, 33.843353, 34.917450>,  <46.203007, 33.852028, 34.865345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.437122, 33.843353, 34.917450>,  <46.827312, 33.828896, 35.004292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.437122, 33.843353, 34.917450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076180, 0.980896, -0.178993,
		0.206485, -0.191143, -0.959598,
		-0.975480, 0.036143, -0.217101,
		46.144478, 33.854195, 34.852318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.628784, 34.200386, 34.399334>,  <46.827312, 33.828896, 35.004292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.628784, 34.200386, 34.399334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.310215, 34.223621, 34.640110>,  <46.119072, 34.237564, 34.784576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.310215, 34.223621, 34.640110>,  <46.628784, 34.200386, 34.399334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.310215, 34.223621, 34.640110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182363, 0.972109, 0.147472,
		-0.576583, 0.227222, -0.784807,
		-0.796427, 0.058089, 0.601938,
		46.071285, 34.241047, 34.820690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.286991, 34.558632, 34.558193>,  <46.628784, 34.200386, 34.399334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.286991, 34.558632, 34.558193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.256401, 34.594360, 34.955418>,  <47.238045, 34.615799, 35.193752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.256401, 34.594360, 34.955418>,  <47.286991, 34.558632, 34.558193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.256401, 34.594360, 34.955418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992430, -0.089173, 0.084450,
		0.096097, 0.992003, -0.081830,
		-0.076478, 0.089326, 0.993062,
		47.233459, 34.621159, 35.253338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.669540, 35.199242, 34.809361>,  <47.286991, 34.558632, 34.558193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.669540, 35.199242, 34.809361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.640923, 34.882660, 35.052170>,  <47.623753, 34.692711, 35.197853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.640923, 34.882660, 35.052170>,  <47.669540, 35.199242, 34.809361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.640923, 34.882660, 35.052170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993630, -0.003432, 0.112636,
		-0.087063, 0.611213, 0.786663,
		-0.071545, -0.791458, 0.607021,
		47.619457, 34.645222, 35.234276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.440231, 42.796848, 39.046383> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.112137, 42.573761, 39.097229>,  <32.915279, 42.439907, 39.127739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.112137, 42.573761, 39.097229>,  <33.440231, 42.796848, 39.046383>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.112137, 42.573761, 39.097229> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329942, -0.642812, -0.691325,
		0.467281, -0.525108, 0.711273,
		-0.820236, -0.557722, 0.127118,
		32.866066, 42.406445, 39.135365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.609829, 42.126015, 39.294029>,  <33.440231, 42.796848, 39.046383>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.609829, 42.126015, 39.294029> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.246883, 42.080643, 39.132126>,  <33.029118, 42.053421, 39.034985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.246883, 42.080643, 39.132126>,  <33.609829, 42.126015, 39.294029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.246883, 42.080643, 39.132126> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347957, -0.742921, -0.571834,
		-0.235843, -0.659699, 0.713565,
		-0.907361, -0.113427, -0.404760,
		32.974674, 42.046616, 39.010696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.432487, 41.433907, 39.363632>,  <33.609829, 42.126015, 39.294029>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.432487, 41.433907, 39.363632> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.229542, 41.594669, 39.058723>,  <33.107773, 41.691128, 38.875778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.229542, 41.594669, 39.058723>,  <33.432487, 41.433907, 39.363632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.229542, 41.594669, 39.058723> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411127, -0.664518, -0.624011,
		-0.757334, -0.629990, 0.171920,
		-0.507365, 0.401904, -0.762269,
		33.077332, 41.715240, 38.830044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.022614, 40.893345, 39.022537>,  <33.432487, 41.433907, 39.363632>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.022614, 40.893345, 39.022537> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.094402, 41.187244, 38.760868>,  <33.137478, 41.363583, 38.603867>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.094402, 41.187244, 38.760868>,  <33.022614, 40.893345, 39.022537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.094402, 41.187244, 38.760868> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552349, -0.625523, -0.551028,
		-0.814063, -0.262435, -0.518101,
		0.179475, 0.734744, -0.654171,
		33.148243, 41.407669, 38.564617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.816162, 40.577244, 38.435257>,  <33.022614, 40.893345, 39.022537>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.816162, 40.577244, 38.435257> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.039356, 40.880856, 38.301079>,  <33.173271, 41.063023, 38.220573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.039356, 40.880856, 38.301079>,  <32.816162, 40.577244, 38.435257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.039356, 40.880856, 38.301079> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352426, -0.582705, -0.732292,
		-0.751300, 0.290386, -0.592642,
		0.557982, 0.759033, -0.335446,
		33.206749, 41.108566, 38.200443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.731892, 40.549927, 37.656689>,  <32.816162, 40.577244, 38.435257>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.731892, 40.549927, 37.656689> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.067398, 40.750065, 37.742596>,  <33.268703, 40.870148, 37.794140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.067398, 40.750065, 37.742596>,  <32.731892, 40.549927, 37.656689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.067398, 40.750065, 37.742596> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474578, -0.478425, -0.738841,
		-0.266924, 0.721640, -0.638739,
		0.838766, 0.500346, 0.214771,
		33.319027, 40.900169, 37.807026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.960953, 40.796597, 36.961685>,  <32.731892, 40.549927, 37.656689>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.960953, 40.796597, 36.961685> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.251072, 40.763260, 37.235035>,  <33.425144, 40.743259, 37.399044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.251072, 40.763260, 37.235035>,  <32.960953, 40.796597, 36.961685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.251072, 40.763260, 37.235035> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445940, -0.699369, -0.558587,
		0.524485, 0.709885, -0.470083,
		0.725295, -0.083342, 0.683375,
		33.468662, 40.738258, 37.440048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.535614, 40.616436, 36.515324>,  <32.960953, 40.796597, 36.961685>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.535614, 40.616436, 36.515324> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.701965, 40.571125, 36.876259>,  <33.801777, 40.543938, 37.092819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.701965, 40.571125, 36.876259>,  <33.535614, 40.616436, 36.515324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.701965, 40.571125, 36.876259> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529230, -0.776751, -0.341430,
		0.739569, 0.619537, -0.263082,
		0.415877, -0.113281, 0.902338,
		33.826729, 40.537140, 37.146961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.301956, 40.562305, 36.454296>,  <33.535614, 40.616436, 36.515324>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.301956, 40.562305, 36.454296> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.219524, 40.380085, 36.800709>,  <34.170067, 40.270752, 37.008556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.219524, 40.380085, 36.800709>,  <34.301956, 40.562305, 36.454296>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.219524, 40.380085, 36.800709> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580809, -0.769210, -0.266416,
		0.787523, 0.448094, 0.423106,
		-0.206077, -0.455553, 0.866028,
		34.157700, 40.243420, 37.060516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.920364, 40.403603, 36.717957>,  <34.301956, 40.562305, 36.454296>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.920364, 40.403603, 36.717957> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.662991, 40.156967, 36.899422>,  <34.508564, 40.008987, 37.008301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.662991, 40.156967, 36.899422>,  <34.920364, 40.403603, 36.717957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.662991, 40.156967, 36.899422> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640590, -0.758152, -0.121862,
		0.419084, 0.212201, 0.882802,
		-0.643439, -0.616584, 0.453663,
		34.469959, 39.971992, 37.035522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.425301, 40.063599, 37.092335>,  <34.920364, 40.403603, 36.717957>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.425301, 40.063599, 37.092335> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.092007, 39.842934, 37.077415>,  <34.892029, 39.710533, 37.068466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.092007, 39.842934, 37.077415>,  <35.425301, 40.063599, 37.092335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.092007, 39.842934, 37.077415> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552910, -0.831753, -0.049777,
		-0.003560, -0.062096, 0.998064,
		-0.833233, -0.551662, -0.037294,
		34.842037, 39.677437, 37.066227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.463608, 39.486206, 37.624172>,  <35.425301, 40.063599, 37.092335>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.463608, 39.486206, 37.624172> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.198174, 39.380600, 37.344189>,  <35.038914, 39.317238, 37.176197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.198174, 39.380600, 37.344189>,  <35.463608, 39.486206, 37.624172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.198174, 39.380600, 37.344189> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496726, -0.855131, -0.148372,
		-0.559385, -0.446147, 0.698599,
		-0.663590, -0.264015, -0.699960,
		34.999096, 39.301395, 37.134201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.495552, 38.865875, 37.791748>,  <35.463608, 39.486206, 37.624172>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.495552, 38.865875, 37.791748> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.355312, 38.908508, 37.419571>,  <35.271168, 38.934090, 37.196266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.355312, 38.908508, 37.419571>,  <35.495552, 38.865875, 37.791748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.355312, 38.908508, 37.419571> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466931, -0.841320, -0.272315,
		-0.811824, -0.529925, 0.245197,
		-0.350596, 0.106581, -0.930443,
		35.250134, 38.940483, 37.140438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.480263, 38.218410, 37.522301>,  <35.495552, 38.865875, 37.791748>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.480263, 38.218410, 37.522301> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.452744, 38.450588, 37.197746>,  <35.436230, 38.589893, 37.003014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.452744, 38.450588, 37.197746>,  <35.480263, 38.218410, 37.522301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.452744, 38.450588, 37.197746> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631461, -0.604319, -0.485856,
		-0.772349, -0.545787, -0.324951,
		-0.068800, 0.580444, -0.811389,
		35.432102, 38.624722, 36.954330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.259209, 37.786983, 36.932823>,  <35.480263, 38.218410, 37.522301>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.259209, 37.786983, 36.932823> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.404190, 38.103458, 36.735783>,  <35.491180, 38.293343, 36.617558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.404190, 38.103458, 36.735783>,  <35.259209, 37.786983, 36.932823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.404190, 38.103458, 36.735783> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376953, -0.607826, -0.698895,
		-0.852369, 0.067633, -0.518549,
		0.362456, 0.791185, -0.492597,
		35.512928, 38.340813, 36.588005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.126705, 37.643330, 36.383472>,  <35.259209, 37.786983, 36.932823>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.126705, 37.643330, 36.383472> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.427547, 37.902683, 36.336262>,  <35.608055, 38.058296, 36.307934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.427547, 37.902683, 36.336262>,  <35.126705, 37.643330, 36.383472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.427547, 37.902683, 36.336262> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437267, -0.624945, -0.646716,
		-0.493080, 0.434792, -0.753544,
		0.752110, 0.648382, -0.118028,
		35.653179, 38.097198, 36.300854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.333641, 37.544743, 35.708920>,  <35.126705, 37.643330, 36.383472>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.333641, 37.544743, 35.708920> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.647781, 37.735294, 35.867050>,  <35.836266, 37.849625, 35.961929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.647781, 37.735294, 35.867050>,  <35.333641, 37.544743, 35.708920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.647781, 37.735294, 35.867050> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595540, -0.755718, -0.272438,
		0.168970, 0.449392, -0.877209,
		0.785354, 0.476379, 0.395325,
		35.883389, 37.878208, 35.985649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.854141, 37.607796, 35.218750>,  <35.333641, 37.544743, 35.708920>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.854141, 37.607796, 35.218750> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.040600, 37.610992, 35.572620>,  <36.152473, 37.612911, 35.784943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.040600, 37.610992, 35.572620>,  <35.854141, 37.607796, 35.218750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.040600, 37.610992, 35.572620> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553417, -0.782797, -0.284530,
		0.690246, 0.622225, -0.369317,
		0.466143, 0.007991, 0.884673,
		36.180443, 37.613388, 35.838024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.570797, 37.433281, 35.043331>,  <35.854141, 37.607796, 35.218750>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.570797, 37.433281, 35.043331> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.553055, 37.374397, 35.438576>,  <36.542408, 37.339069, 35.675724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.553055, 37.374397, 35.438576>,  <36.570797, 37.433281, 35.043331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.553055, 37.374397, 35.438576> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646339, -0.758416, -0.083969,
		0.761760, 0.634930, 0.128788,
		-0.044360, -0.147205, 0.988111,
		36.539745, 37.330235, 35.735008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.270645, 37.495560, 35.316151>,  <36.570797, 37.433281, 35.043331>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.270645, 37.495560, 35.316151> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.085831, 37.279545, 35.597542>,  <36.974941, 37.149937, 35.766376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.085831, 37.279545, 35.597542>,  <37.270645, 37.495560, 35.316151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.085831, 37.279545, 35.597542> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806183, -0.586316, 0.079394,
		0.369586, 0.603816, 0.706266,
		-0.462034, -0.540037, 0.703481,
		36.947220, 37.117535, 35.808586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.761826, 37.423138, 35.802078>,  <37.270645, 37.495560, 35.316151>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.761826, 37.423138, 35.802078> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.484554, 37.139256, 35.852402>,  <37.318192, 36.968925, 35.882595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.484554, 37.139256, 35.852402>,  <37.761826, 37.423138, 35.802078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.484554, 37.139256, 35.852402> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702336, -0.704300, -0.103377,
		0.161971, 0.016699, 0.986654,
		-0.693174, -0.709706, 0.125804,
		37.276604, 36.926342, 35.890144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.040546, 36.818111, 36.079918>,  <37.761826, 37.423138, 35.802078>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.040546, 36.818111, 36.079918> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.714092, 36.701756, 35.880192>,  <37.518219, 36.631943, 35.760357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.714092, 36.701756, 35.880192>,  <38.040546, 36.818111, 36.079918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.714092, 36.701756, 35.880192> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493130, -0.801033, -0.339366,
		-0.301248, -0.523194, 0.797194,
		-0.816133, -0.290886, -0.499312,
		37.469254, 36.614491, 35.730396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.641705, 37.169167, 36.215343>,  <38.040546, 36.818111, 36.079918>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.641705, 37.169167, 36.215343> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.917850, 37.145485, 36.503754>,  <39.083538, 37.131275, 36.676800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.917850, 37.145485, 36.503754>,  <38.641705, 37.169167, 36.215343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.917850, 37.145485, 36.503754> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568235, 0.572479, 0.591081,
		-0.447771, -0.817779, 0.361578,
		0.690369, -0.059207, 0.721030,
		39.124962, 37.127724, 36.720062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.430851, 36.859547, 36.950329>,  <38.641705, 37.169167, 36.215343>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.430851, 36.859547, 36.950329> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.727661, 37.123055, 36.999989>,  <38.905746, 37.281158, 37.029785>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.727661, 37.123055, 36.999989>,  <38.430851, 36.859547, 36.950329>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.727661, 37.123055, 36.999989> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573291, 0.527608, 0.626871,
		0.347460, -0.536333, 0.769168,
		0.742030, 0.658769, 0.124153,
		38.950272, 37.320686, 37.037235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.393471, 36.999016, 37.596394>,  <38.430851, 36.859547, 36.950329>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.393471, 36.999016, 37.596394> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.592716, 37.303936, 37.431087>,  <38.712261, 37.486889, 37.331905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.592716, 37.303936, 37.431087>,  <38.393471, 36.999016, 37.596394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.592716, 37.303936, 37.431087> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515458, 0.643557, 0.565807,
		0.697273, -0.068814, 0.713495,
		0.498111, 0.762299, -0.413263,
		38.742149, 37.532627, 37.307110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.714573, 37.362881, 38.189728>,  <38.393471, 36.999016, 37.596394>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.714573, 37.362881, 38.189728> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.683228, 37.616623, 37.882103>,  <38.664421, 37.768867, 37.697529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.683228, 37.616623, 37.882103>,  <38.714573, 37.362881, 38.189728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.683228, 37.616623, 37.882103> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487300, 0.648618, 0.584665,
		0.869711, 0.420578, 0.258294,
		-0.078363, 0.634356, -0.769058,
		38.659718, 37.806931, 37.651386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.858433, 38.030090, 38.452049>,  <38.714573, 37.362881, 38.189728>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.858433, 38.030090, 38.452049> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.668987, 38.130894, 38.114487>,  <38.555321, 38.191376, 37.911949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.668987, 38.130894, 38.114487>,  <38.858433, 38.030090, 38.452049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.668987, 38.130894, 38.114487> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319122, 0.843972, 0.431129,
		0.820883, 0.473498, -0.319296,
		-0.473616, 0.252012, -0.843906,
		38.526901, 38.206497, 37.861313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.824989, 38.748970, 38.525551>,  <38.858433, 38.030090, 38.452049>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.824989, 38.748970, 38.525551> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.560200, 38.645901, 38.244015>,  <38.401325, 38.584061, 38.075092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.560200, 38.645901, 38.244015>,  <38.824989, 38.748970, 38.525551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.560200, 38.645901, 38.244015> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523108, 0.831355, 0.187632,
		0.536797, 0.492394, -0.685126,
		-0.661972, -0.257675, -0.703844,
		38.361607, 38.568600, 38.032860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.645836, 39.316811, 38.125957>,  <38.824989, 38.748970, 38.525551>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.645836, 39.316811, 38.125957> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.319092, 39.088028, 38.096001>,  <38.123047, 38.950760, 38.078026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.319092, 39.088028, 38.096001>,  <38.645836, 39.316811, 38.125957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.319092, 39.088028, 38.096001> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567154, 0.772670, 0.285163,
		-0.105233, 0.275413, -0.955549,
		-0.816861, -0.571952, -0.074891,
		38.074032, 38.916443, 38.073532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.208725, 39.784012, 37.952991>,  <38.645836, 39.316811, 38.125957>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.208725, 39.784012, 37.952991> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.962967, 39.478092, 38.030556>,  <37.815514, 39.294540, 38.077095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.962967, 39.478092, 38.030556>,  <38.208725, 39.784012, 37.952991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.962967, 39.478092, 38.030556> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687960, 0.639611, 0.342943,
		-0.386309, 0.077300, -0.919124,
		-0.614391, -0.764802, 0.193908,
		37.778648, 39.248650, 38.088730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.565987, 40.032303, 37.822720>,  <38.208725, 39.784012, 37.952991>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.565987, 40.032303, 37.822720> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.505611, 39.705696, 38.045612>,  <37.469387, 39.509731, 38.179348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.505611, 39.705696, 38.045612>,  <37.565987, 40.032303, 37.822720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.505611, 39.705696, 38.045612> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752452, 0.460479, 0.470930,
		-0.641120, -0.348214, -0.683895,
		-0.150935, -0.816521, 0.557237,
		37.460331, 39.460739, 38.212784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.810673, 39.812298, 37.742661>,  <37.565987, 40.032303, 37.822720>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.810673, 39.812298, 37.742661> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.960709, 39.637085, 38.069447>,  <37.050732, 39.531956, 38.265518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.960709, 39.637085, 38.069447>,  <36.810673, 39.812298, 37.742661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.960709, 39.637085, 38.069447> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798153, 0.295605, 0.524946,
		-0.471443, -0.848967, -0.238739,
		0.375090, -0.438033, 0.816967,
		37.073235, 39.505676, 38.314537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.251938, 39.643036, 38.083172>,  <36.810673, 39.812298, 37.742661>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.251938, 39.643036, 38.083172> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.536823, 39.665226, 38.363079>,  <36.707756, 39.678539, 38.531021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.536823, 39.665226, 38.363079>,  <36.251938, 39.643036, 38.083172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.536823, 39.665226, 38.363079> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615187, 0.529434, 0.584161,
		-0.338070, -0.846535, 0.411202,
		0.712217, 0.055479, 0.699763,
		36.750488, 39.681870, 38.573009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.902157, 39.467304, 38.599182>,  <36.251938, 39.643036, 38.083172>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.902157, 39.467304, 38.599182> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.221275, 39.668587, 38.732033>,  <36.412746, 39.789356, 38.811745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.221275, 39.668587, 38.732033>,  <35.902157, 39.467304, 38.599182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.221275, 39.668587, 38.732033> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593651, 0.559325, 0.578562,
		0.105364, -0.658744, 0.744953,
		0.797795, 0.503201, 0.332131,
		36.460613, 39.819546, 38.831673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.800503, 39.545387, 39.266636>,  <35.902157, 39.467304, 38.599182>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.800503, 39.545387, 39.266636> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.084599, 39.819702, 39.203064>,  <36.255054, 39.984291, 39.164921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.084599, 39.819702, 39.203064>,  <35.800503, 39.545387, 39.266636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.084599, 39.819702, 39.203064> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379442, 0.563106, 0.734122,
		0.592946, -0.461096, 0.660155,
		0.710239, 0.685786, -0.158933,
		36.297668, 40.025436, 39.155384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.934967, 39.836575, 39.889736>,  <35.800503, 39.545387, 39.266636>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.934967, 39.836575, 39.889736> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.110664, 40.094463, 39.639492>,  <36.216084, 40.249199, 39.489346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.110664, 40.094463, 39.639492>,  <35.934967, 39.836575, 39.889736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.110664, 40.094463, 39.639492> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356882, 0.764309, 0.537092,
		0.824439, -0.012646, 0.565810,
		0.439245, 0.644727, -0.625613,
		36.242439, 40.287880, 39.451809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.335716, 40.322254, 40.292427>,  <35.934967, 39.836575, 39.889736>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.335716, 40.322254, 40.292427> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.238010, 40.475094, 39.935925>,  <36.179386, 40.566795, 39.722023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.238010, 40.475094, 39.935925>,  <36.335716, 40.322254, 40.292427>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.238010, 40.475094, 39.935925> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507562, 0.732764, 0.453253,
		0.826267, 0.563081, 0.014950,
		-0.244263, 0.382096, -0.891257,
		36.164730, 40.589722, 39.668549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.389877, 41.027225, 40.345230>,  <36.335716, 40.322254, 40.292427>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.389877, 41.027225, 40.345230> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.185013, 41.031528, 40.001701>,  <36.062092, 41.034111, 39.795586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.185013, 41.031528, 40.001701>,  <36.389877, 41.027225, 40.345230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.185013, 41.031528, 40.001701> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566324, 0.747528, 0.347100,
		0.645727, 0.664142, -0.376764,
		-0.512165, 0.010762, -0.858819,
		36.031364, 41.034756, 39.744057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.442566, 41.795460, 39.993217>,  <36.389877, 41.027225, 40.345230>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.442566, 41.795460, 39.993217> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.118462, 41.585094, 39.889763>,  <35.924000, 41.458874, 39.827690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.118462, 41.585094, 39.889763>,  <36.442566, 41.795460, 39.993217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.118462, 41.585094, 39.889763> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586009, 0.733307, 0.344752,
		0.008351, 0.430903, -0.902360,
		-0.810261, -0.525912, -0.258637,
		35.875381, 41.427322, 39.812172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.973812, 42.362350, 39.631687>,  <36.442566, 41.795460, 39.993217>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.973812, 42.362350, 39.631687> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.730286, 42.054607, 39.709072>,  <35.584171, 41.869961, 39.755501>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.730286, 42.054607, 39.709072>,  <35.973812, 42.362350, 39.631687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.730286, 42.054607, 39.709072> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744734, 0.638305, 0.194774,
		-0.273338, -0.025495, -0.961580,
		-0.608816, -0.769361, 0.193460,
		35.547642, 41.823799, 39.767109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.323704, 42.487385, 39.247887> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.259476, 42.249611, 39.563065>,  <35.220940, 42.106945, 39.752171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.259476, 42.249611, 39.563065>,  <35.323704, 42.487385, 39.247887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.259476, 42.249611, 39.563065> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593356, 0.696086, 0.404218,
		-0.788761, -0.402626, -0.464487,
		-0.160574, -0.594438, 0.787946,
		35.211304, 42.071278, 39.799450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.670853, 42.633945, 39.398693>,  <35.323704, 42.487385, 39.247887>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.670853, 42.633945, 39.398693> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.831203, 42.452053, 39.716816>,  <34.927414, 42.342918, 39.907692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.831203, 42.452053, 39.716816>,  <34.670853, 42.633945, 39.398693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.831203, 42.452053, 39.716816> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569621, 0.556193, 0.605129,
		-0.717517, -0.695607, -0.036062,
		0.400875, -0.454732, 0.795310,
		34.951466, 42.315632, 39.955410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.137035, 42.408592, 39.862923>,  <34.670853, 42.633945, 39.398693>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.137035, 42.408592, 39.862923> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.426010, 42.392784, 40.139046>,  <34.599396, 42.383297, 40.304722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.426010, 42.392784, 40.139046>,  <34.137035, 42.408592, 39.862923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.426010, 42.392784, 40.139046> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560148, 0.551855, 0.617810,
		-0.405371, -0.833003, 0.376538,
		0.722432, -0.039525, 0.690311,
		34.642738, 42.380928, 40.346138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.774445, 42.390099, 40.440262>,  <34.137035, 42.408592, 39.862923>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.774445, 42.390099, 40.440262> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.139637, 42.461853, 40.586842>,  <34.358753, 42.504906, 40.674789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.139637, 42.461853, 40.586842>,  <33.774445, 42.390099, 40.440262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.139637, 42.461853, 40.586842> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394370, 0.618213, 0.679915,
		-0.104575, -0.765266, 0.635163,
		0.912982, 0.179387, 0.366447,
		34.413532, 42.515671, 40.696777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.689156, 42.428688, 41.210716>,  <33.774445, 42.390099, 40.440262>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.689156, 42.428688, 41.210716> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.031010, 42.607567, 41.105175>,  <34.236122, 42.714893, 41.041851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.031010, 42.607567, 41.105175>,  <33.689156, 42.428688, 41.210716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.031010, 42.607567, 41.105175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111639, 0.654526, 0.747752,
		0.507090, -0.609597, 0.609304,
		0.854632, 0.447199, -0.263849,
		34.287399, 42.741726, 41.026020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.003868, 42.589066, 41.852982>,  <33.689156, 42.428688, 41.210716>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.003868, 42.589066, 41.852982> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.162849, 42.833408, 41.579079>,  <34.258236, 42.980015, 41.414738>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.162849, 42.833408, 41.579079>,  <34.003868, 42.589066, 41.852982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.162849, 42.833408, 41.579079> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056490, 0.761099, 0.646171,
		0.915883, -0.218139, 0.337006,
		0.397450, 0.610854, -0.684755,
		34.282085, 43.016666, 41.373653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.337261, 43.104946, 42.245445>,  <34.003868, 42.589066, 41.852982>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.337261, 43.104946, 42.245445> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.297569, 43.276119, 41.886108>,  <34.273754, 43.378822, 41.670506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.297569, 43.276119, 41.886108>,  <34.337261, 43.104946, 42.245445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.297569, 43.276119, 41.886108> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235944, 0.866936, 0.439036,
		0.966687, 0.255523, 0.014946,
		-0.099226, 0.427937, -0.898345,
		34.267803, 43.404499, 41.616604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.737206, 43.735279, 42.302635>,  <34.337261, 43.104946, 42.245445>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.737206, 43.735279, 42.302635> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.506516, 43.793331, 41.981056>,  <34.368103, 43.828163, 41.788109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.506516, 43.793331, 41.981056>,  <34.737206, 43.735279, 42.302635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.506516, 43.793331, 41.981056> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213958, 0.922909, 0.320096,
		0.788422, 0.356618, -0.501213,
		-0.576726, 0.145132, -0.803943,
		34.333496, 43.836872, 41.739872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.802235, 44.443333, 42.132168>,  <34.737206, 43.735279, 42.302635>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.802235, 44.443333, 42.132168> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.470604, 44.324291, 41.942825>,  <34.271626, 44.252869, 41.829220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.470604, 44.324291, 41.942825>,  <34.802235, 44.443333, 42.132168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.470604, 44.324291, 41.942825> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507819, 0.755062, 0.414730,
		0.233986, 0.584221, -0.777133,
		-0.829078, -0.297602, -0.473352,
		34.221882, 44.235012, 41.800819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.460712, 45.001858, 41.922626>,  <34.802235, 44.443333, 42.132168>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.460712, 45.001858, 41.922626> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.170826, 44.726246, 41.924778>,  <33.996895, 44.560879, 41.926067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.170826, 44.726246, 41.924778>,  <34.460712, 45.001858, 41.922626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.170826, 44.726246, 41.924778> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521008, 0.553064, 0.650131,
		-0.450931, 0.468359, -0.759803,
		-0.724715, -0.689028, 0.005375,
		33.953411, 44.519539, 41.926392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.792427, 45.355858, 41.909698>,  <34.460712, 45.001858, 41.922626>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.792427, 45.355858, 41.909698> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.724255, 44.989887, 42.056049>,  <33.683353, 44.770306, 42.143860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.724255, 44.989887, 42.056049>,  <33.792427, 45.355858, 41.909698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.724255, 44.989887, 42.056049> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576768, 0.393681, 0.715789,
		-0.798932, -0.089035, -0.594795,
		-0.170429, -0.914925, 0.365877,
		33.673126, 44.715408, 42.165813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.096573, 45.395096, 42.055809>,  <33.792427, 45.355858, 41.909698>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.096573, 45.395096, 42.055809> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.250210, 45.084953, 42.256329>,  <33.342392, 44.898869, 42.376640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.250210, 45.084953, 42.256329>,  <33.096573, 45.395096, 42.055809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.250210, 45.084953, 42.256329> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520295, 0.266769, 0.811250,
		-0.762738, -0.572416, -0.300950,
		0.384088, -0.775354, 0.501300,
		33.365437, 44.852348, 42.406719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.488583, 45.041317, 42.405376>,  <33.096573, 45.395096, 42.055809>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.488583, 45.041317, 42.405376> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.822399, 44.963772, 42.611660>,  <33.022690, 44.917244, 42.735432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.822399, 44.963772, 42.611660>,  <32.488583, 45.041317, 42.405376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.822399, 44.963772, 42.611660> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457608, 0.277370, 0.844784,
		-0.306818, -0.941000, 0.142762,
		0.834540, -0.193866, 0.515712,
		33.072762, 44.905613, 42.766373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.144997, 44.831089, 43.096889>,  <32.488583, 45.041317, 42.405376>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.144997, 44.831089, 43.096889> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.534695, 44.896397, 43.159111>,  <32.768513, 44.935581, 43.196442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.534695, 44.896397, 43.159111>,  <32.144997, 44.831089, 43.096889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.534695, 44.896397, 43.159111> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188950, 0.214500, 0.958273,
		0.123089, -0.962981, 0.239824,
		0.974242, 0.163267, 0.155552,
		32.826965, 44.945377, 43.205776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.440216, 44.399170, 43.757317>,  <32.144997, 44.831089, 43.096889>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.440216, 44.399170, 43.757317> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.698719, 44.700718, 43.709942>,  <32.853821, 44.881645, 43.681515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.698719, 44.700718, 43.709942>,  <32.440216, 44.399170, 43.757317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.698719, 44.700718, 43.709942> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121959, 0.255240, 0.959155,
		0.753310, -0.605418, 0.256892,
		0.646259, 0.753871, -0.118439,
		32.892597, 44.926880, 43.674412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.679829, 44.446602, 44.374771>,  <32.440216, 44.399170, 43.757317>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.679829, 44.446602, 44.374771> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.837124, 44.780376, 44.220329>,  <32.931503, 44.980640, 44.127663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.837124, 44.780376, 44.220329>,  <32.679829, 44.446602, 44.374771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.837124, 44.780376, 44.220329> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194346, 0.335014, 0.921952,
		0.898660, -0.437589, -0.030427,
		0.393242, 0.834435, -0.386107,
		32.955097, 45.030708, 44.104496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.152946, 44.661583, 44.890022>,  <32.679829, 44.446602, 44.374771>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.152946, 44.661583, 44.890022> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.089710, 44.996399, 44.680504>,  <33.051769, 45.197289, 44.554790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.089710, 44.996399, 44.680504>,  <33.152946, 44.661583, 44.890022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.089710, 44.996399, 44.680504> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032049, 0.525842, 0.849978,
		0.986904, 0.151160, -0.056304,
		-0.158090, 0.837043, -0.523801,
		33.042282, 45.247513, 44.523365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.575451, 45.262028, 45.124451>,  <33.152946, 44.661583, 44.890022>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.575451, 45.262028, 45.124451> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.266949, 45.439877, 44.942249>,  <33.081848, 45.546585, 44.832928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.266949, 45.439877, 44.942249>,  <33.575451, 45.262028, 45.124451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.266949, 45.439877, 44.942249> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171274, 0.544251, 0.821253,
		0.613051, 0.711411, -0.343604,
		-0.771255, 0.444619, -0.455499,
		33.035572, 45.573261, 44.805599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.588589, 45.986389, 45.307312>,  <33.575451, 45.262028, 45.124451>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.588589, 45.986389, 45.307312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.213425, 45.891911, 45.205704>,  <32.988327, 45.835224, 45.144737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.213425, 45.891911, 45.205704>,  <33.588589, 45.986389, 45.307312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.213425, 45.891911, 45.205704> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341438, 0.499561, 0.796152,
		-0.061151, 0.833455, -0.549193,
		-0.937913, -0.236201, -0.254024,
		32.932053, 45.821049, 45.129498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.273075, 46.591095, 45.462566>,  <33.588589, 45.986389, 45.307312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.273075, 46.591095, 45.462566> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.007450, 46.292717, 45.442192>,  <32.848076, 46.113689, 45.429970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.007450, 46.292717, 45.442192>,  <33.273075, 46.591095, 45.462566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.007450, 46.292717, 45.442192> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471302, 0.364735, 0.803021,
		-0.580431, 0.557259, -0.593770,
		-0.664060, -0.745943, -0.050934,
		32.808231, 46.068935, 45.426910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.584427, 46.929646, 45.422894>,  <33.273075, 46.591095, 45.462566>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.584427, 46.929646, 45.422894> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.546516, 46.552990, 45.552097>,  <32.523769, 46.326996, 45.629620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.546516, 46.552990, 45.552097>,  <32.584427, 46.929646, 45.422894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.546516, 46.552990, 45.552097> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603289, 0.312431, 0.733777,
		-0.791871, -0.125325, -0.597690,
		-0.094776, -0.941637, 0.323012,
		32.518082, 46.270500, 45.649002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.879524, 46.843933, 45.550026>,  <32.584427, 46.929646, 45.422894>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.879524, 46.843933, 45.550026> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.086250, 46.589653, 45.779385>,  <32.210285, 46.437084, 45.917000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.086250, 46.589653, 45.779385>,  <31.879524, 46.843933, 45.550026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.086250, 46.589653, 45.779385> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430419, 0.386031, 0.815916,
		-0.740030, -0.668479, -0.074112,
		0.516813, -0.635702, 0.573400,
		32.241295, 46.398941, 45.951405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.442381, 46.604488, 46.085960>,  <31.879524, 46.843933, 45.550026>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.442381, 46.604488, 46.085960> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.796650, 46.468834, 46.212811>,  <32.009212, 46.387440, 46.288921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.796650, 46.468834, 46.212811>,  <31.442381, 46.604488, 46.085960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.796650, 46.468834, 46.212811> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206353, 0.324330, 0.923162,
		-0.415934, -0.883059, 0.217268,
		0.885673, -0.339141, 0.317122,
		32.062351, 46.367092, 46.307945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.772383, 46.336288, 45.845852>,  <31.442381, 46.604488, 46.085960>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.772383, 46.336288, 45.845852> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.802843, 46.305042, 46.243465>,  <30.821119, 46.286293, 46.482033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.802843, 46.305042, 46.243465>,  <30.772383, 46.336288, 45.845852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.802843, 46.305042, 46.243465> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602173, -0.790987, -0.108290,
		0.794726, 0.606825, -0.013196,
		0.076151, -0.078115, 0.994032,
		30.825689, 46.281609, 46.541676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.284389, 46.571953, 45.346329>,  <30.772383, 46.336288, 45.845852>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.284389, 46.571953, 45.346329> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.929363, 46.392208, 45.305740>,  <29.716347, 46.284359, 45.281387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.929363, 46.392208, 45.305740>,  <30.284389, 46.571953, 45.346329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.929363, 46.392208, 45.305740> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233930, -0.249876, -0.939595,
		0.396867, -0.857690, 0.326902,
		-0.887566, -0.449366, -0.101472,
		29.663094, 46.257397, 45.275299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.439936, 45.886143, 45.038902>,  <30.284389, 46.571953, 45.346329>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.439936, 45.886143, 45.038902> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.056814, 45.965927, 44.956120>,  <29.826941, 46.013798, 44.906452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.056814, 45.965927, 44.956120>,  <30.439936, 45.886143, 45.038902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.056814, 45.965927, 44.956120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114398, -0.395989, -0.911101,
		-0.263677, -0.896331, 0.356462,
		-0.957803, 0.199458, -0.206952,
		29.769474, 46.025764, 44.894035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.257288, 45.277206, 44.739651>,  <30.439936, 45.886143, 45.038902>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.257288, 45.277206, 44.739651> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.983860, 45.543568, 44.620117>,  <29.819803, 45.703384, 44.548397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.983860, 45.543568, 44.620117>,  <30.257288, 45.277206, 44.739651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.983860, 45.543568, 44.620117> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196069, -0.226843, -0.953991,
		-0.703056, -0.710713, 0.024500,
		-0.683571, 0.665905, -0.298832,
		29.778788, 45.743340, 44.530468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.848265, 44.872463, 44.267441>,  <30.257288, 45.277206, 44.739651>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.848265, 44.872463, 44.267441> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.789545, 45.260532, 44.190266>,  <29.754314, 45.493374, 44.143963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.789545, 45.260532, 44.190266>,  <29.848265, 44.872463, 44.267441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.789545, 45.260532, 44.190266> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154861, -0.170102, -0.973182,
		-0.976969, -0.172739, -0.125270,
		-0.146797, 0.970168, -0.192935,
		29.745506, 45.551582, 44.132385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.512789, 44.912483, 43.681271>,  <29.848265, 44.872463, 44.267441>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.512789, 44.912483, 43.681271> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.675512, 45.277794, 43.689579>,  <29.773146, 45.496979, 43.694565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.675512, 45.277794, 43.689579>,  <29.512789, 44.912483, 43.681271>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.675512, 45.277794, 43.689579> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234692, -0.082509, -0.968562,
		-0.882852, 0.398893, -0.247904,
		0.406807, 0.913278, 0.020774,
		29.797554, 45.551777, 43.695812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.300310, 45.231094, 42.984631>,  <29.512789, 44.912483, 43.681271>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.300310, 45.231094, 42.984631> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.627342, 45.414566, 43.123871>,  <29.823561, 45.524651, 43.207417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.627342, 45.414566, 43.123871>,  <29.300310, 45.231094, 42.984631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.627342, 45.414566, 43.123871> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426867, -0.077069, -0.901024,
		-0.386457, 0.885251, -0.258806,
		0.817579, 0.458683, 0.348101,
		29.872616, 45.552170, 43.228302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.473658, 45.517876, 42.411442>,  <29.300310, 45.231094, 42.984631>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.473658, 45.517876, 42.411442> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.797510, 45.525276, 42.646099>,  <29.991821, 45.529716, 42.786896>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.797510, 45.525276, 42.646099>,  <29.473658, 45.517876, 42.411442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.797510, 45.525276, 42.646099> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568038, -0.276295, -0.775238,
		0.147741, 0.960895, -0.234210,
		0.809633, 0.018506, 0.586645,
		30.040400, 45.530827, 42.822094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.905952, 45.720940, 42.018032>,  <29.473658, 45.517876, 42.411442>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.905952, 45.720940, 42.018032> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.114285, 45.542984, 42.309460>,  <30.239285, 45.436211, 42.484318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.114285, 45.542984, 42.309460>,  <29.905952, 45.720940, 42.018032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.114285, 45.542984, 42.309460> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579039, -0.442999, -0.684445,
		0.627255, 0.778350, 0.026878,
		0.520831, -0.444885, 0.728569,
		30.270535, 45.409519, 42.528030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.519127, 45.660278, 41.668182>,  <29.905952, 45.720940, 42.018032>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.519127, 45.660278, 41.668182> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.532118, 45.393230, 41.965698>,  <30.539913, 45.233002, 42.144207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.532118, 45.393230, 41.965698>,  <30.519127, 45.660278, 41.668182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.532118, 45.393230, 41.965698> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620938, -0.569665, -0.538440,
		0.783187, 0.479335, 0.396051,
		0.032477, -0.667622, 0.743792,
		30.541861, 45.192944, 42.188835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.193933, 45.426590, 41.605484>,  <30.519127, 45.660278, 41.668182>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.193933, 45.426590, 41.605484> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.009817, 45.168602, 41.849499>,  <30.899347, 45.013809, 41.995907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.009817, 45.168602, 41.849499>,  <31.193933, 45.426590, 41.605484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.009817, 45.168602, 41.849499> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581979, -0.738126, -0.341278,
		0.670397, 0.197940, 0.715114,
		-0.460291, -0.644973, 0.610034,
		30.871729, 44.975109, 42.032509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.743723, 45.149647, 41.974972>,  <31.193933, 45.426590, 41.605484>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.743723, 45.149647, 41.974972> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.435652, 44.894516, 41.975887>,  <31.250809, 44.741436, 41.976437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.435652, 44.894516, 41.975887>,  <31.743723, 45.149647, 41.974972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.435652, 44.894516, 41.975887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531741, -0.644051, -0.549955,
		0.352249, -0.422346, 0.835191,
		-0.770177, -0.637827, 0.002288,
		31.204599, 44.703167, 41.976574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.028755, 44.441315, 42.204033>,  <31.743723, 45.149647, 41.974972>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.028755, 44.441315, 42.204033> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.674177, 44.334621, 42.052734>,  <31.461430, 44.270607, 41.961956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.674177, 44.334621, 42.052734>,  <32.028755, 44.441315, 42.204033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.674177, 44.334621, 42.052734> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432157, -0.769570, -0.470110,
		-0.165690, -0.580187, 0.797452,
		-0.886446, -0.266732, -0.378242,
		31.408243, 44.254601, 41.939262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.039177, 43.660995, 42.178654>,  <32.028755, 44.441315, 42.204033>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.039177, 43.660995, 42.178654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.748167, 43.769520, 41.926594>,  <31.573561, 43.834637, 41.775356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.748167, 43.769520, 41.926594>,  <32.039177, 43.660995, 42.178654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.748167, 43.769520, 41.926594> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299427, -0.700829, -0.647443,
		-0.617288, -0.659718, 0.428635,
		-0.727529, 0.271314, -0.630151,
		31.529909, 43.850914, 41.737549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.603487, 43.000362, 41.932934>,  <32.039177, 43.660995, 42.178654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.603487, 43.000362, 41.932934> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.609987, 43.292549, 41.659832>,  <31.613888, 43.467861, 41.495972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.609987, 43.292549, 41.659832>,  <31.603487, 43.000362, 41.932934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.609987, 43.292549, 41.659832> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477774, -0.605513, -0.636464,
		-0.878332, -0.315858, -0.358839,
		0.016249, 0.730471, -0.682750,
		31.614862, 43.511692, 41.455006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.505041, 42.660542, 41.240189>,  <31.603487, 43.000362, 41.932934>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.505041, 42.660542, 41.240189> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.611944, 43.032871, 41.140472>,  <31.676086, 43.256268, 41.080643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.611944, 43.032871, 41.140472>,  <31.505041, 42.660542, 41.240189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.611944, 43.032871, 41.140472> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506127, -0.355736, -0.785676,
		-0.820005, 0.083808, -0.566188,
		0.267260, 0.930821, -0.249287,
		31.692122, 43.312119, 41.065685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.128162, 42.892227, 40.516930>,  <31.505041, 42.660542, 41.240189>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.128162, 42.892227, 40.516930> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.457230, 43.110336, 40.581303>,  <31.654671, 43.241199, 40.619926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.457230, 43.110336, 40.581303>,  <31.128162, 42.892227, 40.516930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.457230, 43.110336, 40.581303> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409768, -0.372474, -0.832678,
		-0.394092, 0.750962, -0.529857,
		0.822668, 0.545270, 0.160931,
		31.704029, 43.273918, 40.629581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.270529, 43.222897, 39.858994>,  <31.128162, 42.892227, 40.516930>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.270529, 43.222897, 39.858994> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.612717, 43.214767, 40.065975>,  <31.818029, 43.209892, 40.190163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.612717, 43.214767, 40.065975>,  <31.270529, 43.222897, 39.858994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.612717, 43.214767, 40.065975> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488790, -0.298351, -0.819800,
		0.171041, 0.954240, -0.245297,
		0.855470, -0.020321, 0.517453,
		31.869358, 43.208672, 40.221210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.736326, 43.575401, 39.494576>,  <31.270529, 43.222897, 39.858994>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.736326, 43.575401, 39.494576> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.948135, 43.319942, 39.717907>,  <32.075222, 43.166668, 39.851906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.948135, 43.319942, 39.717907>,  <31.736326, 43.575401, 39.494576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.948135, 43.319942, 39.717907> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526640, -0.268485, -0.806577,
		0.665025, 0.721138, 0.194171,
		0.529521, -0.638652, 0.558329,
		32.106991, 43.128345, 39.885406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.359051, 43.599575, 39.170528>,  <31.736326, 43.575401, 39.494576>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.359051, 43.599575, 39.170528> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.408882, 43.280369, 39.406376>,  <32.438782, 43.088844, 39.547886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.408882, 43.280369, 39.406376>,  <32.359051, 43.599575, 39.170528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.408882, 43.280369, 39.406376> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359806, -0.517466, -0.776382,
		0.924673, 0.308870, 0.222665,
		0.124579, -0.798015, 0.589620,
		32.446255, 43.040966, 39.583263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.946018, 43.326302, 39.069313>,  <32.359051, 43.599575, 39.170528>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.946018, 43.326302, 39.069313> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.758064, 43.004398, 39.214401>,  <32.645290, 42.811256, 39.301453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.758064, 43.004398, 39.214401>,  <32.946018, 43.326302, 39.069313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.758064, 43.004398, 39.214401> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389794, -0.557843, -0.732715,
		0.792002, -0.202908, 0.575814,
		-0.469887, -0.804761, 0.362721,
		32.617100, 42.762970, 39.323219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<44.328369, 26.425648, 37.470131> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.231663, 26.455378, 37.857124>,  <44.173637, 26.473215, 38.089321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.231663, 26.455378, 37.857124>,  <44.328369, 26.425648, 37.470131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.231663, 26.455378, 37.857124> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494002, 0.848748, -0.188649,
		-0.835171, -0.523548, -0.168483,
		-0.241766, 0.074323, 0.967484,
		44.159134, 26.477674, 38.147369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.521015, 26.546211, 37.627556>,  <44.328369, 26.425648, 37.470131>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.521015, 26.546211, 37.627556> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.774044, 26.705677, 37.893162>,  <43.925861, 26.801355, 38.052525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.774044, 26.705677, 37.893162>,  <43.521015, 26.546211, 37.627556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.774044, 26.705677, 37.893162> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495338, 0.867326, -0.048844,
		-0.595392, -0.298016, 0.746120,
		0.632573, 0.398663, 0.664018,
		43.963818, 26.825275, 38.092365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.128368, 26.824175, 38.129242>,  <43.521015, 26.546211, 37.627556>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.128368, 26.824175, 38.129242> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.476013, 27.016161, 38.177044>,  <43.684601, 27.131351, 38.205727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.476013, 27.016161, 38.177044>,  <43.128368, 26.824175, 38.129242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.476013, 27.016161, 38.177044> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472743, 0.877121, -0.084685,
		-0.145467, 0.017105, 0.989215,
		0.869110, 0.479964, 0.119506,
		43.736748, 27.160151, 38.212894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.044563, 27.469576, 38.560211>,  <43.128368, 26.824175, 38.129242>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.044563, 27.469576, 38.560211> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.408928, 27.536163, 38.409195>,  <43.627544, 27.576117, 38.318584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.408928, 27.536163, 38.409195>,  <43.044563, 27.469576, 38.560211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.408928, 27.536163, 38.409195> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216143, 0.971928, -0.092941,
		0.351467, 0.166263, 0.921318,
		0.910908, 0.166471, -0.377537,
		43.682201, 27.586105, 38.295933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.346947, 28.137812, 38.903004>,  <43.044563, 27.469576, 38.560211>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.346947, 28.137812, 38.903004> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.515533, 28.081842, 38.544609>,  <43.616684, 28.048260, 38.329575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.515533, 28.081842, 38.544609>,  <43.346947, 28.137812, 38.903004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.515533, 28.081842, 38.544609> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103876, 0.974072, -0.200982,
		0.900876, 0.177778, 0.396002,
		0.421465, -0.139924, -0.895985,
		43.641972, 28.039865, 38.275814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.851204, 28.618811, 38.892693>,  <43.346947, 28.137812, 38.903004>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.851204, 28.618811, 38.892693> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.761066, 28.517345, 38.516422>,  <43.706985, 28.456467, 38.290661>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.761066, 28.517345, 38.516422>,  <43.851204, 28.618811, 38.892693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.761066, 28.517345, 38.516422> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023128, 0.963846, -0.265453,
		0.974006, -0.081574, -0.211326,
		-0.225340, -0.253665, -0.940679,
		43.693462, 28.441246, 38.234219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.376167, 28.962723, 38.414696>,  <43.851204, 28.618811, 38.892693>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.376167, 28.962723, 38.414696> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.067818, 28.858091, 38.182377>,  <43.882809, 28.795313, 38.042984>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.067818, 28.858091, 38.182377>,  <44.376167, 28.962723, 38.414696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.067818, 28.858091, 38.182377> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147862, 0.960370, -0.236274,
		0.619586, -0.096260, -0.779004,
		-0.770876, -0.261577, -0.580799,
		43.836555, 28.779617, 38.008137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.387306, 29.467520, 37.838875>,  <44.376167, 28.962723, 38.414696>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.387306, 29.467520, 37.838875> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.028168, 29.335735, 37.722031>,  <43.812683, 29.256664, 37.651924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.028168, 29.335735, 37.722031>,  <44.387306, 29.467520, 37.838875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.028168, 29.335735, 37.722031> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266535, 0.934732, -0.235021,
		0.350474, -0.133156, -0.927059,
		-0.897846, -0.329463, -0.292109,
		43.758816, 29.236897, 37.634399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.299622, 29.612904, 37.104256>,  <44.387306, 29.467520, 37.838875>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.299622, 29.612904, 37.104256> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.928047, 29.558525, 37.242012>,  <43.705105, 29.525898, 37.324665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.928047, 29.558525, 37.242012>,  <44.299622, 29.612904, 37.104256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.928047, 29.558525, 37.242012> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300431, 0.820387, -0.486525,
		-0.216390, -0.555414, -0.802926,
		-0.928933, -0.135945, 0.344387,
		43.649368, 29.517742, 37.345329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.915668, 29.760254, 36.544758>,  <44.299622, 29.612904, 37.104256>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.915668, 29.760254, 36.544758> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.685432, 29.810549, 36.867966>,  <43.547291, 29.840725, 37.061890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.685432, 29.810549, 36.867966>,  <43.915668, 29.760254, 36.544758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.685432, 29.810549, 36.867966> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457539, 0.769445, -0.445660,
		-0.677759, -0.626215, -0.385354,
		-0.575588, 0.125736, 0.808016,
		43.512756, 29.848269, 37.110371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.312038, 29.830042, 36.308796>,  <43.915668, 29.760254, 36.544758>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.312038, 29.830042, 36.308796> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.269073, 30.005112, 36.665874>,  <43.243294, 30.110153, 36.880123>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.269073, 30.005112, 36.665874>,  <43.312038, 29.830042, 36.308796>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.269073, 30.005112, 36.665874> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464225, 0.771922, -0.434318,
		-0.879180, -0.461063, 0.120262,
		-0.107415, 0.437672, 0.892695,
		43.236851, 30.136414, 36.933681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.638813, 30.107475, 36.253929>,  <43.312038, 29.830042, 36.308796>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.638813, 30.107475, 36.253929> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.824383, 30.311907, 36.543362>,  <42.935722, 30.434566, 36.717022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.824383, 30.311907, 36.543362>,  <42.638813, 30.107475, 36.253929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.824383, 30.311907, 36.543362> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187192, 0.854913, -0.483821,
		-0.865872, 0.089006, 0.492283,
		0.463923, 0.511078, 0.723585,
		42.963558, 30.465231, 36.760437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.268066, 30.778744, 36.417324>,  <42.638813, 30.107475, 36.253929>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.268066, 30.778744, 36.417324> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.632431, 30.860914, 36.560459>,  <42.851048, 30.910217, 36.646339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.632431, 30.860914, 36.560459>,  <42.268066, 30.778744, 36.417324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.632431, 30.860914, 36.560459> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093620, 0.947534, -0.305639,
		-0.401848, 0.244909, 0.882348,
		0.910908, 0.205426, 0.357836,
		42.905704, 30.922543, 36.667809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.188148, 31.456579, 36.670555>,  <42.268066, 30.778744, 36.417324>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.188148, 31.456579, 36.670555> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.586494, 31.423771, 36.654953>,  <42.825504, 31.404085, 36.645592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.586494, 31.423771, 36.654953>,  <42.188148, 31.456579, 36.670555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.586494, 31.423771, 36.654953> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059979, 0.916407, -0.395728,
		0.068201, 0.391753, 0.917539,
		0.995867, -0.082022, -0.039003,
		42.885254, 31.399164, 36.643253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.375134, 32.020626, 37.056763>,  <42.188148, 31.456579, 36.670555>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.375134, 32.020626, 37.056763> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.710140, 31.935226, 36.855572>,  <42.911144, 31.883987, 36.734856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.710140, 31.935226, 36.855572>,  <42.375134, 32.020626, 37.056763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.710140, 31.935226, 36.855572> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125446, 0.971048, -0.203294,
		0.531817, 0.107166, 0.840052,
		0.837517, -0.213496, -0.502976,
		42.961395, 31.871178, 36.704678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.891834, 32.659191, 37.182091>,  <42.375134, 32.020626, 37.056763>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.891834, 32.659191, 37.182091> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.003857, 32.466393, 36.850006>,  <43.071072, 32.350712, 36.650757>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.003857, 32.466393, 36.850006>,  <42.891834, 32.659191, 37.182091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.003857, 32.466393, 36.850006> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194663, 0.875363, -0.442545,
		0.940040, -0.037673, 0.338979,
		0.280057, -0.481996, -0.830209,
		43.087875, 32.321793, 36.600945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.418163, 33.079529, 36.856228>,  <42.891834, 32.659191, 37.182091>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.418163, 33.079529, 36.856228> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.303493, 32.831356, 36.564232>,  <43.234692, 32.682453, 36.389034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.303493, 32.831356, 36.564232>,  <43.418163, 33.079529, 36.856228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.303493, 32.831356, 36.564232> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074206, 0.745299, -0.662588,
		0.955149, -0.244118, -0.167620,
		-0.286677, -0.620432, -0.729986,
		43.217491, 32.645226, 36.345238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.049149, 32.921112, 36.551300>,  <43.418163, 33.079529, 36.856228>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.049149, 32.921112, 36.551300> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.745098, 32.861267, 36.298374>,  <43.562668, 32.825359, 36.146618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.745098, 32.861267, 36.298374>,  <44.049149, 32.921112, 36.551300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.745098, 32.861267, 36.298374> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348656, 0.727264, -0.591207,
		0.548314, -0.669852, -0.500648,
		-0.760125, -0.149613, -0.632318,
		43.517059, 32.816383, 36.108681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.311512, 32.795712, 35.923248>,  <44.049149, 32.921112, 36.551300>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.311512, 32.795712, 35.923248> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.941284, 32.910870, 35.824913>,  <43.719147, 32.979965, 35.765911>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.941284, 32.910870, 35.824913>,  <44.311512, 32.795712, 35.923248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.941284, 32.910870, 35.824913> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378536, 0.694022, -0.612409,
		-0.005694, -0.659886, -0.751344,
		-0.925569, 0.287898, -0.245839,
		43.663612, 32.997238, 35.751160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.340286, 32.933060, 35.156052>,  <44.311512, 32.795712, 35.923248>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.340286, 32.933060, 35.156052> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.001263, 33.120171, 35.256313>,  <43.797848, 33.232437, 35.316471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.001263, 33.120171, 35.256313>,  <44.340286, 32.933060, 35.156052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.001263, 33.120171, 35.256313> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115486, 0.623556, -0.773202,
		-0.517987, -0.626386, -0.582521,
		-0.847557, 0.467781, 0.250655,
		43.746994, 33.260506, 35.331509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.156410, 33.150520, 34.551117>,  <44.340286, 32.933060, 35.156052>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.156410, 33.150520, 34.551117> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.931168, 33.375912, 34.792912>,  <43.796021, 33.511147, 34.937988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.931168, 33.375912, 34.792912>,  <44.156410, 33.150520, 34.551117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.931168, 33.375912, 34.792912> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146903, 0.651582, -0.744218,
		-0.813223, -0.507875, -0.284133,
		-0.563106, 0.563475, 0.604489,
		43.762238, 33.544952, 34.974258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.872204, 33.544857, 34.390057>,  <44.156410, 33.150520, 34.551117>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.872204, 33.544857, 34.390057> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.206863, 33.547436, 34.609135>,  <45.407661, 33.548985, 34.740582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.206863, 33.547436, 34.609135>,  <44.872204, 33.544857, 34.390057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.206863, 33.547436, 34.609135> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099279, -0.985153, -0.140059,
		0.538662, 0.171555, -0.824871,
		0.836653, 0.006448, 0.547696,
		45.457859, 33.549370, 34.773445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.288116, 33.125370, 33.969131>,  <44.872204, 33.544857, 34.390057>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.288116, 33.125370, 33.969131> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.451813, 33.126907, 34.334099>,  <45.550030, 33.127831, 34.553078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.451813, 33.126907, 34.334099>,  <45.288116, 33.125370, 33.969131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.451813, 33.126907, 34.334099> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124145, -0.990457, 0.059859,
		0.903939, -0.137769, -0.404862,
		0.409245, 0.003847, 0.912416,
		45.574585, 33.128063, 34.607822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.785336, 32.619373, 33.920475>,  <45.288116, 33.125370, 33.969131>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.785336, 32.619373, 33.920475> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.679668, 32.678638, 34.301685>,  <45.616268, 32.714199, 34.530411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.679668, 32.678638, 34.301685>,  <45.785336, 32.619373, 33.920475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.679668, 32.678638, 34.301685> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165664, -0.980414, 0.106503,
		0.950142, -0.129748, 0.283541,
		-0.264169, 0.148165, 0.953028,
		45.600418, 32.723087, 34.587593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.374889, 32.201767, 34.365993>,  <45.785336, 32.619373, 33.920475>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.374889, 32.201767, 34.365993> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.033287, 32.255867, 34.566940>,  <45.828323, 32.288326, 34.687508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.033287, 32.255867, 34.566940>,  <46.374889, 32.201767, 34.365993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.033287, 32.255867, 34.566940> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093885, -0.989829, 0.106885,
		0.511715, 0.044116, 0.858022,
		-0.854010, 0.135250, 0.502369,
		45.777084, 32.296444, 34.717651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.609505, 31.783464, 34.913563>,  <46.374889, 32.201767, 34.365993>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.609505, 31.783464, 34.913563> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.212231, 31.826412, 34.931671>,  <45.973866, 31.852180, 34.942535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.212231, 31.826412, 34.931671>,  <46.609505, 31.783464, 34.913563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.212231, 31.826412, 34.931671> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097938, -0.979704, 0.174897,
		0.063126, 0.169272, 0.983546,
		-0.993188, 0.107367, 0.045267,
		45.914272, 31.858622, 34.945251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.289684, 31.447138, 35.509094>,  <46.609505, 31.783464, 34.913563>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.289684, 31.447138, 35.509094> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.977337, 31.483953, 35.261944>,  <45.789928, 31.506042, 35.113655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.977337, 31.483953, 35.261944>,  <46.289684, 31.447138, 35.509094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.977337, 31.483953, 35.261944> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234101, -0.960124, 0.152832,
		-0.579172, 0.263987, 0.771278,
		-0.780869, 0.092041, -0.617877,
		45.743076, 31.511566, 35.076580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.605274, 31.163496, 35.901806>,  <46.289684, 31.447138, 35.509094>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.605274, 31.163496, 35.901806> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.532333, 31.152704, 35.508659>,  <45.488571, 31.146229, 35.272774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.532333, 31.152704, 35.508659>,  <45.605274, 31.163496, 35.901806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.532333, 31.152704, 35.508659> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269661, -0.959921, 0.076380,
		-0.945533, 0.278968, 0.167765,
		-0.182349, -0.026980, -0.982864,
		45.477631, 31.144609, 35.213799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.064804, 30.752787, 35.846264>,  <45.605274, 31.163496, 35.901806>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.064804, 30.752787, 35.846264> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.183475, 30.750788, 35.464279>,  <45.254677, 30.749588, 35.235088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.183475, 30.750788, 35.464279>,  <45.064804, 30.752787, 35.846264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.183475, 30.750788, 35.464279> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189042, -0.980505, -0.053598,
		-0.936079, 0.196430, -0.291840,
		0.296679, -0.004998, -0.954964,
		45.272480, 30.749289, 35.177792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.461926, 30.362505, 35.456142>,  <45.064804, 30.752787, 35.846264>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.461926, 30.362505, 35.456142> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.802044, 30.340107, 35.246815>,  <45.006115, 30.326668, 35.121220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.802044, 30.340107, 35.246815>,  <44.461926, 30.362505, 35.456142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.802044, 30.340107, 35.246815> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227831, -0.935492, -0.270088,
		-0.474438, 0.348883, -0.808201,
		0.850295, -0.055993, -0.523319,
		45.057133, 30.323309, 35.089817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.314659, 30.046391, 34.872555>,  <44.461926, 30.362505, 35.456142>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.314659, 30.046391, 34.872555> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.708786, 30.005484, 34.927254>,  <44.945263, 29.980940, 34.960072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.708786, 30.005484, 34.927254>,  <44.314659, 30.046391, 34.872555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.708786, 30.005484, 34.927254> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048904, -0.936278, -0.347838,
		0.163604, 0.336042, -0.927529,
		0.985313, -0.102268, 0.136745,
		45.004379, 29.974804, 34.968277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.457539, 29.718655, 34.272976>,  <44.314659, 30.046391, 34.872555>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.457539, 29.718655, 34.272976> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.780178, 29.652775, 34.500053>,  <44.973763, 29.613247, 34.636299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.780178, 29.652775, 34.500053>,  <44.457539, 29.718655, 34.272976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.780178, 29.652775, 34.500053> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048788, -0.938571, -0.341619,
		0.589085, 0.303246, -0.749013,
		0.806597, -0.164700, 0.567693,
		45.022156, 29.603365, 34.670361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.880634, 29.214043, 33.878426>,  <44.457539, 29.718655, 34.272976>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.880634, 29.214043, 33.878426> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.005386, 29.171253, 34.256058>,  <45.080238, 29.145580, 34.482635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.005386, 29.171253, 34.256058>,  <44.880634, 29.214043, 33.878426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.005386, 29.171253, 34.256058> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126792, -0.980068, -0.152938,
		0.941623, 0.167400, -0.292102,
		0.311882, -0.106974, 0.944080,
		45.098949, 29.139160, 34.539280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.581429, 28.830532, 33.921780>,  <44.880634, 29.214043, 33.878426>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.581429, 28.830532, 33.921780> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.399628, 28.795721, 34.276375>,  <45.290546, 28.774836, 34.489132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.399628, 28.795721, 34.276375>,  <45.581429, 28.830532, 33.921780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.399628, 28.795721, 34.276375> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072358, -0.995534, -0.060634,
		0.887804, 0.036587, 0.458765,
		-0.454498, -0.087026, 0.886486,
		45.263279, 28.769613, 34.542320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.068321, 28.429615, 34.277809>,  <45.581429, 28.830532, 33.921780>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.068321, 28.429615, 34.277809> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.743160, 28.395502, 34.508255>,  <45.548061, 28.375034, 34.646523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.743160, 28.395502, 34.508255>,  <46.068321, 28.429615, 34.277809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.743160, 28.395502, 34.508255> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257523, -0.939895, 0.224230,
		0.522367, 0.330641, 0.786009,
		-0.812905, -0.085285, 0.576118,
		45.499290, 28.369917, 34.681091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.345837, 28.147278, 34.841183>,  <46.068321, 28.429615, 34.277809>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.345837, 28.147278, 34.841183> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.950363, 28.108177, 34.886688>,  <45.713078, 28.084717, 34.913994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.950363, 28.108177, 34.886688>,  <46.345837, 28.147278, 34.841183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.950363, 28.108177, 34.886688> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098088, -0.995174, -0.002669,
		0.113477, 0.008520, 0.993504,
		-0.988687, -0.097754, 0.113766,
		45.653755, 28.078852, 34.920818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.295986, 27.911261, 35.471504>,  <46.345837, 28.147278, 34.841183>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.295986, 27.911261, 35.471504> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.969723, 27.793848, 35.272091>,  <45.773964, 27.723400, 35.152443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.969723, 27.793848, 35.272091>,  <46.295986, 27.911261, 35.471504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.969723, 27.793848, 35.272091> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211428, -0.953361, 0.215409,
		-0.538513, 0.070296, 0.839679,
		-0.815660, -0.293533, -0.498535,
		45.725025, 27.705788, 35.122532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.053436, 27.398352, 35.878174>,  <46.295986, 27.911261, 35.471504>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.053436, 27.398352, 35.878174> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.883289, 27.351362, 35.519230>,  <45.781200, 27.323168, 35.303864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.883289, 27.351362, 35.519230>,  <46.053436, 27.398352, 35.878174>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.883289, 27.351362, 35.519230> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152627, -0.986650, 0.056816,
		-0.892057, -0.112793, 0.437621,
		-0.425370, -0.117476, -0.897363,
		45.755680, 27.316120, 35.250023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.681110, 26.794115, 35.925636>,  <46.053436, 27.398352, 35.878174>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.681110, 26.794115, 35.925636> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.694561, 26.837038, 35.528172>,  <45.702629, 26.862791, 35.289692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.694561, 26.837038, 35.528172>,  <45.681110, 26.794115, 35.925636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.694561, 26.837038, 35.528172> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045503, -0.993024, -0.108778,
		-0.998398, 0.048872, -0.028507,
		0.033624, 0.107306, -0.993657,
		45.704647, 26.869230, 35.230076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.055340, 26.544996, 35.660339>,  <45.681110, 26.794115, 35.925636>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.055340, 26.544996, 35.660339> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.339180, 26.531282, 35.378830>,  <45.509483, 26.523054, 35.209927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.339180, 26.531282, 35.378830>,  <45.055340, 26.544996, 35.660339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.339180, 26.531282, 35.378830> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025494, -0.999411, 0.022980,
		-0.704143, 0.001636, -0.710056,
		0.709600, -0.034283, -0.703770,
		45.552059, 26.520998, 35.167698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.661259, 26.118834, 35.278309>,  <45.055340, 26.544996, 35.660339>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.661259, 26.118834, 35.278309> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.021759, 26.104561, 35.105576>,  <45.238060, 26.095997, 35.001938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.021759, 26.104561, 35.105576>,  <44.661259, 26.118834, 35.278309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.021759, 26.104561, 35.105576> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136859, -0.969028, -0.205560,
		-0.411120, 0.244361, -0.878219,
		0.901249, -0.035682, -0.431829,
		45.292133, 26.093857, 34.976028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.608704, 25.767756, 34.708641>,  <44.661259, 26.118834, 35.278309>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.608704, 25.767756, 34.708641> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.998409, 25.728056, 34.789600>,  <45.232231, 25.704237, 34.838177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.998409, 25.728056, 34.789600>,  <44.608704, 25.767756, 34.708641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.998409, 25.728056, 34.789600> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075359, -0.989600, -0.122524,
		0.212451, 0.104118, -0.971609,
		0.974262, -0.099250, 0.202395,
		45.290688, 25.698280, 34.850319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.472733, 40.376934, 39.378395> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.168644, 40.203526, 39.184849>,  <36.986191, 40.099480, 39.068722>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.168644, 40.203526, 39.184849>,  <37.472733, 40.376934, 39.378395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.168644, 40.203526, 39.184849> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613904, -0.723064, -0.316703,
		-0.212570, -0.537812, 0.815826,
		-0.760221, -0.433517, -0.483867,
		36.940578, 40.073471, 39.039688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.618225, 39.658512, 39.584934>,  <37.472733, 40.376934, 39.378395>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.618225, 39.658512, 39.584934> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.363155, 39.685322, 39.277981>,  <37.210114, 39.701408, 39.093811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.363155, 39.685322, 39.277981>,  <37.618225, 39.658512, 39.584934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.363155, 39.685322, 39.277981> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574757, -0.621859, -0.531926,
		-0.512855, -0.780256, 0.358023,
		-0.637678, 0.067024, -0.767382,
		37.171852, 39.705429, 39.047768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.621391, 38.974049, 39.342949>,  <37.618225, 39.658512, 39.584934>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.621391, 38.974049, 39.342949> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.400658, 39.114868, 39.040546>,  <37.268219, 39.199360, 38.859104>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.400658, 39.114868, 39.040546>,  <37.621391, 38.974049, 39.342949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.400658, 39.114868, 39.040546> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497068, -0.589055, -0.637132,
		-0.669628, -0.727377, 0.150070,
		-0.551834, 0.352047, -0.756004,
		37.235107, 39.220482, 38.813744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.519989, 38.392056, 38.988453>,  <37.621391, 38.974049, 39.342949>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.519989, 38.392056, 38.988453> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.485344, 38.715599, 38.755817>,  <37.464558, 38.909725, 38.616238>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.485344, 38.715599, 38.755817>,  <37.519989, 38.392056, 38.988453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.485344, 38.715599, 38.755817> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391575, -0.509159, -0.766438,
		-0.916061, -0.294119, -0.272629,
		-0.086612, 0.808858, -0.581590,
		37.459362, 38.958256, 38.581341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.093788, 38.239803, 38.433182>,  <37.519989, 38.392056, 38.988453>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.093788, 38.239803, 38.433182> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.301067, 38.560547, 38.314190>,  <37.425434, 38.752991, 38.242794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.301067, 38.560547, 38.314190>,  <37.093788, 38.239803, 38.433182>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.301067, 38.560547, 38.314190> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324558, -0.506176, -0.799029,
		-0.791283, 0.317510, -0.522550,
		0.518202, 0.801856, -0.297478,
		37.456528, 38.801105, 38.224945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.022984, 38.339439, 37.743511>,  <37.093788, 38.239803, 38.433182>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.022984, 38.339439, 37.743511> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.386173, 38.448830, 37.870502>,  <37.604088, 38.514465, 37.946697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.386173, 38.448830, 37.870502>,  <37.022984, 38.339439, 37.743511>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.386173, 38.448830, 37.870502> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418957, -0.578762, -0.699650,
		-0.007592, 0.768274, -0.640076,
		0.907974, 0.273476, 0.317480,
		37.658566, 38.530872, 37.965748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.368221, 38.316544, 37.135647>,  <37.022984, 38.339439, 37.743511>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.368221, 38.316544, 37.135647> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.665844, 38.355648, 37.400017>,  <37.844418, 38.379108, 37.558640>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.665844, 38.355648, 37.400017>,  <37.368221, 38.316544, 37.135647>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.665844, 38.355648, 37.400017> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582483, -0.579462, -0.570034,
		0.327259, 0.809115, -0.488092,
		0.744054, 0.097757, 0.660929,
		37.889061, 38.384975, 37.598297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.040855, 38.481285, 36.689442>,  <37.368221, 38.316544, 37.135647>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.040855, 38.481285, 36.689442> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.171436, 38.379173, 37.053478>,  <38.249786, 38.317905, 37.271900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.171436, 38.379173, 37.053478>,  <38.040855, 38.481285, 36.689442>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.171436, 38.379173, 37.053478> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803746, -0.431717, -0.409405,
		0.497414, 0.865131, 0.064246,
		0.326453, -0.255282, 0.910088,
		38.269371, 38.302589, 37.326504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.775227, 38.730751, 36.734936>,  <38.040855, 38.481285, 36.689442>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.775227, 38.730751, 36.734936> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.732525, 38.435543, 37.001450>,  <38.706905, 38.258419, 37.161358>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.732525, 38.435543, 37.001450>,  <38.775227, 38.730751, 36.734936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.732525, 38.435543, 37.001450> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741925, -0.505243, -0.440769,
		0.661930, 0.447278, 0.601491,
		-0.106753, -0.738019, 0.666281,
		38.700500, 38.214138, 37.201336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.454857, 38.558876, 36.906284>,  <38.775227, 38.730751, 36.734936>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.454857, 38.558876, 36.906284> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.240063, 38.240353, 37.017673>,  <39.111187, 38.049240, 37.084507>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.240063, 38.240353, 37.017673>,  <39.454857, 38.558876, 36.906284>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.240063, 38.240353, 37.017673> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726878, -0.604283, -0.326330,
		0.428134, 0.027181, 0.903306,
		-0.536982, -0.796306, 0.278472,
		39.078968, 38.001461, 37.101215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.808624, 38.006981, 37.376530>,  <39.454857, 38.558876, 36.906284>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.808624, 38.006981, 37.376530> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.515282, 37.873253, 37.139744>,  <39.339275, 37.793018, 36.997673>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.515282, 37.873253, 37.139744>,  <39.808624, 38.006981, 37.376530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.515282, 37.873253, 37.139744> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598321, -0.730824, -0.328494,
		-0.322800, -0.595087, 0.735983,
		-0.733357, -0.334316, -0.591963,
		39.295273, 37.772957, 36.962154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.716923, 37.301060, 37.599339>,  <39.808624, 38.006981, 37.376530>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.716923, 37.301060, 37.599339> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.590458, 37.341766, 37.222046>,  <39.514580, 37.366192, 36.995670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.590458, 37.341766, 37.222046>,  <39.716923, 37.301060, 37.599339>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.590458, 37.341766, 37.222046> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663546, -0.686863, -0.296523,
		-0.678049, -0.719626, 0.149627,
		-0.316159, 0.101773, -0.943232,
		39.495609, 37.372299, 36.939075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.914326, 36.631432, 37.318398>,  <39.716923, 37.301060, 37.599339>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.914326, 36.631432, 37.318398> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.816689, 36.804756, 36.971375>,  <39.758106, 36.908752, 36.763161>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.816689, 36.804756, 36.971375>,  <39.914326, 36.631432, 37.318398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.816689, 36.804756, 36.971375> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580919, -0.651005, -0.488597,
		-0.776500, -0.623244, -0.092815,
		-0.244092, 0.433314, -0.867559,
		39.743462, 36.934750, 36.711105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.630444, 36.074486, 36.834194>,  <39.914326, 36.631432, 37.318398>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.630444, 36.074486, 36.834194> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.769077, 36.383926, 36.621998>,  <39.852257, 36.569592, 36.494678>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.769077, 36.383926, 36.621998>,  <39.630444, 36.074486, 36.834194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.769077, 36.383926, 36.621998> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369812, -0.632429, -0.680641,
		-0.862042, 0.039718, -0.505278,
		0.346586, 0.773599, -0.530493,
		39.873055, 36.616005, 36.462849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.352531, 35.622093, 37.313782>,  <39.630444, 36.074486, 36.834194>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.352531, 35.622093, 37.313782> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.359852, 35.223579, 37.280098>,  <39.364243, 34.984470, 37.259888>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.359852, 35.223579, 37.280098>,  <39.352531, 35.622093, 37.313782>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.359852, 35.223579, 37.280098> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474059, -0.082801, 0.876592,
		-0.880303, 0.023880, -0.473810,
		0.018299, -0.996280, -0.084210,
		39.365341, 34.924694, 37.254833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.692276, 35.368500, 37.244640>,  <39.352531, 35.622093, 37.313782>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.692276, 35.368500, 37.244640> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.933136, 35.110382, 37.432690>,  <39.077652, 34.955513, 37.545517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.933136, 35.110382, 37.432690>,  <38.692276, 35.368500, 37.244640>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.933136, 35.110382, 37.432690> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325633, 0.339134, 0.882582,
		-0.728955, -0.684536, -0.005918,
		0.602152, -0.645290, 0.470121,
		39.113781, 34.916794, 37.573727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.291649, 35.057060, 37.673637>,  <38.692276, 35.368500, 37.244640>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.291649, 35.057060, 37.673637> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.655499, 35.002457, 37.830585>,  <38.873806, 34.969696, 37.924755>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.655499, 35.002457, 37.830585>,  <38.291649, 35.057060, 37.673637>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.655499, 35.002457, 37.830585> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355407, 0.233358, 0.905113,
		-0.215120, -0.962761, 0.163750,
		0.909621, -0.136510, 0.392372,
		38.928383, 34.961502, 37.948296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.183311, 34.554703, 38.240795>,  <38.291649, 35.057060, 37.673637>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.183311, 34.554703, 38.240795> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.533585, 34.744179, 38.278316>,  <38.743748, 34.857864, 38.300831>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.533585, 34.744179, 38.278316>,  <38.183311, 34.554703, 38.240795>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.533585, 34.744179, 38.278316> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253265, 0.285133, 0.924422,
		0.411139, -0.833259, 0.369654,
		0.875683, 0.473687, 0.093806,
		38.796291, 34.886284, 38.306458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.488884, 34.474335, 38.910435>,  <38.183311, 34.554703, 38.240795>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.488884, 34.474335, 38.910435> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.654312, 34.806297, 38.760654>,  <38.753571, 35.005474, 38.670788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.654312, 34.806297, 38.760654>,  <38.488884, 34.474335, 38.910435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.654312, 34.806297, 38.760654> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229693, 0.493072, 0.839119,
		0.881021, -0.261029, 0.394545,
		0.413574, 0.829907, -0.374450,
		38.778385, 35.055267, 38.648319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.815361, 34.751389, 39.442135>,  <38.488884, 34.474335, 38.910435>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.815361, 34.751389, 39.442135> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.782875, 35.057976, 39.187283>,  <38.763386, 35.241928, 39.034370>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.782875, 35.057976, 39.187283>,  <38.815361, 34.751389, 39.442135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.782875, 35.057976, 39.187283> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256081, 0.601733, 0.756532,
		0.963238, 0.224596, 0.147410,
		-0.081212, 0.766469, -0.637126,
		38.758511, 35.287918, 38.996143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.982597, 35.317039, 39.879795>,  <38.815361, 34.751389, 39.442135>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.982597, 35.317039, 39.879795> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.850773, 35.531269, 39.568787>,  <38.771679, 35.659809, 39.382179>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.850773, 35.531269, 39.568787>,  <38.982597, 35.317039, 39.879795>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.850773, 35.531269, 39.568787> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402524, 0.665232, 0.628841,
		0.854027, 0.520216, -0.003654,
		-0.329563, 0.535576, -0.777526,
		38.751904, 35.691940, 39.335529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.252472, 36.034389, 39.916084>,  <38.982597, 35.317039, 39.879795>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.252472, 36.034389, 39.916084> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.920135, 36.034912, 39.693478>,  <38.720734, 36.035225, 39.559914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.920135, 36.034912, 39.693478>,  <39.252472, 36.034389, 39.916084>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.920135, 36.034912, 39.693478> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382299, 0.725366, 0.572444,
		0.404421, 0.688362, -0.602163,
		-0.830837, 0.001302, -0.556514,
		38.670883, 36.035301, 39.526524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.066971, 36.775108, 39.632042>,  <39.252472, 36.034389, 39.916084>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.066971, 36.775108, 39.632042> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.728626, 36.561752, 39.633495>,  <38.525620, 36.433739, 39.634369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.728626, 36.561752, 39.633495>,  <39.066971, 36.775108, 39.632042>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.728626, 36.561752, 39.633495> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468212, 0.745728, 0.473991,
		-0.255531, 0.399230, -0.880522,
		-0.845861, -0.533391, 0.003632,
		38.474869, 36.401733, 39.634586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.517773, 37.254185, 39.567993>,  <39.066971, 36.775108, 39.632042>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.517773, 37.254185, 39.567993> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.332054, 36.919537, 39.684261>,  <38.220623, 36.718746, 39.754021>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.332054, 36.919537, 39.684261>,  <38.517773, 37.254185, 39.567993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.332054, 36.919537, 39.684261> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620335, 0.541427, 0.567486,
		-0.632146, 0.083174, -0.770372,
		-0.464300, -0.836623, 0.290666,
		38.192764, 36.668549, 39.771461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.837296, 37.468853, 39.523731>,  <38.517773, 37.254185, 39.567993>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.837296, 37.468853, 39.523731> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.857719, 37.152683, 39.767902>,  <37.869972, 36.962982, 39.914406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.857719, 37.152683, 39.767902>,  <37.837296, 37.468853, 39.523731>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.857719, 37.152683, 39.767902> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670099, 0.426100, 0.607788,
		-0.740514, -0.440082, -0.507905,
		0.051057, -0.790422, 0.610431,
		37.873035, 36.915558, 39.951031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.142147, 37.432224, 39.818745>,  <37.837296, 37.468853, 39.523731>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.142147, 37.432224, 39.818745> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.347061, 37.195312, 40.067509>,  <37.470009, 37.053165, 40.216766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.347061, 37.195312, 40.067509>,  <37.142147, 37.432224, 39.818745>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.347061, 37.195312, 40.067509> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546244, 0.334082, 0.768119,
		-0.662710, -0.733208, -0.152384,
		0.512282, -0.592280, 0.621910,
		37.500748, 37.017628, 40.254082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.648479, 37.031456, 40.073273>,  <37.142147, 37.432224, 39.818745>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.648479, 37.031456, 40.073273> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.943378, 37.037876, 40.343445>,  <37.120319, 37.041729, 40.505550>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.943378, 37.037876, 40.343445>,  <36.648479, 37.031456, 40.073273>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.943378, 37.037876, 40.343445> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617609, 0.421314, 0.664119,
		-0.273911, -0.906773, 0.320525,
		0.737246, 0.016049, 0.675433,
		37.164551, 37.042690, 40.546074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.344612, 36.830166, 40.636078>,  <36.648479, 37.031456, 40.073273>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.344612, 36.830166, 40.636078> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.677647, 36.994740, 40.784409>,  <36.877468, 37.093483, 40.873409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.677647, 36.994740, 40.784409>,  <36.344612, 36.830166, 40.636078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.677647, 36.994740, 40.784409> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541359, 0.462849, 0.701926,
		0.117160, -0.785169, 0.608099,
		0.832589, 0.411437, 0.370831,
		36.927422, 37.118172, 40.895657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.097160, 36.165459, 40.999809>,  <36.344612, 36.830166, 40.636078>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.097160, 36.165459, 40.999809> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.715752, 36.050385, 41.035648>,  <35.486904, 35.981339, 41.057152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.715752, 36.050385, 41.035648>,  <36.097160, 36.165459, 40.999809>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.715752, 36.050385, 41.035648> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100792, -0.584757, -0.804923,
		0.283957, -0.758483, 0.586576,
		-0.953525, -0.287686, 0.089597,
		35.429695, 35.964077, 41.062527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.060432, 35.410767, 40.911369>,  <36.097160, 36.165459, 40.999809>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.060432, 35.410767, 40.911369> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.701092, 35.558674, 40.816509>,  <35.485489, 35.647419, 40.759594>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.701092, 35.558674, 40.816509>,  <36.060432, 35.410767, 40.911369>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.701092, 35.558674, 40.816509> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021854, -0.576811, -0.816585,
		-0.438735, -0.728397, 0.526260,
		-0.898350, 0.369766, -0.237149,
		35.431587, 35.669605, 40.745365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.775284, 34.848103, 40.540085>,  <36.060432, 35.410767, 40.911369>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.775284, 34.848103, 40.540085> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.512733, 35.138371, 40.457550>,  <35.355202, 35.312531, 40.408028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.512733, 35.138371, 40.457550>,  <35.775284, 34.848103, 40.540085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.512733, 35.138371, 40.457550> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073249, -0.333511, -0.939896,
		-0.750867, -0.601814, 0.272064,
		-0.656379, 0.725666, -0.206340,
		35.315819, 35.356071, 40.395649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.158119, 34.557220, 40.266220>,  <35.775284, 34.848103, 40.540085>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.158119, 34.557220, 40.266220> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.192684, 34.929028, 40.122814>,  <35.213421, 35.152111, 40.036770>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.192684, 34.929028, 40.122814>,  <35.158119, 34.557220, 40.266220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.192684, 34.929028, 40.122814> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153149, -0.343193, -0.926695,
		-0.984418, 0.134982, 0.112700,
		0.086409, 0.929515, -0.358518,
		35.218605, 35.207882, 40.015259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.505711, 34.628696, 39.930676>,  <35.158119, 34.557220, 40.266220>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.505711, 34.628696, 39.930676> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.772133, 34.881165, 39.771683>,  <34.931988, 35.032646, 39.676289>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.772133, 34.881165, 39.771683>,  <34.505711, 34.628696, 39.930676>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.772133, 34.881165, 39.771683> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027536, -0.511716, -0.858713,
		-0.745394, 0.582895, -0.323452,
		0.666055, 0.631173, -0.397481,
		34.971951, 35.070515, 39.652439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.309200, 34.741753, 39.310989>,  <34.505711, 34.628696, 39.930676>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.309200, 34.741753, 39.310989> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.675350, 34.896851, 39.267632>,  <34.895039, 34.989910, 39.241615>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.675350, 34.896851, 39.267632>,  <34.309200, 34.741753, 39.310989>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.675350, 34.896851, 39.267632> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141841, -0.562555, -0.814501,
		-0.376794, 0.730197, -0.569945,
		0.915373, 0.387741, -0.108396,
		34.949963, 35.013172, 39.235111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.442558, 35.031403, 38.581936>,  <34.309200, 34.741753, 39.310989>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.442558, 35.031403, 38.581936> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.798592, 34.940296, 38.739861>,  <35.012211, 34.885632, 38.834618>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.798592, 34.940296, 38.739861>,  <34.442558, 35.031403, 38.581936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.798592, 34.940296, 38.739861> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226060, -0.531568, -0.816292,
		0.395795, 0.815817, -0.421650,
		0.890081, -0.227766, 0.394815,
		35.065617, 34.871967, 38.858307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.850197, 34.881119, 37.976757>,  <34.442558, 35.031403, 38.581936>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.850197, 34.881119, 37.976757> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.115585, 34.733200, 38.236927>,  <35.274818, 34.644447, 38.393028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.115585, 34.733200, 38.236927>,  <34.850197, 34.881119, 37.976757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.115585, 34.733200, 38.236927> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247985, -0.711497, -0.657477,
		0.705912, 0.597512, -0.380352,
		0.663470, -0.369800, 0.650428,
		35.314625, 34.622261, 38.432056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.441284, 34.832924, 37.619316>,  <34.850197, 34.881119, 37.976757>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.441284, 34.832924, 37.619316> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.474636, 34.567741, 37.916916>,  <35.494648, 34.408634, 38.095478>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.474636, 34.567741, 37.916916>,  <35.441284, 34.832924, 37.619316>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.474636, 34.567741, 37.916916> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244713, -0.710119, -0.660186,
		0.966004, 0.237114, 0.103023,
		0.083381, -0.662953, 0.744003,
		35.499649, 34.368855, 38.140118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.046303, 34.444664, 37.440872>,  <35.441284, 34.832924, 37.619316>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.046303, 34.444664, 37.440872> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.842323, 34.217815, 37.699585>,  <35.719936, 34.081707, 37.854813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.842323, 34.217815, 37.699585>,  <36.046303, 34.444664, 37.440872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.842323, 34.217815, 37.699585> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202017, -0.809823, -0.550796,
		0.836147, -0.150216, 0.527535,
		-0.509948, -0.567117, 0.646785,
		35.689339, 34.047680, 37.893620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.482586, 33.890812, 37.512688>,  <36.046303, 34.444664, 37.440872>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.482586, 33.890812, 37.512688> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.126575, 33.756889, 37.636467>,  <35.912968, 33.676537, 37.710735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.126575, 33.756889, 37.636467>,  <36.482586, 33.890812, 37.512688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.126575, 33.756889, 37.636467> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247835, -0.925010, -0.287982,
		0.382662, -0.179619, 0.906259,
		-0.890027, -0.334803, 0.309451,
		35.859566, 33.656448, 37.729301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.601433, 33.309650, 38.016121>,  <36.482586, 33.890812, 37.512688>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.601433, 33.309650, 38.016121> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.231056, 33.286636, 37.866814>,  <36.008831, 33.272827, 37.777229>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.231056, 33.286636, 37.866814>,  <36.601433, 33.309650, 38.016121>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.231056, 33.286636, 37.866814> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161575, -0.953663, -0.253811,
		-0.341372, -0.295324, 0.892328,
		-0.925937, -0.057534, -0.373271,
		35.953274, 33.269375, 37.754833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<34.448978, 37.206966, 44.810158> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.170856, 37.270824, 44.529854>,  <34.003983, 37.309139, 44.361671>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.170856, 37.270824, 44.529854>,  <34.448978, 37.206966, 44.810158>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.170856, 37.270824, 44.529854> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420430, -0.700446, -0.576728,
		-0.582915, -0.695622, 0.419905,
		-0.695305, 0.159643, -0.700760,
		33.962265, 37.318718, 44.319626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.287258, 36.528378, 44.531704>,  <34.448978, 37.206966, 44.810158>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.287258, 36.528378, 44.531704> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.164722, 36.783897, 44.249401>,  <34.091202, 36.937210, 44.080021>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.164722, 36.783897, 44.249401>,  <34.287258, 36.528378, 44.531704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.164722, 36.783897, 44.249401> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459560, -0.550035, -0.697327,
		-0.833643, -0.537957, -0.125068,
		-0.306340, 0.638798, -0.705757,
		34.072819, 36.975536, 44.037674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.038837, 36.125225, 43.943043>,  <34.287258, 36.528378, 44.531704>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.038837, 36.125225, 43.943043> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.125057, 36.486794, 43.795280>,  <34.176788, 36.703735, 43.706623>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.125057, 36.486794, 43.795280>,  <34.038837, 36.125225, 43.943043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.125057, 36.486794, 43.795280> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228511, -0.414489, -0.880898,
		-0.949379, 0.105466, -0.295900,
		0.215552, 0.903922, -0.369407,
		34.189724, 36.757969, 43.684460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.835548, 36.045113, 43.201801>,  <34.038837, 36.125225, 43.943043>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.835548, 36.045113, 43.201801> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.083942, 36.358627, 43.198776>,  <34.232979, 36.546738, 43.196960>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.083942, 36.358627, 43.198776>,  <33.835548, 36.045113, 43.201801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.083942, 36.358627, 43.198776> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346137, -0.282876, -0.894522,
		-0.703253, 0.552867, -0.446959,
		0.620986, 0.783785, -0.007566,
		34.270237, 36.593761, 43.196507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.715813, 36.281445, 42.534550>,  <33.835548, 36.045113, 43.201801>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.715813, 36.281445, 42.534550> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.060276, 36.443031, 42.657982>,  <34.266953, 36.539982, 42.732040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.060276, 36.443031, 42.657982>,  <33.715813, 36.281445, 42.534550>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.060276, 36.443031, 42.657982> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465606, -0.383202, -0.797727,
		-0.204006, 0.830644, -0.518085,
		0.861158, 0.403964, 0.308577,
		34.318623, 36.564220, 42.750557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.870632, 36.621181, 41.946507>,  <33.715813, 36.281445, 42.534550>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.870632, 36.621181, 41.946507> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.210140, 36.580444, 42.154053>,  <34.413845, 36.556004, 42.278580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.210140, 36.580444, 42.154053>,  <33.870632, 36.621181, 41.946507>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.210140, 36.580444, 42.154053> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500435, -0.162177, -0.850449,
		0.170759, 0.981492, -0.086686,
		0.848767, -0.101842, 0.518866,
		34.464771, 36.549892, 42.309711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.363079, 36.968254, 41.613537>,  <33.870632, 36.621181, 41.946507>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.363079, 36.968254, 41.613537> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.584274, 36.702957, 41.815258>,  <34.716991, 36.543781, 41.936291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.584274, 36.702957, 41.815258>,  <34.363079, 36.968254, 41.613537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.584274, 36.702957, 41.815258> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512825, -0.206101, -0.833386,
		0.656671, 0.719470, 0.226154,
		0.552986, -0.663238, 0.504303,
		34.750172, 36.503986, 41.966549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.883755, 36.937012, 41.205341>,  <34.363079, 36.968254, 41.613537>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.883755, 36.937012, 41.205341> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.912834, 36.603729, 41.424610>,  <34.930283, 36.403759, 41.556171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.912834, 36.603729, 41.424610>,  <34.883755, 36.937012, 41.205341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.912834, 36.603729, 41.424610> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591285, -0.406612, -0.696454,
		0.803180, 0.374752, 0.463102,
		0.072695, -0.833203, 0.548168,
		34.934643, 36.353767, 41.589062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.631645, 36.867218, 41.112717>,  <34.883755, 36.937012, 41.205341>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.631645, 36.867218, 41.112717> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.449768, 36.538036, 41.248951>,  <35.340641, 36.340527, 41.330692>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.449768, 36.538036, 41.248951>,  <35.631645, 36.867218, 41.112717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.449768, 36.538036, 41.248951> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505011, -0.553216, -0.662507,
		0.733631, -0.129238, 0.667145,
		-0.454697, -0.822951, 0.340590,
		35.313358, 36.291149, 41.351128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.296329, 36.876595, 41.486275>,  <35.631645, 36.867218, 41.112717>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.296329, 36.876595, 41.486275> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.595154, 37.135277, 41.424736>,  <36.774448, 37.290485, 41.387814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.595154, 37.135277, 41.424736>,  <36.296329, 36.876595, 41.486275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.595154, 37.135277, 41.424736> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418037, 0.636987, 0.647682,
		0.516856, -0.419547, 0.746217,
		0.747064, 0.646705, -0.153844,
		36.819275, 37.329288, 41.378582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.656212, 37.069294, 42.141438>,  <36.296329, 36.876595, 41.486275>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.656212, 37.069294, 42.141438> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.674526, 37.354202, 41.861275>,  <36.685516, 37.525146, 41.693176>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.674526, 37.354202, 41.861275>,  <36.656212, 37.069294, 42.141438>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.674526, 37.354202, 41.861275> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424316, 0.648616, 0.631866,
		0.904356, 0.268264, 0.331926,
		0.045786, 0.712273, -0.700408,
		36.688263, 37.567883, 41.651154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.710022, 37.826424, 42.501190>,  <36.656212, 37.069294, 42.141438>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.710022, 37.826424, 42.501190> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.665062, 37.942947, 42.121189>,  <36.638084, 38.012863, 41.893188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.665062, 37.942947, 42.121189>,  <36.710022, 37.826424, 42.501190>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.665062, 37.942947, 42.121189> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407736, 0.858342, 0.311449,
		0.906155, 0.422358, 0.022299,
		-0.112402, 0.291313, -0.950001,
		36.631340, 38.030342, 41.836189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.952332, 38.456257, 42.493073>,  <36.710022, 37.826424, 42.501190>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.952332, 38.456257, 42.493073> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.708996, 38.472000, 42.175995>,  <36.562992, 38.481445, 41.985748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.708996, 38.472000, 42.175995>,  <36.952332, 38.456257, 42.493073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.708996, 38.472000, 42.175995> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384334, 0.859245, 0.337617,
		0.694410, 0.510047, -0.507589,
		-0.608344, 0.039361, -0.792697,
		36.526493, 38.483807, 41.938187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.013374, 39.102051, 42.286655>,  <36.952332, 38.456257, 42.493073>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.013374, 39.102051, 42.286655> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.666199, 38.979652, 42.130173>,  <36.457893, 38.906212, 42.036282>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.666199, 38.979652, 42.130173>,  <37.013374, 39.102051, 42.286655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.666199, 38.979652, 42.130173> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387585, 0.909838, 0.148232,
		0.310578, 0.280283, -0.908285,
		-0.867940, -0.306000, -0.391209,
		36.405815, 38.887852, 42.012810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.788544, 39.649628, 41.781567>,  <37.013374, 39.102051, 42.286655>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.788544, 39.649628, 41.781567> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.459621, 39.450527, 41.891876>,  <36.262268, 39.331066, 41.958061>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.459621, 39.450527, 41.891876>,  <36.788544, 39.649628, 41.781567>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.459621, 39.450527, 41.891876> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437074, 0.862806, 0.254032,
		-0.364381, 0.088361, -0.927048,
		-0.822309, -0.497753, 0.275770,
		36.212929, 39.301201, 41.974606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.189945, 39.956589, 41.491333>,  <36.788544, 39.649628, 41.781567>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.189945, 39.956589, 41.491333> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.029835, 39.769207, 41.806377>,  <35.933769, 39.656776, 41.995403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.029835, 39.769207, 41.806377>,  <36.189945, 39.956589, 41.491333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.029835, 39.769207, 41.806377> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580784, 0.794495, 0.177392,
		-0.708853, -0.386426, -0.590087,
		-0.400272, -0.468458, 0.787610,
		35.909752, 39.628670, 42.042660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.524063, 40.228924, 41.487610>,  <36.189945, 39.956589, 41.491333>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.524063, 40.228924, 41.487610> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.561588, 40.062332, 41.849327>,  <35.584103, 39.962379, 42.066357>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.561588, 40.062332, 41.849327>,  <35.524063, 40.228924, 41.487610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.561588, 40.062332, 41.849327> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439047, 0.797902, 0.413025,
		-0.893553, -0.435774, -0.108000,
		0.093812, -0.416477, 0.904293,
		35.589733, 39.937389, 42.120613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.988102, 40.390442, 41.803745>,  <35.524063, 40.228924, 41.487610>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.988102, 40.390442, 41.803745> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.224098, 40.298988, 42.113491>,  <35.365696, 40.244114, 42.299339>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.224098, 40.298988, 42.113491>,  <34.988102, 40.390442, 41.803745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.224098, 40.298988, 42.113491> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447366, 0.705824, 0.549251,
		-0.672141, -0.670476, 0.314147,
		0.589992, -0.228636, 0.774361,
		35.401096, 40.230396, 42.345798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.546474, 40.395638, 42.358727>,  <34.988102, 40.390442, 41.803745>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.546474, 40.395638, 42.358727> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.907227, 40.427044, 42.528641>,  <35.123680, 40.445889, 42.630589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.907227, 40.427044, 42.528641>,  <34.546474, 40.395638, 42.358727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.907227, 40.427044, 42.528641> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344996, 0.722701, 0.598900,
		-0.259970, -0.686686, 0.678879,
		0.901883, 0.078514, 0.424785,
		35.177792, 40.450600, 42.656075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.443840, 40.351562, 43.122478>,  <34.546474, 40.395638, 42.358727>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.443840, 40.351562, 43.122478> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.801159, 40.527939, 43.087646>,  <35.015553, 40.633766, 43.066750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.801159, 40.527939, 43.087646>,  <34.443840, 40.351562, 43.122478>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.801159, 40.527939, 43.087646> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240900, 0.633275, 0.735480,
		0.379449, -0.636028, 0.671928,
		0.893300, 0.440944, -0.087076,
		35.069149, 40.660221, 43.061523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.743263, 40.315277, 43.719093>,  <34.443840, 40.351562, 43.122478>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.743263, 40.315277, 43.719093> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.918865, 40.625576, 43.537769>,  <35.024227, 40.811756, 43.428974>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.918865, 40.625576, 43.537769>,  <34.743263, 40.315277, 43.719093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.918865, 40.625576, 43.537769> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442620, 0.625784, 0.642248,
		0.781897, -0.081305, 0.618083,
		0.439005, 0.775747, -0.453311,
		35.050568, 40.858299, 43.401775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.144741, 40.665398, 44.227295>,  <34.743263, 40.315277, 43.719093>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.144741, 40.665398, 44.227295> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.090996, 40.927086, 43.929588>,  <35.058750, 41.084099, 43.750965>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.090996, 40.927086, 43.929588>,  <35.144741, 40.665398, 44.227295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.090996, 40.927086, 43.929588> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250199, 0.704349, 0.664299,
		0.958826, 0.275472, 0.069049,
		-0.134361, 0.654223, -0.744271,
		35.050686, 41.123352, 43.706306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.545284, 41.156635, 44.394997>,  <35.144741, 40.665398, 44.227295>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.545284, 41.156635, 44.394997> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.325317, 41.334389, 44.112122>,  <35.193336, 41.441040, 43.942394>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.325317, 41.334389, 44.112122>,  <35.545284, 41.156635, 44.394997>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.325317, 41.334389, 44.112122> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137660, 0.786909, 0.601518,
		0.823797, 0.428137, -0.371561,
		-0.549917, 0.444380, -0.707190,
		35.160343, 41.467701, 43.899963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<30.629738, 41.522781, 41.292469> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.895824, 41.427143, 41.575401>,  <31.055475, 41.369759, 41.745163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.895824, 41.427143, 41.575401>,  <30.629738, 41.522781, 41.292469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.895824, 41.427143, 41.575401> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589462, -0.413289, -0.694066,
		0.458284, 0.878649, -0.133985,
		0.665215, -0.239100, 0.707333,
		31.095388, 41.355412, 41.787601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.304813, 41.749027, 41.173878>,  <30.629738, 41.522781, 41.292469>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.304813, 41.749027, 41.173878> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.403145, 41.464844, 41.437637>,  <31.462145, 41.294334, 41.595894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.403145, 41.464844, 41.437637>,  <31.304813, 41.749027, 41.173878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.403145, 41.464844, 41.437637> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731372, -0.310494, -0.607198,
		0.636131, 0.631536, 0.443283,
		0.245831, -0.710462, 0.659402,
		31.476894, 41.251705, 41.635456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.003948, 41.733707, 41.233177>,  <31.304813, 41.749027, 41.173878>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.003948, 41.733707, 41.233177> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.923260, 41.376522, 41.394135>,  <31.874846, 41.162212, 41.490707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.923260, 41.376522, 41.394135>,  <32.003948, 41.733707, 41.233177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.923260, 41.376522, 41.394135> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704145, -0.417790, -0.574136,
		0.680799, 0.167528, 0.713055,
		-0.201723, -0.892965, 0.402395,
		31.862743, 41.108631, 41.514854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.714943, 41.393871, 41.123928>,  <32.003948, 41.733707, 41.233177>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.714943, 41.393871, 41.123928> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.448544, 41.102955, 41.190254>,  <32.288704, 40.928406, 41.230049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.448544, 41.102955, 41.190254>,  <32.714943, 41.393871, 41.123928>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.448544, 41.102955, 41.190254> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518762, -0.611298, -0.597662,
		0.536038, -0.312022, 0.784414,
		-0.665995, -0.727294, 0.165814,
		32.248745, 40.884766, 41.239998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.081898, 40.845993, 41.210110>,  <32.714943, 41.393871, 41.123928>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.081898, 40.845993, 41.210110> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.712536, 40.718105, 41.125164>,  <32.490917, 40.641373, 41.074196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.712536, 40.718105, 41.125164>,  <33.081898, 40.845993, 41.210110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.712536, 40.718105, 41.125164> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372934, -0.616547, -0.693390,
		0.090759, -0.719479, 0.688559,
		-0.923408, -0.319719, -0.212361,
		32.435513, 40.622189, 41.061455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.207569, 40.202538, 41.099743>,  <33.081898, 40.845993, 41.210110>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.207569, 40.202538, 41.099743> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.852913, 40.209835, 40.914906>,  <32.640118, 40.214214, 40.804005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.852913, 40.209835, 40.914906>,  <33.207569, 40.202538, 41.099743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.852913, 40.209835, 40.914906> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316716, -0.704149, -0.635504,
		-0.336978, -0.709817, 0.618551,
		-0.886644, 0.018246, -0.462093,
		32.586918, 40.215309, 40.776279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.014591, 39.520393, 41.088562>,  <33.207569, 40.202538, 41.099743>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.014591, 39.520393, 41.088562> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.782394, 39.704941, 40.820187>,  <32.643078, 39.815670, 40.659161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.782394, 39.704941, 40.820187>,  <33.014591, 39.520393, 41.088562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.782394, 39.704941, 40.820187> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213348, -0.709020, -0.672141,
		-0.785819, -0.533317, 0.313147,
		-0.580491, 0.461372, -0.670944,
		32.608246, 39.843353, 40.618904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.538410, 39.030243, 40.834961>,  <33.014591, 39.520393, 41.088562>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.538410, 39.030243, 40.834961> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.551834, 39.309589, 40.548977>,  <32.559887, 39.477196, 40.377388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.551834, 39.309589, 40.548977>,  <32.538410, 39.030243, 40.834961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.551834, 39.309589, 40.548977> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034408, -0.714129, -0.699167,
		-0.998844, 0.048065, 0.000062,
		0.033561, 0.698361, -0.714958,
		32.561901, 39.519096, 40.334488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.068764, 38.727615, 40.342781>,  <32.538410, 39.030243, 40.834961>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.068764, 38.727615, 40.342781> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.281887, 38.997486, 40.138458>,  <32.409760, 39.159409, 40.015865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.281887, 38.997486, 40.138458>,  <32.068764, 38.727615, 40.342781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.281887, 38.997486, 40.138458> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019628, -0.613312, -0.789597,
		-0.846008, 0.410678, -0.340020,
		0.532809, 0.674679, -0.510806,
		32.441730, 39.199890, 39.985218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.751280, 38.787266, 39.751316>,  <32.068764, 38.727615, 40.342781>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.751280, 38.787266, 39.751316> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.095066, 38.961246, 39.643883>,  <32.301338, 39.065636, 39.579422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.095066, 38.961246, 39.643883>,  <31.751280, 38.787266, 39.751316>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.095066, 38.961246, 39.643883> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056229, -0.441773, -0.895363,
		-0.508093, 0.784635, -0.355232,
		0.859465, 0.434953, -0.268581,
		32.352905, 39.091732, 39.563309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.682844, 38.999138, 39.111393>,  <31.751280, 38.787266, 39.751316>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.682844, 38.999138, 39.111393> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.082195, 38.986092, 39.130077>,  <32.321804, 38.978264, 39.141289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.082195, 38.986092, 39.130077>,  <31.682844, 38.999138, 39.111393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.082195, 38.986092, 39.130077> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026336, -0.462778, -0.886083,
		0.050520, 0.885874, -0.461168,
		0.998376, -0.032620, 0.046710,
		32.381706, 38.976307, 39.144089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.895283, 39.237411, 38.503517>,  <31.682844, 38.999138, 39.111393>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.895283, 39.237411, 38.503517> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.188828, 39.010391, 38.652828>,  <32.364952, 38.874180, 38.742416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.188828, 39.010391, 38.652828>,  <31.895283, 39.237411, 38.503517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.188828, 39.010391, 38.652828> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047488, -0.505293, -0.861640,
		0.677639, 0.650050, -0.343863,
		0.733860, -0.567551, 0.373276,
		32.408985, 38.840126, 38.764812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.367138, 39.242340, 37.932667>,  <31.895283, 39.237411, 38.503517>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.367138, 39.242340, 37.932667> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.497997, 38.939713, 38.159145>,  <32.576511, 38.758137, 38.295033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.497997, 38.939713, 38.159145>,  <32.367138, 39.242340, 37.932667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.497997, 38.939713, 38.159145> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026089, -0.591709, -0.805730,
		0.944613, 0.278364, -0.173838,
		0.327147, -0.756568, 0.566198,
		32.596142, 38.712742, 38.329006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.979713, 38.958256, 37.559536>,  <32.367138, 39.242340, 37.932667>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.979713, 38.958256, 37.559536> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.833317, 38.678749, 37.805389>,  <32.745480, 38.511047, 37.952904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.833317, 38.678749, 37.805389>,  <32.979713, 38.958256, 37.559536>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.833317, 38.678749, 37.805389> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059804, -0.676757, -0.733774,
		0.928694, -0.231797, 0.289477,
		-0.365992, -0.698763, 0.614638,
		32.723518, 38.469120, 37.989780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.637669, 39.271263, 37.697273>,  <32.979713, 38.958256, 37.559536>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.637669, 39.271263, 37.697273> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.913147, 39.488068, 37.504639>,  <34.078434, 39.618149, 37.389057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.913147, 39.488068, 37.504639>,  <33.637669, 39.271263, 37.697273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.913147, 39.488068, 37.504639> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489600, 0.837553, 0.242483,
		0.534784, 0.068790, 0.842184,
		0.688693, 0.542009, -0.481589,
		34.119755, 39.650669, 37.360161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.974388, 39.786411, 38.233700>,  <33.637669, 39.271263, 37.697273>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.974388, 39.786411, 38.233700> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.053158, 39.934650, 37.870628>,  <34.100418, 40.023594, 37.652786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.053158, 39.934650, 37.870628>,  <33.974388, 39.786411, 38.233700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.053158, 39.934650, 37.870628> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207165, 0.920630, 0.330942,
		0.958282, 0.122870, 0.258067,
		0.196921, 0.370598, -0.907678,
		34.112232, 40.045830, 37.598324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.168365, 40.420834, 38.449883>,  <33.974388, 39.786411, 38.233700>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.168365, 40.420834, 38.449883> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.096714, 40.461174, 38.058426>,  <34.053722, 40.485378, 37.823551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.096714, 40.461174, 38.058426>,  <34.168365, 40.420834, 38.449883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.096714, 40.461174, 38.058426> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460923, 0.870207, 0.174040,
		0.869175, 0.482254, -0.109391,
		-0.179124, 0.100851, -0.978644,
		34.042976, 40.491428, 37.764832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.471451, 40.992958, 38.239849>,  <34.168365, 40.420834, 38.449883>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.471451, 40.992958, 38.239849> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.172173, 40.916321, 37.985764>,  <33.992603, 40.870338, 37.833313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.172173, 40.916321, 37.985764>,  <34.471451, 40.992958, 38.239849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.172173, 40.916321, 37.985764> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396645, 0.896638, 0.196756,
		0.531859, 0.399166, -0.746856,
		-0.748197, -0.191590, -0.635212,
		33.947712, 40.858845, 37.795200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.368275, 41.639130, 37.734173>,  <34.471451, 40.992958, 38.239849>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.368275, 41.639130, 37.734173> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.037937, 41.416798, 37.772182>,  <33.839733, 41.283398, 37.794987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.037937, 41.416798, 37.772182>,  <34.368275, 41.639130, 37.734173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.037937, 41.416798, 37.772182> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504195, 0.803319, 0.316962,
		-0.252510, 0.213853, -0.943666,
		-0.825849, -0.555828, 0.095023,
		33.790184, 41.250050, 37.800690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.804684, 42.153492, 37.713818>,  <34.368275, 41.639130, 37.734173>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.804684, 42.153492, 37.713818> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.617290, 41.832878, 37.862446>,  <33.504852, 41.640511, 37.951622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.617290, 41.832878, 37.862446>,  <33.804684, 42.153492, 37.713818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.617290, 41.832878, 37.862446> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637752, 0.597876, 0.485609,
		-0.611387, -0.009472, -0.791276,
		-0.468485, -0.801533, 0.371574,
		33.476746, 41.592419, 37.973919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.104053, 42.304798, 37.643040>,  <33.804684, 42.153492, 37.713818>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.104053, 42.304798, 37.643040> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.118229, 42.022919, 37.926487>,  <33.126736, 41.853790, 38.096554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.118229, 42.022919, 37.926487>,  <33.104053, 42.304798, 37.643040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.118229, 42.022919, 37.926487> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711840, 0.479883, 0.512831,
		-0.701447, -0.522596, -0.484629,
		0.035438, -0.704702, 0.708618,
		33.128860, 41.811508, 38.139072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.354233, 42.268784, 37.907124>,  <33.104053, 42.304798, 37.643040>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.354233, 42.268784, 37.907124> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.582417, 42.083359, 38.178326>,  <32.719326, 41.972103, 38.341045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.582417, 42.083359, 38.178326>,  <32.354233, 42.268784, 37.907124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.582417, 42.083359, 38.178326> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518851, 0.436525, 0.735010,
		-0.636685, -0.771077, 0.008503,
		0.570461, -0.463558, 0.678003,
		32.753555, 41.944290, 38.381725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.820807, 42.100658, 38.428520>,  <32.354233, 42.268784, 37.907124>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.820807, 42.100658, 38.428520> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.179703, 42.058983, 38.600147>,  <32.395042, 42.033978, 38.703125>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.179703, 42.058983, 38.600147>,  <31.820807, 42.100658, 38.428520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.179703, 42.058983, 38.600147> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355746, 0.405020, 0.842261,
		-0.261539, -0.908352, 0.326335,
		0.897241, -0.104192, 0.429071,
		32.448875, 42.027725, 38.728870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.732164, 41.779259, 39.134396>,  <31.820807, 42.100658, 38.428520>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.732164, 41.779259, 39.134396> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.093178, 41.951088, 39.146427>,  <32.309784, 42.054184, 39.153645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.093178, 41.951088, 39.146427>,  <31.732164, 41.779259, 39.134396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.093178, 41.951088, 39.146427> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209219, 0.376380, 0.902533,
		0.376380, -0.820859, 0.429569,
		-0.902533, -0.429569, -0.030077,
		32.363937, 42.079960, 39.155449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.022694, 41.711155, 39.840435>,  <31.732164, 41.779259, 39.134396>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.022694, 41.711155, 39.840435> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.203281, 42.029987, 39.680019>,  <32.311634, 42.221287, 39.583771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.203281, 42.029987, 39.680019>,  <32.022694, 41.711155, 39.840435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.203281, 42.029987, 39.680019> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034330, 0.464633, 0.884838,
		0.891627, -0.385709, 0.237130,
		0.451468, 0.797086, -0.401037,
		32.338722, 42.269112, 39.559708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.476891, 41.969288, 40.386726>,  <32.022694, 41.711155, 39.840435>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.476891, 41.969288, 40.386726> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.443375, 42.276054, 40.132225>,  <32.423264, 42.460114, 39.979523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.443375, 42.276054, 40.132225>,  <32.476891, 41.969288, 40.386726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.443375, 42.276054, 40.132225> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111366, 0.627290, 0.770782,
		0.990240, 0.135444, 0.032845,
		-0.083794, 0.766917, -0.636252,
		32.418236, 42.506130, 39.941349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.971455, 42.491325, 40.680859>,  <32.476891, 41.969288, 40.386726>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.971455, 42.491325, 40.680859> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.691513, 42.669216, 40.457283>,  <32.523548, 42.775951, 40.323135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.691513, 42.669216, 40.457283>,  <32.971455, 42.491325, 40.680859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.691513, 42.669216, 40.457283> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183373, 0.644432, 0.742349,
		0.690344, 0.622033, -0.369459,
		-0.699857, 0.444727, -0.558944,
		32.481556, 42.802635, 40.289600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.990261, 43.271500, 40.830841>,  <32.971455, 42.491325, 40.680859>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.990261, 43.271500, 40.830841> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.634212, 43.203938, 40.661537>,  <32.420582, 43.163399, 40.559956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.634212, 43.203938, 40.661537>,  <32.990261, 43.271500, 40.830841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.634212, 43.203938, 40.661537> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398387, 0.739397, 0.542752,
		0.221281, 0.651738, -0.725446,
		-0.890125, -0.168907, -0.423259,
		32.367176, 43.153267, 40.534561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.468235, 43.882870, 40.733784>,  <32.990261, 43.271500, 40.830841>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.468235, 43.882870, 40.733784> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.736919, 43.878197, 41.030071>,  <33.898132, 43.875393, 41.207844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.736919, 43.878197, 41.030071>,  <33.468235, 43.882870, 40.733784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.736919, 43.878197, 41.030071> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512504, -0.714653, -0.476036,
		0.534918, 0.699382, -0.474055,
		0.671715, -0.011685, 0.740717,
		33.938435, 43.874691, 41.252285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.245224, 43.884445, 40.445900>,  <33.468235, 43.882870, 40.733784>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.245224, 43.884445, 40.445900> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.260925, 43.746017, 40.820854>,  <34.270348, 43.662960, 41.045826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.260925, 43.746017, 40.820854>,  <34.245224, 43.884445, 40.445900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.260925, 43.746017, 40.820854> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530108, -0.788001, -0.313114,
		0.847021, 0.509208, 0.152520,
		0.039254, -0.346066, 0.937389,
		34.272701, 43.642197, 41.102070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.949402, 43.891464, 40.634804>,  <34.245224, 43.884445, 40.445900>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.949402, 43.891464, 40.634804> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.765511, 43.617054, 40.860378>,  <34.655174, 43.452408, 40.995724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.765511, 43.617054, 40.860378>,  <34.949402, 43.891464, 40.634804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.765511, 43.617054, 40.860378> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420187, -0.727475, -0.542423,
		0.782361, -0.012413, 0.622701,
		-0.459733, -0.686022, 0.563932,
		34.627590, 43.411247, 41.029556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.343983, 43.399723, 40.604187>,  <34.949402, 43.891464, 40.634804>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.343983, 43.399723, 40.604187> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.030479, 43.203545, 40.756599>,  <34.842377, 43.085838, 40.848049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.030479, 43.203545, 40.756599>,  <35.343983, 43.399723, 40.604187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.030479, 43.203545, 40.756599> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364545, -0.859990, -0.357104,
		0.502828, -0.140977, 0.852813,
		-0.783754, -0.490451, 0.381034,
		34.795353, 43.056408, 40.870911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.626846, 42.889095, 40.942539>,  <35.343983, 43.399723, 40.604187>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.626846, 42.889095, 40.942539> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.251678, 42.780792, 40.855820>,  <35.026577, 42.715813, 40.803787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.251678, 42.780792, 40.855820>,  <35.626846, 42.889095, 40.942539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.251678, 42.780792, 40.855820> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343402, -0.812872, -0.470441,
		-0.048858, -0.515685, 0.855384,
		-0.937917, -0.270756, -0.216803,
		34.970303, 42.699566, 40.790779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.652561, 42.120667, 40.988609>,  <35.626846, 42.889095, 40.942539>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.652561, 42.120667, 40.988609> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.310875, 42.210430, 40.801010>,  <35.105865, 42.264290, 40.688450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.310875, 42.210430, 40.801010>,  <35.652561, 42.120667, 40.988609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.310875, 42.210430, 40.801010> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082320, -0.832301, -0.548177,
		-0.513368, -0.506867, 0.692488,
		-0.854211, 0.224411, -0.469002,
		35.054611, 42.277752, 40.660309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.267029, 41.602367, 41.015022>,  <35.652561, 42.120667, 40.988609>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.267029, 41.602367, 41.015022> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.170185, 41.812092, 40.688469>,  <35.112080, 41.937927, 40.492538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.170185, 41.812092, 40.688469>,  <35.267029, 41.602367, 41.015022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.170185, 41.812092, 40.688469> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250203, -0.779216, -0.574648,
		-0.937433, -0.343389, 0.057470,
		-0.242110, 0.524315, -0.816380,
		35.097553, 41.969387, 40.443554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.913952, 41.144455, 40.657291>,  <35.267029, 41.602367, 41.015022>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.913952, 41.144455, 40.657291> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.994652, 41.445545, 40.406628>,  <35.043072, 41.626202, 40.256229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.994652, 41.445545, 40.406628>,  <34.913952, 41.144455, 40.657291>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.994652, 41.445545, 40.406628> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435101, -0.642093, -0.631192,
		-0.877488, -0.145319, -0.457053,
		0.201746, 0.752728, -0.626657,
		35.055176, 41.671364, 40.218632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.787228, 40.868401, 40.057945>,  <34.913952, 41.144455, 40.657291>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.787228, 40.868401, 40.057945> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.022926, 41.171402, 39.945538>,  <35.164345, 41.353203, 39.878094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.022926, 41.171402, 39.945538>,  <34.787228, 40.868401, 40.057945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.022926, 41.171402, 39.945538> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517078, -0.620820, -0.589248,
		-0.620820, 0.201907, -0.757507,
		0.589248, 0.757507, -0.281016,
		35.199699, 41.398655, 39.861233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.765583, 40.887203, 39.348938>,  <34.787228, 40.868401, 40.057945>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.765583, 40.887203, 39.348938> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.110062, 41.047081, 39.474533>,  <35.316750, 41.143009, 39.549889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.110062, 41.047081, 39.474533>,  <34.765583, 40.887203, 39.348938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.110062, 41.047081, 39.474533> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504946, -0.743392, -0.438631,
		0.058097, 0.536293, -0.842030,
		0.861193, 0.399697, 0.313988,
		35.368420, 41.166988, 39.568729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.199837, 40.956894, 38.801186>,  <34.765583, 40.887203, 39.348938>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.199837, 40.956894, 38.801186> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.460136, 40.994785, 39.102528>,  <35.616318, 41.017521, 39.283333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.460136, 40.994785, 39.102528>,  <35.199837, 40.956894, 38.801186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.460136, 40.994785, 39.102528> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599967, -0.672255, -0.433720,
		0.465362, 0.734234, -0.494307,
		0.650752, 0.094731, 0.753358,
		35.655361, 41.023205, 39.328533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.790836, 41.115726, 38.522392>,  <35.199837, 40.956894, 38.801186>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.790836, 41.115726, 38.522392> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.922173, 40.985085, 38.876911>,  <36.000973, 40.906700, 39.089622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.922173, 40.985085, 38.876911>,  <35.790836, 41.115726, 38.522392>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.922173, 40.985085, 38.876911> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749298, -0.481244, -0.454924,
		0.575106, 0.813471, 0.086712,
		0.328338, -0.326603, 0.886298,
		36.020676, 40.887104, 39.142799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.525219, 41.186062, 38.549305>,  <35.790836, 41.115726, 38.522392>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.525219, 41.186062, 38.549305> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.422127, 40.891270, 38.799244>,  <36.360271, 40.714394, 38.949207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.422127, 40.891270, 38.799244>,  <36.525219, 41.186062, 38.549305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.422127, 40.891270, 38.799244> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739031, -0.566951, -0.363868,
		0.622423, 0.368006, 0.690768,
		-0.257726, -0.736979, 0.624851,
		36.344810, 40.670177, 38.986698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.241070, 40.897621, 38.864140>,  <36.525219, 41.186062, 38.549305>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.241070, 40.897621, 38.864140> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.959892, 40.627335, 38.952930>,  <36.791187, 40.465164, 39.006207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.959892, 40.627335, 38.952930>,  <37.241070, 40.897621, 38.864140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.959892, 40.627335, 38.952930> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606817, -0.732578, -0.308388,
		0.371002, -0.082078, 0.924998,
		-0.702945, -0.675717, 0.221981,
		36.749008, 40.424618, 39.019524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.468035, 38.408428, 27.497149> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.415079, 38.084118, 27.269073>,  <29.383307, 37.889530, 27.132229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.415079, 38.084118, 27.269073>,  <29.468035, 38.408428, 27.497149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.415079, 38.084118, 27.269073> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670107, -0.350661, 0.654212,
		-0.730363, 0.468696, -0.496885,
		-0.132388, -0.810778, -0.570186,
		29.375362, 37.840885, 27.098019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.756653, 38.346725, 27.283197>,  <29.468035, 38.408428, 27.497149>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.756653, 38.346725, 27.283197> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.914635, 37.979366, 27.273834>,  <29.009424, 37.758949, 27.268215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.914635, 37.979366, 27.273834>,  <28.756653, 38.346725, 27.283197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.914635, 37.979366, 27.273834> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648957, -0.296937, 0.700488,
		-0.650281, -0.261469, -0.713280,
		0.394955, -0.918402, -0.023411,
		29.033121, 37.703846, 27.266811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.189018, 38.023041, 27.400513>,  <28.756653, 38.346725, 27.283197>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.189018, 38.023041, 27.400513> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.476685, 37.752769, 27.465328>,  <28.649284, 37.590607, 27.504217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.476685, 37.752769, 27.465328>,  <28.189018, 38.023041, 27.400513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.476685, 37.752769, 27.465328> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568908, -0.438702, 0.695618,
		-0.398929, -0.592450, -0.699899,
		0.719166, -0.675680, 0.162039,
		28.692434, 37.550064, 27.513941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.866447, 37.394974, 27.393179>,  <28.189018, 38.023041, 27.400513>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.866447, 37.394974, 27.393179> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.193998, 37.363750, 27.620632>,  <28.390530, 37.345016, 27.757105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.193998, 37.363750, 27.620632>,  <27.866447, 37.394974, 27.393179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.193998, 37.363750, 27.620632> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567059, -0.263267, 0.780470,
		0.088779, -0.961560, -0.259848,
		0.818879, -0.078060, 0.568634,
		28.439661, 37.340332, 27.791222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.800404, 36.770195, 27.702740>,  <27.866447, 37.394974, 27.393179>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.800404, 36.770195, 27.702740> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.050289, 36.977470, 27.936392>,  <28.200220, 37.101837, 28.076584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.050289, 36.977470, 27.936392>,  <27.800404, 36.770195, 27.702740>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.050289, 36.977470, 27.936392> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495091, -0.315624, 0.809485,
		0.603834, -0.794896, 0.059376,
		0.624716, 0.518191, 0.584131,
		28.237703, 37.132927, 28.111631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.240023, 36.251057, 28.074173>,  <27.800404, 36.770195, 27.702740>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.240023, 36.251057, 28.074173> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.259829, 36.586872, 28.290590>,  <28.271711, 36.788361, 28.420441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.259829, 36.586872, 28.290590>,  <28.240023, 36.251057, 28.074173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.259829, 36.586872, 28.290590> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437707, -0.468679, 0.767302,
		0.897754, -0.274810, 0.344264,
		0.049513, 0.839535, 0.541045,
		28.274683, 36.838734, 28.452904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.514997, 35.955101, 28.770990>,  <28.240023, 36.251057, 28.074173>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.514997, 35.955101, 28.770990> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.336567, 36.310699, 28.812380>,  <28.229509, 36.524059, 28.837214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.336567, 36.310699, 28.812380>,  <28.514997, 35.955101, 28.770990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.336567, 36.310699, 28.812380> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450414, -0.322893, 0.832386,
		0.773397, 0.324702, 0.544450,
		-0.446076, 0.888993, 0.103474,
		28.202744, 36.577396, 28.843422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.513027, 35.984547, 29.487167>,  <28.514997, 35.955101, 28.770990>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.513027, 35.984547, 29.487167> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.254173, 36.260014, 29.356352>,  <28.098862, 36.425293, 29.277863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.254173, 36.260014, 29.356352>,  <28.513027, 35.984547, 29.487167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.254173, 36.260014, 29.356352> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578780, -0.164579, 0.798704,
		0.496218, 0.706152, 0.505091,
		-0.647134, 0.688668, -0.327039,
		28.060034, 36.466614, 29.258240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.410566, 36.262554, 30.134951>,  <28.513027, 35.984547, 29.487167>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.410566, 36.262554, 30.134951> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.120552, 36.389935, 29.890684>,  <27.946545, 36.466362, 29.744123>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.120552, 36.389935, 29.890684>,  <28.410566, 36.262554, 30.134951>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.120552, 36.389935, 29.890684> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670152, -0.121743, 0.732171,
		0.158815, 0.940089, 0.301678,
		-0.725034, 0.318450, -0.610668,
		27.903042, 36.485470, 29.707483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.142374, 36.872948, 30.458012>,  <28.410566, 36.262554, 30.134951>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.142374, 36.872948, 30.458012> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.865185, 36.662273, 30.261082>,  <27.698872, 36.535870, 30.142923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.865185, 36.662273, 30.261082>,  <28.142374, 36.872948, 30.458012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.865185, 36.662273, 30.261082> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519479, -0.108751, 0.847534,
		-0.499928, 0.843073, -0.198242,
		-0.692974, -0.526689, -0.492327,
		27.657293, 36.504265, 30.113384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.449623, 37.040791, 30.762465>,  <28.142374, 36.872948, 30.458012>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.449623, 37.040791, 30.762465> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.405653, 36.685371, 30.584299>,  <27.379271, 36.472118, 30.477400>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.405653, 36.685371, 30.584299>,  <27.449623, 37.040791, 30.762465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.405653, 36.685371, 30.584299> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456985, -0.352775, 0.816526,
		-0.882656, 0.293306, -0.367275,
		-0.109927, -0.888550, -0.445415,
		27.372675, 36.418808, 30.450674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.800167, 36.828671, 31.056868>,  <27.449623, 37.040791, 30.762465>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.800167, 36.828671, 31.056868> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.953691, 36.505054, 30.878817>,  <27.045807, 36.310883, 30.771986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.953691, 36.505054, 30.878817>,  <26.800167, 36.828671, 31.056868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.953691, 36.505054, 30.878817> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372486, -0.576734, 0.727071,
		-0.844952, -0.113254, -0.522714,
		0.383811, -0.809044, -0.445127,
		27.068834, 36.262341, 30.745279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.271421, 36.427994, 31.095800>,  <26.800167, 36.828671, 31.056868>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.271421, 36.427994, 31.095800> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.586956, 36.186344, 31.050604>,  <26.776278, 36.041355, 31.023485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.586956, 36.186344, 31.050604>,  <26.271421, 36.427994, 31.095800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.586956, 36.186344, 31.050604> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349549, -0.592213, 0.726016,
		-0.505520, -0.533213, -0.678331,
		0.788837, -0.604126, -0.112992,
		26.823606, 36.005108, 31.016706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.917032, 35.808342, 31.050735>,  <26.271421, 36.427994, 31.095800>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.917032, 35.808342, 31.050735> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.296215, 35.720509, 31.142965>,  <26.523724, 35.667809, 31.198303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.296215, 35.720509, 31.142965>,  <25.917032, 35.808342, 31.050735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.296215, 35.720509, 31.142965> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318327, -0.637746, 0.701390,
		-0.006960, -0.738285, -0.674453,
		0.947955, -0.219579, 0.230577,
		26.580603, 35.654636, 31.212139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.037056, 35.045921, 31.193743>,  <25.917032, 35.808342, 31.050735>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.037056, 35.045921, 31.193743> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.329681, 35.237625, 31.387701>,  <26.505257, 35.352650, 31.504076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.329681, 35.237625, 31.387701>,  <26.037056, 35.045921, 31.193743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.329681, 35.237625, 31.387701> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094806, -0.632805, 0.768485,
		0.675151, -0.608166, -0.417499,
		0.731562, 0.479262, 0.484896,
		26.549150, 35.381405, 31.533171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.359352, 34.508205, 31.497623>,  <26.037056, 35.045921, 31.193743>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.359352, 34.508205, 31.497623> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.470222, 34.831440, 31.705536>,  <26.536745, 35.025379, 31.830282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.470222, 34.831440, 31.705536>,  <26.359352, 34.508205, 31.497623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.470222, 34.831440, 31.705536> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101627, -0.513285, 0.852180,
		0.955429, -0.289029, -0.060148,
		0.277178, 0.808085, 0.519780,
		26.553375, 35.073864, 31.861469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.811705, 34.223499, 32.018208>,  <26.359352, 34.508205, 31.497623>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.811705, 34.223499, 32.018208> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.699448, 34.583023, 32.152897>,  <26.632093, 34.798737, 32.233711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.699448, 34.583023, 32.152897>,  <26.811705, 34.223499, 32.018208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.699448, 34.583023, 32.152897> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164780, -0.390735, 0.905635,
		0.945562, 0.198674, 0.257762,
		-0.280643, 0.898808, 0.336726,
		26.615255, 34.852665, 32.253914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.222548, 34.345654, 32.607269>,  <26.811705, 34.223499, 32.018208>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.222548, 34.345654, 32.607269> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.906637, 34.587872, 32.646397>,  <26.717091, 34.733204, 32.669872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.906637, 34.587872, 32.646397>,  <27.222548, 34.345654, 32.607269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.906637, 34.587872, 32.646397> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146703, -0.341312, 0.928431,
		0.595597, 0.718900, 0.358395,
		-0.789774, 0.605548, 0.097819,
		26.669704, 34.769535, 32.675743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.236210, 34.718670, 33.278965>,  <27.222548, 34.345654, 32.607269>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.236210, 34.718670, 33.278965> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.854694, 34.681458, 33.164680>,  <26.625786, 34.659130, 33.096111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.854694, 34.681458, 33.164680>,  <27.236210, 34.718670, 33.278965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.854694, 34.681458, 33.164680> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221654, -0.424143, 0.878050,
		-0.202869, 0.900804, 0.383922,
		-0.953789, -0.093031, -0.285712,
		26.568558, 34.653549, 33.078968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.561613, 35.023567, 33.696018>,  <27.236210, 34.718670, 33.278965>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.561613, 35.023567, 33.696018> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.480991, 34.669552, 33.528164>,  <26.432619, 34.457142, 33.427452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.480991, 34.669552, 33.528164>,  <26.561613, 35.023567, 33.696018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.480991, 34.669552, 33.528164> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156308, -0.393870, 0.905778,
		-0.966925, 0.248154, -0.058952,
		-0.201553, -0.885034, -0.419631,
		26.420525, 34.404041, 33.402275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.291258, 35.031067, 33.961227>,  <26.561613, 35.023567, 33.696018>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.291258, 35.031067, 33.961227> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.523796, 34.705685, 33.954021>,  <27.663319, 34.510456, 33.949696>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.523796, 34.705685, 33.954021>,  <27.291258, 35.031067, 33.961227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.523796, 34.705685, 33.954021> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777824, 0.562104, -0.281120,
		0.238807, 0.149413, 0.959503,
		0.581344, -0.813459, -0.018017,
		27.698198, 34.461647, 33.948616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.941540, 35.134102, 34.451015>,  <27.291258, 35.031067, 33.961227>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.941540, 35.134102, 34.451015> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.023115, 34.880630, 34.152523>,  <28.072060, 34.728550, 33.973427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.023115, 34.880630, 34.152523>,  <27.941540, 35.134102, 34.451015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.023115, 34.880630, 34.152523> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727563, 0.608119, -0.317557,
		0.655027, -0.478171, 0.585057,
		0.203938, -0.633674, -0.746235,
		28.084297, 34.690529, 33.928654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.669275, 35.295898, 34.350708>,  <27.941540, 35.134102, 34.451015>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.669275, 35.295898, 34.350708> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.539139, 35.072254, 34.045670>,  <28.461058, 34.938068, 33.862648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.539139, 35.072254, 34.045670>,  <28.669275, 35.295898, 34.350708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.539139, 35.072254, 34.045670> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566131, 0.530786, -0.630684,
		0.757396, -0.636914, 0.143845,
		-0.325341, -0.559112, -0.762592,
		28.441536, 34.904522, 33.816891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.305353, 34.941860, 33.951420>,  <28.669275, 35.295898, 34.350708>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.305353, 34.941860, 33.951420> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.002348, 34.995914, 33.695946>,  <28.820545, 35.028347, 33.542664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.002348, 34.995914, 33.695946>,  <29.305353, 34.941860, 33.951420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.002348, 34.995914, 33.695946> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613238, 0.482796, -0.625177,
		0.223866, -0.865243, -0.448597,
		-0.757511, 0.135141, -0.638682,
		28.775095, 35.036457, 33.504341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.566517, 34.728073, 33.269054>,  <29.305353, 34.941860, 33.951420>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.566517, 34.728073, 33.269054> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.231398, 34.919437, 33.163815>,  <29.030327, 35.034256, 33.100670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.231398, 34.919437, 33.163815>,  <29.566517, 34.728073, 33.269054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.231398, 34.919437, 33.163815> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504860, 0.495357, -0.706921,
		-0.207870, -0.725084, -0.656539,
		-0.837799, 0.478408, -0.263096,
		28.980059, 35.062962, 33.084885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.486145, 34.622009, 32.648472>,  <29.566517, 34.728073, 33.269054>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.486145, 34.622009, 32.648472> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.265959, 34.952374, 32.697231>,  <29.133846, 35.150593, 32.726486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.265959, 34.952374, 32.697231>,  <29.486145, 34.622009, 32.648472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.265959, 34.952374, 32.697231> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415911, 0.397895, -0.817739,
		-0.723881, -0.399441, -0.562533,
		-0.550468, 0.825910, 0.121896,
		29.100819, 35.200146, 32.733799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.325251, 34.772514, 31.980934>,  <29.486145, 34.622009, 32.648472>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.325251, 34.772514, 31.980934> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.240276, 35.106167, 32.184544>,  <29.189293, 35.306358, 32.306709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.240276, 35.106167, 32.184544>,  <29.325251, 34.772514, 31.980934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.240276, 35.106167, 32.184544> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377212, 0.550536, -0.744729,
		-0.901434, 0.033804, -0.431595,
		-0.212434, 0.834127, 0.509024,
		29.176546, 35.356403, 32.337250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.966242, 35.183411, 31.583517>,  <29.325251, 34.772514, 31.980934>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.966242, 35.183411, 31.583517> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.112501, 35.440769, 31.852541>,  <29.200256, 35.595184, 32.013954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.112501, 35.440769, 31.852541>,  <28.966242, 35.183411, 31.583517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.112501, 35.440769, 31.852541> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481985, 0.487273, -0.728186,
		-0.796235, 0.590426, -0.131937,
		0.365650, 0.643399, 0.672560,
		29.222197, 35.633789, 32.054310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.855591, 35.850597, 31.219984>,  <28.966242, 35.183411, 31.583517>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.855591, 35.850597, 31.219984> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.142931, 35.880981, 31.496593>,  <29.315334, 35.899212, 31.662560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.142931, 35.880981, 31.496593>,  <28.855591, 35.850597, 31.219984>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.142931, 35.880981, 31.496593> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564452, 0.517412, -0.643179,
		-0.406657, 0.852359, 0.328808,
		0.718348, 0.075957, 0.691525,
		29.358435, 35.903767, 31.704050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.029371, 36.562260, 31.199610>,  <28.855591, 35.850597, 31.219984>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.029371, 36.562260, 31.199610> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.358347, 36.398968, 31.358074>,  <29.555733, 36.300991, 31.453154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.358347, 36.398968, 31.358074>,  <29.029371, 36.562260, 31.199610>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.358347, 36.398968, 31.358074> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568212, 0.622650, -0.537999,
		-0.027041, 0.667574, 0.744053,
		0.822438, -0.408232, 0.396161,
		29.605078, 36.276497, 31.476923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.365707, 37.168159, 31.305737>,  <29.029371, 36.562260, 31.199610>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.365707, 37.168159, 31.305737> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.631897, 36.874012, 31.356924>,  <29.791611, 36.697521, 31.387636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.631897, 36.874012, 31.356924>,  <29.365707, 37.168159, 31.305737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.631897, 36.874012, 31.356924> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728643, 0.602809, -0.325117,
		0.161942, 0.309599, 0.936976,
		0.665474, -0.735370, 0.127967,
		29.831539, 36.653400, 31.395313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.006710, 37.360477, 31.708786>,  <29.365707, 37.168159, 31.305737>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.006710, 37.360477, 31.708786> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.099817, 37.044369, 31.482056>,  <30.155682, 36.854706, 31.346018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.099817, 37.044369, 31.482056>,  <30.006710, 37.360477, 31.708786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.099817, 37.044369, 31.482056> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711603, 0.535674, -0.454615,
		0.662903, -0.297535, 0.687047,
		0.232769, -0.790269, -0.566827,
		30.169647, 36.807289, 31.312008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.749559, 37.389030, 31.717159>,  <30.006710, 37.360477, 31.708786>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.749559, 37.389030, 31.717159> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.649176, 37.142811, 31.418329>,  <30.588945, 36.995079, 31.239031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.649176, 37.142811, 31.418329>,  <30.749559, 37.389030, 31.717159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.649176, 37.142811, 31.418329> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735069, 0.380978, -0.560830,
		0.629837, -0.689895, 0.356862,
		-0.250957, -0.615549, -0.747074,
		30.573889, 36.958145, 31.194206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.334515, 37.270626, 31.415613>,  <30.749559, 37.389030, 31.717159>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.334515, 37.270626, 31.415613> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.066444, 37.159775, 31.140203>,  <30.905603, 37.093266, 30.974957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.066444, 37.159775, 31.140203>,  <31.334515, 37.270626, 31.415613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.066444, 37.159775, 31.140203> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521909, 0.483621, -0.702653,
		0.527710, -0.830248, -0.179475,
		-0.670174, -0.277128, -0.688526,
		30.865393, 37.076637, 30.933645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.730309, 37.057236, 30.853588>,  <31.334515, 37.270626, 31.415613>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.730309, 37.057236, 30.853588> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.377100, 37.119953, 30.676640>,  <31.165174, 37.157585, 30.570471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.377100, 37.119953, 30.676640>,  <31.730309, 37.057236, 30.853588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.377100, 37.119953, 30.676640> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452752, 0.532907, -0.714861,
		0.123657, -0.831521, -0.541556,
		-0.883020, 0.156793, -0.442370,
		31.112194, 37.166992, 30.543928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.826984, 36.958862, 30.090799>,  <31.730309, 37.057236, 30.853588>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.826984, 36.958862, 30.090799> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.475016, 37.146851, 30.118692>,  <31.263834, 37.259644, 30.135427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.475016, 37.146851, 30.118692>,  <31.826984, 36.958862, 30.090799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.475016, 37.146851, 30.118692> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220743, 0.534355, -0.815927,
		-0.420725, -0.702560, -0.573934,
		-0.879922, 0.469973, 0.069732,
		31.211039, 37.287842, 30.139612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.543558, 36.965183, 29.449238>,  <31.826984, 36.958862, 30.090799>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.543558, 36.965183, 29.449238> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.355551, 37.260532, 29.642685>,  <31.242746, 37.437740, 29.758753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.355551, 37.260532, 29.642685>,  <31.543558, 36.965183, 29.449238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.355551, 37.260532, 29.642685> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116846, 0.595141, -0.795081,
		-0.874888, -0.317194, -0.366004,
		-0.470019, 0.738373, 0.483619,
		31.214544, 37.482044, 29.787771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.888821, 37.073093, 29.130125>,  <31.543558, 36.965183, 29.449238>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.888821, 37.073093, 29.130125> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.001171, 37.414455, 29.305761>,  <31.068583, 37.619274, 29.411144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.001171, 37.414455, 29.305761>,  <30.888821, 37.073093, 29.130125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.001171, 37.414455, 29.305761> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084583, 0.433719, -0.897070,
		-0.956009, 0.289106, 0.049638,
		0.280877, 0.853408, 0.439092,
		31.085434, 37.670479, 29.437489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.679222, 37.525532, 28.692377>,  <30.888821, 37.073093, 29.130125>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.679222, 37.525532, 28.692377> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.863497, 37.775208, 28.944775>,  <30.974062, 37.925014, 29.096212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.863497, 37.775208, 28.944775>,  <30.679222, 37.525532, 28.692377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.863497, 37.775208, 28.944775> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062886, 0.686185, -0.724704,
		-0.885332, 0.373542, 0.276864,
		0.460687, 0.624193, 0.630992,
		31.001703, 37.962463, 29.134071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.284613, 38.189152, 28.715879>,  <30.679222, 37.525532, 28.692377>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.284613, 38.189152, 28.715879> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.671223, 38.255306, 28.794336>,  <30.903189, 38.294998, 28.841410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.671223, 38.255306, 28.794336>,  <30.284613, 38.189152, 28.715879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.671223, 38.255306, 28.794336> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033532, 0.676504, -0.735675,
		-0.254363, 0.717627, 0.648314,
		0.966527, 0.165389, 0.196141,
		30.961182, 38.304924, 28.853178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.298969, 38.940254, 28.586258>,  <30.284613, 38.189152, 28.715879>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.298969, 38.940254, 28.586258> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.654852, 38.761261, 28.550077>,  <30.868382, 38.653866, 28.528370>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.654852, 38.761261, 28.550077>,  <30.298969, 38.940254, 28.586258>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.654852, 38.761261, 28.550077> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181821, 0.529050, -0.828883,
		0.418764, 0.721017, 0.552061,
		0.889707, -0.447483, -0.090452,
		30.921764, 38.627018, 28.522942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.845568, 39.417152, 28.697742>,  <30.298969, 38.940254, 28.586258>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.845568, 39.417152, 28.697742> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.892500, 39.110214, 28.445580>,  <30.920660, 38.926052, 28.294283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.892500, 39.110214, 28.445580>,  <30.845568, 39.417152, 28.697742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.892500, 39.110214, 28.445580> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205746, 0.602234, -0.771351,
		0.971546, 0.220207, -0.087218,
		0.117331, -0.767348, -0.630405,
		30.927698, 38.880009, 28.256458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.730419, 41.938389, 44.429226> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.386978, 41.930664, 44.224312>,  <35.180916, 41.926029, 44.101364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.386978, 41.930664, 44.224312>,  <35.730419, 41.938389, 44.429226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.386978, 41.930664, 44.224312> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319667, 0.801386, 0.505564,
		0.400772, 0.597837, -0.694243,
		-0.858600, -0.019310, -0.512282,
		35.129398, 41.924870, 44.070629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.553677, 42.587044, 44.292645>,  <35.730419, 41.938389, 44.429226>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.553677, 42.587044, 44.292645> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.214218, 42.378063, 44.259583>,  <35.010544, 42.252674, 44.239746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.214218, 42.378063, 44.259583>,  <35.553677, 42.587044, 44.292645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.214218, 42.378063, 44.259583> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443761, 0.618181, 0.648790,
		-0.287868, 0.587275, -0.756465,
		-0.848651, -0.522456, -0.082655,
		34.959621, 42.221325, 44.234787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.120377, 43.108948, 44.224403>,  <35.553677, 42.587044, 44.292645>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.120377, 43.108948, 44.224403> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.889416, 42.798492, 44.325764>,  <34.750839, 42.612221, 44.386581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.889416, 42.798492, 44.325764>,  <35.120377, 43.108948, 44.224403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.889416, 42.798492, 44.325764> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536400, 0.594599, 0.598938,
		-0.615534, 0.209902, -0.759644,
		-0.577402, -0.776140, 0.253404,
		34.716194, 42.565651, 44.401787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.404896, 43.307854, 44.096123>,  <35.120377, 43.108948, 44.224403>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.404896, 43.307854, 44.096123> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.432716, 43.021980, 44.374516>,  <34.449409, 42.850456, 44.541550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.432716, 43.021980, 44.374516>,  <34.404896, 43.307854, 44.096123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.432716, 43.021980, 44.374516> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507604, 0.575245, 0.641430,
		-0.858778, -0.397899, -0.322764,
		0.069556, -0.714682, 0.695983,
		34.453583, 42.807575, 44.583309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.720158, 43.371727, 44.352497>,  <34.404896, 43.307854, 44.096123>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.720158, 43.371727, 44.352497> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.941444, 43.158901, 44.608891>,  <34.074215, 43.031208, 44.762726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.941444, 43.158901, 44.608891>,  <33.720158, 43.371727, 44.352497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.941444, 43.158901, 44.608891> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527284, 0.372042, 0.763909,
		-0.644920, -0.760588, -0.074728,
		0.553217, -0.532063, 0.640983,
		34.107410, 42.999283, 44.801186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.161381, 43.107342, 44.840469>,  <33.720158, 43.371727, 44.352497>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.161381, 43.107342, 44.840469> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.514839, 43.102268, 45.027664>,  <33.726913, 43.099224, 45.139980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.514839, 43.102268, 45.027664>,  <33.161381, 43.107342, 44.840469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.514839, 43.102268, 45.027664> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388523, 0.537848, 0.748177,
		-0.261200, -0.842946, 0.470336,
		0.883643, -0.012688, 0.467990,
		33.779930, 43.098461, 45.168060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.980755, 42.992386, 45.612473>,  <33.161381, 43.107342, 44.840469>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.980755, 42.992386, 45.612473> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.364918, 43.102146, 45.631767>,  <33.595413, 43.168003, 45.643345>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.364918, 43.102146, 45.631767>,  <32.980755, 42.992386, 45.612473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.364918, 43.102146, 45.631767> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199971, 0.558367, 0.805132,
		0.193995, -0.782899, 0.591131,
		0.960405, 0.274401, 0.048237,
		33.653038, 43.184467, 45.646236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.220516, 42.853161, 46.322159>,  <32.980755, 42.992386, 45.612473>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.220516, 42.853161, 46.322159> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.437073, 43.145882, 46.156574>,  <33.567005, 43.321514, 46.057224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.437073, 43.145882, 46.156574>,  <33.220516, 42.853161, 46.322159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.437073, 43.145882, 46.156574> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259877, 0.613902, 0.745378,
		0.799599, -0.295963, 0.522539,
		0.541392, 0.731799, -0.413962,
		33.599491, 43.365421, 46.032387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.484085, 43.132568, 46.903851>,  <33.220516, 42.853161, 46.322159>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.484085, 43.132568, 46.903851> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.584049, 43.422279, 46.646801>,  <33.644028, 43.596107, 46.492569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.584049, 43.422279, 46.646801>,  <33.484085, 43.132568, 46.903851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.584049, 43.422279, 46.646801> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227015, 0.689015, 0.688276,
		0.941282, -0.026118, 0.336610,
		0.249906, 0.724277, -0.642628,
		33.659019, 43.639561, 46.454014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.970413, 43.564880, 47.216061>,  <33.484085, 43.132568, 46.903851>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.970413, 43.564880, 47.216061> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.777294, 43.768387, 46.930946>,  <33.661423, 43.890491, 46.759876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.777294, 43.768387, 46.930946>,  <33.970413, 43.564880, 47.216061>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.777294, 43.768387, 46.930946> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365228, 0.622788, 0.691913,
		0.795938, 0.594381, -0.114863,
		-0.482795, 0.508768, -0.712786,
		33.632454, 43.921017, 46.717110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.135872, 44.341949, 47.189320>,  <33.970413, 43.564880, 47.216061>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.135872, 44.341949, 47.189320> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.779003, 44.342476, 47.008640>,  <33.564884, 44.342793, 46.900234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.779003, 44.342476, 47.008640>,  <34.135872, 44.341949, 47.189320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.779003, 44.342476, 47.008640> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273115, 0.794927, 0.541756,
		0.359779, 0.606704, -0.708851,
		-0.892170, 0.001315, -0.451698,
		33.511353, 44.342869, 46.873131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.942734, 45.058384, 47.155930>,  <34.135872, 44.341949, 47.189320>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.942734, 45.058384, 47.155930> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.603607, 44.850819, 47.112236>,  <33.400131, 44.726280, 47.086018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.603607, 44.850819, 47.112236>,  <33.942734, 45.058384, 47.155930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.603607, 44.850819, 47.112236> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461429, 0.620388, 0.634194,
		-0.261325, 0.588085, -0.765418,
		-0.847816, -0.518917, -0.109236,
		33.349262, 44.695145, 47.079464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.347099, 45.478416, 47.022320>,  <33.942734, 45.058384, 47.155930>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.347099, 45.478416, 47.022320> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.174725, 45.163208, 47.198189>,  <33.071301, 44.974083, 47.303711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.174725, 45.163208, 47.198189>,  <33.347099, 45.478416, 47.022320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.174725, 45.163208, 47.198189> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516736, 0.614940, 0.595678,
		-0.739782, 0.029503, -0.672199,
		-0.430936, -0.788022, 0.439677,
		33.045444, 44.926800, 47.330093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.556973, 45.528889, 47.033535>,  <33.347099, 45.478416, 47.022320>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.556973, 45.528889, 47.033535> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.711220, 45.343697, 47.352772>,  <32.803768, 45.232582, 47.544315>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.711220, 45.343697, 47.352772>,  <32.556973, 45.528889, 47.033535>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.711220, 45.343697, 47.352772> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437978, 0.669474, 0.599983,
		-0.812082, -0.580909, 0.055385,
		0.385615, -0.462978, 0.798093,
		32.826904, 45.204803, 47.592201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.867424, 45.351933, 46.451199>,  <32.556973, 45.528889, 47.033535>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.867424, 45.351933, 46.451199> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.639339, 45.660309, 46.337704>,  <32.502487, 45.845333, 46.269608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.639339, 45.660309, 46.337704>,  <32.867424, 45.351933, 46.451199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.639339, 45.660309, 46.337704> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042529, -0.317224, -0.947396,
		-0.820395, -0.552285, 0.148098,
		-0.570213, 0.770941, -0.283737,
		32.468277, 45.891590, 46.252583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.247765, 45.104218, 46.094002>,  <32.867424, 45.351933, 46.451199>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.247765, 45.104218, 46.094002> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.345608, 45.465721, 45.953499>,  <32.404316, 45.682625, 45.869198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.345608, 45.465721, 45.953499>,  <32.247765, 45.104218, 46.094002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.345608, 45.465721, 45.953499> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234093, -0.406592, -0.883110,
		-0.940938, 0.133793, -0.311021,
		0.244612, 0.903760, -0.351258,
		32.418991, 45.736851, 45.848122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.824123, 45.195591, 45.470764>,  <32.247765, 45.104218, 46.094002>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.824123, 45.195591, 45.470764> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.120037, 45.463898, 45.449638>,  <32.297585, 45.624882, 45.436962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.120037, 45.463898, 45.449638>,  <31.824123, 45.195591, 45.470764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.120037, 45.463898, 45.449638> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201976, -0.296258, -0.933508,
		-0.641812, 0.679928, -0.354647,
		0.739785, 0.670767, -0.052813,
		32.341972, 45.665127, 45.433796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.739174, 45.513550, 44.781334>,  <31.824123, 45.195591, 45.470764>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.739174, 45.513550, 44.781334> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.107449, 45.600712, 44.910858>,  <32.328415, 45.653011, 44.988575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.107449, 45.600712, 44.910858>,  <31.739174, 45.513550, 44.781334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.107449, 45.600712, 44.910858> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359682, -0.151550, -0.920685,
		-0.151550, 0.964131, -0.217908,
		0.920685, 0.217908, 0.323813,
		32.383656, 45.666084, 45.008003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.887522, 45.809383, 44.154324>,  <31.739174, 45.513550, 44.781334>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.887522, 45.809383, 44.154324> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.228825, 45.765293, 44.358208>,  <32.433605, 45.738838, 44.480537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.228825, 45.765293, 44.358208>,  <31.887522, 45.809383, 44.154324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.228825, 45.765293, 44.358208> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503388, -0.081197, -0.860237,
		0.136205, 0.990585, -0.013798,
		0.853258, -0.110223, 0.509707,
		32.484802, 45.732227, 44.511120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.431721, 46.161552, 43.826874>,  <31.887522, 45.809383, 44.154324>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.431721, 46.161552, 43.826874> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.636642, 45.891830, 44.039608>,  <32.759598, 45.729996, 44.167248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.636642, 45.891830, 44.039608>,  <32.431721, 46.161552, 43.826874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.636642, 45.891830, 44.039608> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493426, -0.275749, -0.824920,
		0.702902, 0.685037, 0.191451,
		0.512308, -0.674305, 0.531840,
		32.790337, 45.689541, 44.199162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.204075, 46.242504, 43.780888>,  <32.431721, 46.161552, 43.826874>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.204075, 46.242504, 43.780888> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.118492, 45.861404, 43.867130>,  <33.067142, 45.632744, 43.918877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.118492, 45.861404, 43.867130>,  <33.204075, 46.242504, 43.780888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.118492, 45.861404, 43.867130> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428416, -0.289881, -0.855821,
		0.877885, -0.090738, 0.470196,
		-0.213956, -0.952752, 0.215608,
		33.054306, 45.575581, 43.931812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.776604, 45.858143, 43.636879>,  <33.204075, 46.242504, 43.780888>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.776604, 45.858143, 43.636879> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.492706, 45.576359, 43.636826>,  <33.322369, 45.407288, 43.636795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.492706, 45.576359, 43.636826>,  <33.776604, 45.858143, 43.636879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.492706, 45.576359, 43.636826> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475049, -0.478470, -0.738509,
		0.520190, -0.524212, 0.674244,
		-0.709740, -0.704464, -0.000131,
		33.279785, 45.365021, 43.636787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.088993, 45.116024, 43.647053>,  <33.776604, 45.858143, 43.636879>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.088993, 45.116024, 43.647053> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.730473, 45.105118, 43.470013>,  <33.515358, 45.098576, 43.363789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.730473, 45.105118, 43.470013>,  <34.088993, 45.116024, 43.647053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.730473, 45.105118, 43.470013> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352521, -0.649315, -0.673884,
		-0.269014, -0.760031, 0.591595,
		-0.896304, -0.027266, -0.442601,
		33.461582, 45.096939, 43.337231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.155594, 44.524384, 43.329605>,  <34.088993, 45.116024, 43.647053>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.155594, 44.524384, 43.329605> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.807205, 44.636078, 43.167896>,  <33.598171, 44.703094, 43.070869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.807205, 44.636078, 43.167896>,  <34.155594, 44.524384, 43.329605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.807205, 44.636078, 43.167896> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208027, -0.535838, -0.818293,
		-0.445123, -0.796809, 0.408610,
		-0.870971, 0.279239, -0.404272,
		33.545914, 44.719849, 43.046616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.797932, 43.934578, 43.148922>,  <34.155594, 44.524384, 43.329605>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.797932, 43.934578, 43.148922> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.628349, 44.210491, 42.914158>,  <33.526600, 44.376041, 42.773300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.628349, 44.210491, 42.914158>,  <33.797932, 43.934578, 43.148922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.628349, 44.210491, 42.914158> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152305, -0.584498, -0.796973,
		-0.892786, -0.427268, 0.142742,
		-0.423953, 0.689786, -0.586906,
		33.501163, 44.417427, 42.738087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.476364, 43.535500, 42.715508>,  <33.797932, 43.934578, 43.148922>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.476364, 43.535500, 42.715508> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.507607, 43.889275, 42.531479>,  <33.526352, 44.101540, 42.421062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.507607, 43.889275, 42.531479>,  <33.476364, 43.535500, 42.715508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.507607, 43.889275, 42.531479> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233825, -0.464862, -0.853949,
		-0.969137, -0.040881, -0.243111,
		0.078103, 0.884439, -0.460074,
		33.531036, 44.154606, 42.393456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.113567, 43.556904, 42.134541>,  <33.476364, 43.535500, 42.715508>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.113567, 43.556904, 42.134541> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.391861, 43.836750, 42.069431>,  <33.558838, 44.004658, 42.030365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.391861, 43.836750, 42.069431>,  <33.113567, 43.556904, 42.134541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.391861, 43.836750, 42.069431> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285479, -0.477265, -0.831096,
		-0.659132, 0.531753, -0.531774,
		0.695734, 0.699612, -0.162777,
		33.600582, 44.046635, 42.020599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.138069, 43.634872, 41.456139>,  <33.113567, 43.556904, 42.134541>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.138069, 43.634872, 41.456139> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.489609, 43.794785, 41.560291>,  <33.700535, 43.890732, 41.622784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.489609, 43.794785, 41.560291>,  <33.138069, 43.634872, 41.456139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.489609, 43.794785, 41.560291> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407390, -0.344796, -0.845665,
		-0.248299, 0.849291, -0.465890,
		0.878852, 0.399776, 0.260380,
		33.753265, 43.914719, 41.638405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.708721, 44.087196, 40.885010>,  <33.138069, 43.634872, 41.456139>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.708721, 44.087196, 40.885010> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.413742, 43.839878, 40.776291>,  <32.236755, 43.691486, 40.711060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.413742, 43.839878, 40.776291>,  <32.708721, 44.087196, 40.885010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.413742, 43.839878, 40.776291> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622175, 0.465317, 0.629586,
		-0.262799, 0.633395, -0.727837,
		-0.737451, -0.618297, -0.271798,
		32.192505, 43.654388, 40.694752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.049496, 44.507530, 40.711346>,  <32.708721, 44.087196, 40.885010>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.049496, 44.507530, 40.711346> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.926531, 44.137165, 40.799152>,  <31.852751, 43.914948, 40.851837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.926531, 44.137165, 40.799152>,  <32.049496, 44.507530, 40.711346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.926531, 44.137165, 40.799152> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724683, 0.377307, 0.576605,
		-0.616709, 0.018179, -0.786981,
		-0.307416, -0.925910, 0.219515,
		31.834307, 43.859390, 40.865005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.281847, 44.503517, 40.671684>,  <32.049496, 44.507530, 40.711346>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.281847, 44.503517, 40.671684> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.413624, 44.203621, 40.901245>,  <31.492689, 44.023685, 41.038982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.413624, 44.203621, 40.901245>,  <31.281847, 44.503517, 40.671684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.413624, 44.203621, 40.901245> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731409, 0.181738, 0.657277,
		-0.597084, -0.636291, -0.488492,
		0.329442, -0.749737, 0.573902,
		31.512457, 43.978699, 41.073414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.699440, 44.251610, 40.840019>,  <31.281847, 44.503517, 40.671684>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.699440, 44.251610, 40.840019> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.946310, 44.118069, 41.125011>,  <31.094433, 44.037945, 41.296009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.946310, 44.118069, 41.125011>,  <30.699440, 44.251610, 40.840019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.946310, 44.118069, 41.125011> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587443, 0.406905, 0.699528,
		-0.523454, -0.850276, 0.055012,
		0.617176, -0.333854, 0.712485,
		31.131462, 44.017914, 41.338757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.292564, 43.989082, 41.309097>,  <30.699440, 44.251610, 40.840019>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.292564, 43.989082, 41.309097> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.636627, 44.054295, 41.502407>,  <30.843065, 44.093422, 41.618393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.636627, 44.054295, 41.502407>,  <30.292564, 43.989082, 41.309097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.636627, 44.054295, 41.502407> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483921, 0.560146, 0.672352,
		-0.161092, -0.812194, 0.560705,
		0.860157, 0.163026, 0.483273,
		30.894674, 44.103203, 41.647388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.188440, 43.767418, 42.013924>,  <30.292564, 43.989082, 41.309097>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.188440, 43.767418, 42.013924> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.471388, 44.049297, 41.991894>,  <30.641157, 44.218426, 41.978676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.471388, 44.049297, 41.991894>,  <30.188440, 43.767418, 42.013924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.471388, 44.049297, 41.991894> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487417, 0.542723, 0.684015,
		0.511907, -0.457013, 0.727387,
		0.707373, 0.704692, -0.055068,
		30.683599, 44.260708, 41.975372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.492559, 43.867233, 42.625462>,  <30.188440, 43.767418, 42.013924>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.492559, 43.867233, 42.625462> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.561527, 44.218250, 42.446487>,  <30.602907, 44.428860, 42.339104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.561527, 44.218250, 42.446487>,  <30.492559, 43.867233, 42.625462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.561527, 44.218250, 42.446487> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373606, 0.478558, 0.794607,
		0.911422, 0.030160, 0.410366,
		0.172418, 0.877538, -0.447437,
		30.613253, 44.481510, 42.312256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.434624, 43.669548, 43.461990>,  <30.492559, 43.867233, 42.625462>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.434624, 43.669548, 43.461990> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.148676, 43.398666, 43.531681>,  <29.977108, 43.236137, 43.573494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.148676, 43.398666, 43.531681>,  <30.434624, 43.669548, 43.461990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.148676, 43.398666, 43.531681> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556841, -0.702021, -0.443953,
		0.422957, -0.220353, 0.878949,
		-0.714868, -0.677208, 0.174223,
		29.934216, 43.195503, 43.583946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.689608, 43.153091, 43.796124>,  <30.434624, 43.669548, 43.461990>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.689608, 43.153091, 43.796124> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.368076, 42.977390, 43.635666>,  <30.175158, 42.871971, 43.539391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.368076, 42.977390, 43.635666>,  <30.689608, 43.153091, 43.796124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.368076, 42.977390, 43.635666> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577486, -0.738016, -0.349058,
		-0.142729, -0.512240, 0.846899,
		-0.803827, -0.439252, -0.401148,
		30.126928, 42.845615, 43.515320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.756893, 42.357536, 43.970329>,  <30.689608, 43.153091, 43.796124>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.756893, 42.357536, 43.970329> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.528357, 42.406048, 43.645649>,  <30.391233, 42.435154, 43.450840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.528357, 42.406048, 43.645649>,  <30.756893, 42.357536, 43.970329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.528357, 42.406048, 43.645649> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548940, -0.678759, -0.487803,
		-0.610107, -0.724278, 0.321233,
		-0.571345, 0.121274, -0.811701,
		30.356953, 42.442429, 43.402138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.728046, 41.648552, 43.673878>,  <30.756893, 42.357536, 43.970329>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.728046, 41.648552, 43.673878> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.592731, 41.890156, 43.385231>,  <30.511541, 42.035118, 43.212044>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.592731, 41.890156, 43.385231>,  <30.728046, 41.648552, 43.673878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.592731, 41.890156, 43.385231> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442464, -0.574683, -0.688452,
		-0.830534, -0.552184, -0.072845,
		-0.338290, 0.604013, -0.721615,
		30.491245, 42.071362, 43.168747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.362415, 41.194637, 43.213905>,  <30.728046, 41.648552, 43.673878>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.362415, 41.194637, 43.213905> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.414831, 41.534504, 43.009594>,  <30.446280, 41.738426, 42.887009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.414831, 41.534504, 43.009594>,  <30.362415, 41.194637, 43.213905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.414831, 41.534504, 43.009594> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347591, -0.521889, -0.778982,
		-0.928445, -0.075464, -0.363725,
		0.131039, 0.849669, -0.510775,
		30.454144, 41.789406, 42.856361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.091406, 41.122238, 42.491112>,  <30.362415, 41.194637, 43.213905>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.091406, 41.122238, 42.491112> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.378294, 41.400974, 42.492043>,  <30.550426, 41.568218, 42.492603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.378294, 41.400974, 42.492043>,  <30.091406, 41.122238, 42.491112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.378294, 41.400974, 42.492043> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424768, -0.434532, -0.794200,
		-0.552421, 0.570605, -0.607652,
		0.717219, 0.696844, 0.002330,
		30.593460, 41.610027, 42.492741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.172462, 41.292877, 41.803059>,  <30.091406, 41.122238, 42.491112>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.172462, 41.292877, 41.803059> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.512325, 41.372711, 41.998302>,  <30.716244, 41.420612, 42.115448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.512325, 41.372711, 41.998302>,  <30.172462, 41.292877, 41.803059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.512325, 41.372711, 41.998302> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520766, -0.463214, -0.717103,
		0.082979, 0.863482, -0.497508,
		0.849657, 0.199581, 0.488109,
		30.767223, 41.432587, 42.144733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<30.858774, 42.357876, 47.351135> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.186258, 42.584911, 47.316360>,  <31.382750, 42.721130, 47.295494>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.186258, 42.584911, 47.316360>,  <30.858774, 42.357876, 47.351135>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.186258, 42.584911, 47.316360> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457498, -0.736285, -0.498578,
		-0.346995, 0.368419, -0.862474,
		0.818712, 0.567584, -0.086936,
		31.431871, 42.755188, 47.290279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.063955, 42.274872, 46.623260>,  <30.858774, 42.357876, 47.351135>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.063955, 42.274872, 46.623260> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.370203, 42.374161, 46.860649>,  <31.553951, 42.433735, 47.003082>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.370203, 42.374161, 46.860649>,  <31.063955, 42.274872, 46.623260>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.370203, 42.374161, 46.860649> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571358, -0.686310, -0.450032,
		0.295598, 0.683639, -0.667278,
		0.765618, 0.248226, 0.593475,
		31.599888, 42.448627, 47.038692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.564089, 42.488228, 46.040779>,  <31.063955, 42.274872, 46.623260>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.564089, 42.488228, 46.040779> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.745470, 42.383984, 46.381710>,  <31.854300, 42.321438, 46.586269>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.745470, 42.383984, 46.381710>,  <31.564089, 42.488228, 46.040779>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.745470, 42.383984, 46.381710> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572441, -0.647824, -0.502629,
		0.683147, 0.715827, -0.144575,
		0.453455, -0.260609, 0.852328,
		31.881506, 42.305801, 46.637409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.216614, 42.308319, 45.828083>,  <31.564089, 42.488228, 46.040779>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.216614, 42.308319, 45.828083> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.233650, 42.164513, 46.200951>,  <32.243874, 42.078228, 46.424671>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.233650, 42.164513, 46.200951>,  <32.216614, 42.308319, 45.828083>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.233650, 42.164513, 46.200951> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514954, -0.791634, -0.328843,
		0.856159, 0.494031, 0.151412,
		0.042596, -0.359512, 0.932168,
		32.246429, 42.056660, 46.480602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.792374, 41.980976, 45.802250>,  <32.216614, 42.308319, 45.828083>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.792374, 41.980976, 45.802250> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.629704, 41.823471, 46.131992>,  <32.532101, 41.728970, 46.329838>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.629704, 41.823471, 46.131992>,  <32.792374, 41.980976, 45.802250>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.629704, 41.823471, 46.131992> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362241, -0.897882, -0.250180,
		0.838687, 0.196873, 0.507785,
		-0.406677, -0.393763, 0.824357,
		32.507702, 41.705341, 46.379299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.298603, 41.652527, 46.331200>,  <32.792374, 41.980976, 45.802250>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.298603, 41.652527, 46.331200> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.940464, 41.484615, 46.390713>,  <32.725578, 41.383869, 46.426422>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.940464, 41.484615, 46.390713>,  <33.298603, 41.652527, 46.331200>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.940464, 41.484615, 46.390713> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328920, -0.848498, -0.414565,
		0.300269, -0.322242, 0.897774,
		-0.895350, -0.419776, 0.148786,
		32.671860, 41.358681, 46.435349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.622231, 41.038517, 46.537125>,  <33.298603, 41.652527, 46.331200>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.622231, 41.038517, 46.537125> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.239162, 40.983047, 46.436218>,  <33.009323, 40.949768, 46.375675>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.239162, 40.983047, 46.436218>,  <33.622231, 41.038517, 46.537125>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.239162, 40.983047, 46.436218> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200055, -0.950726, -0.236851,
		-0.206988, -0.277292, 0.938224,
		-0.957671, -0.138671, -0.252263,
		32.951862, 40.941444, 46.360538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.460606, 40.370804, 46.818085>,  <33.622231, 41.038517, 46.537125>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.460606, 40.370804, 46.818085> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.190811, 40.458923, 46.536224>,  <33.028934, 40.511795, 46.367107>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.190811, 40.458923, 46.536224>,  <33.460606, 40.370804, 46.818085>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.190811, 40.458923, 46.536224> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018014, -0.949248, -0.314012,
		-0.738065, -0.224491, 0.636289,
		-0.674489, 0.220299, -0.704651,
		32.988464, 40.525013, 46.324829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.952080, 39.835960, 46.891064>,  <33.460606, 40.370804, 46.818085>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.952080, 39.835960, 46.891064> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.893627, 39.974339, 46.520340>,  <32.858555, 40.057365, 46.297905>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.893627, 39.974339, 46.520340>,  <32.952080, 39.835960, 46.891064>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.893627, 39.974339, 46.520340> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037917, -0.938133, -0.344194,
		-0.988538, -0.015157, 0.150209,
		-0.146132, 0.345945, -0.926805,
		32.849789, 40.078121, 46.242298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.331585, 39.412582, 46.666832>,  <32.952080, 39.835960, 46.891064>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.331585, 39.412582, 46.666832> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.523663, 39.558113, 46.347572>,  <32.638908, 39.645432, 46.156017>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.523663, 39.558113, 46.347572>,  <32.331585, 39.412582, 46.666832>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.523663, 39.558113, 46.347572> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099234, -0.881547, -0.461549,
		-0.871532, 0.300835, -0.387207,
		0.480191, 0.363831, -0.798150,
		32.667721, 39.667263, 46.108128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.901339, 39.104187, 46.122295>,  <32.331585, 39.412582, 46.666832>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.901339, 39.104187, 46.122295> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.251720, 39.228603, 45.974804>,  <32.461948, 39.303253, 45.886311>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.251720, 39.228603, 45.974804>,  <31.901339, 39.104187, 46.122295>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.251720, 39.228603, 45.974804> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103371, -0.867638, -0.486333,
		-0.471190, 0.387889, -0.792163,
		0.875953, 0.311042, -0.368726,
		32.514507, 39.321915, 45.864185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.831657, 39.015633, 45.366386>,  <31.901339, 39.104187, 46.122295>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.831657, 39.015633, 45.366386> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.214146, 39.009220, 45.483273>,  <32.443638, 39.005375, 45.553402>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.214146, 39.009220, 45.483273>,  <31.831657, 39.015633, 45.366386>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.214146, 39.009220, 45.483273> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126816, -0.877186, -0.463100,
		0.263748, 0.479882, -0.836750,
		0.956219, -0.016028, 0.292213,
		32.501011, 39.004414, 45.570938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.302134, 39.181194, 44.788754>,  <31.831657, 39.015633, 45.366386>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.302134, 39.181194, 44.788754> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.958307, 38.993160, 44.868919>,  <30.752012, 38.880341, 44.917019>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.958307, 38.993160, 44.868919>,  <31.302134, 39.181194, 44.788754>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.958307, 38.993160, 44.868919> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359512, 0.834990, 0.416585,
		-0.363177, 0.286030, -0.886730,
		-0.859566, -0.470084, 0.200418,
		30.700438, 38.852135, 44.929047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.666664, 39.495567, 44.400494>,  <31.302134, 39.181194, 44.788754>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.666664, 39.495567, 44.400494> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.550457, 39.324921, 44.743095>,  <30.480732, 39.222534, 44.948658>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.550457, 39.324921, 44.743095>,  <30.666664, 39.495567, 44.400494>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.550457, 39.324921, 44.743095> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187297, 0.903148, 0.386321,
		-0.938360, -0.048188, -0.342285,
		-0.290518, -0.426617, 0.856503,
		30.463301, 39.196934, 45.000046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.093098, 39.941887, 44.581154>,  <30.666664, 39.495567, 44.400494>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.093098, 39.941887, 44.581154> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.099661, 39.719971, 44.913883>,  <30.103598, 39.586819, 45.113522>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.099661, 39.719971, 44.913883>,  <30.093098, 39.941887, 44.581154>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.099661, 39.719971, 44.913883> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539703, 0.695419, 0.474461,
		-0.841696, -0.456723, -0.288016,
		0.016406, -0.554795, 0.831825,
		30.104582, 39.553532, 45.163429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.398222, 39.949471, 44.864246>,  <30.093098, 39.941887, 44.581154>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.398222, 39.949471, 44.864246> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.639088, 39.838943, 45.163857>,  <29.783607, 39.772625, 45.343624>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.639088, 39.838943, 45.163857>,  <29.398222, 39.949471, 44.864246>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.639088, 39.838943, 45.163857> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358622, 0.744601, 0.562992,
		-0.713294, -0.607632, 0.349277,
		0.602164, -0.276321, 0.749030,
		29.819736, 39.756046, 45.388565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.957741, 39.742256, 45.404480>,  <29.398222, 39.949471, 44.864246>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.957741, 39.742256, 45.404480> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.304663, 39.864464, 45.561676>,  <29.512815, 39.937790, 45.655994>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.304663, 39.864464, 45.561676>,  <28.957741, 39.742256, 45.404480>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.304663, 39.864464, 45.561676> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497567, 0.508969, 0.702408,
		0.014581, -0.804740, 0.593448,
		0.867303, 0.305522, 0.392991,
		29.564854, 39.956120, 45.679573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.666569, 39.943092, 46.001629>,  <28.957741, 39.742256, 45.404480>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.666569, 39.943092, 46.001629> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.052429, 40.035282, 46.052746>,  <29.283945, 40.090595, 46.083416>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.052429, 40.035282, 46.052746>,  <28.666569, 39.943092, 46.001629>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.052429, 40.035282, 46.052746> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244877, 0.604758, 0.757827,
		0.097375, -0.762332, 0.639818,
		0.964652, 0.230470, 0.127789,
		29.341825, 40.104424, 46.091084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.820433, 39.886143, 46.728893>,  <28.666569, 39.943092, 46.001629>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.820433, 39.886143, 46.728893> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.077900, 40.144207, 46.564232>,  <29.232380, 40.299046, 46.465435>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.077900, 40.144207, 46.564232>,  <28.820433, 39.886143, 46.728893>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.077900, 40.144207, 46.564232> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282672, 0.700282, 0.655516,
		0.711186, -0.305573, 0.633119,
		0.643670, 0.645159, -0.411654,
		29.271000, 40.337753, 46.440735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.082941, 40.264027, 47.294575>,  <28.820433, 39.886143, 46.728893>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.082941, 40.264027, 47.294575> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.162806, 40.485825, 46.971424>,  <29.210724, 40.618904, 46.777534>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.162806, 40.485825, 46.971424>,  <29.082941, 40.264027, 47.294575>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.162806, 40.485825, 46.971424> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146174, 0.832111, 0.534999,
		0.968901, 0.011272, 0.247193,
		0.199662, 0.554494, -0.807881,
		29.222704, 40.652172, 46.729061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.436890, 40.824486, 47.562038>,  <29.082941, 40.264027, 47.294575>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.436890, 40.824486, 47.562038> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.300501, 40.953163, 47.208710>,  <29.218668, 41.030369, 46.996712>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.300501, 40.953163, 47.208710>,  <29.436890, 40.824486, 47.562038>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.300501, 40.953163, 47.208710> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132250, 0.913866, 0.383873,
		0.930725, 0.247708, -0.269058,
		-0.340971, 0.321697, -0.883317,
		29.198210, 41.049671, 46.943714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.820873, 41.558983, 47.438248>,  <29.436890, 40.824486, 47.562038>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.820873, 41.558983, 47.438248> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.515856, 41.525337, 47.181667>,  <29.332846, 41.505150, 47.027721>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.515856, 41.525337, 47.181667>,  <29.820873, 41.558983, 47.438248>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.515856, 41.525337, 47.181667> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315099, 0.914243, 0.254701,
		0.565015, 0.396340, -0.723652,
		-0.762542, -0.084112, -0.641447,
		29.287094, 41.500103, 46.989235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.785959, 42.181210, 47.049683>,  <29.820873, 41.558983, 47.438248>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.785959, 42.181210, 47.049683> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.425745, 42.013783, 47.002625>,  <29.209616, 41.913326, 46.974392>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.425745, 42.013783, 47.002625>,  <29.785959, 42.181210, 47.049683>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.425745, 42.013783, 47.002625> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433904, 0.882384, 0.182006,
		0.027623, 0.214948, -0.976235,
		-0.900536, -0.418565, -0.117641,
		29.155584, 41.888214, 46.967331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.520123, 42.496162, 46.491077>,  <29.785959, 42.181210, 47.049683>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.520123, 42.496162, 46.491077> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.223965, 42.363396, 46.724880>,  <29.046270, 42.283733, 46.865162>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.223965, 42.363396, 46.724880>,  <29.520123, 42.496162, 46.491077>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.223965, 42.363396, 46.724880> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407537, 0.913186, 0.002338,
		-0.534539, -0.236477, -0.811386,
		-0.740393, -0.331919, 0.584507,
		29.001846, 42.263821, 46.900230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.925333, 42.636993, 46.116798>,  <29.520123, 42.496162, 46.491077>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.925333, 42.636993, 46.116798> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.822161, 42.634338, 46.503254>,  <28.760258, 42.632744, 46.735126>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.822161, 42.634338, 46.503254>,  <28.925333, 42.636993, 46.116798>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.822161, 42.634338, 46.503254> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354863, 0.930735, -0.088342,
		-0.898635, -0.365633, -0.242420,
		-0.257929, -0.006638, 0.966141,
		28.744781, 42.632347, 46.793095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.288195, 42.954521, 46.154381>,  <28.925333, 42.636993, 46.116798>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.288195, 42.954521, 46.154381> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.435398, 42.962898, 46.526215>,  <28.523720, 42.967922, 46.749313>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.435398, 42.962898, 46.526215>,  <28.288195, 42.954521, 46.154381>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.435398, 42.962898, 46.526215> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355694, 0.926875, 0.119937,
		-0.859098, -0.374786, 0.348547,
		0.368010, 0.020938, 0.929586,
		28.545801, 42.969181, 46.805092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.154799, 43.725620, 46.137890>,  <28.288195, 42.954521, 46.154381>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.154799, 43.725620, 46.137890> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.087448, 43.995598, 45.850529>,  <28.047037, 44.157585, 45.678112>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.087448, 43.995598, 45.850529>,  <28.154799, 43.725620, 46.137890>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.087448, 43.995598, 45.850529> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417982, -0.611153, -0.672149,
		-0.892715, -0.413453, -0.179209,
		-0.168378, 0.674944, -0.718401,
		28.036934, 44.198082, 45.635010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.069099, 43.331436, 45.523243>,  <28.154799, 43.725620, 46.137890>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.069099, 43.331436, 45.523243> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.128017, 43.685287, 45.346272>,  <28.163368, 43.897598, 45.240089>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.128017, 43.685287, 45.346272>,  <28.069099, 43.331436, 45.523243>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.128017, 43.685287, 45.346272> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471567, -0.456001, -0.754777,
		-0.869442, -0.097460, -0.484326,
		0.147293, 0.884627, -0.442425,
		28.172205, 43.950676, 45.213543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.994923, 43.180889, 44.732517>,  <28.069099, 43.331436, 45.523243>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.994923, 43.180889, 44.732517> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.196432, 43.526333, 44.724651>,  <28.317339, 43.733601, 44.719933>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.196432, 43.526333, 44.724651>,  <27.994923, 43.180889, 44.732517>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.196432, 43.526333, 44.724651> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525828, -0.324640, -0.786202,
		-0.685358, 0.385727, -0.617656,
		0.503775, 0.863611, -0.019668,
		28.347565, 43.785416, 44.718750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.058321, 43.351040, 44.044254>,  <27.994923, 43.180889, 44.732517>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.058321, 43.351040, 44.044254> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.348013, 43.549454, 44.235855>,  <28.521828, 43.668503, 44.350815>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.348013, 43.549454, 44.235855>,  <28.058321, 43.351040, 44.044254>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.348013, 43.549454, 44.235855> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651828, -0.265826, -0.710251,
		-0.224974, 0.826614, -0.515845,
		0.724228, 0.496031, 0.479006,
		28.565281, 43.698261, 44.379559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.447994, 43.783379, 43.536819>,  <28.058321, 43.351040, 44.044254>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.447994, 43.783379, 43.536819> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.672977, 43.722683, 43.861931>,  <28.807966, 43.686264, 44.056999>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.672977, 43.722683, 43.861931>,  <28.447994, 43.783379, 43.536819>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.672977, 43.722683, 43.861931> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795301, -0.169566, -0.582016,
		0.226138, 0.973766, 0.025309,
		0.562457, -0.151744, 0.812783,
		28.841715, 43.677158, 44.105766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.079742, 43.915726, 43.246841>,  <28.447994, 43.783379, 43.536819>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.079742, 43.915726, 43.246841> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.167767, 43.763184, 43.605984>,  <29.220581, 43.671658, 43.821468>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.167767, 43.763184, 43.605984>,  <29.079742, 43.915726, 43.246841>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.167767, 43.763184, 43.605984> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770563, -0.496441, -0.399723,
		0.598168, 0.779817, 0.184611,
		0.220062, -0.381355, 0.897853,
		29.233786, 43.648777, 43.875340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.793015, 44.057266, 43.370228>,  <29.079742, 43.915726, 43.246841>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.793015, 44.057266, 43.370228> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.672474, 43.737526, 43.578159>,  <29.600149, 43.545681, 43.702919>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.672474, 43.737526, 43.578159>,  <29.793015, 44.057266, 43.370228>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.672474, 43.737526, 43.578159> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651420, -0.570703, -0.499950,
		0.696303, 0.187963, 0.692700,
		-0.301354, -0.799355, 0.519824,
		29.582067, 43.497719, 43.734108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.454288, 44.345966, 43.195827>,  <29.793015, 44.057266, 43.370228>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.454288, 44.345966, 43.195827> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.504704, 44.604076, 42.894436>,  <30.534952, 44.758942, 42.713600>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.504704, 44.604076, 42.894436>,  <30.454288, 44.345966, 43.195827>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.504704, 44.604076, 42.894436> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133860, 0.763656, 0.631594,
		0.982953, 0.021256, 0.182625,
		0.126038, 0.645273, -0.753483,
		30.542515, 44.797657, 42.668392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.058558, 44.794006, 43.399780>,  <30.454288, 44.345966, 43.195827>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.058558, 44.794006, 43.399780> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.822153, 44.978394, 43.134987>,  <30.680309, 45.089024, 42.976112>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.822153, 44.978394, 43.134987>,  <31.058558, 44.794006, 43.399780>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.822153, 44.978394, 43.134987> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181627, 0.723524, 0.665976,
		0.785949, 0.513834, -0.343889,
		-0.591013, 0.460963, -0.661979,
		30.644850, 45.116684, 42.936394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.133547, 45.506653, 43.517529>,  <31.058558, 44.794006, 43.399780>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.133547, 45.506653, 43.517529> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.806372, 45.557747, 43.293148>,  <30.610067, 45.588402, 43.158520>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.806372, 45.557747, 43.293148>,  <31.133547, 45.506653, 43.517529>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.806372, 45.557747, 43.293148> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416402, 0.541355, 0.730441,
		0.396973, 0.831035, -0.389606,
		-0.817937, 0.127733, -0.560948,
		30.560991, 45.596066, 43.124863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.912796, 46.269592, 43.613712>,  <31.133547, 45.506653, 43.517529>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.912796, 46.269592, 43.613712> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.609957, 46.032646, 43.503510>,  <30.428253, 45.890476, 43.437389>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.609957, 46.032646, 43.503510>,  <30.912796, 46.269592, 43.613712>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.609957, 46.032646, 43.503510> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581248, 0.418248, 0.698011,
		-0.298250, 0.688599, -0.660968,
		-0.757098, -0.592368, -0.275504,
		30.382828, 45.854935, 43.420856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.372486, 46.684040, 43.738853>,  <30.912796, 46.269592, 43.613712>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.372486, 46.684040, 43.738853> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.201523, 46.323078, 43.716976>,  <30.098944, 46.106503, 43.703850>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.201523, 46.323078, 43.716976>,  <30.372486, 46.684040, 43.738853>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.201523, 46.323078, 43.716976> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596149, 0.235846, 0.767452,
		-0.679652, 0.360621, -0.638769,
		-0.427411, -0.902402, -0.054690,
		30.073299, 46.052357, 43.700569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.605728, 46.775990, 43.598637>,  <30.372486, 46.684040, 43.738853>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.605728, 46.775990, 43.598637> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.676517, 46.436970, 43.798771>,  <29.718990, 46.233559, 43.918850>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.676517, 46.436970, 43.798771>,  <29.605728, 46.775990, 43.598637>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.676517, 46.436970, 43.798771> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616056, 0.301065, 0.727897,
		-0.767565, -0.437053, -0.468860,
		0.176972, -0.847552, 0.500336,
		29.729609, 46.182705, 43.948872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.949024, 46.596546, 44.016716>,  <29.605728, 46.775990, 43.598637>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.949024, 46.596546, 44.016716> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.204819, 46.343197, 44.191025>,  <29.358295, 46.191189, 44.295612>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.204819, 46.343197, 44.191025>,  <28.949024, 46.596546, 44.016716>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.204819, 46.343197, 44.191025> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504701, 0.081728, 0.859417,
		-0.579944, -0.769521, -0.267399,
		0.639486, -0.633371, 0.435776,
		29.396664, 46.153187, 44.321758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.521086, 46.179497, 44.490376>,  <28.949024, 46.596546, 44.016716>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.521086, 46.179497, 44.490376> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.899200, 46.144718, 44.616150>,  <29.126070, 46.123852, 44.691616>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.899200, 46.144718, 44.616150>,  <28.521086, 46.179497, 44.490376>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.899200, 46.144718, 44.616150> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305551, 0.101786, 0.946720,
		-0.114316, -0.991000, 0.069652,
		0.945288, -0.086943, 0.314437,
		29.182787, 46.118637, 44.710480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.567602, 45.568756, 45.041786>,  <28.521086, 46.179497, 44.490376>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.567602, 45.568756, 45.041786> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.871212, 45.817162, 45.119991>,  <29.053377, 45.966206, 45.166912>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.871212, 45.817162, 45.119991>,  <28.567602, 45.568756, 45.041786>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.871212, 45.817162, 45.119991> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264565, 0.019817, 0.964164,
		0.594885, -0.783549, 0.179340,
		0.759024, 0.621014, 0.195511,
		29.098919, 46.003464, 45.178646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.623650, 35.982841, 35.320915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.887032, 36.142921, 35.575878>,  <37.045059, 36.238968, 35.728855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.887032, 36.142921, 35.575878>,  <36.623650, 35.982841, 35.320915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.887032, 36.142921, 35.575878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662835, 0.709514, 0.239249,
		-0.356501, -0.580028, 0.732444,
		0.658451, 0.400197, 0.637405,
		37.084568, 36.262981, 35.767101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.312191, 36.034180, 36.060226>,  <36.623650, 35.982841, 35.320915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.312191, 36.034180, 36.060226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.606789, 36.295544, 35.990215>,  <36.783546, 36.452362, 35.948208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.606789, 36.295544, 35.990215>,  <36.312191, 36.034180, 36.060226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.606789, 36.295544, 35.990215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566609, 0.737231, 0.368029,
		0.369509, -0.171879, 0.913192,
		0.736490, 0.653413, -0.175025,
		36.827736, 36.491570, 35.937706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.377972, 36.386295, 36.688793>,  <36.312191, 36.034180, 36.060226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.377972, 36.386295, 36.688793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.547771, 36.610622, 36.404461>,  <36.649651, 36.745220, 36.233864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.547771, 36.610622, 36.404461>,  <36.377972, 36.386295, 36.688793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.547771, 36.610622, 36.404461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599369, 0.762493, 0.243642,
		0.678641, 0.322621, 0.659820,
		0.424504, 0.560821, -0.710828,
		36.675121, 36.778870, 36.191212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.685081, 37.090332, 36.978092>,  <36.377972, 36.386295, 36.688793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.685081, 37.090332, 36.978092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.643497, 37.185047, 36.591698>,  <36.618549, 37.241879, 36.359863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.643497, 37.185047, 36.591698>,  <36.685081, 37.090332, 36.978092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.643497, 37.185047, 36.591698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572415, 0.780020, 0.252806,
		0.813348, 0.579224, 0.054454,
		-0.103956, 0.236789, -0.965983,
		36.612312, 37.256084, 36.301903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.719975, 37.785198, 37.016201>,  <36.685081, 37.090332, 36.978092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.719975, 37.785198, 37.016201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.566586, 37.710075, 36.654499>,  <36.474552, 37.665001, 36.437477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.566586, 37.710075, 36.654499>,  <36.719975, 37.785198, 37.016201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.566586, 37.710075, 36.654499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614995, 0.782379, 0.098309,
		0.689005, 0.593810, -0.415526,
		-0.383476, -0.187811, -0.904253,
		36.451542, 37.653732, 36.383224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.922729, 38.362244, 36.524445>,  <36.719975, 37.785198, 37.016201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.922729, 38.362244, 36.524445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.591923, 38.212589, 36.356602>,  <36.393440, 38.122795, 36.255898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.591923, 38.212589, 36.356602>,  <36.922729, 38.362244, 36.524445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.591923, 38.212589, 36.356602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451095, 0.887064, 0.098138,
		0.335503, 0.270445, -0.902384,
		-0.827014, -0.374135, -0.419609,
		36.343819, 38.100349, 36.230721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.577114, 38.971050, 36.330677>,  <36.922729, 38.362244, 36.524445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.577114, 38.971050, 36.330677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.292397, 38.693920, 36.284454>,  <36.121567, 38.527641, 36.256721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.292397, 38.693920, 36.284454>,  <36.577114, 38.971050, 36.330677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.292397, 38.693920, 36.284454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700873, 0.689756, 0.181697,
		-0.046176, 0.210322, -0.976541,
		-0.711790, -0.692821, -0.115559,
		36.078861, 38.486073, 36.249786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.118046, 39.345104, 35.927692>,  <36.577114, 38.971050, 36.330677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.118046, 39.345104, 35.927692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.956226, 39.028412, 36.110779>,  <35.859135, 38.838398, 36.220631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.956226, 39.028412, 36.110779>,  <36.118046, 39.345104, 35.927692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.956226, 39.028412, 36.110779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706770, 0.588293, 0.392922,
		-0.580359, -0.164543, -0.797564,
		-0.404548, -0.791730, 0.457715,
		35.834862, 38.790894, 36.248093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.395088, 39.410336, 35.932941>,  <36.118046, 39.345104, 35.927692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.395088, 39.410336, 35.932941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.420486, 39.165298, 36.248077>,  <35.435726, 39.018276, 36.437160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.420486, 39.165298, 36.248077>,  <35.395088, 39.410336, 35.932941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.420486, 39.165298, 36.248077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809816, 0.429731, 0.399411,
		-0.583237, -0.663368, -0.468805,
		0.063496, -0.612597, 0.787841,
		35.439537, 38.981518, 36.484428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.706650, 39.080708, 35.976307>,  <35.395088, 39.410336, 35.932941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.706650, 39.080708, 35.976307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.895596, 39.042698, 36.326813>,  <35.008965, 39.019890, 36.537117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.895596, 39.042698, 36.326813>,  <34.706650, 39.080708, 35.976307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.895596, 39.042698, 36.326813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789406, 0.396604, 0.468555,
		-0.392057, -0.913058, 0.112326,
		0.472366, -0.095029, 0.876264,
		35.037304, 39.014191, 36.589691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.170559, 38.778450, 36.333439>,  <34.706650, 39.080708, 35.976307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.170559, 38.778450, 36.333439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.435268, 38.965168, 36.568100>,  <34.594093, 39.077198, 36.708897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.435268, 38.965168, 36.568100>,  <34.170559, 38.778450, 36.333439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.435268, 38.965168, 36.568100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744870, 0.498124, 0.443893,
		-0.085022, -0.730738, 0.677343,
		0.661770, 0.466791, 0.586657,
		34.633801, 39.105206, 36.744099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.810062, 38.946636, 36.972603>,  <34.170559, 38.778450, 36.333439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.810062, 38.946636, 36.972603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.129360, 39.182465, 37.021946>,  <34.320938, 39.323963, 37.051552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.129360, 39.182465, 37.021946>,  <33.810062, 38.946636, 36.972603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.129360, 39.182465, 37.021946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573531, 0.681380, 0.454734,
		0.184044, -0.433737, 0.882043,
		0.798242, 0.589570, 0.123358,
		34.368832, 39.359337, 37.058952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.468822, 38.359478, 37.381332>,  <33.810062, 38.946636, 36.972603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.468822, 38.359478, 37.381332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.128738, 38.230141, 37.547512>,  <32.924690, 38.152538, 37.647221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.128738, 38.230141, 37.547512>,  <33.468822, 38.359478, 37.381332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.128738, 38.230141, 37.547512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067971, -0.849971, -0.522426,
		0.522044, -0.415931, 0.744628,
		-0.850206, -0.323343, 0.415452,
		32.873676, 38.133137, 37.672146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.643856, 37.686584, 37.505245>,  <33.468822, 38.359478, 37.381332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.643856, 37.686584, 37.505245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.250015, 37.634861, 37.552288>,  <33.013710, 37.603828, 37.580513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.250015, 37.634861, 37.552288>,  <33.643856, 37.686584, 37.505245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.250015, 37.634861, 37.552288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027526, -0.779173, -0.626204,
		0.172610, -0.613327, 0.770738,
		-0.984606, -0.129304, 0.117611,
		32.954632, 37.596069, 37.587570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.502609, 36.944973, 37.674744>,  <33.643856, 37.686584, 37.505245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.502609, 36.944973, 37.674744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.156464, 37.104736, 37.553673>,  <32.948776, 37.200596, 37.481030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.156464, 37.104736, 37.553673>,  <33.502609, 36.944973, 37.674744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.156464, 37.104736, 37.553673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213109, -0.839942, -0.499081,
		-0.453572, -0.367384, 0.811974,
		-0.865365, 0.399408, -0.302681,
		32.896854, 37.224560, 37.462868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.019424, 36.366146, 37.586582>,  <33.502609, 36.944973, 37.674744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.019424, 36.366146, 37.586582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.816925, 36.643467, 37.381428>,  <32.695427, 36.809860, 37.258335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.816925, 36.643467, 37.381428>,  <33.019424, 36.366146, 37.586582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.816925, 36.643467, 37.381428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429294, -0.718398, -0.547368,
		-0.747944, -0.056926, 0.661317,
		-0.506248, 0.693299, -0.512883,
		32.665051, 36.851456, 37.227562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.334610, 36.113560, 37.413803>,  <33.019424, 36.366146, 37.586582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.334610, 36.113560, 37.413803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.388393, 36.398788, 37.138569>,  <32.420666, 36.569923, 36.973431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.388393, 36.398788, 37.138569>,  <32.334610, 36.113560, 37.413803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.388393, 36.398788, 37.138569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454376, -0.572715, -0.682305,
		-0.880604, 0.404391, 0.246992,
		0.134462, 0.713067, -0.688081,
		32.428730, 36.612709, 36.932144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.596430, 36.156570, 37.191425>,  <32.334610, 36.113560, 37.413803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.596430, 36.156570, 37.191425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.837742, 36.307438, 36.910343>,  <31.982529, 36.397957, 36.741695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.837742, 36.307438, 36.910343>,  <31.596430, 36.156570, 37.191425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.837742, 36.307438, 36.910343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364970, -0.652867, -0.663748,
		-0.709118, 0.656894, -0.256208,
		0.603282, 0.377167, -0.702706,
		32.018726, 36.420589, 36.699532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.205784, 36.183926, 36.593613>,  <31.596430, 36.156570, 37.191425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.205784, 36.183926, 36.593613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.578819, 36.205128, 36.450802>,  <31.802641, 36.217850, 36.365116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.578819, 36.205128, 36.450802>,  <31.205784, 36.183926, 36.593613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.578819, 36.205128, 36.450802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282277, -0.509335, -0.812956,
		-0.224936, 0.858934, -0.460039,
		0.932590, 0.053004, -0.357025,
		31.858597, 36.221027, 36.343693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.114170, 36.394459, 35.904758>,  <31.205784, 36.183926, 36.593613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.114170, 36.394459, 35.904758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.483143, 36.240047, 35.908756>,  <31.704527, 36.147400, 35.911156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.483143, 36.240047, 35.908756>,  <31.114170, 36.394459, 35.904758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.483143, 36.240047, 35.908756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215219, -0.535414, -0.816709,
		0.320619, 0.751209, -0.576964,
		0.922434, -0.386026, 0.009990,
		31.759872, 36.124241, 35.911755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.475807, 36.415539, 35.140636>,  <31.114170, 36.394459, 35.904758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.475807, 36.415539, 35.140636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.610455, 36.146023, 35.403755>,  <31.691242, 35.984314, 35.561626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.610455, 36.146023, 35.403755>,  <31.475807, 36.415539, 35.140636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.610455, 36.146023, 35.403755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328681, -0.738704, -0.588460,
		0.882416, -0.018120, -0.470121,
		0.336617, -0.673786, 0.657800,
		31.711439, 35.943886, 35.601097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.785606, 35.972004, 34.664410>,  <31.475807, 36.415539, 35.140636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.785606, 35.972004, 34.664410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.753967, 35.800961, 35.024609>,  <31.734983, 35.698334, 35.240726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.753967, 35.800961, 35.024609>,  <31.785606, 35.972004, 34.664410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.753967, 35.800961, 35.024609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384657, -0.820277, -0.423301,
		0.919665, -0.379864, -0.099602,
		-0.079095, -0.427608, 0.900497,
		31.730238, 35.672680, 35.294758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.994812, 35.329559, 34.579834>,  <31.785606, 35.972004, 34.664410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.994812, 35.329559, 34.579834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.811155, 35.327065, 34.935169>,  <31.700960, 35.325565, 35.148373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.811155, 35.327065, 34.935169>,  <31.994812, 35.329559, 34.579834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.811155, 35.327065, 34.935169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621488, -0.712273, -0.326222,
		0.634776, -0.701875, 0.323158,
		-0.459143, -0.006239, 0.888340,
		31.673412, 35.325191, 35.201672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.864208, 34.636177, 34.687405>,  <31.994812, 35.329559, 34.579834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.864208, 34.636177, 34.687405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.599712, 34.798847, 34.939556>,  <31.441015, 34.896450, 35.090847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.599712, 34.798847, 34.939556>,  <31.864208, 34.636177, 34.687405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.599712, 34.798847, 34.939556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624807, -0.763627, -0.162756,
		0.415187, -0.501487, 0.759033,
		-0.661238, 0.406675, 0.630380,
		31.401340, 34.920849, 35.128670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.810787, 34.084312, 35.151665>,  <31.864208, 34.636177, 34.687405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.810787, 34.084312, 35.151665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.476337, 34.303036, 35.169071>,  <31.275667, 34.434269, 35.179516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.476337, 34.303036, 35.169071>,  <31.810787, 34.084312, 35.151665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.476337, 34.303036, 35.169071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546277, -0.822864, -0.156449,
		-0.049744, -0.154581, 0.986727,
		-0.836126, 0.546809, 0.043512,
		31.225500, 34.467079, 35.182125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.332422, 33.667385, 35.554707>,  <31.810787, 34.084312, 35.151665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.332422, 33.667385, 35.554707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.124283, 33.905895, 35.310184>,  <30.999399, 34.049000, 35.163471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.124283, 33.905895, 35.310184>,  <31.332422, 33.667385, 35.554707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.124283, 33.905895, 35.310184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573306, -0.774472, -0.267422,
		-0.632894, 0.211311, 0.744844,
		-0.520351, 0.596273, -0.611305,
		30.968178, 34.084778, 35.126793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.005161, 33.589294, 35.931164>,  <31.332422, 33.667385, 35.554707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.005161, 33.589294, 35.931164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.059326, 33.245625, 35.733791>,  <32.091827, 33.039421, 35.615368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.059326, 33.245625, 35.733791>,  <32.005161, 33.589294, 35.931164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.059326, 33.245625, 35.733791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567232, 0.475557, -0.672380,
		0.812349, -0.188840, 0.551751,
		0.135417, -0.859177, -0.493434,
		32.099953, 32.987873, 35.585762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.594639, 33.300251, 36.445026>,  <32.005161, 33.589294, 35.931164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.594639, 33.300251, 36.445026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.965130, 33.214325, 36.568935>,  <33.187424, 33.162769, 36.643280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.965130, 33.214325, 36.568935>,  <32.594639, 33.300251, 36.445026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.965130, 33.214325, 36.568935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335888, -0.097280, 0.936865,
		-0.171121, -0.971797, -0.162258,
		0.926227, -0.214818, 0.309768,
		33.242996, 33.149879, 36.661865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.590420, 32.574062, 36.799042>,  <32.594639, 33.300251, 36.445026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.590420, 32.574062, 36.799042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.879978, 32.816074, 36.931652>,  <33.053715, 32.961281, 37.011219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.879978, 32.816074, 36.931652>,  <32.590420, 32.574062, 36.799042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.879978, 32.816074, 36.931652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289181, -0.170190, 0.942024,
		0.626374, -0.777802, 0.051762,
		0.723900, 0.605028, 0.331528,
		33.097149, 32.997581, 37.031109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.776760, 32.174854, 37.426117>,  <32.590420, 32.574062, 36.799042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.776760, 32.174854, 37.426117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.889992, 32.557232, 37.457211>,  <32.957932, 32.786659, 37.475868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.889992, 32.557232, 37.457211>,  <32.776760, 32.174854, 37.426117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.889992, 32.557232, 37.457211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236606, -0.008941, 0.971565,
		0.929455, -0.293418, 0.223650,
		0.283075, 0.955942, 0.077734,
		32.974915, 32.844013, 37.480530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.912617, 32.192955, 38.039597>,  <32.776760, 32.174854, 37.426117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.912617, 32.192955, 38.039597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.935173, 32.584759, 37.962254>,  <32.948708, 32.819839, 37.915848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.935173, 32.584759, 37.962254>,  <32.912617, 32.192955, 38.039597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.935173, 32.584759, 37.962254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301057, 0.201329, 0.932111,
		0.951937, 0.005653, 0.306240,
		0.056386, 0.979507, -0.193354,
		32.952087, 32.878613, 37.904247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.257465, 32.564026, 38.587082>,  <32.912617, 32.192955, 38.039597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.257465, 32.564026, 38.587082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.041756, 32.855881, 38.418888>,  <32.912331, 33.030994, 38.317970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.041756, 32.855881, 38.418888>,  <33.257465, 32.564026, 38.587082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.041756, 32.855881, 38.418888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332320, 0.274407, 0.902366,
		0.773787, 0.626358, 0.094493,
		-0.539275, 0.729641, -0.420484,
		32.879974, 33.074772, 38.292744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.245564, 33.101303, 39.011051>,  <33.257465, 32.564026, 38.587082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.245564, 33.101303, 39.011051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.924309, 33.215397, 38.801823>,  <32.731556, 33.283855, 38.676285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.924309, 33.215397, 38.801823>,  <33.245564, 33.101303, 39.011051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.924309, 33.215397, 38.801823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382832, 0.425644, 0.819918,
		0.456515, 0.858759, -0.232653,
		-0.803140, 0.285238, -0.523074,
		32.683369, 33.300968, 38.644901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.162300, 33.840492, 39.129971>,  <33.245564, 33.101303, 39.011051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.162300, 33.840492, 39.129971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.811489, 33.695793, 39.003502>,  <32.601002, 33.608974, 38.927620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.811489, 33.695793, 39.003502>,  <33.162300, 33.840492, 39.129971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.811489, 33.695793, 39.003502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471210, 0.519253, 0.712978,
		-0.093748, 0.774282, -0.625858,
		-0.877025, -0.361751, -0.316171,
		32.548382, 33.587269, 38.908649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.734219, 34.458691, 39.109173>,  <33.162300, 33.840492, 39.129971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.734219, 34.458691, 39.109173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.478970, 34.151012, 39.122673>,  <32.325821, 33.966408, 39.130772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.478970, 34.151012, 39.122673>,  <32.734219, 34.458691, 39.109173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.478970, 34.151012, 39.122673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542217, 0.480079, 0.689583,
		-0.546625, 0.421741, -0.723420,
		-0.638124, -0.769194, 0.033747,
		32.287533, 33.920254, 39.132797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.010506, 34.638210, 39.014874>,  <32.734219, 34.458691, 39.109173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.010506, 34.638210, 39.014874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.945341, 34.291801, 39.203964>,  <31.906242, 34.083958, 39.317417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.945341, 34.291801, 39.203964>,  <32.010506, 34.638210, 39.014874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.945341, 34.291801, 39.203964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512106, 0.483754, 0.709739,
		-0.843331, -0.126463, -0.522302,
		-0.162910, -0.866019, 0.472727,
		31.896467, 34.031994, 39.345783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.315752, 34.718586, 39.321819>,  <32.010506, 34.638210, 39.014874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.315752, 34.718586, 39.321819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.498922, 34.408276, 39.495480>,  <31.608824, 34.222092, 39.599674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.498922, 34.408276, 39.495480>,  <31.315752, 34.718586, 39.321819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.498922, 34.408276, 39.495480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434737, 0.230565, 0.870542,
		-0.775441, -0.587383, -0.231675,
		0.457925, -0.775771, 0.434147,
		31.636299, 34.175545, 39.625725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.784184, 34.472828, 39.787060>,  <31.315752, 34.718586, 39.321819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.784184, 34.472828, 39.787060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.118576, 34.292759, 39.912590>,  <31.319212, 34.184719, 39.987907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.118576, 34.292759, 39.912590>,  <30.784184, 34.472828, 39.787060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.118576, 34.292759, 39.912590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190153, 0.298810, 0.935176,
		-0.514762, -0.841463, 0.164197,
		0.835980, -0.450170, 0.313823,
		31.369370, 34.157707, 40.006737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.630575, 34.054527, 40.374947>,  <30.784184, 34.472828, 39.787060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.630575, 34.054527, 40.374947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.012604, 34.171787, 40.392422>,  <31.241821, 34.242142, 40.402905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.012604, 34.171787, 40.392422>,  <30.630575, 34.054527, 40.374947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.012604, 34.171787, 40.392422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176582, 0.444426, 0.878240,
		0.238036, -0.846494, 0.476221,
		0.955069, 0.293144, 0.043686,
		31.299124, 34.259731, 40.405529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.894480, 33.813011, 41.057178>,  <30.630575, 34.054527, 40.374947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.894480, 33.813011, 41.057178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.152079, 34.091705, 40.930794>,  <31.306637, 34.258923, 40.854961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.152079, 34.091705, 40.930794>,  <30.894480, 33.813011, 41.057178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.152079, 34.091705, 40.930794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067965, 0.463482, 0.883496,
		0.762005, -0.547493, 0.345833,
		0.643995, 0.696733, -0.315965,
		31.345278, 34.300724, 40.836006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.225260, 34.020454, 41.648308>,  <30.894480, 33.813011, 41.057178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.225260, 34.020454, 41.648308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.340845, 34.306934, 41.394203>,  <31.410196, 34.478825, 41.241741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.340845, 34.306934, 41.394203>,  <31.225260, 34.020454, 41.648308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.340845, 34.306934, 41.394203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106075, 0.683433, 0.722265,
		0.951446, -0.141322, 0.273458,
		0.288962, 0.716203, -0.635259,
		31.427534, 34.521793, 41.203625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.850204, 34.376900, 41.918007>,  <31.225260, 34.020454, 41.648308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.850204, 34.376900, 41.918007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.656965, 34.642437, 41.689648>,  <31.541021, 34.801762, 41.552631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.656965, 34.642437, 41.689648>,  <31.850204, 34.376900, 41.918007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.656965, 34.642437, 41.689648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139883, 0.585140, 0.798776,
		0.864320, 0.465746, -0.189819,
		-0.483097, 0.663846, -0.570898,
		31.512035, 34.841591, 41.518379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.149273, 34.969475, 42.121895>,  <31.850204, 34.376900, 41.918007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.149273, 34.969475, 42.121895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.826580, 35.123821, 41.942883>,  <31.632963, 35.216431, 41.835476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.826580, 35.123821, 41.942883>,  <32.149273, 34.969475, 42.121895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.826580, 35.123821, 41.942883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091206, 0.666973, 0.739479,
		0.583831, 0.637382, -0.502877,
		-0.806736, 0.385865, -0.447533,
		31.584558, 35.239582, 41.808624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.286743, 35.672668, 42.072865>,  <32.149273, 34.969475, 42.121895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.286743, 35.672668, 42.072865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.889570, 35.630337, 42.051357>,  <31.651268, 35.604939, 42.038452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.889570, 35.630337, 42.051357>,  <32.286743, 35.672668, 42.072865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.889570, 35.630337, 42.051357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116845, 0.791346, 0.600098,
		-0.020958, 0.602138, -0.798117,
		-0.992929, -0.105832, -0.053772,
		31.591692, 35.598587, 42.035225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.005020, 36.301952, 41.922775>,  <32.286743, 35.672668, 42.072865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.005020, 36.301952, 41.922775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.702448, 36.092487, 42.079536>,  <31.520905, 35.966808, 42.173595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.702448, 36.092487, 42.079536>,  <32.005020, 36.301952, 41.922775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.702448, 36.092487, 42.079536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249277, 0.784759, 0.567463,
		-0.604712, 0.331552, -0.724152,
		-0.756428, -0.523666, 0.391905,
		31.475519, 35.935387, 42.197109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.420412, 36.808407, 42.035103>,  <32.005020, 36.301952, 41.922775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.420412, 36.808407, 42.035103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.297039, 36.504105, 42.263531>,  <31.223015, 36.321522, 42.400585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.297039, 36.504105, 42.263531>,  <31.420412, 36.808407, 42.035103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.297039, 36.504105, 42.263531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393685, 0.648594, 0.651412,
		-0.865957, -0.023904, -0.499547,
		-0.308432, -0.760759, 0.571065,
		31.204510, 36.275875, 42.434849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.759357, 37.037704, 42.303902>,  <31.420412, 36.808407, 42.035103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.759357, 37.037704, 42.303902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.887808, 36.745003, 42.544373>,  <30.964878, 36.569382, 42.688656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.887808, 36.745003, 42.544373>,  <30.759357, 37.037704, 42.303902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.887808, 36.745003, 42.544373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200651, 0.567817, 0.798325,
		-0.925536, -0.376990, 0.035513,
		0.321125, -0.731753, 0.601179,
		30.984146, 36.525478, 42.724728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.138588, 37.026161, 42.856583>,  <30.759357, 37.037704, 42.303902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.138588, 37.026161, 42.856583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.458765, 36.837914, 43.005070>,  <30.650871, 36.724964, 43.094162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.458765, 36.837914, 43.005070>,  <30.138588, 37.026161, 42.856583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.458765, 36.837914, 43.005070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106547, 0.497737, 0.860759,
		-0.589861, -0.728543, 0.348267,
		0.800445, -0.470621, 0.371219,
		30.698898, 36.696728, 43.116436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.942045, 36.721874, 43.499249>,  <30.138588, 37.026161, 42.856583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.942045, 36.721874, 43.499249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.337765, 36.780045, 43.494450>,  <30.575195, 36.814945, 43.491570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.337765, 36.780045, 43.494450>,  <29.942045, 36.721874, 43.499249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.337765, 36.780045, 43.494450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081692, 0.620114, 0.780247,
		0.120907, -0.770915, 0.625357,
		0.989297, 0.145424, -0.011999,
		30.634554, 36.823673, 43.490849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.101149, 36.579754, 44.115891>,  <29.942045, 36.721874, 43.499249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.101149, 36.579754, 44.115891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.418116, 36.794594, 44.000233>,  <30.608295, 36.923496, 43.930836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.418116, 36.794594, 44.000233>,  <30.101149, 36.579754, 44.115891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.418116, 36.794594, 44.000233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084169, 0.565769, 0.820257,
		0.604147, -0.625646, 0.493531,
		0.792415, 0.537096, -0.289148,
		30.655840, 36.955723, 43.913490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.531132, 36.686939, 44.692200>,  <30.101149, 36.579754, 44.115891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.531132, 36.686939, 44.692200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.643412, 36.977432, 44.441185>,  <30.710779, 37.151726, 44.290577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.643412, 36.977432, 44.441185>,  <30.531132, 36.686939, 44.692200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.643412, 36.977432, 44.441185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004751, 0.654865, 0.755731,
		0.959784, -0.209151, 0.187269,
		0.280698, 0.726229, -0.627536,
		30.727621, 37.195301, 44.252926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.918461, 37.193596, 45.159828>,  <30.531132, 36.686939, 44.692200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.918461, 37.193596, 45.159828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.880859, 37.407345, 44.823826>,  <30.858299, 37.535595, 44.622223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.880859, 37.407345, 44.823826>,  <30.918461, 37.193596, 45.159828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.880859, 37.407345, 44.823826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145083, 0.827381, 0.542579,
		0.984944, 0.172875, -0.000248,
		-0.094003, 0.534374, -0.840005,
		30.852659, 37.567657, 44.571823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.202681, 37.820526, 45.287659>,  <30.918461, 37.193596, 45.159828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.202681, 37.820526, 45.287659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.009235, 37.923321, 44.952976>,  <30.893169, 37.984997, 44.752167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.009235, 37.923321, 44.952976>,  <31.202681, 37.820526, 45.287659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.009235, 37.923321, 44.952976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206055, 0.895633, 0.394185,
		0.850683, 0.363040, -0.380185,
		-0.483611, 0.256988, -0.836706,
		30.864153, 38.000416, 44.701965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.491884, 38.510910, 44.960331>,  <31.202681, 37.820526, 45.287659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.491884, 38.510910, 44.960331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.100788, 38.456379, 44.896530>,  <30.866131, 38.423660, 44.858250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.100788, 38.456379, 44.896530>,  <31.491884, 38.510910, 44.960331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.100788, 38.456379, 44.896530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181513, 0.930871, 0.317069,
		0.105252, 0.338963, -0.934894,
		-0.977740, -0.136323, -0.159502,
		30.807467, 38.415482, 44.848679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.159180, 38.653614, 44.733543>,  <31.491884, 38.510910, 44.960331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.159180, 38.653614, 44.733543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.461170, 38.665112, 44.995594>,  <32.642365, 38.672009, 45.152824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.461170, 38.665112, 44.995594>,  <32.159180, 38.653614, 44.733543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.461170, 38.665112, 44.995594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429945, -0.776035, -0.461429,
		0.495137, 0.630035, -0.598243,
		0.754974, 0.028741, 0.655124,
		32.687664, 38.673733, 45.192131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.758450, 38.761974, 44.284454>,  <32.159180, 38.653614, 44.733543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.758450, 38.761974, 44.284454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.870880, 38.584393, 44.624786>,  <32.938339, 38.477844, 44.828983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.870880, 38.584393, 44.624786>,  <32.758450, 38.761974, 44.284454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.870880, 38.584393, 44.624786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533769, -0.664466, -0.523044,
		0.797551, 0.601158, 0.050204,
		0.281074, -0.443952, 0.850826,
		32.955204, 38.451206, 44.880035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.523094, 38.623802, 44.202366>,  <32.758450, 38.761974, 44.284454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.523094, 38.623802, 44.202366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.414444, 38.383137, 44.502823>,  <33.349255, 38.238735, 44.683098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.414444, 38.383137, 44.502823>,  <33.523094, 38.623802, 44.202366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.414444, 38.383137, 44.502823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600488, -0.715879, -0.356273,
		0.752085, 0.354278, 0.555747,
		-0.271628, -0.601668, 0.751142,
		33.332954, 38.202637, 44.728165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.069935, 38.477779, 44.692657>,  <33.523094, 38.623802, 44.202366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.069935, 38.477779, 44.692657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.802414, 38.180763, 44.677986>,  <33.641903, 38.002556, 44.669182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.802414, 38.180763, 44.677986>,  <34.069935, 38.477779, 44.692657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.802414, 38.180763, 44.677986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661419, -0.571758, -0.485406,
		0.339458, -0.348902, 0.873519,
		-0.668800, -0.742537, -0.036682,
		33.601772, 37.958004, 44.666981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.452023, 37.919991, 44.849300>,  <34.069935, 38.477779, 44.692657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.452023, 37.919991, 44.849300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.125710, 37.791000, 44.657253>,  <33.929924, 37.713604, 44.542027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.125710, 37.791000, 44.657253>,  <34.452023, 37.919991, 44.849300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.125710, 37.791000, 44.657253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552866, -0.678570, -0.483615,
		-0.169837, -0.659962, 0.731851,
		-0.815779, -0.322480, -0.480117,
		33.880978, 37.694256, 44.513218>
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
