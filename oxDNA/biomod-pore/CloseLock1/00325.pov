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
	<24.275389, 35.322838, 34.732571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.381729, 35.119122, 35.059971>,  <24.445534, 34.996891, 35.256413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.381729, 35.119122, 35.059971>,  <24.275389, 35.322838, 34.732571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.381729, 35.119122, 35.059971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858870, -0.260459, -0.441025,
		0.437797, 0.820234, 0.368172,
		0.265850, -0.509291, 0.818503,
		24.461485, 34.966335, 35.305523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.992241, 35.535496, 35.033215>,  <24.275389, 35.322838, 34.732571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.992241, 35.535496, 35.033215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.884230, 35.151066, 35.056622>,  <24.819424, 34.920410, 35.070667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.884230, 35.151066, 35.056622>,  <24.992241, 35.535496, 35.033215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.884230, 35.151066, 35.056622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900951, -0.273639, -0.336764,
		0.339667, -0.038213, 0.939769,
		-0.270026, -0.961073, 0.058518,
		24.803223, 34.862743, 35.074177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.557751, 35.186291, 35.339394>,  <24.992241, 35.535496, 35.033215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.557751, 35.186291, 35.339394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.363928, 34.895016, 35.145508>,  <25.247635, 34.720249, 35.029175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.363928, 34.895016, 35.145508>,  <25.557751, 35.186291, 35.339394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.363928, 34.895016, 35.145508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855245, -0.277973, -0.437364,
		0.183745, -0.626477, 0.757472,
		-0.484556, -0.728188, -0.484715,
		25.218561, 34.676559, 35.000092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.293455, 35.177174, 35.388039>,  <25.557751, 35.186291, 35.339394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.293455, 35.177174, 35.388039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.588644, 34.912712, 35.333965>,  <26.765759, 34.754036, 35.301521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.588644, 34.912712, 35.333965>,  <26.293455, 35.177174, 35.388039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.588644, 34.912712, 35.333965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647684, 0.637687, 0.416966,
		-0.189475, -0.395264, 0.898813,
		0.737974, -0.661152, -0.135180,
		26.810036, 34.714367, 35.293411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.698210, 35.068295, 36.007980>,  <26.293455, 35.177174, 35.388039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.698210, 35.068295, 36.007980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.954292, 34.949436, 35.724617>,  <27.107943, 34.878120, 35.554600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.954292, 34.949436, 35.724617>,  <26.698210, 35.068295, 36.007980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.954292, 34.949436, 35.724617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691490, 0.624601, 0.362927,
		0.334630, -0.722205, 0.605346,
		0.640207, -0.297144, -0.708407,
		27.146355, 34.860294, 35.512096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.463659, 34.938889, 36.264297>,  <26.698210, 35.068295, 36.007980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.463659, 34.938889, 36.264297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.498991, 34.980553, 35.868046>,  <27.520191, 35.005550, 35.630295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.498991, 34.980553, 35.868046>,  <27.463659, 34.938889, 36.264297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.498991, 34.980553, 35.868046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685200, 0.715482, 0.136329,
		0.722979, -0.690822, -0.008174,
		0.088331, 0.104164, -0.990630,
		27.525490, 35.011803, 35.570858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.236576, 34.720554, 36.172043>,  <27.463659, 34.938889, 36.264297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.236576, 34.720554, 36.172043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.128746, 34.920570, 35.842854>,  <28.064049, 35.040581, 35.645340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.128746, 34.920570, 35.842854>,  <28.236576, 34.720554, 36.172043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.128746, 34.920570, 35.842854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857773, 0.513105, 0.030793,
		0.437670, -0.697624, -0.567244,
		-0.269574, 0.500044, -0.822974,
		28.047874, 35.070583, 35.595963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.740986, 34.679401, 35.666672>,  <28.236576, 34.720554, 36.172043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.740986, 34.679401, 35.666672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.541998, 35.014141, 35.575272>,  <28.422606, 35.214985, 35.520432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.541998, 35.014141, 35.575272>,  <28.740986, 34.679401, 35.666672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.541998, 35.014141, 35.575272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866479, 0.466687, -0.177251,
		-0.041691, -0.286171, -0.957271,
		-0.497470, 0.836845, -0.228505,
		28.392757, 35.265194, 35.506721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.205523, 34.998562, 35.068634>,  <28.740986, 34.679401, 35.666672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.205523, 34.998562, 35.068634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.993942, 35.304409, 35.215916>,  <28.866995, 35.487919, 35.304283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.993942, 35.304409, 35.215916>,  <29.205523, 34.998562, 35.068634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.993942, 35.304409, 35.215916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715865, 0.635024, -0.290314,
		-0.455797, 0.110023, -0.883258,
		-0.528949, 0.764617, 0.368204,
		28.835258, 35.533794, 35.326378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.396021, 35.513340, 34.614620>,  <29.205523, 34.998562, 35.068634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.396021, 35.513340, 34.614620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.238228, 35.726093, 34.914349>,  <29.143553, 35.853745, 35.094185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.238228, 35.726093, 34.914349>,  <29.396021, 35.513340, 34.614620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.238228, 35.726093, 34.914349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602385, 0.765477, -0.226223,
		-0.693914, 0.362141, -0.622364,
		-0.394481, 0.531883, 0.749323,
		29.119884, 35.885658, 35.139145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.498194, 36.201504, 34.360516>,  <29.396021, 35.513340, 34.614620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.498194, 36.201504, 34.360516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.418661, 36.239178, 34.750713>,  <29.370941, 36.261784, 34.984833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.418661, 36.239178, 34.750713>,  <29.498194, 36.201504, 34.360516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.418661, 36.239178, 34.750713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647055, 0.760197, 0.058488,
		-0.736061, 0.642830, -0.212094,
		-0.198831, 0.094186, 0.975497,
		29.359013, 36.267433, 35.043362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.347458, 36.899860, 34.382607>,  <29.498194, 36.201504, 34.360516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.347458, 36.899860, 34.382607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.449829, 36.764721, 34.744900>,  <29.511251, 36.683636, 34.962276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.449829, 36.764721, 34.744900>,  <29.347458, 36.899860, 34.382607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.449829, 36.764721, 34.744900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712871, 0.698790, 0.059224,
		-0.652928, 0.630516, 0.419684,
		0.255930, -0.337850, 0.905736,
		29.526608, 36.663364, 35.016621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.457359, 37.513191, 34.788082>,  <29.347458, 36.899860, 34.382607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.457359, 37.513191, 34.788082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.632093, 37.219074, 34.995361>,  <29.736933, 37.042606, 35.119728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.632093, 37.219074, 34.995361>,  <29.457359, 37.513191, 34.788082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.632093, 37.219074, 34.995361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802065, 0.579191, 0.145706,
		-0.407269, 0.351976, 0.842760,
		0.436834, -0.735290, 0.518194,
		29.763144, 36.998486, 35.150818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.793392, 37.897282, 35.349014>,  <29.457359, 37.513191, 34.788082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.793392, 37.897282, 35.349014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.989622, 37.549057, 35.333759>,  <30.107359, 37.340122, 35.324608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.989622, 37.549057, 35.333759>,  <29.793392, 37.897282, 35.349014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.989622, 37.549057, 35.333759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871299, 0.489380, 0.036683,
		-0.013273, -0.051222, 0.998599,
		0.490573, -0.870565, -0.038134,
		30.136793, 37.287888, 35.322319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.312862, 37.879745, 35.877464>,  <29.793392, 37.897282, 35.349014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.312862, 37.879745, 35.877464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.428217, 37.627201, 35.589516>,  <30.497429, 37.475674, 35.416748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.428217, 37.627201, 35.589516>,  <30.312862, 37.879745, 35.877464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.428217, 37.627201, 35.589516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911810, 0.410580, 0.005179,
		0.292294, -0.657879, 0.694089,
		0.288386, -0.631364, -0.719870,
		30.514732, 37.437794, 35.373554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.909851, 37.350231, 36.150135>,  <30.312862, 37.879745, 35.877464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.909851, 37.350231, 36.150135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.956657, 37.398163, 35.755787>,  <30.984741, 37.426922, 35.519176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.956657, 37.398163, 35.755787>,  <30.909851, 37.350231, 36.150135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.956657, 37.398163, 35.755787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945558, 0.290112, 0.147494,
		0.303689, -0.949460, -0.079361,
		0.117016, 0.119832, -0.985874,
		30.991762, 37.434113, 35.460026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.586824, 37.331802, 36.111198>,  <30.909851, 37.350231, 36.150135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.586824, 37.331802, 36.111198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.519201, 37.421837, 35.727375>,  <31.478628, 37.475857, 35.497082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.519201, 37.421837, 35.727375>,  <31.586824, 37.331802, 36.111198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.519201, 37.421837, 35.727375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921652, 0.381090, -0.072987,
		0.349251, -0.896721, -0.271874,
		-0.169058, 0.225082, -0.959561,
		31.468485, 37.489361, 35.439507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.230404, 37.163147, 35.791859>,  <31.586824, 37.331802, 36.111198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.230404, 37.163147, 35.791859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.029839, 37.415321, 35.554832>,  <31.909500, 37.566628, 35.412617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.029839, 37.415321, 35.554832>,  <32.230404, 37.163147, 35.791859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.029839, 37.415321, 35.554832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858039, 0.450317, -0.246948,
		0.111160, -0.632270, -0.766732,
		-0.501410, 0.630435, -0.592570,
		31.879416, 37.604450, 35.377060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.531925, 37.227600, 35.040600>,  <32.230404, 37.163147, 35.791859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.531925, 37.227600, 35.040600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.319332, 37.561123, 35.100327>,  <32.191776, 37.761238, 35.136162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.319332, 37.561123, 35.100327>,  <32.531925, 37.227600, 35.040600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.319332, 37.561123, 35.100327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775186, 0.549824, -0.311094,
		-0.341491, -0.049591, -0.938576,
		-0.531479, 0.833807, 0.149318,
		32.159889, 37.811264, 35.145123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.540028, 37.655773, 34.379234>,  <32.531925, 37.227600, 35.040600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.540028, 37.655773, 34.379234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.483311, 37.906818, 34.685436>,  <32.449280, 38.057446, 34.869160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.483311, 37.906818, 34.685436>,  <32.540028, 37.655773, 34.379234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.483311, 37.906818, 34.685436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704803, 0.607020, -0.367122,
		-0.695087, 0.487477, -0.528413,
		-0.141794, 0.627609, 0.765507,
		32.440773, 38.095100, 34.915089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.769150, 38.250607, 34.058666>,  <32.540028, 37.655773, 34.379234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.769150, 38.250607, 34.058666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.774136, 38.379955, 34.437141>,  <32.777126, 38.457565, 34.664227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.774136, 38.379955, 34.437141>,  <32.769150, 38.250607, 34.058666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.774136, 38.379955, 34.437141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723521, 0.650235, -0.231758,
		-0.690189, 0.687479, -0.225858,
		0.012468, 0.323370, 0.946190,
		32.777878, 38.476967, 34.720997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.712833, 38.968044, 34.039101>,  <32.769150, 38.250607, 34.058666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.712833, 38.968044, 34.039101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.878521, 38.872574, 34.390430>,  <32.977932, 38.815292, 34.601231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.878521, 38.872574, 34.390430>,  <32.712833, 38.968044, 34.039101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.878521, 38.872574, 34.390430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830324, 0.494355, -0.257248,
		-0.372807, 0.835852, 0.402947,
		0.414220, -0.238673, 0.878327,
		33.002789, 38.800972, 34.653927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.896523, 39.601498, 34.393692>,  <32.712833, 38.968044, 34.039101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.896523, 39.601498, 34.393692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.149906, 39.342648, 34.563377>,  <33.301937, 39.187340, 34.665188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.149906, 39.342648, 34.563377>,  <32.896523, 39.601498, 34.393692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.149906, 39.342648, 34.563377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752117, 0.643749, -0.141093,
		-0.181783, 0.408436, 0.894503,
		0.633462, -0.647123, 0.424214,
		33.339947, 39.148510, 34.690643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.253265, 39.955074, 34.775936>,  <32.896523, 39.601498, 34.393692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.253265, 39.955074, 34.775936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.469147, 39.622917, 34.720562>,  <33.598675, 39.423622, 34.687336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.469147, 39.622917, 34.720562>,  <33.253265, 39.955074, 34.775936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.469147, 39.622917, 34.720562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814327, 0.556653, -0.164344,
		0.213532, -0.024035, 0.976641,
		0.539700, -0.830397, -0.138436,
		33.631058, 39.373798, 34.679031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.814495, 39.969738, 35.312687>,  <33.253265, 39.955074, 34.775936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.814495, 39.969738, 35.312687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.960575, 39.769318, 34.998852>,  <34.048222, 39.649067, 34.810551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.960575, 39.769318, 34.998852>,  <33.814495, 39.969738, 35.312687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.960575, 39.769318, 34.998852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840065, 0.540547, 0.045822,
		0.401148, -0.675840, 0.618321,
		0.365200, -0.501048, -0.784589,
		34.070137, 39.619003, 34.763474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.493530, 39.841244, 35.481251>,  <33.814495, 39.969738, 35.312687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.493530, 39.841244, 35.481251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.462536, 39.786530, 35.086224>,  <34.443939, 39.753700, 34.849209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.462536, 39.786530, 35.086224>,  <34.493530, 39.841244, 35.481251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.462536, 39.786530, 35.086224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848091, 0.511722, -0.137415,
		0.524155, -0.848193, 0.076353,
		-0.077483, -0.136781, -0.987566,
		34.439289, 39.745495, 34.789955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.117237, 39.429306, 35.135128>,  <34.493530, 39.841244, 35.481251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.117237, 39.429306, 35.135128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.928032, 39.700863, 34.910496>,  <34.814510, 39.863796, 34.775719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.928032, 39.700863, 34.910496>,  <35.117237, 39.429306, 35.135128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.928032, 39.700863, 34.910496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814081, 0.580528, 0.016114,
		0.336951, -0.449546, -0.827268,
		-0.473008, 0.678893, -0.561576,
		34.786129, 39.904530, 34.742023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.522629, 39.534344, 34.463348>,  <35.117237, 39.429306, 35.135128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.522629, 39.534344, 34.463348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.308228, 39.859207, 34.555523>,  <35.179585, 40.054123, 34.610828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.308228, 39.859207, 34.555523>,  <35.522629, 39.534344, 34.463348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.308228, 39.859207, 34.555523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776651, 0.581380, -0.242509,
		-0.330925, 0.048980, -0.942385,
		-0.536006, 0.812156, 0.230434,
		35.147427, 40.102856, 34.624653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.172607, 39.439327, 34.751911>,  <35.522629, 39.534344, 34.463348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.172607, 39.439327, 34.751911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.967079, 39.481358, 35.092487>,  <35.843761, 39.506577, 35.296833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.967079, 39.481358, 35.092487>,  <36.172607, 39.439327, 34.751911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.967079, 39.481358, 35.092487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706434, 0.511304, -0.489407,
		-0.486768, -0.852953, -0.188490,
		-0.513817, 0.105072, 0.851441,
		35.812935, 39.512878, 35.347919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.454250, 39.995003, 34.392273>,  <36.172607, 39.439327, 34.751911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.454250, 39.995003, 34.392273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.432362, 40.012764, 33.993267>,  <36.419228, 40.023422, 33.753864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.432362, 40.012764, 33.993267>,  <36.454250, 39.995003, 34.392273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.432362, 40.012764, 33.993267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.914441, -0.403435, 0.032206,
		-0.401002, 0.913930, 0.062682,
		-0.054722, 0.044405, -0.997514,
		36.415943, 40.026085, 33.694012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.748035, 40.073212, 34.045933>,  <36.454250, 39.995003, 34.392273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.748035, 40.073212, 34.045933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.925804, 39.926826, 33.718868>,  <36.032463, 39.838997, 33.522629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.925804, 39.926826, 33.718868>,  <35.748035, 40.073212, 34.045933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.925804, 39.926826, 33.718868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840777, -0.485412, -0.239729,
		-0.309170, 0.794007, -0.523418,
		0.444420, -0.365961, -0.817657,
		36.059132, 39.817039, 33.473572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.175751, 39.723225, 33.752850>,  <35.748035, 40.073212, 34.045933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.175751, 39.723225, 33.752850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.491268, 39.644428, 33.519958>,  <35.680580, 39.597153, 33.380222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.491268, 39.644428, 33.519958>,  <35.175751, 39.723225, 33.752850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.491268, 39.644428, 33.519958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498274, -0.759566, -0.418070,
		-0.359890, 0.619884, -0.697298,
		0.788798, -0.196986, -0.582232,
		35.727909, 39.585331, 33.345287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.161285, 39.726353, 33.010601>,  <35.175751, 39.723225, 33.752850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.161285, 39.726353, 33.010601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.403461, 39.423492, 33.108719>,  <35.548767, 39.241776, 33.167587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.403461, 39.423492, 33.108719>,  <35.161285, 39.726353, 33.010601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.403461, 39.423492, 33.108719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749202, -0.646188, -0.145383,
		0.268580, -0.095752, -0.958486,
		0.605442, -0.757147, 0.245291,
		35.585094, 39.196350, 33.182304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.157299, 39.313389, 32.429729>,  <35.161285, 39.726353, 33.010601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.157299, 39.313389, 32.429729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.244881, 39.101589, 32.757557>,  <35.297428, 38.974510, 32.954254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.244881, 39.101589, 32.757557>,  <35.157299, 39.313389, 32.429729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.244881, 39.101589, 32.757557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758527, -0.620711, -0.198382,
		0.613757, -0.578228, -0.537544,
		0.218950, -0.529500, 0.819568,
		35.310566, 38.942738, 33.003426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.441479, 38.584824, 32.265339>,  <35.157299, 39.313389, 32.429729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.441479, 38.584824, 32.265339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.290665, 38.580280, 32.635792>,  <35.200176, 38.577553, 32.858063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.290665, 38.580280, 32.635792>,  <35.441479, 38.584824, 32.265339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.290665, 38.580280, 32.635792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538019, -0.811236, -0.228979,
		0.753912, -0.584608, 0.299750,
		-0.377031, -0.011359, 0.926131,
		35.177555, 38.576874, 32.913631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.421909, 37.857479, 32.532299>,  <35.441479, 38.584824, 32.265339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.421909, 37.857479, 32.532299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.144108, 38.082607, 32.711586>,  <34.977428, 38.217682, 32.819160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.144108, 38.082607, 32.711586>,  <35.421909, 37.857479, 32.532299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.144108, 38.082607, 32.711586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604273, -0.794421, 0.061228,
		0.390536, -0.228325, 0.891823,
		-0.694503, 0.562817, 0.448221,
		34.935757, 38.251453, 32.846050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.197754, 37.456657, 33.061417>,  <35.421909, 37.857479, 32.532299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.197754, 37.456657, 33.061417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.901455, 37.725372, 33.062275>,  <34.723675, 37.886600, 33.062790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.901455, 37.725372, 33.062275>,  <35.197754, 37.456657, 33.061417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.901455, 37.725372, 33.062275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654739, -0.722659, 0.221540,
		0.150381, 0.162696, 0.975149,
		-0.740744, 0.671784, 0.002150,
		34.679230, 37.926907, 33.062920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.836105, 37.415977, 33.687462>,  <35.197754, 37.456657, 33.061417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.836105, 37.415977, 33.687462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.590523, 37.586330, 33.421627>,  <34.443172, 37.688541, 33.262127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.590523, 37.586330, 33.421627>,  <34.836105, 37.415977, 33.687462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.590523, 37.586330, 33.421627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725660, -0.635842, 0.262912,
		-0.310605, 0.643684, 0.699426,
		-0.613956, 0.425884, -0.664591,
		34.406338, 37.714096, 33.222248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.285286, 37.551727, 34.023865>,  <34.836105, 37.415977, 33.687462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.285286, 37.551727, 34.023865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.156319, 37.522385, 33.646366>,  <34.078938, 37.504780, 33.419865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.156319, 37.522385, 33.646366>,  <34.285286, 37.551727, 34.023865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.156319, 37.522385, 33.646366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665835, -0.691085, 0.281187,
		-0.672838, 0.719042, 0.173976,
		-0.322418, -0.073354, -0.943751,
		34.059593, 37.500378, 33.363239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.450508, 37.528648, 34.056999>,  <34.285286, 37.551727, 34.023865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.450508, 37.528648, 34.056999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.537605, 37.397865, 33.689156>,  <33.589863, 37.319397, 33.468449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.537605, 37.397865, 33.689156>,  <33.450508, 37.528648, 34.056999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.537605, 37.397865, 33.689156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747357, -0.661855, 0.058355,
		-0.627729, 0.674573, -0.388468,
		0.217745, -0.326956, -0.919613,
		33.602928, 37.299778, 33.413273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.822453, 37.531918, 33.715034>,  <33.450508, 37.528648, 34.056999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.822453, 37.531918, 33.715034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.070133, 37.286339, 33.519215>,  <33.218742, 37.138992, 33.401722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.070133, 37.286339, 33.519215>,  <32.822453, 37.531918, 33.715034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.070133, 37.286339, 33.519215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737073, -0.669417, -0.092763,
		-0.270759, 0.418271, -0.867029,
		0.619204, -0.613947, -0.489546,
		33.255894, 37.102154, 33.372349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.438248, 37.199261, 33.207111>,  <32.822453, 37.531918, 33.715034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.438248, 37.199261, 33.207111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.753254, 36.954391, 33.235577>,  <32.942257, 36.807468, 33.252655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.753254, 36.954391, 33.235577>,  <32.438248, 37.199261, 33.207111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.753254, 36.954391, 33.235577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613770, -0.789485, 0.000678,
		0.055764, -0.044210, -0.997465,
		0.787513, -0.612176, 0.071159,
		32.989510, 36.770741, 33.256924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.353634, 36.657486, 32.667725>,  <32.438248, 37.199261, 33.207111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.353634, 36.657486, 32.667725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.613251, 36.521194, 32.939800>,  <32.769020, 36.439419, 33.103046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.613251, 36.521194, 32.939800>,  <32.353634, 36.657486, 32.667725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.613251, 36.521194, 32.939800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517961, -0.852771, 0.067065,
		0.557193, -0.395838, -0.729964,
		0.649039, -0.340725, 0.680187,
		32.807964, 36.418976, 33.143856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.354813, 35.946716, 32.468742>,  <32.353634, 36.657486, 32.667725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.354813, 35.946716, 32.468742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.487370, 35.998791, 32.842529>,  <32.566906, 36.030037, 33.066803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.487370, 35.998791, 32.842529>,  <32.354813, 35.946716, 32.468742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.487370, 35.998791, 32.842529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376111, -0.890107, 0.257389,
		0.865285, -0.436761, -0.246013,
		0.331395, 0.130187, 0.934467,
		32.586788, 36.037846, 33.122868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.779408, 35.322613, 32.667854>,  <32.354813, 35.946716, 32.468742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.779408, 35.322613, 32.667854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.650372, 35.478287, 33.012985>,  <32.572948, 35.571690, 33.220062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.650372, 35.478287, 33.012985>,  <32.779408, 35.322613, 32.667854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.650372, 35.478287, 33.012985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447222, -0.866065, 0.223437,
		0.834223, -0.313797, 0.453435,
		-0.322590, 0.389182, 0.862828,
		32.553596, 35.595043, 33.271835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.742397, 34.755829, 33.137753>,  <32.779408, 35.322613, 32.667854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.742397, 34.755829, 33.137753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.503845, 35.029057, 33.306396>,  <32.360714, 35.192993, 33.407581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.503845, 35.029057, 33.306396>,  <32.742397, 34.755829, 33.137753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.503845, 35.029057, 33.306396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648769, -0.719462, 0.247938,
		0.472688, -0.125660, 0.872224,
		-0.596376, 0.683069, 0.421606,
		32.324932, 35.233978, 33.432877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.434887, 34.438805, 33.660221>,  <32.742397, 34.755829, 33.137753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.434887, 34.438805, 33.660221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.202248, 34.762257, 33.624752>,  <32.062664, 34.956329, 33.603470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.202248, 34.762257, 33.624752>,  <32.434887, 34.438805, 33.660221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.202248, 34.762257, 33.624752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786963, -0.531686, 0.313049,
		0.205997, 0.251847, 0.945589,
		-0.581597, 0.808630, -0.088669,
		32.027767, 35.004845, 33.598152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.010296, 34.480282, 34.362514>,  <32.434887, 34.438805, 33.660221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.010296, 34.480282, 34.362514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.819948, 34.713528, 34.099144>,  <31.705738, 34.853477, 33.941124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.819948, 34.713528, 34.099144>,  <32.010296, 34.480282, 34.362514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.819948, 34.713528, 34.099144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.879503, -0.319376, 0.352808,
		-0.004557, 0.746977, 0.664834,
		-0.475872, 0.583116, -0.658424,
		31.677187, 34.888462, 33.901615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.396839, 34.712410, 34.754272>,  <32.010296, 34.480282, 34.362514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.396839, 34.712410, 34.754272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.318096, 34.806805, 34.373631>,  <31.270851, 34.863441, 34.145245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.318096, 34.806805, 34.373631>,  <31.396839, 34.712410, 34.754272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.318096, 34.806805, 34.373631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.962271, -0.232456, 0.141416,
		-0.187834, 0.943544, 0.272843,
		-0.196856, 0.235986, -0.951608,
		31.259039, 34.877602, 34.088146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.815718, 35.042950, 34.730976>,  <31.396839, 34.712410, 34.754272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.815718, 35.042950, 34.730976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.818745, 34.881557, 34.364994>,  <30.820560, 34.784721, 34.145405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.818745, 34.881557, 34.364994>,  <30.815718, 35.042950, 34.730976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.818745, 34.881557, 34.364994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870611, -0.452765, 0.192460,
		-0.491914, 0.795115, -0.354702,
		0.007569, -0.403481, -0.914957,
		30.821016, 34.760513, 34.090508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.223591, 35.178928, 34.472370>,  <30.815718, 35.042950, 34.730976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.223591, 35.178928, 34.472370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.342402, 34.890930, 34.221493>,  <30.413687, 34.718132, 34.070965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.342402, 34.890930, 34.221493>,  <30.223591, 35.178928, 34.472370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.342402, 34.890930, 34.221493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.904756, -0.422205, 0.056206,
		-0.305275, 0.550766, -0.776829,
		0.297024, -0.719999, -0.627198,
		30.431509, 34.674931, 34.033333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.674356, 35.067108, 34.017269>,  <30.223591, 35.178928, 34.472370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.674356, 35.067108, 34.017269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.872044, 34.732277, 33.923416>,  <29.990656, 34.531380, 33.867104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.872044, 34.732277, 33.923416>,  <29.674356, 35.067108, 34.017269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.872044, 34.732277, 33.923416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867744, -0.491341, -0.074860,
		-0.052620, 0.240596, -0.969198,
		0.494218, -0.837077, -0.234631,
		30.020309, 34.481155, 33.853027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.412952, 34.862114, 33.356529>,  <29.674356, 35.067108, 34.017269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.412952, 34.862114, 33.356529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.577105, 34.544369, 33.535671>,  <29.675596, 34.353722, 33.643158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.577105, 34.544369, 33.535671>,  <29.412952, 34.862114, 33.356529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.577105, 34.544369, 33.535671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872384, -0.485014, -0.060884,
		0.265581, -0.365720, -0.892029,
		0.410380, -0.794362, 0.447859,
		29.700218, 34.306061, 33.670029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.306753, 34.153214, 32.939800>,  <29.412952, 34.862114, 33.356529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.306753, 34.153214, 32.939800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.349583, 34.062977, 33.327129>,  <29.375280, 34.008835, 33.559525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.349583, 34.062977, 33.327129>,  <29.306753, 34.153214, 32.939800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.349583, 34.062977, 33.327129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778832, -0.624419, -0.059347,
		0.618026, -0.747804, -0.242555,
		0.107076, -0.225588, 0.968321,
		29.381706, 33.995300, 33.617626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.054165, 33.499744, 32.963470>,  <29.306753, 34.153214, 32.939800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.054165, 33.499744, 32.963470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.060070, 33.611134, 33.347603>,  <29.063612, 33.677967, 33.578083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.060070, 33.611134, 33.347603>,  <29.054165, 33.499744, 32.963470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.060070, 33.611134, 33.347603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709514, -0.673818, 0.206297,
		0.704536, -0.684414, 0.187635,
		0.014761, 0.278473, 0.960330,
		29.064499, 33.694675, 33.635700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.089746, 32.829033, 33.335472>,  <29.054165, 33.499744, 32.963470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.089746, 32.829033, 33.335472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.989775, 33.086521, 33.624790>,  <28.929792, 33.241016, 33.798382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.989775, 33.086521, 33.624790>,  <29.089746, 32.829033, 33.335472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.989775, 33.086521, 33.624790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591324, -0.692994, 0.412427,
		0.766728, -0.324625, 0.553848,
		-0.249929, 0.643723, 0.723296,
		28.914797, 33.279636, 33.841778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.169701, 32.613304, 34.037506>,  <29.089746, 32.829033, 33.335472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.169701, 32.613304, 34.037506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.881563, 32.890739, 34.040276>,  <28.708681, 33.057201, 34.041939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.881563, 32.890739, 34.040276>,  <29.169701, 32.613304, 34.037506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.881563, 32.890739, 34.040276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611793, -0.640035, 0.464827,
		0.326828, 0.330599, 0.885375,
		-0.720342, 0.693585, 0.006923,
		28.665461, 33.098816, 34.042351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.978806, 32.719059, 34.649250>,  <29.169701, 32.613304, 34.037506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.978806, 32.719059, 34.649250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.694017, 32.737057, 34.368942>,  <28.523146, 32.747856, 34.200760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.694017, 32.737057, 34.368942>,  <28.978806, 32.719059, 34.649250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.694017, 32.737057, 34.368942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564925, -0.629438, 0.533543,
		-0.417084, 0.775747, 0.473558,
		-0.711969, 0.044992, -0.700768,
		28.480427, 32.750553, 34.158710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.310799, 33.037296, 35.276131>,  <28.978806, 32.719059, 34.649250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.310799, 33.037296, 35.276131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.539989, 32.717571, 35.348564>,  <29.677504, 32.525734, 35.392025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.539989, 32.717571, 35.348564>,  <29.310799, 33.037296, 35.276131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.539989, 32.717571, 35.348564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615501, 0.273778, -0.739056,
		0.541163, 0.534919, 0.648848,
		0.572976, -0.799317, 0.181084,
		29.711882, 32.477776, 35.402889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.950697, 33.276531, 35.566593>,  <29.310799, 33.037296, 35.276131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.950697, 33.276531, 35.566593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.947180, 33.675117, 35.533192>,  <29.945070, 33.914268, 35.513149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.947180, 33.675117, 35.533192>,  <29.950697, 33.276531, 35.566593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.947180, 33.675117, 35.533192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334362, 0.081630, 0.938903,
		0.942404, -0.019667, -0.333899,
		-0.008791, 0.996469, -0.083504,
		29.944542, 33.974056, 35.508141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.506779, 33.485134, 35.993542>,  <29.950697, 33.276531, 35.566593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.506779, 33.485134, 35.993542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.238430, 33.781754, 35.991261>,  <30.077421, 33.959724, 35.989891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.238430, 33.781754, 35.991261>,  <30.506779, 33.485134, 35.993542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.238430, 33.781754, 35.991261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363052, 0.335134, 0.869413,
		0.646624, 0.581196, -0.494053,
		-0.670873, 0.741550, -0.005701,
		30.037169, 34.004219, 35.989552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.803431, 34.273849, 36.008926>,  <30.506779, 33.485134, 35.993542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.803431, 34.273849, 36.008926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.440395, 34.251015, 36.175312>,  <30.222574, 34.237312, 36.275143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.440395, 34.251015, 36.175312>,  <30.803431, 34.273849, 36.008926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.440395, 34.251015, 36.175312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344560, 0.464863, 0.815586,
		-0.239930, 0.883540, -0.402232,
		-0.907586, -0.057090, 0.415967,
		30.168119, 34.233887, 36.300102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.449665, 34.910328, 36.153141>,  <30.803431, 34.273849, 36.008926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.449665, 34.910328, 36.153141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.323551, 34.651875, 36.431164>,  <30.247883, 34.496803, 36.597977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.323551, 34.651875, 36.431164>,  <30.449665, 34.910328, 36.153141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.323551, 34.651875, 36.431164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336327, 0.608799, 0.718504,
		-0.887400, 0.460302, 0.025365,
		-0.315287, -0.646132, 0.695060,
		30.228966, 34.458035, 36.639683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.949596, 35.262558, 36.728352>,  <30.449665, 34.910328, 36.153141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.949596, 35.262558, 36.728352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.125978, 34.942596, 36.891182>,  <30.231808, 34.750618, 36.988880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.125978, 34.942596, 36.891182>,  <29.949596, 35.262558, 36.728352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.125978, 34.942596, 36.891182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243879, 0.543274, 0.803353,
		-0.863760, -0.254965, 0.434639,
		0.440955, -0.799904, 0.407077,
		30.258265, 34.702625, 37.013306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.686569, 35.205544, 37.368954>,  <29.949596, 35.262558, 36.728352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.686569, 35.205544, 37.368954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.022644, 34.993011, 37.412361>,  <30.224289, 34.865494, 37.438404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.022644, 34.993011, 37.412361>,  <29.686569, 35.205544, 37.368954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.022644, 34.993011, 37.412361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224475, 0.522903, 0.822304,
		-0.493657, -0.666530, 0.558606,
		0.840186, -0.531330, 0.108515,
		30.274700, 34.833614, 37.444916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.745476, 35.080845, 38.219021>,  <29.686569, 35.205544, 37.368954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.745476, 35.080845, 38.219021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.097876, 34.988441, 38.053864>,  <30.309315, 34.932999, 37.954769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.097876, 34.988441, 38.053864>,  <29.745476, 35.080845, 38.219021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.097876, 34.988441, 38.053864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471063, 0.509588, 0.720014,
		0.044075, -0.828828, 0.557765,
		0.880998, -0.231007, -0.412890,
		30.362175, 34.919140, 37.929996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.119987, 34.742653, 38.725819>,  <29.745476, 35.080845, 38.219021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.119987, 34.742653, 38.725819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.384604, 34.905430, 38.473862>,  <30.543373, 35.003098, 38.322689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.384604, 34.905430, 38.473862>,  <30.119987, 34.742653, 38.725819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.384604, 34.905430, 38.473862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352745, 0.572362, 0.740252,
		0.661767, -0.711896, 0.235092,
		0.661540, 0.406947, -0.629888,
		30.583065, 35.027515, 38.284897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.826572, 34.711830, 39.065506>,  <30.119987, 34.742653, 38.725819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.826572, 34.711830, 39.065506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.892830, 34.985725, 38.781620>,  <30.932585, 35.150063, 38.611290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.892830, 34.985725, 38.781620>,  <30.826572, 34.711830, 39.065506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.892830, 34.985725, 38.781620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557737, 0.528465, 0.640042,
		0.813321, -0.501854, -0.294367,
		0.165645, 0.684739, -0.709714,
		30.942524, 35.191147, 38.568707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.557158, 34.843983, 39.027290>,  <30.826572, 34.711830, 39.065506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.557158, 34.843983, 39.027290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.400948, 35.170494, 38.857029>,  <31.307222, 35.366402, 38.754871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.400948, 35.170494, 38.857029>,  <31.557158, 34.843983, 39.027290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.400948, 35.170494, 38.857029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555187, 0.577656, 0.598398,
		0.734342, -0.002631, -0.678774,
		-0.390523, 0.816276, -0.425658,
		31.283791, 35.415379, 38.729332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.051403, 35.285095, 38.893806>,  <31.557158, 34.843983, 39.027290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.051403, 35.285095, 38.893806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.730705, 35.523956, 38.883961>,  <31.538286, 35.667274, 38.878052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.730705, 35.523956, 38.883961>,  <32.051403, 35.285095, 38.893806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.730705, 35.523956, 38.883961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432895, 0.608619, 0.664970,
		0.412073, 0.522482, -0.746464,
		-0.801747, 0.597157, -0.024616,
		31.490181, 35.703102, 38.876575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.300533, 35.922340, 39.020206>,  <32.051403, 35.285095, 38.893806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.300533, 35.922340, 39.020206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.914772, 35.958294, 39.119678>,  <31.683315, 35.979866, 39.179363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.914772, 35.958294, 39.119678>,  <32.300533, 35.922340, 39.020206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.914772, 35.958294, 39.119678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263434, 0.408026, 0.874138,
		-0.022895, 0.908535, -0.417181,
		-0.964406, 0.089886, 0.248681,
		31.625450, 35.985260, 39.194283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.204655, 36.610722, 39.280815>,  <32.300533, 35.922340, 39.020206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.204655, 36.610722, 39.280815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.882250, 36.423698, 39.426003>,  <31.688808, 36.311485, 39.513115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.882250, 36.423698, 39.426003>,  <32.204655, 36.610722, 39.280815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.882250, 36.423698, 39.426003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206396, 0.352722, 0.912681,
		-0.554754, 0.810544, -0.187796,
		-0.806008, -0.467553, 0.362967,
		31.640448, 36.283432, 39.534893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.051445, 37.124207, 39.765179>,  <32.204655, 36.610722, 39.280815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.051445, 37.124207, 39.765179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.871391, 36.780762, 39.863297>,  <31.763359, 36.574696, 39.922169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.871391, 36.780762, 39.863297>,  <32.051445, 37.124207, 39.765179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.871391, 36.780762, 39.863297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174574, 0.184781, 0.967150,
		-0.875731, 0.478169, 0.066715,
		-0.450133, -0.858610, 0.245294,
		31.736351, 36.523178, 39.936886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.562899, 37.290993, 40.388565>,  <32.051445, 37.124207, 39.765179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.562899, 37.290993, 40.388565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.649546, 36.900936, 40.407238>,  <31.701534, 36.666901, 40.418442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.649546, 36.900936, 40.407238>,  <31.562899, 37.290993, 40.388565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.649546, 36.900936, 40.407238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025835, 0.053524, 0.998232,
		-0.975915, -0.215027, 0.036786,
		0.216615, -0.975140, 0.046679,
		31.714531, 36.608395, 40.421242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.029537, 36.990395, 40.860104>,  <31.562899, 37.290993, 40.388565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.029537, 36.990395, 40.860104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.351446, 36.753532, 40.876579>,  <31.544592, 36.611416, 40.886463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.351446, 36.753532, 40.876579>,  <31.029537, 36.990395, 40.860104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.351446, 36.753532, 40.876579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090181, -0.053388, 0.994493,
		-0.586695, -0.804054, -0.096367,
		0.804771, -0.592155, 0.041188,
		31.592878, 36.575886, 40.888935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.880903, 36.526955, 41.345356>,  <31.029537, 36.990395, 40.860104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.880903, 36.526955, 41.345356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.273346, 36.455818, 41.314899>,  <31.508812, 36.413136, 41.296627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.273346, 36.455818, 41.314899>,  <30.880903, 36.526955, 41.345356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.273346, 36.455818, 41.314899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034021, -0.228816, 0.972875,
		-0.190437, -0.957087, -0.218443,
		0.981109, -0.177840, -0.076137,
		31.567678, 36.402466, 41.292057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.124914, 35.749031, 41.586884>,  <30.880903, 36.526955, 41.345356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.124914, 35.749031, 41.586884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.442871, 35.989063, 41.622757>,  <31.633646, 36.133083, 41.644283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.442871, 35.989063, 41.622757>,  <31.124914, 35.749031, 41.586884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.442871, 35.989063, 41.622757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232553, -0.437845, 0.868453,
		0.560415, -0.669470, -0.487591,
		0.794893, 0.600084, 0.089688,
		31.681339, 36.169090, 41.649662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.725290, 35.290195, 41.786770>,  <31.124914, 35.749031, 41.586884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.725290, 35.290195, 41.786770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.806639, 35.660957, 41.912941>,  <31.855448, 35.883415, 41.988644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.806639, 35.660957, 41.912941>,  <31.725290, 35.290195, 41.786770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.806639, 35.660957, 41.912941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120064, -0.343336, 0.931507,
		0.971712, -0.151571, -0.181113,
		0.203372, 0.926901, 0.315426,
		31.867651, 35.939030, 42.007568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.278606, 35.266705, 42.322166>,  <31.725290, 35.290195, 41.786770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.278606, 35.266705, 42.322166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.113239, 35.626076, 42.381386>,  <32.014019, 35.841698, 42.416920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.113239, 35.626076, 42.381386>,  <32.278606, 35.266705, 42.322166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.113239, 35.626076, 42.381386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068926, -0.131253, 0.988950,
		0.907928, 0.419056, -0.007663,
		-0.413420, 0.898423, 0.148052,
		31.989214, 35.895603, 42.425800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.795856, 35.666267, 42.769825>,  <32.278606, 35.266705, 42.322166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.795856, 35.666267, 42.769825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.413425, 35.774040, 42.816010>,  <32.183968, 35.838703, 42.843719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.413425, 35.774040, 42.816010>,  <32.795856, 35.666267, 42.769825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.413425, 35.774040, 42.816010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095573, -0.085833, 0.991715,
		0.277108, 0.959187, 0.056313,
		-0.956074, 0.269430, 0.115457,
		32.126602, 35.854870, 42.850647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.771503, 36.189445, 43.330688>,  <32.795856, 35.666267, 42.769825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.771503, 36.189445, 43.330688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.383102, 36.094688, 43.317760>,  <32.150063, 36.037834, 43.310001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.383102, 36.094688, 43.317760>,  <32.771503, 36.189445, 43.330688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.383102, 36.094688, 43.317760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006075, -0.159594, 0.987164,
		-0.239010, 0.958338, 0.156404,
		-0.970998, -0.236893, -0.032322,
		32.091805, 36.023621, 43.308064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.451721, 36.585133, 43.823425>,  <32.771503, 36.189445, 43.330688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.451721, 36.585133, 43.823425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.215458, 36.268360, 43.761494>,  <32.073700, 36.078297, 43.724335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.215458, 36.268360, 43.761494>,  <32.451721, 36.585133, 43.823425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.215458, 36.268360, 43.761494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107769, -0.112740, 0.987763,
		-0.799695, 0.600114, -0.018755,
		-0.590656, -0.791930, -0.154831,
		32.038261, 36.030781, 43.715046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.922209, 36.771805, 44.284351>,  <32.451721, 36.585133, 43.823425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.922209, 36.771805, 44.284351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.906488, 36.379200, 44.209423>,  <31.897057, 36.143639, 44.164467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.906488, 36.379200, 44.209423>,  <31.922209, 36.771805, 44.284351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.906488, 36.379200, 44.209423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142533, -0.180042, 0.973278,
		-0.989010, 0.064952, -0.132821,
		-0.039303, -0.981512, -0.187320,
		31.894697, 36.084747, 44.153229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.356226, 36.579185, 44.627125>,  <31.922209, 36.771805, 44.284351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.356226, 36.579185, 44.627125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.573648, 36.248856, 44.567032>,  <31.704102, 36.050659, 44.530975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.573648, 36.248856, 44.567032>,  <31.356226, 36.579185, 44.627125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.573648, 36.248856, 44.567032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046416, -0.208276, 0.976968,
		-0.838089, -0.524063, -0.151541,
		0.543555, -0.825820, -0.150229,
		31.736715, 36.001110, 44.521965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.999781, 36.192162, 45.018578>,  <31.356226, 36.579185, 44.627125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.999781, 36.192162, 45.018578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.352745, 36.012142, 44.963722>,  <31.564524, 35.904129, 44.930809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.352745, 36.012142, 44.963722>,  <30.999781, 36.192162, 45.018578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.352745, 36.012142, 44.963722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055085, -0.388306, 0.919883,
		-0.467242, -0.804161, -0.367436,
		0.882412, -0.450049, -0.137136,
		31.617468, 35.877129, 44.922581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.035662, 35.385025, 45.194141>,  <30.999781, 36.192162, 45.018578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.035662, 35.385025, 45.194141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.416655, 35.500416, 45.233253>,  <31.645250, 35.569649, 45.256721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.416655, 35.500416, 45.233253>,  <31.035662, 35.385025, 45.194141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.416655, 35.500416, 45.233253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048533, -0.173175, 0.983695,
		0.300703, -0.941697, -0.150946,
		0.952482, 0.288474, 0.097777,
		31.702400, 35.586956, 45.262589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.351242, 34.834805, 45.542076>,  <31.035662, 35.385025, 45.194141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.351242, 34.834805, 45.542076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.622475, 35.125763, 45.584229>,  <31.785215, 35.300339, 45.609520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.622475, 35.125763, 45.584229>,  <31.351242, 34.834805, 45.542076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.622475, 35.125763, 45.584229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128675, -0.258647, 0.957363,
		0.723635, -0.635612, -0.268981,
		0.678082, 0.727393, 0.105379,
		31.825899, 35.343979, 45.615841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.854639, 34.533974, 45.979347>,  <31.351242, 34.834805, 45.542076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.854639, 34.533974, 45.979347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.889257, 34.930058, 46.023140>,  <31.910028, 35.167709, 46.049416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.889257, 34.930058, 46.023140>,  <31.854639, 34.533974, 45.979347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.889257, 34.930058, 46.023140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049063, -0.113997, 0.992269,
		0.995039, -0.080507, -0.058449,
		0.086547, 0.990214, 0.109482,
		31.915222, 35.227123, 46.055984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.384892, 34.613285, 46.424847>,  <31.854639, 34.533974, 45.979347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.384892, 34.613285, 46.424847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.163101, 34.944702, 46.456020>,  <32.030025, 35.143551, 46.474724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.163101, 34.944702, 46.456020>,  <32.384892, 34.613285, 46.424847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.163101, 34.944702, 46.456020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052638, -0.058545, 0.996896,
		0.830532, 0.556860, -0.011150,
		-0.554479, 0.828541, 0.077936,
		31.996758, 35.193264, 46.479401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.819324, 35.055443, 46.764404>,  <32.384892, 34.613285, 46.424847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.819324, 35.055443, 46.764404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.462078, 35.225334, 46.823669>,  <32.247730, 35.327271, 46.859230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.462078, 35.225334, 46.823669>,  <32.819324, 35.055443, 46.764404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.462078, 35.225334, 46.823669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207823, 0.097470, 0.973298,
		0.398948, 0.900057, -0.175320,
		-0.893113, 0.424731, 0.148167,
		32.194145, 35.352753, 46.868118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.978401, 35.695129, 47.165344>,  <32.819324, 35.055443, 46.764404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.978401, 35.695129, 47.165344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.594402, 35.600391, 47.225086>,  <32.364002, 35.543549, 47.260929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.594402, 35.600391, 47.225086>,  <32.978401, 35.695129, 47.165344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.594402, 35.600391, 47.225086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112160, 0.163459, 0.980154,
		-0.256555, 0.957699, -0.130357,
		-0.960000, -0.236843, 0.149352,
		32.306404, 35.529339, 47.269890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.712177, 36.245461, 47.620842>,  <32.978401, 35.695129, 47.165344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.712177, 36.245461, 47.620842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.479267, 35.922871, 47.661919>,  <32.339520, 35.729317, 47.686565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.479267, 35.922871, 47.661919>,  <32.712177, 36.245461, 47.620842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.479267, 35.922871, 47.661919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011586, 0.118069, 0.992938,
		-0.812909, 0.579354, -0.059405,
		-0.582276, -0.806479, 0.102692,
		32.304585, 35.680927, 47.692726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.211887, 36.444092, 48.142532>,  <32.712177, 36.245461, 47.620842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.211887, 36.444092, 48.142532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.209618, 36.044144, 48.136509>,  <32.208256, 35.804176, 48.132893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.209618, 36.044144, 48.136509>,  <32.211887, 36.444092, 48.142532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.209618, 36.044144, 48.136509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157891, -0.013977, 0.987358,
		-0.987440, 0.007979, -0.157791,
		-0.005673, -0.999871, -0.015061,
		32.207916, 35.744183, 48.131992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.767218, 36.308434, 48.681301>,  <32.211887, 36.444092, 48.142532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.767218, 36.308434, 48.681301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.931829, 35.951183, 48.608677>,  <32.030598, 35.736832, 48.565102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.931829, 35.951183, 48.608677>,  <31.767218, 36.308434, 48.681301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.931829, 35.951183, 48.608677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023691, -0.209624, 0.977495,
		-0.911088, -0.397968, -0.107426,
		0.411531, -0.893129, -0.181558,
		32.055290, 35.683243, 48.554211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.400389, 35.909439, 49.081257>,  <31.767218, 36.308434, 48.681301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.400389, 35.909439, 49.081257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.729675, 35.694237, 49.008739>,  <31.927248, 35.565117, 48.965229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.729675, 35.694237, 49.008739>,  <31.400389, 35.909439, 49.081257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.729675, 35.694237, 49.008739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235428, 0.032915, 0.971334,
		-0.516613, -0.842301, 0.153757,
		0.823216, -0.538002, -0.181297,
		31.976641, 35.532837, 48.954350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.348192, 35.326717, 49.479683>,  <31.400389, 35.909439, 49.081257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.348192, 35.326717, 49.479683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.729164, 35.434769, 49.423241>,  <31.957747, 35.499599, 49.389378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.729164, 35.434769, 49.423241>,  <31.348192, 35.326717, 49.479683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.729164, 35.434769, 49.423241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171325, -0.091670, 0.980941,
		0.252049, -0.958449, -0.133589,
		0.952428, 0.270132, -0.141101,
		32.014893, 35.515808, 49.380909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.710987, 34.937374, 50.042137>,  <31.348192, 35.326717, 49.479683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.710987, 34.937374, 50.042137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.980177, 35.193459, 49.893955>,  <32.141689, 35.347107, 49.805046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.980177, 35.193459, 49.893955>,  <31.710987, 34.937374, 50.042137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.980177, 35.193459, 49.893955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381208, 0.129006, 0.915444,
		0.633866, -0.757292, -0.157235,
		0.672974, 0.640208, -0.370458,
		32.182068, 35.385521, 49.782818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.293976, 34.714153, 50.329174>,  <31.710987, 34.937374, 50.042137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.293976, 34.714153, 50.329174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.382568, 35.092964, 50.236145>,  <32.435722, 35.320251, 50.180328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.382568, 35.092964, 50.236145>,  <32.293976, 34.714153, 50.329174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.382568, 35.092964, 50.236145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467245, 0.106276, 0.877718,
		0.855938, -0.303062, -0.418955,
		0.221478, 0.947026, -0.232570,
		32.449013, 35.377071, 50.166374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.008266, 34.848240, 50.567856>,  <32.293976, 34.714153, 50.329174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.008266, 34.848240, 50.567856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.853161, 35.212994, 50.514034>,  <32.760098, 35.431847, 50.481743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.853161, 35.212994, 50.514034>,  <33.008266, 34.848240, 50.567856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.853161, 35.212994, 50.514034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362439, 0.285054, 0.887345,
		0.847511, 0.295317, -0.441037,
		-0.387767, 0.911884, -0.134552,
		32.736832, 35.486557, 50.473667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.503643, 35.244011, 50.713478>,  <33.008266, 34.848240, 50.567856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.503643, 35.244011, 50.713478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.174644, 35.465088, 50.767193>,  <32.977245, 35.597733, 50.799423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.174644, 35.465088, 50.767193>,  <33.503643, 35.244011, 50.713478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.174644, 35.465088, 50.767193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325337, 0.263497, 0.908144,
		0.466540, 0.790632, -0.396536,
		-0.822494, 0.552693, 0.134290,
		32.927895, 35.630898, 50.807480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.768169, 35.859009, 51.051952>,  <33.503643, 35.244011, 50.713478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.768169, 35.859009, 51.051952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.378235, 35.800564, 51.119305>,  <33.144276, 35.765495, 51.159718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.378235, 35.800564, 51.119305>,  <33.768169, 35.859009, 51.051952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.378235, 35.800564, 51.119305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148330, 0.138745, 0.979157,
		-0.166429, 0.979490, -0.113580,
		-0.974833, -0.146113, 0.168379,
		33.085785, 35.756729, 51.169819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.604221, 36.397457, 51.560356>,  <33.768169, 35.859009, 51.051952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.604221, 36.397457, 51.560356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.316566, 36.122303, 51.599659>,  <33.143974, 35.957211, 51.623241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.316566, 36.122303, 51.599659>,  <33.604221, 36.397457, 51.560356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.316566, 36.122303, 51.599659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025864, 0.114811, 0.993051,
		-0.694388, 0.716680, -0.064774,
		-0.719136, -0.687887, 0.098259,
		33.100826, 35.915936, 51.629135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.347424, 36.587334, 52.201599>,  <33.604221, 36.397457, 51.560356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.347424, 36.587334, 52.201599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.166096, 36.234417, 52.150902>,  <33.057301, 36.022667, 52.120483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.166096, 36.234417, 52.150902>,  <33.347424, 36.587334, 52.201599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.166096, 36.234417, 52.150902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101675, -0.192452, 0.976025,
		-0.885532, 0.429560, 0.176948,
		-0.453315, -0.882293, -0.126747,
		33.030102, 35.969730, 52.112877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.860699, 36.549534, 52.840221>,  <33.347424, 36.587334, 52.201599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.860699, 36.549534, 52.840221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.946114, 36.200790, 52.663918>,  <32.997364, 35.991547, 52.558136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.946114, 36.200790, 52.663918>,  <32.860699, 36.549534, 52.840221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.946114, 36.200790, 52.663918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159284, -0.414057, 0.896206,
		-0.963862, -0.261581, 0.050455,
		0.213539, -0.871856, -0.440759,
		33.010174, 35.939232, 52.531689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.644199, 36.055351, 53.329796>,  <32.860699, 36.549534, 52.840221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.644199, 36.055351, 53.329796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.904083, 35.880718, 53.080872>,  <33.060013, 35.775936, 52.931519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.904083, 35.880718, 53.080872>,  <32.644199, 36.055351, 53.329796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.904083, 35.880718, 53.080872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338303, -0.567040, 0.751010,
		-0.680756, -0.698467, -0.220713,
		0.649709, -0.436587, -0.622310,
		33.098995, 35.749741, 52.894180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.663643, 35.277767, 53.303699>,  <32.644199, 36.055351, 53.329796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.663643, 35.277767, 53.303699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.028542, 35.430038, 53.243176>,  <33.247478, 35.521400, 53.206860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.028542, 35.430038, 53.243176>,  <32.663643, 35.277767, 53.303699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.028542, 35.430038, 53.243176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353922, -0.546422, 0.759054,
		0.206273, -0.745996, -0.633200,
		0.912245, 0.380675, -0.151312,
		33.302216, 35.544243, 53.197781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.067047, 34.707256, 53.267231>,  <32.663643, 35.277767, 53.303699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.067047, 34.707256, 53.267231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.262096, 35.028095, 53.405140>,  <33.379124, 35.220600, 53.487885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.262096, 35.028095, 53.405140>,  <33.067047, 34.707256, 53.267231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.262096, 35.028095, 53.405140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111482, -0.448874, 0.886614,
		0.865910, -0.393894, -0.308298,
		0.487618, 0.802097, 0.344772,
		33.408382, 35.268726, 53.508572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.762470, 34.557758, 53.464527>,  <33.067047, 34.707256, 53.267231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.762470, 34.557758, 53.464527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.603104, 34.846027, 53.691467>,  <33.507484, 35.018990, 53.827633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.603104, 34.846027, 53.691467>,  <33.762470, 34.557758, 53.464527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.603104, 34.846027, 53.691467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056919, -0.597946, 0.799513,
		0.915435, 0.350835, 0.197213,
		-0.398420, 0.720677, 0.567350,
		33.483578, 35.062229, 53.861671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.218346, 34.739277, 53.881821>,  <33.762470, 34.557758, 53.464527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.218346, 34.739277, 53.881821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.851505, 34.756016, 54.040405>,  <33.631401, 34.766060, 54.135555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.851505, 34.756016, 54.040405>,  <34.218346, 34.739277, 53.881821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.851505, 34.756016, 54.040405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184718, -0.836678, 0.515606,
		0.353288, 0.546095, 0.759584,
		-0.917097, 0.041849, 0.396462,
		33.576378, 34.768570, 54.159344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.183041, 34.829247, 54.656914>,  <34.218346, 34.739277, 53.881821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.183041, 34.829247, 54.656914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.887573, 34.619652, 54.487297>,  <33.710293, 34.493896, 54.385529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.887573, 34.619652, 54.487297>,  <34.183041, 34.829247, 54.656914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.887573, 34.619652, 54.487297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252377, -0.798301, 0.546829,
		-0.625041, 0.296908, 0.721921,
		-0.738668, -0.523986, -0.424038,
		33.665974, 34.462456, 54.360085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.740017, 34.548244, 54.999725>,  <34.183041, 34.829247, 54.656914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.740017, 34.548244, 54.999725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.134109, 34.490532, 54.962837>,  <35.370564, 34.455906, 54.940704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.134109, 34.490532, 54.962837>,  <34.740017, 34.548244, 54.999725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.134109, 34.490532, 54.962837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124121, -0.230737, -0.965067,
		0.117962, 0.962260, -0.245237,
		0.985230, -0.144280, -0.092218,
		35.429680, 34.447247, 54.935173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.932594, 34.832809, 54.403412>,  <34.740017, 34.548244, 54.999725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.932594, 34.832809, 54.403412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.204655, 34.547546, 54.471306>,  <35.367889, 34.376389, 54.512043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.204655, 34.547546, 54.471306>,  <34.932594, 34.832809, 54.403412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.204655, 34.547546, 54.471306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168385, -0.377335, -0.910640,
		0.713475, 0.590788, -0.376727,
		0.680147, -0.713154, 0.169739,
		35.408699, 34.333599, 54.522228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.365788, 34.845783, 53.821720>,  <34.932594, 34.832809, 54.403412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.365788, 34.845783, 53.821720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.354111, 34.485985, 53.996101>,  <35.347103, 34.270107, 54.100731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.354111, 34.485985, 53.996101>,  <35.365788, 34.845783, 53.821720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.354111, 34.485985, 53.996101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204720, -0.421514, -0.883411,
		0.978385, -0.115036, -0.171841,
		-0.029191, -0.899496, 0.435953,
		35.345352, 34.216137, 54.126888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.653400, 34.375088, 53.361046>,  <35.365788, 34.845783, 53.821720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.653400, 34.375088, 53.361046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.427658, 34.151123, 53.603699>,  <35.292213, 34.016743, 53.749290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.427658, 34.151123, 53.603699>,  <35.653400, 34.375088, 53.361046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.427658, 34.151123, 53.603699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270005, -0.569226, -0.776582,
		0.780128, -0.602062, 0.170066,
		-0.564356, -0.559914, 0.606629,
		35.258350, 33.983150, 53.785686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.980377, 33.626617, 53.428272>,  <35.653400, 34.375088, 53.361046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.980377, 33.626617, 53.428272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.594181, 33.729568, 53.444157>,  <35.362461, 33.791340, 53.453690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.594181, 33.729568, 53.444157>,  <35.980377, 33.626617, 53.428272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.594181, 33.729568, 53.444157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158953, -0.461603, -0.872729,
		-0.206292, -0.848927, 0.486586,
		-0.965494, 0.257381, 0.039714,
		35.304535, 33.806782, 53.456070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.524563, 33.062183, 53.420799>,  <35.980377, 33.626617, 53.428272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.524563, 33.062183, 53.420799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.339138, 33.367241, 53.240364>,  <35.227882, 33.550278, 53.132103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.339138, 33.367241, 53.240364>,  <35.524563, 33.062183, 53.420799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.339138, 33.367241, 53.240364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071180, -0.539496, -0.838974,
		-0.883201, -0.356809, 0.304375,
		-0.463562, 0.762648, -0.451085,
		35.200069, 33.596035, 53.105038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.126247, 32.741680, 52.946625>,  <35.524563, 33.062183, 53.420799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.126247, 32.741680, 52.946625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.056736, 33.103416, 52.790691>,  <35.015030, 33.320457, 52.697132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.056736, 33.103416, 52.790691>,  <35.126247, 32.741680, 52.946625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.056736, 33.103416, 52.790691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189520, -0.419165, -0.887909,
		-0.966376, -0.080419, 0.244233,
		-0.173778, 0.904341, -0.389830,
		35.004601, 33.374718, 52.673744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.584553, 32.687965, 52.461407>,  <35.126247, 32.741680, 52.946625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.584553, 32.687965, 52.461407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.746723, 33.038887, 52.358673>,  <34.844025, 33.249439, 52.297035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.746723, 33.038887, 52.358673>,  <34.584553, 32.687965, 52.461407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.746723, 33.038887, 52.358673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049515, -0.301622, -0.952141,
		-0.912787, 0.373303, -0.165724,
		0.405423, 0.877308, -0.256832,
		34.868351, 33.302078, 52.281624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.144901, 32.886707, 51.896660>,  <34.584553, 32.687965, 52.461407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.144901, 32.886707, 51.896660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.491646, 33.082558, 51.859104>,  <34.699692, 33.200069, 51.836571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.491646, 33.082558, 51.859104>,  <34.144901, 32.886707, 51.896660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.491646, 33.082558, 51.859104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056047, -0.282840, -0.957528,
		-0.495387, 0.824783, -0.272626,
		0.866862, 0.489627, -0.093888,
		34.751705, 33.229446, 51.830936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.015900, 33.428795, 51.326828>,  <34.144901, 32.886707, 51.896660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.015900, 33.428795, 51.326828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.407387, 33.347553, 51.338596>,  <34.642277, 33.298809, 51.345657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.407387, 33.347553, 51.338596>,  <34.015900, 33.428795, 51.326828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.407387, 33.347553, 51.338596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008007, -0.181046, -0.983442,
		0.205064, 0.962275, -0.178819,
		0.978716, -0.203100, 0.029421,
		34.701000, 33.286625, 51.347424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.387978, 33.985619, 50.897144>,  <34.015900, 33.428795, 51.326828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.387978, 33.985619, 50.897144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.625042, 33.663586, 50.906841>,  <34.767281, 33.470364, 50.912659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.625042, 33.663586, 50.906841>,  <34.387978, 33.985619, 50.897144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.625042, 33.663586, 50.906841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087082, 0.034123, -0.995617,
		0.800729, 0.592177, 0.090332,
		0.592664, -0.805085, 0.024244,
		34.802841, 33.422062, 50.914116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.006989, 34.212029, 50.415813>,  <34.387978, 33.985619, 50.897144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.006989, 34.212029, 50.415813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.992271, 33.816532, 50.473831>,  <34.983440, 33.579235, 50.508640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.992271, 33.816532, 50.473831>,  <35.006989, 34.212029, 50.415813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.992271, 33.816532, 50.473831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194984, -0.149453, -0.969353,
		0.980116, -0.007379, 0.198287,
		-0.036788, -0.988741, 0.145043,
		34.981236, 33.519909, 50.517345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.459682, 34.044945, 49.893703>,  <35.006989, 34.212029, 50.415813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.459682, 34.044945, 49.893703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.290230, 33.697689, 49.997139>,  <35.188557, 33.489334, 50.059200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.290230, 33.697689, 49.997139>,  <35.459682, 34.044945, 49.893703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.290230, 33.697689, 49.997139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035303, -0.301074, -0.952947,
		0.905145, -0.394573, 0.158193,
		-0.423635, -0.868140, 0.258586,
		35.163139, 33.437248, 50.074715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.760010, 33.566669, 49.481216>,  <35.459682, 34.044945, 49.893703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.760010, 33.566669, 49.481216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.432114, 33.374851, 49.606472>,  <35.235374, 33.259762, 49.681625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.432114, 33.374851, 49.606472>,  <35.760010, 33.566669, 49.481216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.432114, 33.374851, 49.606472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153209, -0.343214, -0.926677,
		0.551858, -0.807614, 0.207876,
		-0.819744, -0.479546, 0.313139,
		35.186192, 33.230988, 49.700413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.905724, 32.875927, 49.355709>,  <35.760010, 33.566669, 49.481216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.905724, 32.875927, 49.355709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.508427, 32.902897, 49.393501>,  <35.270050, 32.919079, 49.416176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.508427, 32.902897, 49.393501>,  <35.905724, 32.875927, 49.355709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.508427, 32.902897, 49.393501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111637, -0.332114, -0.936610,
		-0.031777, -0.940826, 0.337396,
		-0.993241, 0.067429, 0.094478,
		35.210453, 32.923126, 49.421844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.607471, 32.252609, 49.078987>,  <35.905724, 32.875927, 49.355709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.607471, 32.252609, 49.078987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.348000, 32.556328, 49.058277>,  <35.192314, 32.738560, 49.045853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.348000, 32.556328, 49.058277>,  <35.607471, 32.252609, 49.078987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.348000, 32.556328, 49.058277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185136, -0.223420, -0.956979,
		-0.738196, -0.611192, 0.285502,
		-0.648684, 0.759294, -0.051774,
		35.153393, 32.784115, 49.042744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.965397, 32.028534, 48.651836>,  <35.607471, 32.252609, 49.078987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.965397, 32.028534, 48.651836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.921852, 32.425934, 48.665092>,  <34.895725, 32.664375, 48.673046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.921852, 32.425934, 48.665092>,  <34.965397, 32.028534, 48.651836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.921852, 32.425934, 48.665092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311460, -0.002432, -0.950256,
		-0.944003, -0.113768, 0.309702,
		-0.108862, 0.993504, 0.033138,
		34.889194, 32.723984, 48.675034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.400558, 32.116383, 48.287865>,  <34.965397, 32.028534, 48.651836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.400558, 32.116383, 48.287865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.606083, 32.459404, 48.278091>,  <34.729397, 32.665218, 48.272228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.606083, 32.459404, 48.278091>,  <34.400558, 32.116383, 48.287865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.606083, 32.459404, 48.278091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202609, 0.093625, -0.974774,
		-0.833635, 0.505800, 0.221854,
		0.513812, 0.857555, -0.024431,
		34.760227, 32.716671, 48.270763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.936588, 32.544601, 47.893085>,  <34.400558, 32.116383, 48.287865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.936588, 32.544601, 47.893085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.271439, 32.761135, 47.861626>,  <34.472347, 32.891056, 47.842751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.271439, 32.761135, 47.861626>,  <33.936588, 32.544601, 47.893085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.271439, 32.761135, 47.861626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087511, -0.009394, -0.996119,
		-0.539972, 0.840755, 0.039508,
		0.837121, 0.541334, -0.078648,
		34.522575, 32.923534, 47.838032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.835331, 32.992374, 47.434643>,  <33.936588, 32.544601, 47.893085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.835331, 32.992374, 47.434643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.234798, 32.971752, 47.434032>,  <34.474480, 32.959381, 47.433666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.234798, 32.971752, 47.434032>,  <33.835331, 32.992374, 47.434643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.234798, 32.971752, 47.434032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004400, -0.055761, -0.998434,
		0.051386, 0.997112, -0.055913,
		0.998669, -0.051552, -0.001522,
		34.534401, 32.956287, 47.433575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.071739, 33.426025, 46.914280>,  <33.835331, 32.992374, 47.434643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.071739, 33.426025, 46.914280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.386559, 33.182293, 46.952793>,  <34.575451, 33.036053, 46.975903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.386559, 33.182293, 46.952793>,  <34.071739, 33.426025, 46.914280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.386559, 33.182293, 46.952793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036813, -0.109410, -0.993315,
		0.615790, 0.785333, -0.063680,
		0.787050, -0.609329, 0.096284,
		34.622673, 32.999493, 46.981678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.486389, 33.699356, 46.456406>,  <34.071739, 33.426025, 46.914280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.486389, 33.699356, 46.456406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.610260, 33.322754, 46.509579>,  <34.684582, 33.096794, 46.541485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.610260, 33.322754, 46.509579>,  <34.486389, 33.699356, 46.456406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.610260, 33.322754, 46.509579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048613, -0.123947, -0.991097,
		0.949598, 0.313382, 0.007385,
		0.309677, -0.941503, 0.132934,
		34.703163, 33.040302, 46.549458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.001343, 33.649597, 45.928898>,  <34.486389, 33.699356, 46.456406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.001343, 33.649597, 45.928898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.914185, 33.267708, 46.009926>,  <34.861889, 33.038574, 46.058540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.914185, 33.267708, 46.009926>,  <35.001343, 33.649597, 45.928898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.914185, 33.267708, 46.009926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102036, -0.184131, -0.977591,
		0.970624, -0.233682, -0.057295,
		-0.217896, -0.954719, 0.202566,
		34.848816, 32.981293, 46.070694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.453442, 33.263615, 45.475899>,  <35.001343, 33.649597, 45.928898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.453442, 33.263615, 45.475899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.184971, 32.985893, 45.579796>,  <35.023888, 32.819260, 45.642132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.184971, 32.985893, 45.579796>,  <35.453442, 33.263615, 45.475899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.184971, 32.985893, 45.579796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104042, -0.258688, -0.960342,
		0.733963, -0.671579, 0.101388,
		-0.671173, -0.694307, 0.259740,
		34.983620, 32.777603, 45.657719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.493366, 32.562248, 45.029583>,  <35.453442, 33.263615, 45.475899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.493366, 32.562248, 45.029583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.123318, 32.577019, 45.180733>,  <34.901287, 32.585880, 45.271423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.123318, 32.577019, 45.180733>,  <35.493366, 32.562248, 45.029583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.123318, 32.577019, 45.180733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364759, -0.362646, -0.857577,
		0.105362, -0.931195, 0.348963,
		-0.925122, 0.036931, 0.377871,
		34.845779, 32.588097, 45.294094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.197769, 31.953611, 44.891254>,  <35.493366, 32.562248, 45.029583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.197769, 31.953611, 44.891254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.895767, 32.213196, 44.928818>,  <34.714565, 32.368946, 44.951355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.895767, 32.213196, 44.928818>,  <35.197769, 31.953611, 44.891254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.895767, 32.213196, 44.928818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355477, -0.284746, -0.890256,
		-0.551003, -0.705528, 0.445675,
		-0.755004, 0.648961, 0.093904,
		34.669266, 32.407883, 44.956989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.776112, 31.668303, 44.416653>,  <35.197769, 31.953611, 44.891254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.776112, 31.668303, 44.416653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.623711, 32.030968, 44.489101>,  <34.532272, 32.248566, 44.532570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.623711, 32.030968, 44.489101>,  <34.776112, 31.668303, 44.416653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.623711, 32.030968, 44.489101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316523, 0.056154, -0.946921,
		-0.868707, -0.418106, 0.265585,
		-0.381000, 0.906661, 0.181121,
		34.509411, 32.302967, 44.543438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.069412, 31.549847, 44.116596>,  <34.776112, 31.668303, 44.416653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.069412, 31.549847, 44.116596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.145607, 31.941219, 44.148552>,  <34.191326, 32.176044, 44.167725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.145607, 31.941219, 44.148552>,  <34.069412, 31.549847, 44.116596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.145607, 31.941219, 44.148552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365077, 0.146151, -0.919434,
		-0.911280, 0.145976, 0.385044,
		0.190490, 0.978432, 0.079892,
		34.202755, 32.234749, 44.172520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.429924, 31.897840, 43.944122>,  <34.069412, 31.549847, 44.116596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.429924, 31.897840, 43.944122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.720291, 32.170376, 43.906559>,  <33.894512, 32.333897, 43.884022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.720291, 32.170376, 43.906559>,  <33.429924, 31.897840, 43.944122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.720291, 32.170376, 43.906559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362589, 0.263096, -0.894041,
		-0.584438, 0.683052, 0.438033,
		0.725921, 0.681337, -0.093904,
		33.938068, 32.374779, 43.878387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.023930, 32.497173, 43.791813>,  <33.429924, 31.897840, 43.944122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.023930, 32.497173, 43.791813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.404121, 32.557755, 43.683262>,  <33.632236, 32.594105, 43.618134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.404121, 32.557755, 43.683262>,  <33.023930, 32.497173, 43.791813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.404121, 32.557755, 43.683262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304038, 0.272332, -0.912905,
		-0.064359, 0.950209, 0.304894,
		0.950483, 0.151453, -0.271373,
		33.689266, 32.603191, 43.601849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.009212, 33.099865, 43.478611>,  <33.023930, 32.497173, 43.791813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.009212, 33.099865, 43.478611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.338509, 32.908298, 43.356682>,  <33.536087, 32.793358, 43.283524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.338509, 32.908298, 43.356682>,  <33.009212, 33.099865, 43.478611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.338509, 32.908298, 43.356682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230103, 0.209363, -0.950379,
		0.518972, 0.852528, 0.062155,
		0.823238, -0.478918, -0.304823,
		33.585480, 32.764622, 43.265236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.425999, 33.630848, 43.189625>,  <33.009212, 33.099865, 43.478611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.425999, 33.630848, 43.189625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.524662, 33.273586, 43.039196>,  <33.583862, 33.059227, 42.948940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.524662, 33.273586, 43.039196>,  <33.425999, 33.630848, 43.189625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.524662, 33.273586, 43.039196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073512, 0.369699, -0.926239,
		0.966310, 0.256113, 0.025533,
		0.246661, -0.893157, -0.376071,
		33.598660, 33.005638, 42.926376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.716625, 33.818619, 42.589409>,  <33.425999, 33.630848, 43.189625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.716625, 33.818619, 42.589409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.721275, 33.426334, 42.511368>,  <33.724064, 33.190964, 42.464542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.721275, 33.426334, 42.511368>,  <33.716625, 33.818619, 42.589409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.721275, 33.426334, 42.511368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185234, 0.189631, -0.964225,
		0.982626, 0.047347, -0.179457,
		0.011623, -0.980713, -0.195107,
		33.724762, 33.132122, 42.452835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.223244, 33.699581, 41.984169>,  <33.716625, 33.818619, 42.589409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.223244, 33.699581, 41.984169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.941029, 33.416222, 41.991970>,  <33.771698, 33.246204, 41.996651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.941029, 33.416222, 41.991970>,  <34.223244, 33.699581, 41.984169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.941029, 33.416222, 41.991970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113354, 0.085647, -0.989856,
		0.699547, -0.700592, -0.140728,
		-0.705538, -0.708403, 0.019500,
		33.729366, 33.203701, 41.997822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.309479, 33.292866, 41.418770>,  <34.223244, 33.699581, 41.984169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.309479, 33.292866, 41.418770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.930317, 33.234478, 41.532021>,  <33.702820, 33.199444, 41.599972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.930317, 33.234478, 41.532021>,  <34.309479, 33.292866, 41.418770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.930317, 33.234478, 41.532021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287432, 0.008857, -0.957760,
		0.137302, -0.989248, -0.050354,
		-0.947909, -0.145976, 0.283125,
		33.645943, 33.190685, 41.616959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.176605, 32.649235, 41.003910>,  <34.309479, 33.292866, 41.418770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.176605, 32.649235, 41.003910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.829796, 32.812614, 41.118061>,  <33.621712, 32.910641, 41.186554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.829796, 32.812614, 41.118061>,  <34.176605, 32.649235, 41.003910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.829796, 32.812614, 41.118061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378738, -0.168066, -0.910116,
		-0.323772, -0.897176, 0.300412,
		-0.867023, 0.408447, 0.285380,
		33.569687, 32.935150, 41.203674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.651932, 32.220943, 40.723072>,  <34.176605, 32.649235, 41.003910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.651932, 32.220943, 40.723072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.496059, 32.583969, 40.785648>,  <33.402534, 32.801785, 40.823193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.496059, 32.583969, 40.785648>,  <33.651932, 32.220943, 40.723072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.496059, 32.583969, 40.785648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424615, -0.026320, -0.904992,
		-0.817221, -0.419085, 0.395622,
		-0.389681, 0.907565, 0.156441,
		33.379154, 32.856239, 40.832581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.017227, 32.234978, 40.272625>,  <33.651932, 32.220943, 40.723072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.017227, 32.234978, 40.272625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.069149, 32.619587, 40.369473>,  <33.100304, 32.850353, 40.427582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.069149, 32.619587, 40.369473>,  <33.017227, 32.234978, 40.272625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.069149, 32.619587, 40.369473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525931, 0.273775, -0.805260,
		-0.840563, -0.022810, 0.541234,
		0.129808, 0.961523, 0.242122,
		33.108093, 32.908043, 40.442108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.437157, 32.541916, 40.058613>,  <33.017227, 32.234978, 40.272625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.437157, 32.541916, 40.058613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.654121, 32.875103, 40.102329>,  <32.784302, 33.075016, 40.128559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.654121, 32.875103, 40.102329>,  <32.437157, 32.541916, 40.058613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.654121, 32.875103, 40.102329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450681, 0.398298, -0.798903,
		-0.708994, 0.384080, 0.591447,
		0.542415, 0.832971, 0.109294,
		32.816845, 33.124996, 40.135117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.944073, 33.133224, 39.999908>,  <32.437157, 32.541916, 40.058613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.944073, 33.133224, 39.999908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.319878, 33.239120, 39.912975>,  <32.545361, 33.302658, 39.860817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.319878, 33.239120, 39.912975>,  <31.944073, 33.133224, 39.999908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.319878, 33.239120, 39.912975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319150, 0.446254, -0.836063,
		-0.124350, 0.854852, 0.503751,
		0.939511, 0.264737, -0.217334,
		32.601730, 33.318542, 39.847775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.909363, 33.921104, 39.856857>,  <31.944073, 33.133224, 39.999908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.909363, 33.921104, 39.856857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.225845, 33.763199, 39.670029>,  <32.415733, 33.668457, 39.557930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.225845, 33.763199, 39.670029>,  <31.909363, 33.921104, 39.856857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.225845, 33.763199, 39.670029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249728, 0.488617, -0.835996,
		0.558240, 0.778085, 0.288013,
		0.791204, -0.394762, -0.467075,
		32.463207, 33.644772, 39.529907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.293808, 34.485989, 39.444775>,  <31.909363, 33.921104, 39.856857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.293808, 34.485989, 39.444775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.399868, 34.148849, 39.257458>,  <32.463505, 33.946564, 39.145069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.399868, 34.148849, 39.257458>,  <32.293808, 34.485989, 39.444775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.399868, 34.148849, 39.257458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254526, 0.407266, -0.877126,
		0.930007, 0.351761, -0.106542,
		0.265148, -0.842851, -0.468293,
		32.479412, 33.895992, 39.116970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.703983, 34.662170, 38.930172>,  <32.293808, 34.485989, 39.444775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.703983, 34.662170, 38.930172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.515240, 34.321362, 38.839478>,  <32.401993, 34.116875, 38.785061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.515240, 34.321362, 38.839478>,  <32.703983, 34.662170, 38.930172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.515240, 34.321362, 38.839478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272362, 0.385444, -0.881619,
		0.838553, -0.354245, -0.413933,
		-0.471857, -0.852023, -0.226733,
		32.373684, 34.065754, 38.771458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.899170, 34.386234, 38.308914>,  <32.703983, 34.662170, 38.930172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.899170, 34.386234, 38.308914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.514336, 34.288185, 38.356754>,  <32.283436, 34.229355, 38.385460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.514336, 34.288185, 38.356754>,  <32.899170, 34.386234, 38.308914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.514336, 34.288185, 38.356754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188435, 0.280340, -0.941224,
		0.197179, -0.928077, -0.315900,
		-0.962087, -0.245116, 0.119605,
		32.225708, 34.214649, 38.392635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.392197, 33.954021, 37.924301>,  <32.899170, 34.386234, 38.308914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.392197, 33.954021, 37.924301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.660526, 33.784439, 37.680908>,  <33.821526, 33.682690, 37.534870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.660526, 33.784439, 37.680908>,  <33.392197, 33.954021, 37.924301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.660526, 33.784439, 37.680908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595943, -0.180197, 0.782548,
		-0.441413, -0.887575, 0.131774,
		0.670825, -0.423957, -0.608486,
		33.861774, 33.657253, 37.498363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.529667, 33.293243, 38.120041>,  <33.392197, 33.954021, 37.924301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.529667, 33.293243, 38.120041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.845203, 33.471855, 37.951118>,  <34.034527, 33.579021, 37.849766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.845203, 33.471855, 37.951118>,  <33.529667, 33.293243, 38.120041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.845203, 33.471855, 37.951118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550824, -0.208862, 0.808065,
		0.272621, -0.870051, -0.410717,
		0.788842, 0.446528, -0.422305,
		34.081856, 33.605812, 37.824429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.098160, 32.748314, 37.907845>,  <33.529667, 33.293243, 38.120041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.098160, 32.748314, 37.907845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.256302, 33.104980, 37.996052>,  <34.351185, 33.318981, 38.048977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.256302, 33.104980, 37.996052>,  <34.098160, 32.748314, 37.907845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.256302, 33.104980, 37.996052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581741, -0.428856, 0.691129,
		0.710826, -0.144958, -0.688269,
		0.395353, 0.891667, 0.220514,
		34.374908, 33.372482, 38.062206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.828320, 32.624374, 37.900257>,  <34.098160, 32.748314, 37.907845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.828320, 32.624374, 37.900257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.812698, 32.986290, 38.069885>,  <34.803326, 33.203438, 38.171661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.812698, 32.986290, 38.069885>,  <34.828320, 32.624374, 37.900257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.812698, 32.986290, 38.069885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818664, -0.214365, 0.532764,
		0.572943, 0.367978, -0.732345,
		-0.039056, 0.904787, 0.424069,
		34.800980, 33.257725, 38.197105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.506611, 32.916878, 37.876427>,  <34.828320, 32.624374, 37.900257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.506611, 32.916878, 37.876427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.300014, 33.106438, 38.161705>,  <35.176056, 33.220173, 38.332870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.300014, 33.106438, 38.161705>,  <35.506611, 32.916878, 37.876427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.300014, 33.106438, 38.161705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829694, 0.070993, 0.553685,
		0.211762, 0.877710, -0.429863,
		-0.516492, 0.473904, 0.713197,
		35.145065, 33.248608, 38.375664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.989861, 33.396751, 38.061279>,  <35.506611, 32.916878, 37.876427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.989861, 33.396751, 38.061279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.724518, 33.377937, 38.360008>,  <35.565311, 33.366650, 38.539246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.724518, 33.377937, 38.360008>,  <35.989861, 33.396751, 38.061279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.724518, 33.377937, 38.360008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747529, 0.003636, 0.664219,
		-0.033959, 0.998886, 0.032750,
		-0.663360, -0.047038, 0.746820,
		35.525509, 33.363827, 38.584053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.147823, 33.808620, 38.659088>,  <35.989861, 33.396751, 38.061279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.147823, 33.808620, 38.659088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.911667, 33.539700, 38.837727>,  <35.769974, 33.378345, 38.944908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.911667, 33.539700, 38.837727>,  <36.147823, 33.808620, 38.659088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.911667, 33.539700, 38.837727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549886, 0.069985, 0.832303,
		-0.590813, 0.736962, 0.328371,
		-0.590394, -0.672302, 0.446593,
		35.734550, 33.338009, 38.971703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.198883, 34.105762, 39.307064>,  <36.147823, 33.808620, 38.659088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.198883, 34.105762, 39.307064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.059677, 33.737061, 39.375492>,  <35.976154, 33.515839, 39.416550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.059677, 33.737061, 39.375492>,  <36.198883, 34.105762, 39.307064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.059677, 33.737061, 39.375492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281216, 0.071434, 0.956982,
		-0.894319, 0.381148, 0.234351,
		-0.348011, -0.921750, 0.171070,
		35.955273, 33.460537, 39.426811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.713551, 34.141716, 39.803501>,  <36.198883, 34.105762, 39.307064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.713551, 34.141716, 39.803501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.820198, 33.756283, 39.811646>,  <35.884186, 33.525021, 39.816532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.820198, 33.756283, 39.811646>,  <35.713551, 34.141716, 39.803501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.820198, 33.756283, 39.811646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148362, 0.061911, 0.986993,
		-0.952314, -0.260132, 0.159467,
		0.266621, -0.963586, 0.020365,
		35.900185, 33.467205, 39.817757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.357727, 33.887421, 40.384716>,  <35.713551, 34.141716, 39.803501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.357727, 33.887421, 40.384716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.670826, 33.649303, 40.312122>,  <35.858685, 33.506432, 40.268566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.670826, 33.649303, 40.312122>,  <35.357727, 33.887421, 40.384716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.670826, 33.649303, 40.312122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233178, 0.010151, 0.972381,
		-0.577009, -0.803445, 0.146754,
		0.782745, -0.595292, -0.181488,
		35.905651, 33.470715, 40.257675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.365860, 33.358631, 40.962845>,  <35.357727, 33.887421, 40.384716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.365860, 33.358631, 40.962845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.737736, 33.362076, 40.815544>,  <35.960861, 33.364143, 40.727165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.737736, 33.362076, 40.815544>,  <35.365860, 33.358631, 40.962845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.737736, 33.362076, 40.815544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367313, 0.053293, 0.928569,
		0.027617, -0.998542, 0.046384,
		0.929687, 0.008607, -0.368249,
		36.016644, 33.364658, 40.705070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.806522, 33.011795, 41.483727>,  <35.365860, 33.358631, 40.962845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.806522, 33.011795, 41.483727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.096272, 33.188046, 41.271641>,  <36.270123, 33.293797, 41.144390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.096272, 33.188046, 41.271641>,  <35.806522, 33.011795, 41.483727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.096272, 33.188046, 41.271641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540103, 0.115269, 0.833668,
		0.428456, -0.890258, -0.154487,
		0.724372, 0.440629, -0.530219,
		36.313583, 33.320232, 41.112576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.443199, 32.665287, 41.555817>,  <35.806522, 33.011795, 41.483727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.443199, 32.665287, 41.555817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.532101, 33.039974, 41.447624>,  <36.585442, 33.264786, 41.382710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.532101, 33.039974, 41.447624>,  <36.443199, 32.665287, 41.555817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.532101, 33.039974, 41.447624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486181, 0.133985, 0.863525,
		0.845121, -0.323426, -0.425636,
		0.222258, 0.936720, -0.270477,
		36.598778, 33.320992, 41.366482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.234837, 32.741837, 41.523685>,  <36.443199, 32.665287, 41.555817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.234837, 32.741837, 41.523685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.054703, 33.090672, 41.600273>,  <36.946621, 33.299973, 41.646225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.054703, 33.090672, 41.600273>,  <37.234837, 32.741837, 41.523685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.054703, 33.090672, 41.600273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409563, 0.011215, 0.912213,
		0.793383, 0.489220, -0.362225,
		-0.450336, 0.872088, 0.191469,
		36.919601, 33.352299, 41.657715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.639690, 33.044537, 42.078224>,  <37.234837, 32.741837, 41.523685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.639690, 33.044537, 42.078224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.331280, 33.299137, 42.070374>,  <37.146233, 33.451897, 42.065662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.331280, 33.299137, 42.070374>,  <37.639690, 33.044537, 42.078224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.331280, 33.299137, 42.070374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093226, 0.143306, 0.985278,
		0.629943, 0.757845, -0.169831,
		-0.771025, 0.636502, -0.019624,
		37.099972, 33.490089, 42.064487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.745155, 33.563435, 42.599514>,  <37.639690, 33.044537, 42.078224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.745155, 33.563435, 42.599514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.348419, 33.608723, 42.576046>,  <37.110378, 33.635895, 42.561966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.348419, 33.608723, 42.576046>,  <37.745155, 33.563435, 42.599514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.348419, 33.608723, 42.576046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052972, 0.052708, 0.997204,
		0.115995, 0.992171, -0.046280,
		-0.991836, 0.113219, -0.058671,
		37.050869, 33.642689, 42.558445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.643250, 34.196743, 42.917274>,  <37.745155, 33.563435, 42.599514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.643250, 34.196743, 42.917274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.293205, 34.004169, 42.936909>,  <37.083179, 33.888626, 42.948689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.293205, 34.004169, 42.936909>,  <37.643250, 34.196743, 42.917274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.293205, 34.004169, 42.936909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051538, 0.193576, 0.979731,
		-0.481174, 0.854841, -0.194212,
		-0.875109, -0.481430, 0.049087,
		37.030674, 33.859741, 42.951633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.216206, 34.745190, 43.045021>,  <37.643250, 34.196743, 42.917274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.216206, 34.745190, 43.045021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.051624, 34.398685, 43.158367>,  <36.952877, 34.190781, 43.226376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.051624, 34.398685, 43.158367>,  <37.216206, 34.745190, 43.045021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.051624, 34.398685, 43.158367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083475, 0.345413, 0.934731,
		-0.907601, 0.360943, -0.214432,
		-0.411452, -0.866262, 0.283367,
		36.928188, 34.138805, 43.243378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.820103, 35.029900, 43.578663>,  <37.216206, 34.745190, 43.045021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.820103, 35.029900, 43.578663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.827114, 34.633411, 43.631092>,  <36.831322, 34.395519, 43.662552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.827114, 34.633411, 43.631092>,  <36.820103, 35.029900, 43.578663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.827114, 34.633411, 43.631092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181346, 0.125771, 0.975344,
		-0.983263, -0.040863, -0.177549,
		0.017525, -0.991217, 0.131076,
		36.832371, 34.336044, 43.670414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.233337, 34.863873, 44.041523>,  <36.820103, 35.029900, 43.578663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.233337, 34.863873, 44.041523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.477688, 34.548927, 44.074741>,  <36.624298, 34.359959, 44.094673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.477688, 34.548927, 44.074741>,  <36.233337, 34.863873, 44.041523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.477688, 34.548927, 44.074741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006609, 0.109963, 0.993914,
		-0.791702, -0.606605, 0.072377,
		0.610872, -0.787362, 0.083049,
		36.660950, 34.312717, 44.099655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.987522, 34.411304, 44.562416>,  <36.233337, 34.863873, 44.041523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.987522, 34.411304, 44.562416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.371441, 34.300598, 44.543697>,  <36.601791, 34.234173, 44.532467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.371441, 34.300598, 44.543697>,  <35.987522, 34.411304, 44.562416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.371441, 34.300598, 44.543697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054280, 0.019447, 0.998336,
		-0.275396, -0.960740, 0.033689,
		0.959797, -0.276767, -0.046794,
		36.659382, 34.217567, 44.529659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.071495, 33.856575, 45.023067>,  <35.987522, 34.411304, 44.562416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.071495, 33.856575, 45.023067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.437180, 34.012093, 44.977352>,  <36.656590, 34.105404, 44.949921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.437180, 34.012093, 44.977352>,  <36.071495, 33.856575, 45.023067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.437180, 34.012093, 44.977352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045559, 0.181639, 0.982309,
		0.402676, -0.903242, 0.148343,
		0.914209, 0.388794, -0.114293,
		36.711441, 34.128731, 44.943066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.575809, 33.653912, 45.520199>,  <36.071495, 33.856575, 45.023067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.575809, 33.653912, 45.520199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.673176, 34.028137, 45.417850>,  <36.731598, 34.252674, 45.356441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.673176, 34.028137, 45.417850>,  <36.575809, 33.653912, 45.520199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.673176, 34.028137, 45.417850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072016, 0.280507, 0.957146,
		0.967244, -0.214562, 0.135657,
		0.243420, 0.935563, -0.255867,
		36.746201, 34.308807, 45.341091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.244541, 33.863716, 45.736595>,  <36.575809, 33.653912, 45.520199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.244541, 33.863716, 45.736595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.944756, 34.128189, 45.723080>,  <36.764885, 34.286873, 45.714970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.944756, 34.128189, 45.723080>,  <37.244541, 33.863716, 45.736595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.944756, 34.128189, 45.723080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052498, 0.110229, 0.992519,
		0.659959, 0.742085, -0.117323,
		-0.749466, 0.661181, -0.033789,
		36.719917, 34.326542, 45.712944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.387558, 34.283752, 46.276314>,  <37.244541, 33.863716, 45.736595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.387558, 34.283752, 46.276314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.998810, 34.362720, 46.224953>,  <36.765560, 34.410099, 46.194138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.998810, 34.362720, 46.224953>,  <37.387558, 34.283752, 46.276314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.998810, 34.362720, 46.224953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056791, 0.332673, 0.941331,
		0.228552, 0.922147, -0.312105,
		-0.971874, 0.197418, -0.128403,
		36.707249, 34.421947, 46.186432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.208408, 34.929550, 46.561352>,  <37.387558, 34.283752, 46.276314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.208408, 34.929550, 46.561352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.864334, 34.726055, 46.547157>,  <36.657890, 34.603958, 46.538643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.864334, 34.726055, 46.547157>,  <37.208408, 34.929550, 46.561352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.864334, 34.726055, 46.547157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270812, 0.396718, 0.877084,
		-0.432130, 0.764067, -0.479026,
		-0.860188, -0.508740, -0.035484,
		36.606277, 34.573433, 46.536510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.723484, 35.402653, 46.853966>,  <37.208408, 34.929550, 46.561352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.723484, 35.402653, 46.853966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.539574, 35.047653, 46.866302>,  <36.429230, 34.834652, 46.873703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.539574, 35.047653, 46.866302>,  <36.723484, 35.402653, 46.853966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.539574, 35.047653, 46.866302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483710, 0.279409, 0.829431,
		-0.744737, 0.366433, -0.557758,
		-0.459773, -0.887500, 0.030839,
		36.401642, 34.781403, 46.875553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.004719, 35.552608, 46.835854>,  <36.723484, 35.402653, 46.853966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.004719, 35.552608, 46.835854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.097206, 35.197762, 46.995632>,  <36.152699, 34.984852, 47.091499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.097206, 35.197762, 46.995632>,  <36.004719, 35.552608, 46.835854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.097206, 35.197762, 46.995632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472501, 0.256510, 0.843175,
		-0.850459, -0.383696, -0.359855,
		0.231217, -0.887119, 0.399449,
		36.166573, 34.931625, 47.115467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.505085, 35.423950, 47.327240>,  <36.004719, 35.552608, 46.835854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.505085, 35.423950, 47.327240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.809879, 35.199032, 47.455738>,  <35.992756, 35.064079, 47.532837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.809879, 35.199032, 47.455738>,  <35.505085, 35.423950, 47.327240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.809879, 35.199032, 47.455738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250591, 0.201393, 0.946914,
		-0.597142, -0.802038, 0.012552,
		0.761988, -0.562296, 0.321244,
		36.038475, 35.030342, 47.552113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.381508, 35.375225, 48.004997>,  <35.505085, 35.423950, 47.327240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.381508, 35.375225, 48.004997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.737503, 35.193016, 48.013123>,  <35.951099, 35.083691, 48.017998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.737503, 35.193016, 48.013123>,  <35.381508, 35.375225, 48.004997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.737503, 35.193016, 48.013123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023856, 0.091010, 0.995564,
		-0.455353, -0.885559, 0.091865,
		0.889991, -0.455524, 0.020316,
		36.004501, 35.056358, 48.019218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.332417, 34.864208, 48.631340>,  <35.381508, 35.375225, 48.004997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.332417, 34.864208, 48.631340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.718723, 34.926826, 48.548603>,  <35.950508, 34.964397, 48.498959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.718723, 34.926826, 48.548603>,  <35.332417, 34.864208, 48.631340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.718723, 34.926826, 48.548603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203843, 0.035167, 0.978372,
		0.160431, -0.987045, 0.002053,
		0.965769, 0.156543, -0.206844,
		36.008453, 34.973789, 48.486549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.710476, 34.380440, 49.028305>,  <35.332417, 34.864208, 48.631340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.710476, 34.380440, 49.028305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.966831, 34.679874, 48.960331>,  <36.120644, 34.859535, 48.919544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.966831, 34.679874, 48.960331>,  <35.710476, 34.380440, 49.028305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.966831, 34.679874, 48.960331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388358, -0.125232, 0.912960,
		0.662151, -0.651099, -0.370980,
		0.640886, 0.748590, -0.169937,
		36.159096, 34.904449, 48.909351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.402012, 34.130421, 49.235928>,  <35.710476, 34.380440, 49.028305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.402012, 34.130421, 49.235928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.409012, 34.528988, 49.269024>,  <36.413212, 34.768127, 49.288883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.409012, 34.528988, 49.269024>,  <36.402012, 34.130421, 49.235928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.409012, 34.528988, 49.269024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529690, -0.079426, 0.844464,
		0.848011, 0.029047, -0.529182,
		0.017501, 0.996417, 0.082740,
		36.414261, 34.827911, 49.293846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.957100, 34.353226, 49.515732>,  <36.402012, 34.130421, 49.235928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.957100, 34.353226, 49.515732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.811161, 34.723488, 49.555824>,  <36.723598, 34.945644, 49.579880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.811161, 34.723488, 49.555824>,  <36.957100, 34.353226, 49.515732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.811161, 34.723488, 49.555824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663465, 0.182946, 0.725496,
		0.653224, 0.331194, -0.680888,
		-0.364846, 0.925657, 0.100231,
		36.701706, 35.001186, 49.585896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.480934, 34.823120, 49.488441>,  <36.957100, 34.353226, 49.515732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.480934, 34.823120, 49.488441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.183514, 35.021317, 49.668049>,  <37.005062, 35.140236, 49.775814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.183514, 35.021317, 49.668049>,  <37.480934, 34.823120, 49.488441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.183514, 35.021317, 49.668049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596494, 0.188025, 0.780283,
		0.302199, 0.848017, -0.435365,
		-0.743553, 0.495493, 0.449017,
		36.960449, 35.169964, 49.802753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.841011, 35.370022, 49.782131>,  <37.480934, 34.823120, 49.488441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.841011, 35.370022, 49.782131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.488052, 35.358448, 49.969975>,  <37.276276, 35.351501, 50.082680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.488052, 35.358448, 49.969975>,  <37.841011, 35.370022, 49.782131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.488052, 35.358448, 49.969975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449335, 0.244187, 0.859343,
		-0.139541, 0.969296, -0.202468,
		-0.882398, -0.028937, 0.469612,
		37.223331, 35.349766, 50.110859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.851543, 36.020931, 50.220642>,  <37.841011, 35.370022, 49.782131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.851543, 36.020931, 50.220642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.608246, 35.737244, 50.363216>,  <37.462269, 35.567032, 50.448761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.608246, 35.737244, 50.363216>,  <37.851543, 36.020931, 50.220642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.608246, 35.737244, 50.363216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338863, 0.174063, 0.924594,
		-0.717784, 0.683160, 0.134456,
		-0.608242, -0.709221, 0.356437,
		37.425774, 35.524479, 50.470146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.375183, 36.273159, 50.798897>,  <37.851543, 36.020931, 50.220642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.375183, 36.273159, 50.798897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.461281, 35.883602, 50.827755>,  <37.512939, 35.649868, 50.845070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.461281, 35.883602, 50.827755>,  <37.375183, 36.273159, 50.798897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.461281, 35.883602, 50.827755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400293, 0.155375, 0.903119,
		-0.890749, -0.165515, 0.423285,
		0.215248, -0.973891, 0.072146,
		37.525856, 35.591434, 50.849400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.611053, 36.882217, 51.359592>,  <37.375183, 36.273159, 50.798897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.611053, 36.882217, 51.359592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.483555, 37.257080, 51.302830>,  <37.407055, 37.481998, 51.268772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.483555, 37.257080, 51.302830>,  <37.611053, 36.882217, 51.359592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.483555, 37.257080, 51.302830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110875, -0.111822, -0.987523,
		-0.941332, -0.330507, -0.068264,
		-0.318750, 0.937156, -0.141906,
		37.387928, 37.538227, 51.260258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.133320, 36.937786, 50.818668>,  <37.611053, 36.882217, 51.359592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.133320, 36.937786, 50.818668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.311069, 37.294796, 50.849499>,  <37.417717, 37.509003, 50.867996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.311069, 37.294796, 50.849499>,  <37.133320, 36.937786, 50.818668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.311069, 37.294796, 50.849499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067059, 0.052652, -0.996359,
		-0.893329, 0.447922, -0.036455,
		0.444372, 0.892521, 0.077073,
		37.444382, 37.562553, 50.872620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.740917, 37.519352, 50.499237>,  <37.133320, 36.937786, 50.818668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.740917, 37.519352, 50.499237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.123238, 37.636879, 50.503632>,  <37.352631, 37.707394, 50.506268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.123238, 37.636879, 50.503632>,  <36.740917, 37.519352, 50.499237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.123238, 37.636879, 50.503632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064874, 0.247194, -0.966792,
		-0.286774, 0.923346, 0.255329,
		0.955799, 0.293815, 0.010987,
		37.409977, 37.725025, 50.506927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.723915, 38.106873, 50.043938>,  <36.740917, 37.519352, 50.499237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.723915, 38.106873, 50.043938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.107876, 37.995762, 50.059048>,  <37.338253, 37.929096, 50.068115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.107876, 37.995762, 50.059048>,  <36.723915, 38.106873, 50.043938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.107876, 37.995762, 50.059048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099721, 0.212400, -0.972081,
		0.261997, 0.936870, 0.231584,
		0.959903, -0.277776, 0.037777,
		37.395847, 37.912430, 50.070381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.022377, 38.593479, 49.572796>,  <36.723915, 38.106873, 50.043938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.022377, 38.593479, 49.572796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.253326, 38.269222, 49.611790>,  <37.391895, 38.074669, 49.635185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.253326, 38.269222, 49.611790>,  <37.022377, 38.593479, 49.572796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.253326, 38.269222, 49.611790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200471, 0.025008, -0.979380,
		0.791490, 0.585006, 0.176949,
		0.577369, -0.810643, 0.097483,
		37.426537, 38.026028, 49.641033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.504967, 38.707108, 49.100063>,  <37.022377, 38.593479, 49.572796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.504967, 38.707108, 49.100063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.535542, 38.315331, 49.174736>,  <37.553886, 38.080265, 49.219540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.535542, 38.315331, 49.174736>,  <37.504967, 38.707108, 49.100063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.535542, 38.315331, 49.174736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223493, -0.165637, -0.960529,
		0.971704, 0.115140, 0.206239,
		0.076435, -0.979442, 0.186683,
		37.558472, 38.021500, 49.230740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.086002, 38.512901, 48.778259>,  <37.504967, 38.707108, 49.100063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.086002, 38.512901, 48.778259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.931671, 38.145802, 48.815952>,  <37.839073, 37.925541, 48.838566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.931671, 38.145802, 48.815952>,  <38.086002, 38.512901, 48.778259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.931671, 38.145802, 48.815952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213788, -0.188299, -0.958560,
		0.897458, -0.349695, 0.268854,
		-0.385829, -0.917746, 0.094230,
		37.815922, 37.870480, 48.844223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.571899, 38.046009, 48.488594>,  <38.086002, 38.512901, 48.778259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.571899, 38.046009, 48.488594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.235062, 37.830276, 48.488281>,  <38.032959, 37.700836, 48.488094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.235062, 37.830276, 48.488281>,  <38.571899, 38.046009, 48.488594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.235062, 37.830276, 48.488281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072450, -0.111689, -0.991099,
		0.534448, -0.834651, 0.133127,
		-0.842091, -0.539335, -0.000778,
		37.982433, 37.668476, 48.488049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.711079, 37.296963, 48.209549>,  <38.571899, 38.046009, 48.488594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.711079, 37.296963, 48.209549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.326019, 37.398418, 48.171661>,  <38.094982, 37.459290, 48.148930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.326019, 37.398418, 48.171661>,  <38.711079, 37.296963, 48.209549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.326019, 37.398418, 48.171661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039796, -0.213503, -0.976132,
		-0.267810, -0.943442, 0.195435,
		-0.962649, 0.253640, -0.094724,
		38.037224, 37.474510, 48.143246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.541988, 36.834179, 47.773964>,  <38.711079, 37.296963, 48.209549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.541988, 36.834179, 47.773964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.229439, 37.081543, 47.740452>,  <38.041908, 37.229961, 47.720345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.229439, 37.081543, 47.740452>,  <38.541988, 36.834179, 47.773964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.229439, 37.081543, 47.740452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025555, -0.102434, -0.994412,
		-0.623538, -0.779149, 0.064236,
		-0.781375, 0.618412, -0.083782,
		37.995026, 37.267067, 47.715317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.184570, 36.515800, 47.238277>,  <38.541988, 36.834179, 47.773964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.184570, 36.515800, 47.238277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.020512, 36.879505, 47.266640>,  <37.922077, 37.097729, 47.283657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.020512, 36.879505, 47.266640>,  <38.184570, 36.515800, 47.238277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.020512, 36.879505, 47.266640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085914, 0.038877, -0.995544,
		-0.907966, -0.414406, 0.062173,
		-0.410142, 0.909262, 0.070902,
		37.897469, 37.152283, 47.287910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.537170, 36.464294, 46.981117>,  <38.184570, 36.515800, 47.238277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.537170, 36.464294, 46.981117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.660072, 36.842884, 46.941547>,  <37.733814, 37.070038, 46.917805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.660072, 36.842884, 46.941547>,  <37.537170, 36.464294, 46.981117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.660072, 36.842884, 46.941547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232812, -0.026032, -0.972173,
		-0.922708, 0.321739, 0.212351,
		0.307258, 0.946470, -0.098925,
		37.752251, 37.126823, 46.911869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.067085, 36.775269, 46.481564>,  <37.537170, 36.464294, 46.981117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.067085, 36.775269, 46.481564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.373356, 37.032299, 46.493141>,  <37.557117, 37.186516, 46.500088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.373356, 37.032299, 46.493141>,  <37.067085, 36.775269, 46.481564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.373356, 37.032299, 46.493141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088050, 0.149274, -0.984868,
		-0.637173, 0.751540, 0.170874,
		0.765675, 0.642576, 0.028940,
		37.603058, 37.225071, 46.501823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.838078, 37.320320, 46.083813>,  <37.067085, 36.775269, 46.481564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.838078, 37.320320, 46.083813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.238014, 37.327312, 46.082355>,  <37.477978, 37.331509, 46.081482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.238014, 37.327312, 46.082355>,  <36.838078, 37.320320, 46.083813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.238014, 37.327312, 46.082355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004094, 0.025918, -0.999656,
		-0.017379, 0.999511, 0.025985,
		0.999841, 0.017479, -0.003641,
		37.537968, 37.332558, 46.081264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.995304, 37.797131, 45.568615>,  <36.838078, 37.320320, 46.083813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.995304, 37.797131, 45.568615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.322674, 37.570030, 45.604008>,  <37.519096, 37.433769, 45.625244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.322674, 37.570030, 45.604008>,  <36.995304, 37.797131, 45.568615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.322674, 37.570030, 45.604008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008046, -0.165299, -0.986211,
		0.574552, 0.806431, -0.139854,
		0.818428, -0.567755, 0.088484,
		37.568203, 37.399704, 45.630554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.396416, 38.046925, 45.087166>,  <36.995304, 37.797131, 45.568615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.396416, 38.046925, 45.087166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.517868, 37.674244, 45.166897>,  <37.590740, 37.450634, 45.214737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.517868, 37.674244, 45.166897>,  <37.396416, 38.046925, 45.087166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.517868, 37.674244, 45.166897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155871, -0.157814, -0.975089,
		0.939953, 0.327137, 0.097309,
		0.303631, -0.931706, 0.199329,
		37.608959, 37.394733, 45.226696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.926785, 37.891178, 44.678696>,  <37.396416, 38.046925, 45.087166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.926785, 37.891178, 44.678696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.819298, 37.519478, 44.780117>,  <37.754807, 37.296459, 44.840969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.819298, 37.519478, 44.780117>,  <37.926785, 37.891178, 44.678696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.819298, 37.519478, 44.780117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138063, -0.297675, -0.944631,
		0.953274, -0.218830, 0.208284,
		-0.268715, -0.929249, 0.253554,
		37.738682, 37.240704, 44.856182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.453690, 37.346569, 44.379887>,  <37.926785, 37.891178, 44.678696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.453690, 37.346569, 44.379887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.105309, 37.163723, 44.451988>,  <37.896282, 37.054016, 44.495251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.105309, 37.163723, 44.451988>,  <38.453690, 37.346569, 44.379887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.105309, 37.163723, 44.451988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053621, -0.453066, -0.889863,
		0.488441, -0.765359, 0.419108,
		-0.870948, -0.457118, 0.180257,
		37.844025, 37.026588, 44.506065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.536572, 36.630733, 44.213779>,  <38.453690, 37.346569, 44.379887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.536572, 36.630733, 44.213779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.142216, 36.691517, 44.185692>,  <37.905602, 36.727989, 44.168839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.142216, 36.691517, 44.185692>,  <38.536572, 36.630733, 44.213779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.142216, 36.691517, 44.185692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014124, -0.493473, -0.869646,
		-0.166801, -0.856383, 0.488656,
		-0.985889, 0.151960, -0.070216,
		37.846451, 36.737106, 44.164627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.319118, 35.946430, 43.963879>,  <38.536572, 36.630733, 44.213779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.319118, 35.946430, 43.963879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.031342, 36.216793, 43.899940>,  <37.858673, 36.379009, 43.861576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.031342, 36.216793, 43.899940>,  <38.319118, 35.946430, 43.963879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.031342, 36.216793, 43.899940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026844, -0.257034, -0.966030,
		-0.694030, -0.690714, 0.203066,
		-0.719445, 0.675905, -0.159848,
		37.815510, 36.419563, 43.851986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.820938, 35.613052, 43.485939>,  <38.319118, 35.946430, 43.963879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.820938, 35.613052, 43.485939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.724712, 36.000069, 43.454975>,  <37.666977, 36.232277, 43.436398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.724712, 36.000069, 43.454975>,  <37.820938, 35.613052, 43.485939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.724712, 36.000069, 43.454975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260773, -0.141245, -0.955012,
		-0.934948, -0.209552, 0.286287,
		-0.240561, 0.967542, -0.077411,
		37.652542, 36.290333, 43.431751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.168045, 35.586704, 43.242817>,  <37.820938, 35.613052, 43.485939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.168045, 35.586704, 43.242817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.311764, 35.944534, 43.136505>,  <37.397995, 36.159233, 43.072716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.311764, 35.944534, 43.136505>,  <37.168045, 35.586704, 43.242817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.311764, 35.944534, 43.136505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449101, -0.083908, -0.889532,
		-0.818056, 0.438967, 0.371608,
		0.359295, 0.894577, -0.265782,
		37.419552, 36.212906, 43.056770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.662605, 35.745640, 42.674892>,  <37.168045, 35.586704, 43.242817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.662605, 35.745640, 42.674892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.941441, 36.032227, 42.663979>,  <37.108742, 36.204178, 42.657429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.941441, 36.032227, 42.663979>,  <36.662605, 35.745640, 42.674892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.941441, 36.032227, 42.663979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035101, -0.072115, -0.996779,
		-0.716129, 0.693882, -0.075419,
		0.697085, 0.716469, -0.027287,
		37.150566, 36.247166, 42.655792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.505306, 36.277199, 42.216400>,  <36.662605, 35.745640, 42.674892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.505306, 36.277199, 42.216400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.904205, 36.301289, 42.233669>,  <37.143547, 36.315742, 42.244030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.904205, 36.301289, 42.233669>,  <36.505306, 36.277199, 42.216400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.904205, 36.301289, 42.233669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059312, -0.299439, -0.952270,
		-0.044418, 0.952213, -0.302188,
		0.997251, 0.060221, 0.043177,
		37.203381, 36.319355, 42.246624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.646877, 36.608395, 41.661133>,  <36.505306, 36.277199, 42.216400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.646877, 36.608395, 41.661133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.987499, 36.422947, 41.759048>,  <37.191872, 36.311680, 41.817799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.987499, 36.422947, 41.759048>,  <36.646877, 36.608395, 41.661133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.987499, 36.422947, 41.759048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084117, -0.340041, -0.936641,
		0.517480, 0.818188, -0.250564,
		0.851551, -0.463616, 0.244788,
		37.242966, 36.283863, 41.832485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.128548, 36.947609, 41.218395>,  <36.646877, 36.608395, 41.661133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.128548, 36.947609, 41.218395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.271923, 36.588242, 41.319885>,  <37.357948, 36.372623, 41.380779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.271923, 36.588242, 41.319885>,  <37.128548, 36.947609, 41.218395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.271923, 36.588242, 41.319885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046996, -0.254072, -0.966043,
		0.932370, 0.358190, -0.048847,
		0.358437, -0.898414, 0.253723,
		37.379456, 36.318718, 41.396004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.616928, 36.825436, 40.756943>,  <37.128548, 36.947609, 41.218395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.616928, 36.825436, 40.756943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.570824, 36.452736, 40.894669>,  <37.543159, 36.229115, 40.977306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.570824, 36.452736, 40.894669>,  <37.616928, 36.825436, 40.756943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.570824, 36.452736, 40.894669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115329, -0.356836, -0.927020,
		0.986617, -0.067142, 0.148588,
		-0.115264, -0.931751, 0.344318,
		37.536243, 36.173210, 40.997963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.239391, 36.363132, 40.548866>,  <37.616928, 36.825436, 40.756943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.239391, 36.363132, 40.548866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.910995, 36.140827, 40.601185>,  <37.713959, 36.007446, 40.632576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.910995, 36.140827, 40.601185>,  <38.239391, 36.363132, 40.548866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.910995, 36.140827, 40.601185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115090, -0.385479, -0.915511,
		0.559225, -0.736570, 0.380436,
		-0.820988, -0.555761, 0.130797,
		37.664700, 35.974098, 40.640423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.487850, 35.794697, 40.160595>,  <38.239391, 36.363132, 40.548866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.487850, 35.794697, 40.160595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.093586, 35.755848, 40.215782>,  <37.857025, 35.732540, 40.248894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.093586, 35.755848, 40.215782>,  <38.487850, 35.794697, 40.160595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.093586, 35.755848, 40.215782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086266, -0.412653, -0.906794,
		0.144999, -0.905696, 0.398359,
		-0.985664, -0.097120, 0.137965,
		37.797886, 35.726711, 40.257172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.292233, 35.153500, 39.953003>,  <38.487850, 35.794697, 40.160595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.292233, 35.153500, 39.953003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.946342, 35.353348, 39.932487>,  <37.738808, 35.473255, 39.920177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.946342, 35.353348, 39.932487>,  <38.292233, 35.153500, 39.953003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.946342, 35.353348, 39.932487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066337, -0.214845, -0.974393,
		-0.497847, -0.839178, 0.218925,
		-0.864724, 0.499622, -0.051292,
		37.686924, 35.503235, 39.917099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.788353, 34.711021, 39.467281>,  <38.292233, 35.153500, 39.953003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.788353, 34.711021, 39.467281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.645107, 35.084385, 39.476215>,  <37.559162, 35.308403, 39.481575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.645107, 35.084385, 39.476215>,  <37.788353, 34.711021, 39.467281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.645107, 35.084385, 39.476215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265975, -0.079059, -0.960733,
		-0.894993, -0.349989, 0.276576,
		-0.358112, 0.933412, 0.022331,
		37.537674, 35.364407, 39.482914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.111694, 34.736778, 39.104107>,  <37.788353, 34.711021, 39.467281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.111694, 34.736778, 39.104107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.246952, 35.113045, 39.092773>,  <37.328106, 35.338806, 39.085972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.246952, 35.113045, 39.092773>,  <37.111694, 34.736778, 39.104107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.246952, 35.113045, 39.092773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319853, 0.086557, -0.943505,
		-0.885072, 0.328104, 0.330144,
		0.338144, 0.940668, -0.028336,
		37.348396, 35.395245, 39.084274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.663712, 35.095661, 38.560749>,  <37.111694, 34.736778, 39.104107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.663712, 35.095661, 38.560749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.968586, 35.352219, 38.595810>,  <37.151512, 35.506153, 38.616844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.968586, 35.352219, 38.595810>,  <36.663712, 35.095661, 38.560749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.968586, 35.352219, 38.595810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212635, 0.375933, -0.901920,
		-0.611435, 0.668798, 0.422915,
		0.762190, 0.641392, 0.087649,
		37.197243, 35.544636, 38.622105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.396400, 35.844646, 38.301910>,  <36.663712, 35.095661, 38.560749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.396400, 35.844646, 38.301910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.796135, 35.851624, 38.289154>,  <37.035976, 35.855812, 38.281498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.796135, 35.851624, 38.289154>,  <36.396400, 35.844646, 38.301910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.796135, 35.851624, 38.289154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035848, 0.618577, -0.784906,
		0.006035, 0.785531, 0.618793,
		0.999339, 0.017446, -0.031893,
		37.095936, 35.856857, 38.279587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.619888, 36.542740, 38.176716>,  <36.396400, 35.844646, 38.301910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.619888, 36.542740, 38.176716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.944035, 36.325611, 38.088486>,  <37.138523, 36.195332, 38.035549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.944035, 36.325611, 38.088486>,  <36.619888, 36.542740, 38.176716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.944035, 36.325611, 38.088486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139825, 0.544732, -0.826871,
		0.569000, 0.639224, 0.517331,
		0.810363, -0.542825, -0.220574,
		37.187145, 36.162762, 38.022312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.129333, 37.034309, 38.097664>,  <36.619888, 36.542740, 38.176716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.129333, 37.034309, 38.097664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.238098, 36.702290, 37.902901>,  <37.303356, 36.503078, 37.786041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.238098, 36.702290, 37.902901>,  <37.129333, 37.034309, 38.097664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.238098, 36.702290, 37.902901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146254, 0.464452, -0.873438,
		0.951142, 0.308715, 0.004894,
		0.271916, -0.830048, -0.486911,
		37.319672, 36.453274, 37.756828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.643990, 37.210793, 37.656284>,  <37.129333, 37.034309, 38.097664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.643990, 37.210793, 37.656284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.520893, 36.863712, 37.500137>,  <37.447033, 36.655464, 37.406448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.520893, 36.863712, 37.500137>,  <37.643990, 37.210793, 37.656284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.520893, 36.863712, 37.500137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034682, 0.399777, -0.915956,
		0.950837, -0.295419, -0.092936,
		-0.307745, -0.867702, -0.390368,
		37.428570, 36.603401, 37.383026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.058655, 37.138374, 37.079773>,  <37.643990, 37.210793, 37.656284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.058655, 37.138374, 37.079773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.752205, 36.886272, 37.029446>,  <37.568336, 36.735012, 36.999249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.752205, 36.886272, 37.029446>,  <38.058655, 37.138374, 37.079773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.752205, 36.886272, 37.029446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040104, 0.148510, -0.988097,
		0.641443, -0.762049, -0.088501,
		-0.766122, -0.630259, -0.125821,
		37.522369, 36.697193, 36.991699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.200790, 36.742813, 36.431107>,  <38.058655, 37.138374, 37.079773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.200790, 36.742813, 36.431107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.805676, 36.728153, 36.491688>,  <37.568607, 36.719357, 36.528034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.805676, 36.728153, 36.491688>,  <38.200790, 36.742813, 36.431107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.805676, 36.728153, 36.491688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155798, 0.249062, -0.955874,
		-0.002684, -0.967794, -0.251730,
		-0.987785, -0.036653, 0.151449,
		37.509338, 36.717155, 36.537121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.958580, 36.261402, 35.805378>,  <38.200790, 36.742813, 36.431107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.958580, 36.261402, 35.805378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.674023, 36.494392, 35.962673>,  <37.503288, 36.634186, 36.057049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.674023, 36.494392, 35.962673>,  <37.958580, 36.261402, 35.805378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.674023, 36.494392, 35.962673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209626, 0.358198, -0.909808,
		-0.670801, -0.729666, -0.132717,
		-0.711395, 0.582479, 0.393237,
		37.460606, 36.669136, 36.080643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.607330, 35.825603, 35.243561>,  <37.958580, 36.261402, 35.805378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.607330, 35.825603, 35.243561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.607727, 35.634644, 35.595036>,  <37.607964, 35.520069, 35.805920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.607727, 35.634644, 35.595036>,  <37.607330, 35.825603, 35.243561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.607727, 35.634644, 35.595036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624540, -0.686542, -0.372303,
		0.780992, -0.548405, -0.298835,
		0.000990, -0.477401, 0.878685,
		37.608025, 35.491425, 35.858643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.942436, 35.127003, 35.211823>,  <37.607330, 35.825603, 35.243561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.942436, 35.127003, 35.211823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.653229, 35.134575, 35.488049>,  <37.479706, 35.139118, 35.653786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.653229, 35.134575, 35.488049>,  <37.942436, 35.127003, 35.211823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.653229, 35.134575, 35.488049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375906, -0.849461, -0.370285,
		0.579601, -0.527312, 0.621293,
		-0.723020, 0.018930, 0.690568,
		37.436321, 35.140255, 35.695217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.402142, 35.038982, 35.801929>,  <37.942436, 35.127003, 35.211823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.402142, 35.038982, 35.801929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.565376, 34.875202, 35.475540>,  <38.663319, 34.776932, 35.279705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.565376, 34.875202, 35.475540>,  <38.402142, 35.038982, 35.801929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.565376, 34.875202, 35.475540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093466, 0.870348, -0.483485,
		0.908146, 0.273570, 0.316909,
		0.408088, -0.409455, -0.815973,
		38.687801, 34.752365, 35.230747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.994648, 35.461113, 35.670975>,  <38.402142, 35.038982, 35.801929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.994648, 35.461113, 35.670975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.875225, 35.272831, 35.338879>,  <38.803570, 35.159863, 35.139622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.875225, 35.272831, 35.338879>,  <38.994648, 35.461113, 35.670975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.875225, 35.272831, 35.338879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093301, 0.880146, -0.465445,
		0.949820, -0.061500, -0.306693,
		-0.298559, -0.470703, -0.830242,
		38.785656, 35.131618, 35.089806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.410309, 35.300701, 36.311317>,  <38.994648, 35.461113, 35.670975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.410309, 35.300701, 36.311317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.609070, 35.103802, 36.025444>,  <39.728329, 34.985664, 35.853920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.609070, 35.103802, 36.025444>,  <39.410309, 35.300701, 36.311317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.609070, 35.103802, 36.025444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710975, 0.703146, 0.010027,
		0.497594, -0.513108, 0.699372,
		0.496905, -0.492246, -0.714688,
		39.758141, 34.956127, 35.811039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.053059, 34.836090, 36.616962>,  <39.410309, 35.300701, 36.311317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.053059, 34.836090, 36.616962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.087746, 35.011097, 36.258953>,  <40.108559, 35.116100, 36.044147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.087746, 35.011097, 36.258953>,  <40.053059, 34.836090, 36.616962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.087746, 35.011097, 36.258953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767340, 0.543627, 0.340087,
		0.635350, -0.716277, -0.288580,
		0.086716, 0.437513, -0.895021,
		40.113762, 35.142349, 35.990448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.714996, 34.781235, 36.349064>,  <40.053059, 34.836090, 36.616962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.714996, 34.781235, 36.349064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.548016, 35.123825, 36.227623>,  <40.447826, 35.329380, 36.154758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.548016, 35.123825, 36.227623>,  <40.714996, 34.781235, 36.349064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.548016, 35.123825, 36.227623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727717, 0.515191, 0.452776,
		0.544205, -0.031920, -0.838345,
		-0.417456, 0.856481, -0.303598,
		40.422779, 35.380768, 36.136543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.137993, 34.965855, 35.769283>,  <40.714996, 34.781235, 36.349064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.137993, 34.965855, 35.769283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.949863, 35.235500, 35.997097>,  <40.836987, 35.397289, 36.133785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.949863, 35.235500, 35.997097>,  <41.137993, 34.965855, 35.769283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.949863, 35.235500, 35.997097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879815, 0.408439, 0.243113,
		-0.068734, 0.615426, -0.785192,
		-0.470321, 0.674113, 0.569534,
		40.808765, 35.437733, 36.167957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.927444, 35.006924, 35.684189>,  <41.137993, 34.965855, 35.769283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.927444, 35.006924, 35.684189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.166584, 34.713688, 35.554474>,  <42.310066, 34.537746, 35.476646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.166584, 34.713688, 35.554474>,  <41.927444, 35.006924, 35.684189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.166584, 34.713688, 35.554474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230175, -0.230513, 0.945454,
		-0.767855, -0.639876, 0.030928,
		0.597844, -0.733091, -0.324284,
		42.345936, 34.493759, 35.457188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.850353, 34.360664, 36.175247>,  <41.927444, 35.006924, 35.684189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.850353, 34.360664, 36.175247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.213943, 34.330666, 36.011223>,  <42.432098, 34.312668, 35.912807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.213943, 34.330666, 36.011223>,  <41.850353, 34.360664, 36.175247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.213943, 34.330666, 36.011223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392019, -0.180699, 0.902036,
		-0.141745, -0.980675, -0.134850,
		0.908972, -0.074995, -0.410057,
		42.486633, 34.308167, 35.888206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.146019, 33.798153, 36.404881>,  <41.850353, 34.360664, 36.175247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.146019, 33.798153, 36.404881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.452938, 34.025333, 36.285767>,  <42.637089, 34.161644, 36.214298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.452938, 34.025333, 36.285767>,  <42.146019, 33.798153, 36.404881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.452938, 34.025333, 36.285767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417587, -0.090089, 0.904160,
		0.486695, -0.818115, -0.306296,
		0.767300, 0.567955, -0.297789,
		42.683128, 34.195721, 36.196430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.846424, 33.418259, 36.542099>,  <42.146019, 33.798153, 36.404881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.846424, 33.418259, 36.542099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.913242, 33.812458, 36.530205>,  <42.953331, 34.048977, 36.523067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.913242, 33.812458, 36.530205>,  <42.846424, 33.418259, 36.542099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.913242, 33.812458, 36.530205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390954, -0.038516, 0.919604,
		0.905125, -0.165241, -0.391720,
		0.167044, 0.985501, -0.029740,
		42.963356, 34.108109, 36.521282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.456985, 33.482304, 36.887619>,  <42.846424, 33.418259, 36.542099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.456985, 33.482304, 36.887619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.345562, 33.866470, 36.886398>,  <43.278709, 34.096970, 36.885666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.345562, 33.866470, 36.886398>,  <43.456985, 33.482304, 36.887619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.345562, 33.866470, 36.886398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566094, 0.166752, 0.807299,
		0.775851, 0.223151, -0.590135,
		-0.278556, 0.960415, -0.003050,
		43.261993, 34.154594, 36.885483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.070560, 33.854023, 37.009983>,  <43.456985, 33.482304, 36.887619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.070560, 33.854023, 37.009983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.777374, 34.103935, 37.117622>,  <43.601463, 34.253883, 37.182205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.777374, 34.103935, 37.117622>,  <44.070560, 33.854023, 37.009983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.777374, 34.103935, 37.117622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471096, 0.180819, 0.863350,
		0.490748, 0.759573, -0.426866,
		-0.732963, 0.624782, 0.269095,
		43.557484, 34.291370, 37.198349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.352867, 34.486629, 37.284763>,  <44.070560, 33.854023, 37.009983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.352867, 34.486629, 37.284763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.994118, 34.455185, 37.458862>,  <43.778870, 34.436317, 37.563320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.994118, 34.455185, 37.458862>,  <44.352867, 34.486629, 37.284763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.994118, 34.455185, 37.458862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419810, 0.158399, 0.893683,
		-0.139195, 0.984241, -0.109062,
		-0.896875, -0.078611, 0.435243,
		43.725056, 34.431602, 37.589436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.350681, 35.027363, 37.688152>,  <44.352867, 34.486629, 37.284763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.350681, 35.027363, 37.688152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.058563, 34.815754, 37.861034>,  <43.883293, 34.688789, 37.964764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.058563, 34.815754, 37.861034>,  <44.350681, 35.027363, 37.688152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.058563, 34.815754, 37.861034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364575, 0.233227, 0.901493,
		-0.577713, 0.815929, 0.022544,
		-0.730296, -0.529023, 0.432206,
		43.839474, 34.657047, 37.990696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.070400, 35.451950, 38.269337>,  <44.350681, 35.027363, 37.688152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.070400, 35.451950, 38.269337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.944611, 35.079033, 38.340813>,  <43.869137, 34.855282, 38.383698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.944611, 35.079033, 38.340813>,  <44.070400, 35.451950, 38.269337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.944611, 35.079033, 38.340813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189353, 0.122851, 0.974194,
		-0.930190, 0.340192, 0.137900,
		-0.314472, -0.932297, 0.178691,
		43.850269, 34.799343, 38.394421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.667980, 35.505787, 38.863781>,  <44.070400, 35.451950, 38.269337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.667980, 35.505787, 38.863781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.779984, 35.122208, 38.845860>,  <43.847187, 34.892059, 38.835106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.779984, 35.122208, 38.845860>,  <43.667980, 35.505787, 38.863781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.779984, 35.122208, 38.845860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133888, -0.007205, 0.990970,
		-0.950614, -0.283482, 0.126374,
		0.280012, -0.958950, -0.044804,
		43.863987, 34.834522, 38.832417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.161850, 35.116398, 39.374741>,  <43.667980, 35.505787, 38.863781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.161850, 35.116398, 39.374741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.493179, 34.899933, 39.316757>,  <43.691978, 34.770054, 39.281967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.493179, 34.899933, 39.316757>,  <43.161850, 35.116398, 39.374741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.493179, 34.899933, 39.316757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015831, -0.236028, 0.971617,
		-0.560022, -0.807112, -0.186941,
		0.828327, -0.541167, -0.144958,
		43.741676, 34.737583, 39.273270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.048691, 34.589634, 39.728874>,  <43.161850, 35.116398, 39.374741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.048691, 34.589634, 39.728874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.448521, 34.588192, 39.717354>,  <43.688419, 34.587326, 39.710442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.448521, 34.588192, 39.717354>,  <43.048691, 34.589634, 39.728874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.448521, 34.588192, 39.717354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027866, -0.158363, 0.986988,
		-0.008119, -0.987374, -0.158196,
		0.999579, -0.003605, -0.028800,
		43.748394, 34.587112, 39.708714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.258358, 33.961586, 40.036568>,  <43.048691, 34.589634, 39.728874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.258358, 33.961586, 40.036568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.600536, 34.168423, 40.024975>,  <43.805843, 34.292522, 40.018021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.600536, 34.168423, 40.024975>,  <43.258358, 33.961586, 40.036568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.600536, 34.168423, 40.024975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278263, -0.411708, 0.867794,
		0.436795, -0.750410, -0.496078,
		0.855441, 0.517089, -0.028979,
		43.857170, 34.323547, 40.016281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.900318, 33.465843, 40.245747>,  <43.258358, 33.961586, 40.036568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.900318, 33.465843, 40.245747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.006268, 33.844940, 40.316883>,  <44.069836, 34.072399, 40.359566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.006268, 33.844940, 40.316883>,  <43.900318, 33.465843, 40.245747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.006268, 33.844940, 40.316883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422797, -0.279903, 0.861915,
		0.866651, -0.153107, -0.474841,
		0.264874, 0.947741, 0.177845,
		44.085732, 34.129261, 40.370235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.512367, 33.381832, 40.627369>,  <43.900318, 33.465843, 40.245747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.512367, 33.381832, 40.627369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.410492, 33.764748, 40.682117>,  <44.349369, 33.994495, 40.714966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.410492, 33.764748, 40.682117>,  <44.512367, 33.381832, 40.627369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.410492, 33.764748, 40.682117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507176, 0.011718, 0.861763,
		0.823352, 0.288898, -0.488498,
		-0.254686, 0.957288, 0.136874,
		44.334087, 34.051933, 40.723179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.147034, 33.677418, 40.662109>,  <44.512367, 33.381832, 40.627369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.147034, 33.677418, 40.662109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.876667, 33.919617, 40.830162>,  <44.714447, 34.064938, 40.930992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.876667, 33.919617, 40.830162>,  <45.147034, 33.677418, 40.662109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.876667, 33.919617, 40.830162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583040, 0.090649, 0.807370,
		0.450775, 0.790669, -0.414300,
		-0.675918, 0.605496, 0.420130,
		44.673893, 34.101265, 40.956200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.516861, 34.205956, 41.010910>,  <45.147034, 33.677418, 40.662109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.516861, 34.205956, 41.010910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.160675, 34.249519, 41.187641>,  <44.946964, 34.275658, 41.293678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.160675, 34.249519, 41.187641>,  <45.516861, 34.205956, 41.010910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.160675, 34.249519, 41.187641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454793, 0.180299, 0.872156,
		0.015327, 0.977564, -0.210083,
		-0.890465, 0.108912, 0.441826,
		44.893536, 34.282192, 41.320190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.715061, 34.628944, 41.535057>,  <45.516861, 34.205956, 41.010910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.715061, 34.628944, 41.535057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.369019, 34.476246, 41.665207>,  <45.161392, 34.384628, 41.743298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.369019, 34.476246, 41.665207>,  <45.715061, 34.628944, 41.535057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.369019, 34.476246, 41.665207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316934, 0.086764, 0.944471,
		-0.388775, 0.920187, 0.045927,
		-0.865105, -0.381743, 0.325370,
		45.109486, 34.361725, 41.762817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.452339, 35.060715, 42.102978>,  <45.715061, 34.628944, 41.535057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.452339, 35.060715, 42.102978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.289745, 34.696255, 42.130035>,  <45.192188, 34.477577, 42.146271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.289745, 34.696255, 42.130035>,  <45.452339, 35.060715, 42.102978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.289745, 34.696255, 42.130035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271646, -0.049836, 0.961106,
		-0.872341, 0.409050, 0.267768,
		-0.406485, -0.911150, 0.067643,
		45.167801, 34.422909, 42.150330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.047058, 35.044926, 42.728455>,  <45.452339, 35.060715, 42.102978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.047058, 35.044926, 42.728455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.103935, 34.654346, 42.663559>,  <45.138062, 34.419998, 42.624622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.103935, 34.654346, 42.663559>,  <45.047058, 35.044926, 42.728455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.103935, 34.654346, 42.663559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303847, -0.112934, 0.946004,
		-0.942050, -0.183813, 0.280633,
		0.142195, -0.976452, -0.162241,
		45.146595, 34.361412, 42.614887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.755150, 34.663673, 43.252190>,  <45.047058, 35.044926, 42.728455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.755150, 34.663673, 43.252190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.041401, 34.433533, 43.093773>,  <45.213150, 34.295448, 42.998722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.041401, 34.433533, 43.093773>,  <44.755150, 34.663673, 43.252190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.041401, 34.433533, 43.093773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320776, -0.232957, 0.918060,
		-0.620466, -0.784030, 0.017847,
		0.715629, -0.575350, -0.396040,
		45.256088, 34.260929, 42.974960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.519753, 34.095654, 43.524136>,  <44.755150, 34.663673, 43.252190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.519753, 34.095654, 43.524136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.904404, 34.027294, 43.438290>,  <45.135193, 33.986279, 43.386780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.904404, 34.027294, 43.438290>,  <44.519753, 34.095654, 43.524136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.904404, 34.027294, 43.438290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111605, -0.470942, 0.875076,
		-0.250625, -0.865451, -0.433799,
		0.961630, -0.170902, -0.214619,
		45.192894, 33.976025, 43.373905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.926800, 33.575993, 43.630180>,  <44.519753, 34.095654, 43.524136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.926800, 33.575993, 43.630180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.723389, 33.253635, 43.751457>,  <44.601341, 33.060219, 43.824223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.723389, 33.253635, 43.751457>,  <44.926800, 33.575993, 43.630180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.723389, 33.253635, 43.751457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498163, -0.562578, -0.659802,
		0.702304, -0.184487, 0.687556,
		-0.508529, -0.805897, 0.303196,
		44.570831, 33.011868, 43.842415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.430252, 33.111553, 43.522434>,  <44.926800, 33.575993, 43.630180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.430252, 33.111553, 43.522434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.086353, 32.926720, 43.609440>,  <44.880013, 32.815819, 43.661644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.086353, 32.926720, 43.609440>,  <45.430252, 33.111553, 43.522434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.086353, 32.926720, 43.609440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268071, -0.770813, -0.577915,
		0.434706, -0.438552, 0.786576,
		-0.859749, -0.462082, 0.217514,
		44.828430, 32.788094, 43.674694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.644299, 32.416431, 43.348133>,  <45.430252, 33.111553, 43.522434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.644299, 32.416431, 43.348133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.247875, 32.422295, 43.401176>,  <45.010021, 32.425812, 43.433002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.247875, 32.422295, 43.401176>,  <45.644299, 32.416431, 43.348133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.247875, 32.422295, 43.401176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111942, -0.632080, -0.766775,
		0.072578, -0.774765, 0.628070,
		-0.991061, 0.014657, 0.132604,
		44.950558, 32.426693, 43.440956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.229683, 31.770582, 43.727665>,  <45.644299, 32.416431, 43.348133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.229683, 31.770582, 43.727665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.002556, 31.935709, 43.442802>,  <44.866280, 32.034786, 43.271885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.002556, 31.935709, 43.442802>,  <45.229683, 31.770582, 43.727665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.002556, 31.935709, 43.442802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156142, -0.795432, -0.585583,
		-0.808215, -0.443698, 0.387196,
		-0.567810, 0.412819, -0.712161,
		44.832211, 32.059555, 43.229156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.673260, 31.359661, 43.522411>,  <45.229683, 31.770582, 43.727665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.673260, 31.359661, 43.522411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.771576, 31.588451, 43.209381>,  <44.830566, 31.725725, 43.021561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.771576, 31.588451, 43.209381>,  <44.673260, 31.359661, 43.522411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.771576, 31.588451, 43.209381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026475, -0.803083, -0.595278,
		-0.968960, 0.167035, -0.182251,
		0.245795, 0.571975, -0.782578,
		44.845314, 31.760044, 42.974609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.186756, 31.259275, 43.038898>,  <44.673260, 31.359661, 43.522411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.186756, 31.259275, 43.038898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.540916, 31.355230, 42.879639>,  <44.753410, 31.412804, 42.784081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.540916, 31.355230, 42.879639>,  <44.186756, 31.259275, 43.038898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.540916, 31.355230, 42.879639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068914, -0.914823, -0.397932,
		-0.459696, 0.324889, -0.826514,
		0.885398, 0.239886, -0.398151,
		44.806538, 31.427197, 42.760193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.221981, 31.028477, 42.268242>,  <44.186756, 31.259275, 43.038898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.221981, 31.028477, 42.268242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.583748, 31.038527, 42.438606>,  <44.800808, 31.044558, 42.540825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.583748, 31.038527, 42.438606>,  <44.221981, 31.028477, 42.268242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.583748, 31.038527, 42.438606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102960, -0.981614, -0.160728,
		0.414040, 0.189216, -0.890375,
		0.904417, 0.025126, 0.425909,
		44.855072, 31.046064, 42.566380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.673069, 30.775867, 41.831963>,  <44.221981, 31.028477, 42.268242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.673069, 30.775867, 41.831963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.833149, 30.707239, 42.192051>,  <44.929195, 30.666061, 42.408104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.833149, 30.707239, 42.192051>,  <44.673069, 30.775867, 41.831963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.833149, 30.707239, 42.192051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052505, -0.976412, -0.209433,
		0.914922, 0.131082, -0.381753,
		0.400201, -0.171571, 0.900224,
		44.953209, 30.655767, 42.462116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.353451, 30.337778, 41.688572>,  <44.673069, 30.775867, 41.831963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.353451, 30.337778, 41.688572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.059669, 30.149977, 41.492554>,  <44.883400, 30.037296, 41.374943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.059669, 30.149977, 41.492554>,  <45.353451, 30.337778, 41.688572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.059669, 30.149977, 41.492554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278518, 0.449942, -0.848516,
		0.618872, -0.759683, -0.199697,
		-0.734455, -0.469504, -0.490042,
		44.839333, 30.009125, 41.345543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.634502, 29.939278, 41.083584>,  <45.353451, 30.337778, 41.688572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.634502, 29.939278, 41.083584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.258381, 30.065533, 41.032673>,  <45.032707, 30.141287, 41.002125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.258381, 30.065533, 41.032673>,  <45.634502, 29.939278, 41.083584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.258381, 30.065533, 41.032673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294289, 0.566242, -0.769911,
		-0.170943, -0.761408, -0.625329,
		-0.940304, 0.315638, -0.127279,
		44.976288, 30.160225, 40.994488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.648956, 30.136312, 40.330494>,  <45.634502, 29.939278, 41.083584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.648956, 30.136312, 40.330494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.299034, 30.279146, 40.461460>,  <45.089081, 30.364847, 40.540039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.299034, 30.279146, 40.461460>,  <45.648956, 30.136312, 40.330494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.299034, 30.279146, 40.461460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038076, 0.724405, -0.688322,
		-0.482970, -0.589684, -0.647313,
		-0.874809, 0.357086, 0.327413,
		45.036591, 30.386272, 40.559685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.122089, 30.138401, 39.714233>,  <45.648956, 30.136312, 40.330494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.122089, 30.138401, 39.714233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.014969, 30.402266, 39.995129>,  <44.950699, 30.560583, 40.163666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.014969, 30.402266, 39.995129>,  <45.122089, 30.138401, 39.714233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.014969, 30.402266, 39.995129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183166, 0.750421, -0.635073,
		-0.945904, -0.041445, -0.321788,
		-0.267797, 0.659659, 0.702235,
		44.934631, 30.600163, 40.205799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.561707, 30.546488, 39.411148>,  <45.122089, 30.138401, 39.714233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.561707, 30.546488, 39.411148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.727409, 30.758909, 39.706818>,  <44.826832, 30.886362, 39.884220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.727409, 30.758909, 39.706818>,  <44.561707, 30.546488, 39.411148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.727409, 30.758909, 39.706818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091317, 0.783784, -0.614283,
		-0.905569, 0.321967, 0.276191,
		0.414254, 0.531055, 0.739172,
		44.851685, 30.918226, 39.928570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.294300, 31.118643, 39.237648>,  <44.561707, 30.546488, 39.411148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.294300, 31.118643, 39.237648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.594513, 31.202093, 39.488464>,  <44.774639, 31.252163, 39.638954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.594513, 31.202093, 39.488464>,  <44.294300, 31.118643, 39.237648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.594513, 31.202093, 39.488464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162132, 0.861728, -0.480768,
		-0.640640, 0.462494, 0.612928,
		0.750529, 0.208624, 0.627042,
		44.819672, 31.264681, 39.676579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.144165, 31.823095, 39.456017>,  <44.294300, 31.118643, 39.237648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.144165, 31.823095, 39.456017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.539688, 31.781996, 39.499271>,  <44.777004, 31.757336, 39.525223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.539688, 31.781996, 39.499271>,  <44.144165, 31.823095, 39.456017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.539688, 31.781996, 39.499271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140907, 0.881293, -0.451074,
		-0.048953, 0.461265, 0.885911,
		0.988812, -0.102749, 0.108138,
		44.836330, 31.751171, 39.531712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.360428, 32.592804, 39.491325>,  <44.144165, 31.823095, 39.456017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.360428, 32.592804, 39.491325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.677994, 32.368301, 39.397781>,  <44.868534, 32.233601, 39.341656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.677994, 32.368301, 39.397781>,  <44.360428, 32.592804, 39.491325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.677994, 32.368301, 39.397781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150805, 0.554364, -0.818498,
		0.589034, 0.614548, 0.524757,
		0.793912, -0.561259, -0.233862,
		44.916168, 32.199924, 39.327621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.833157, 33.081692, 39.262913>,  <44.360428, 32.592804, 39.491325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.833157, 33.081692, 39.262913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.020687, 32.754372, 39.129890>,  <45.133205, 32.557980, 39.050079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.020687, 32.754372, 39.129890>,  <44.833157, 33.081692, 39.262913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.020687, 32.754372, 39.129890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288211, 0.497603, -0.818123,
		0.834949, 0.287710, 0.469131,
		0.468823, -0.818299, -0.332552,
		45.161335, 32.508881, 39.030125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.496357, 33.304821, 38.992260>,  <44.833157, 33.081692, 39.262913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.496357, 33.304821, 38.992260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.440403, 32.942669, 38.831905>,  <45.406830, 32.725376, 38.735691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.440403, 32.942669, 38.831905>,  <45.496357, 33.304821, 38.992260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.440403, 32.942669, 38.831905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317186, 0.342564, -0.884332,
		0.937991, -0.250857, 0.239257,
		-0.139880, -0.905384, -0.400890,
		45.398438, 32.671055, 38.711639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.133312, 33.081844, 38.712410>,  <45.496357, 33.304821, 38.992260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.133312, 33.081844, 38.712410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.856609, 32.889076, 38.497292>,  <45.690590, 32.773415, 38.368221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.856609, 32.889076, 38.497292>,  <46.133312, 33.081844, 38.712410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.856609, 32.889076, 38.497292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402845, 0.360553, -0.841260,
		0.599327, -0.798593, -0.055273,
		-0.691753, -0.481923, -0.537799,
		45.649082, 32.744499, 38.335953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.428928, 32.629749, 38.160877>,  <46.133312, 33.081844, 38.712410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.428928, 32.629749, 38.160877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.054688, 32.731396, 38.062832>,  <45.830143, 32.792385, 38.004005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.054688, 32.731396, 38.062832>,  <46.428928, 32.629749, 38.160877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.054688, 32.731396, 38.062832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310947, 0.264211, -0.912965,
		-0.167239, -0.930385, -0.326212,
		-0.935598, 0.254119, -0.245115,
		45.774010, 32.807632, 37.989296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.332439, 32.393105, 37.476250>,  <46.428928, 32.629749, 38.160877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.332439, 32.393105, 37.476250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.028725, 32.649635, 37.520405>,  <45.846497, 32.803555, 37.546898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.028725, 32.649635, 37.520405>,  <46.332439, 32.393105, 37.476250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.028725, 32.649635, 37.520405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163111, 0.351773, -0.921765,
		-0.629986, -0.681875, -0.371703,
		-0.759284, 0.641328, 0.110391,
		45.800938, 32.842033, 37.553524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.997948, 32.421745, 36.792282>,  <46.332439, 32.393105, 37.476250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.997948, 32.421745, 36.792282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.838192, 32.738071, 36.977802>,  <45.742340, 32.927868, 37.089115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.838192, 32.738071, 36.977802>,  <45.997948, 32.421745, 36.792282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.838192, 32.738071, 36.977802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179362, 0.428720, -0.885454,
		-0.899065, -0.436827, -0.029384,
		-0.399388, 0.790810, 0.463797,
		45.718376, 32.975315, 37.116940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.393333, 32.604095, 36.432674>,  <45.997948, 32.421745, 36.792282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.393333, 32.604095, 36.432674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.495827, 32.927998, 36.643818>,  <45.557323, 33.122337, 36.770504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.495827, 32.927998, 36.643818>,  <45.393333, 32.604095, 36.432674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.495827, 32.927998, 36.643818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189058, 0.577530, -0.794176,
		-0.947945, 0.103700, 0.301075,
		0.256236, 0.809756, 0.527862,
		45.572697, 33.170925, 36.802177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.007427, 33.138260, 36.273457>,  <45.393333, 32.604095, 36.432674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.007427, 33.138260, 36.273457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.312855, 33.340378, 36.434277>,  <45.496109, 33.461647, 36.530769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.312855, 33.340378, 36.434277>,  <45.007427, 33.138260, 36.273457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.312855, 33.340378, 36.434277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086851, 0.697342, -0.711457,
		-0.639862, 0.508326, 0.576352,
		0.763566, 0.505291, 0.402054,
		45.541924, 33.491966, 36.554893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.780022, 33.869759, 36.383293>,  <45.007427, 33.138260, 36.273457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.780022, 33.869759, 36.383293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.178734, 33.883621, 36.354385>,  <45.417961, 33.891941, 36.337040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.178734, 33.883621, 36.354385>,  <44.780022, 33.869759, 36.383293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.178734, 33.883621, 36.354385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078281, 0.614790, -0.784796,
		0.017232, 0.787929, 0.615526,
		0.996782, 0.034660, -0.072274,
		45.477768, 33.894020, 36.332703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.890068, 34.493958, 36.206669>,  <44.780022, 33.869759, 36.383293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.890068, 34.493958, 36.206669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.219212, 34.300652, 36.087097>,  <45.416698, 34.184669, 36.015354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.219212, 34.300652, 36.087097>,  <44.890068, 34.493958, 36.206669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.219212, 34.300652, 36.087097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038707, 0.477165, -0.877961,
		0.566927, 0.734008, 0.373934,
		0.822859, -0.483265, -0.298929,
		45.466068, 34.155670, 35.997417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.059715, 34.927387, 35.788708>,  <44.890068, 34.493958, 36.206669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.059715, 34.927387, 35.788708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.265820, 34.604828, 35.672615>,  <45.389481, 34.411293, 35.602959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.265820, 34.604828, 35.672615>,  <45.059715, 34.927387, 35.788708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.265820, 34.604828, 35.672615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140186, 0.254780, -0.956784,
		0.845491, 0.533679, 0.018233,
		0.515260, -0.806396, -0.290229,
		45.420399, 34.362907, 35.585545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.472687, 35.194279, 35.291943>,  <45.059715, 34.927387, 35.788708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.472687, 35.194279, 35.291943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.419601, 34.806652, 35.208710>,  <45.387749, 34.574078, 35.158772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.419601, 34.806652, 35.208710>,  <45.472687, 35.194279, 35.291943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.419601, 34.806652, 35.208710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347498, 0.242105, -0.905886,
		0.928242, -0.047914, -0.368879,
		-0.132713, -0.969066, -0.208082,
		45.379787, 34.515934, 35.146286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.579411, 35.119553, 34.550472>,  <45.472687, 35.194279, 35.291943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.579411, 35.119553, 34.550472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.415882, 34.761940, 34.623764>,  <45.317764, 34.547371, 34.667740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.415882, 34.761940, 34.623764>,  <45.579411, 35.119553, 34.550472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.415882, 34.761940, 34.623764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364753, -0.023970, -0.930796,
		0.836551, -0.447365, -0.316301,
		-0.408824, -0.894030, 0.183230,
		45.293236, 34.493732, 34.678734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.744190, 34.647610, 33.942062>,  <45.579411, 35.119553, 34.550472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.744190, 34.647610, 33.942062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.423634, 34.518650, 34.143589>,  <45.231300, 34.441273, 34.264507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.423634, 34.518650, 34.143589>,  <45.744190, 34.647610, 33.942062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.423634, 34.518650, 34.143589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518399, -0.045834, -0.853910,
		0.298397, -0.945491, -0.130403,
		-0.801387, -0.322405, 0.503819,
		45.183216, 34.421928, 34.294735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.413467, 35.007076, 34.097988>,  <45.744190, 34.647610, 33.942062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.413467, 35.007076, 34.097988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.689632, 34.743507, 33.978558>,  <46.855331, 34.585365, 33.906898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.689632, 34.743507, 33.978558>,  <46.413467, 35.007076, 34.097988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.689632, 34.743507, 33.978558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545183, 0.202639, 0.813457,
		-0.475500, -0.724404, 0.499138,
		0.690417, -0.658921, -0.298578,
		46.896759, 34.545830, 33.888985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.588314, 34.489223, 34.688953>,  <46.413467, 35.007076, 34.097988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.588314, 34.489223, 34.688953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.914188, 34.536594, 34.461880>,  <47.109715, 34.565018, 34.325634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.914188, 34.536594, 34.461880>,  <46.588314, 34.489223, 34.688953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.914188, 34.536594, 34.461880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519278, 0.286794, 0.805047,
		0.258146, -0.950645, 0.172151,
		0.814685, 0.118425, -0.567683,
		47.158592, 34.572121, 34.291576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.234051, 34.254097, 35.171505>,  <46.588314, 34.489223, 34.688953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.234051, 34.254097, 35.171505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.322277, 34.522926, 34.888756>,  <47.375214, 34.684223, 34.719105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.322277, 34.522926, 34.888756>,  <47.234051, 34.254097, 35.171505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.322277, 34.522926, 34.888756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213649, 0.673834, 0.707320,
		0.951686, -0.307032, 0.005035,
		0.220563, 0.672071, -0.706875,
		47.388447, 34.724548, 34.676693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.992470, 34.552750, 35.143051>,  <47.234051, 34.254097, 35.171505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.992470, 34.552750, 35.143051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.678764, 34.779140, 35.041389>,  <47.490540, 34.914974, 34.980392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.678764, 34.779140, 35.041389>,  <47.992470, 34.552750, 35.143051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.678764, 34.779140, 35.041389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195161, 0.613900, 0.764879,
		0.588931, 0.550267, -0.591918,
		-0.784266, 0.565980, -0.254154,
		47.443485, 34.948933, 34.965141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.939899, 39.234024, 45.793526> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.553566, 39.131496, 45.808884>,  <33.321766, 39.069981, 45.818096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.553566, 39.131496, 45.808884>,  <33.939899, 39.234024, 45.793526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.553566, 39.131496, 45.808884> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043408, -0.306017, -0.951036,
		0.255518, -0.916872, 0.306687,
		-0.965830, -0.256319, 0.038393,
		33.263817, 39.054600, 45.820400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.880741, 38.525520, 45.704411>,  <33.939899, 39.234024, 45.793526>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.880741, 38.525520, 45.704411> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.523884, 38.670841, 45.597008>,  <33.309769, 38.758034, 45.532566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.523884, 38.670841, 45.597008>,  <33.880741, 38.525520, 45.704411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.523884, 38.670841, 45.597008> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044080, -0.521512, -0.852105,
		-0.449601, -0.772033, 0.449248,
		-0.892141, 0.363304, -0.268504,
		33.256241, 38.779831, 45.516457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.544888, 37.956882, 45.354816>,  <33.880741, 38.525520, 45.704411>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.544888, 37.956882, 45.354816> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.333591, 38.273720, 45.232468>,  <33.206814, 38.463821, 45.159058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.333591, 38.273720, 45.232468>,  <33.544888, 37.956882, 45.354816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.333591, 38.273720, 45.232468> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235888, -0.482950, -0.843277,
		-0.815674, -0.373298, 0.441956,
		-0.528236, 0.792091, -0.305873,
		33.175121, 38.511349, 45.140705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.953152, 37.678169, 44.987465>,  <33.544888, 37.956882, 45.354816>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.953152, 37.678169, 44.987465> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.992508, 38.057652, 44.867275>,  <33.016121, 38.285339, 44.795162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.992508, 38.057652, 44.867275>,  <32.953152, 37.678169, 44.987465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.992508, 38.057652, 44.867275> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192185, -0.278138, -0.941118,
		-0.976414, 0.150342, 0.154960,
		0.098389, 0.948702, -0.300471,
		33.022026, 38.342262, 44.777134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.378941, 37.762173, 44.642120>,  <32.953152, 37.678169, 44.987465>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.378941, 37.762173, 44.642120> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.639713, 38.044662, 44.531677>,  <32.796177, 38.214157, 44.465412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.639713, 38.044662, 44.531677>,  <32.378941, 37.762173, 44.642120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.639713, 38.044662, 44.531677> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175208, -0.213975, -0.960998,
		-0.737757, 0.674882, -0.015761,
		0.651933, 0.706221, -0.276106,
		32.835293, 38.256531, 44.448845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.198494, 37.873245, 43.997181>,  <32.378941, 37.762173, 44.642120>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.198494, 37.873245, 43.997181> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.562603, 38.034672, 43.960220>,  <32.781067, 38.131527, 43.938042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.562603, 38.034672, 43.960220>,  <32.198494, 37.873245, 43.997181>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.562603, 38.034672, 43.960220> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075468, -0.057713, -0.995477,
		-0.407074, 0.913128, -0.022079,
		0.910272, 0.403566, -0.092405,
		32.835686, 38.155743, 43.932499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.167027, 38.174263, 43.326622>,  <32.198494, 37.873245, 43.997181>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.167027, 38.174263, 43.326622> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.558403, 38.197823, 43.405800>,  <32.793228, 38.211960, 43.453308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.558403, 38.197823, 43.405800>,  <32.167027, 38.174263, 43.326622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.558403, 38.197823, 43.405800> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201311, -0.058076, -0.977804,
		-0.046095, 0.996573, -0.068680,
		0.978442, 0.058898, 0.197944,
		32.851936, 38.215492, 43.465183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.411655, 38.561558, 42.771301>,  <32.167027, 38.174263, 43.326622>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.411655, 38.561558, 42.771301> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.761948, 38.428608, 42.911377>,  <32.972122, 38.348839, 42.995422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.761948, 38.428608, 42.911377>,  <32.411655, 38.561558, 42.771301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.761948, 38.428608, 42.911377> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365317, -0.018056, -0.930708,
		0.315669, 0.942974, 0.105610,
		0.875726, -0.332377, 0.350185,
		33.024666, 38.328896, 43.016434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.952038, 39.026978, 42.653717>,  <32.411655, 38.561558, 42.771301>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.952038, 39.026978, 42.653717> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.097645, 38.655655, 42.684017>,  <33.185009, 38.432861, 42.702198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.097645, 38.655655, 42.684017>,  <32.952038, 39.026978, 42.653717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.097645, 38.655655, 42.684017> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306100, 0.042429, -0.951054,
		0.879654, 0.369390, 0.299599,
		0.364022, -0.928305, 0.075748,
		33.206852, 38.377163, 42.706741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.482189, 38.994530, 42.129448>,  <32.952038, 39.026978, 42.653717>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.482189, 38.994530, 42.129448> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.417702, 38.614201, 42.235237>,  <33.379009, 38.386002, 42.298710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.417702, 38.614201, 42.235237>,  <33.482189, 38.994530, 42.129448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.417702, 38.614201, 42.235237> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203896, -0.294285, -0.933714,
		0.965627, -0.096605, 0.241313,
		-0.161216, -0.950823, 0.264472,
		33.369335, 38.328953, 42.314579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.068607, 38.611221, 42.031765>,  <33.482189, 38.994530, 42.129448>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.068607, 38.611221, 42.031765> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.771790, 38.344620, 42.003071>,  <33.593700, 38.184658, 41.985855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.771790, 38.344620, 42.003071>,  <34.068607, 38.611221, 42.031765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.771790, 38.344620, 42.003071> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285753, -0.217698, -0.933249,
		0.606399, -0.713007, 0.351997,
		-0.742042, -0.666505, -0.071732,
		33.549175, 38.144669, 41.981552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.317856, 37.947269, 41.701931>,  <34.068607, 38.611221, 42.031765>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.317856, 37.947269, 41.701931> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.929802, 37.861698, 41.656193>,  <33.696968, 37.810356, 41.628750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.929802, 37.861698, 41.656193>,  <34.317856, 37.947269, 41.701931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.929802, 37.861698, 41.656193> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178058, -0.307931, -0.934598,
		0.164725, -0.927046, 0.336826,
		-0.970135, -0.213926, -0.114344,
		33.638763, 37.797520, 41.621891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.186291, 37.190247, 41.367817>,  <34.317856, 37.947269, 41.701931>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.186291, 37.190247, 41.367817> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.866516, 37.422462, 41.306011>,  <33.674652, 37.561790, 41.268929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.866516, 37.422462, 41.306011>,  <34.186291, 37.190247, 41.367817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.866516, 37.422462, 41.306011> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162803, -0.456936, -0.874474,
		-0.578269, -0.673932, 0.459805,
		-0.799437, 0.580539, -0.154514,
		33.626686, 37.596622, 41.259659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.655254, 36.760208, 41.004429>,  <34.186291, 37.190247, 41.367817>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.655254, 36.760208, 41.004429> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.544029, 37.136112, 40.924889>,  <33.477295, 37.361652, 40.877163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.544029, 37.136112, 40.924889>,  <33.655254, 36.760208, 41.004429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.544029, 37.136112, 40.924889> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263344, -0.273662, -0.925073,
		-0.923760, -0.204861, 0.323573,
		-0.278061, 0.939755, -0.198849,
		33.460609, 37.418037, 40.865234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.136555, 36.807587, 40.411713>,  <33.655254, 36.760208, 41.004429>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.136555, 36.807587, 40.411713> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.292217, 37.175961, 40.403358>,  <33.385612, 37.396984, 40.398346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.292217, 37.175961, 40.403358>,  <33.136555, 36.807587, 40.411713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.292217, 37.175961, 40.403358> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009013, -0.018866, -0.999781,
		-0.921129, 0.389257, 0.000958,
		0.389154, 0.920936, -0.020886,
		33.408962, 37.452240, 40.397091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.845016, 37.060917, 39.815781>,  <33.136555, 36.807587, 40.411713>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.845016, 37.060917, 39.815781> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.146233, 37.314869, 39.884895>,  <33.326962, 37.467239, 39.926365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.146233, 37.314869, 39.884895>,  <32.845016, 37.060917, 39.815781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.146233, 37.314869, 39.884895> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128234, 0.115965, -0.984941,
		-0.645357, 0.763858, 0.005913,
		0.753041, 0.634880, 0.172791,
		33.372147, 37.505333, 39.936733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.702568, 37.728062, 39.431374>,  <32.845016, 37.060917, 39.815781>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.702568, 37.728062, 39.431374> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.099602, 37.703739, 39.473480>,  <33.337822, 37.689144, 39.498745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.099602, 37.703739, 39.473480>,  <32.702568, 37.728062, 39.431374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.099602, 37.703739, 39.473480> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119497, 0.328770, -0.936819,
		0.022356, 0.942450, 0.333598,
		0.992583, -0.060807, 0.105270,
		33.397377, 37.685497, 39.505062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.010254, 38.297127, 39.002594>,  <32.702568, 37.728062, 39.431374>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.010254, 38.297127, 39.002594> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.328873, 38.064831, 39.069820>,  <33.520046, 37.925453, 39.110157>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.328873, 38.064831, 39.069820>,  <33.010254, 38.297127, 39.002594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.328873, 38.064831, 39.069820> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278198, 0.105275, -0.954737,
		0.536764, 0.807251, 0.245419,
		0.796549, -0.580744, 0.168068,
		33.567837, 37.890606, 39.120239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.457783, 38.559315, 38.555275>,  <33.010254, 38.297127, 39.002594>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.457783, 38.559315, 38.555275> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.611397, 38.198940, 38.636105>,  <33.703568, 37.982716, 38.684601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.611397, 38.198940, 38.636105>,  <33.457783, 38.559315, 38.555275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.611397, 38.198940, 38.636105> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257238, -0.105790, -0.960540,
		0.886761, 0.420863, 0.191127,
		0.384037, -0.900934, 0.202072,
		33.726608, 37.928661, 38.696728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.073620, 38.455990, 38.185257>,  <33.457783, 38.559315, 38.555275>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.073620, 38.455990, 38.185257> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.946198, 38.088745, 38.279564>,  <33.869743, 37.868397, 38.336147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.946198, 38.088745, 38.279564>,  <34.073620, 38.455990, 38.185257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.946198, 38.088745, 38.279564> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205708, -0.309758, -0.928297,
		0.925316, -0.247211, 0.287537,
		-0.318552, -0.918116, 0.235770,
		33.850632, 37.813309, 38.350296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.610489, 38.072460, 37.816040>,  <34.073620, 38.455990, 38.185257>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.610489, 38.072460, 37.816040> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.306210, 37.825214, 37.895306>,  <34.123642, 37.676868, 37.942863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.306210, 37.825214, 37.895306>,  <34.610489, 38.072460, 37.816040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.306210, 37.825214, 37.895306> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042967, -0.352567, -0.934800,
		0.647679, -0.702588, 0.294756,
		-0.760701, -0.618115, 0.198162,
		34.077999, 37.639778, 37.954754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.855404, 37.319614, 37.636482>,  <34.610489, 38.072460, 37.816040>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.855404, 37.319614, 37.636482> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.463257, 37.396961, 37.621101>,  <34.227966, 37.443371, 37.611874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.463257, 37.396961, 37.621101>,  <34.855404, 37.319614, 37.636482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.463257, 37.396961, 37.621101> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028860, -0.333698, -0.942238,
		-0.195030, -0.922635, 0.332729,
		-0.980373, 0.193367, -0.038455,
		34.169144, 37.454971, 37.609566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.016277, 37.868034, 37.081730>,  <34.855404, 37.319614, 37.636482>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.016277, 37.868034, 37.081730> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.244934, 38.193390, 37.038586>,  <35.382126, 38.388603, 37.012699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.244934, 38.193390, 37.038586>,  <35.016277, 37.868034, 37.081730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.244934, 38.193390, 37.038586> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222596, -0.027204, 0.974531,
		0.789734, -0.581090, -0.196608,
		0.571639, 0.813385, -0.107864,
		35.416424, 38.437405, 37.006226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.644035, 37.756725, 37.382225>,  <35.016277, 37.868034, 37.081730>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.644035, 37.756725, 37.382225> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.591824, 38.153301, 37.381973>,  <35.560497, 38.391247, 37.381824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.591824, 38.153301, 37.381973>,  <35.644035, 37.756725, 37.382225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.591824, 38.153301, 37.381973> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279318, 0.037382, 0.959471,
		0.951285, 0.125067, -0.281808,
		-0.130533, 0.991444, -0.000627,
		35.552662, 38.450733, 37.381786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.984093, 37.945107, 37.943104>,  <35.644035, 37.756725, 37.382225>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.984093, 37.945107, 37.943104> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.806118, 38.296360, 37.872768>,  <35.699333, 38.507111, 37.830566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.806118, 38.296360, 37.872768>,  <35.984093, 37.945107, 37.943104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.806118, 38.296360, 37.872768> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170264, 0.275708, 0.946042,
		0.879230, 0.390986, -0.272185,
		-0.444933, 0.878131, -0.175840,
		35.672638, 38.559799, 37.820015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.494171, 38.483215, 38.171135>,  <35.984093, 37.945107, 37.943104>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.494171, 38.483215, 38.171135> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.129787, 38.648155, 38.175533>,  <35.911156, 38.747120, 38.178173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.129787, 38.648155, 38.175533>,  <36.494171, 38.483215, 38.171135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.129787, 38.648155, 38.175533> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142309, 0.289136, 0.946651,
		0.387172, 0.863926, -0.322072,
		-0.910959, 0.412350, 0.010999,
		35.856499, 38.771862, 38.178833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.611393, 39.172401, 38.452991>,  <36.494171, 38.483215, 38.171135>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.611393, 39.172401, 38.452991> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.224808, 39.095234, 38.520786>,  <35.992855, 39.048931, 38.561462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.224808, 39.095234, 38.520786>,  <36.611393, 39.172401, 38.452991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.224808, 39.095234, 38.520786> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143345, 0.142314, 0.979387,
		-0.213065, 0.970839, -0.109887,
		-0.966465, -0.192922, 0.169487,
		35.934868, 39.037357, 38.571632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.358379, 39.620564, 38.903084>,  <36.611393, 39.172401, 38.452991>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.358379, 39.620564, 38.903084> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.056408, 39.359955, 38.933029>,  <35.875225, 39.203590, 38.950996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.056408, 39.359955, 38.933029>,  <36.358379, 39.620564, 38.903084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.056408, 39.359955, 38.933029> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142244, 0.274107, 0.951122,
		-0.640196, 0.707379, -0.299605,
		-0.754927, -0.651522, 0.074862,
		35.829929, 39.164497, 38.955486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.843914, 40.045757, 39.322716>,  <36.358379, 39.620564, 38.903084>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.843914, 40.045757, 39.322716> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.734333, 39.661079, 39.326618>,  <35.668583, 39.430271, 39.328960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.734333, 39.661079, 39.326618>,  <35.843914, 40.045757, 39.322716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.734333, 39.661079, 39.326618> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318188, 0.100202, 0.942717,
		-0.907582, 0.255158, -0.333450,
		-0.273954, -0.961693, 0.009754,
		35.652145, 39.372570, 39.329544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.117996, 40.078159, 39.581306>,  <35.843914, 40.045757, 39.322716>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.117996, 40.078159, 39.581306> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.263214, 39.710907, 39.644859>,  <35.350346, 39.490555, 39.682991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.263214, 39.710907, 39.644859>,  <35.117996, 40.078159, 39.581306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.263214, 39.710907, 39.644859> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337586, 0.029324, 0.940838,
		-0.868469, -0.395197, -0.299301,
		0.363040, -0.918128, 0.158880,
		35.372128, 39.435467, 39.692524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.612972, 39.774330, 39.962048>,  <35.117996, 40.078159, 39.581306>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.612972, 39.774330, 39.962048> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.940941, 39.551228, 40.013657>,  <35.137722, 39.417366, 40.044621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.940941, 39.551228, 40.013657>,  <34.612972, 39.774330, 39.962048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.940941, 39.551228, 40.013657> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149365, 0.009152, 0.988740,
		-0.552654, -0.829956, -0.075805,
		0.819916, -0.557754, 0.129024,
		35.186916, 39.383900, 40.052364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.384583, 39.205231, 40.359585>,  <34.612972, 39.774330, 39.962048>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.384583, 39.205231, 40.359585> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.778099, 39.256443, 40.409801>,  <35.014210, 39.287170, 40.439934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.778099, 39.256443, 40.409801>,  <34.384583, 39.205231, 40.359585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.778099, 39.256443, 40.409801> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110940, -0.115470, 0.987096,
		0.140875, -0.985025, -0.099395,
		0.983792, 0.128030, 0.125546,
		35.073238, 39.294853, 40.447464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.535896, 38.778599, 40.921993>,  <34.384583, 39.205231, 40.359585>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.535896, 38.778599, 40.921993> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.855125, 39.017109, 40.887253>,  <35.046661, 39.160213, 40.866409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.855125, 39.017109, 40.887253>,  <34.535896, 38.778599, 40.921993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.855125, 39.017109, 40.887253> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006951, 0.135023, 0.990818,
		0.602527, -0.791344, 0.103612,
		0.798068, 0.596275, -0.086856,
		35.094547, 39.195992, 40.861195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.116886, 38.425354, 41.269165>,  <34.535896, 38.778599, 40.921993>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.116886, 38.425354, 41.269165> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.193256, 38.816429, 41.234123>,  <35.239079, 39.051075, 41.213097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.193256, 38.816429, 41.234123>,  <35.116886, 38.425354, 41.269165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.193256, 38.816429, 41.234123> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106266, 0.068135, 0.992000,
		0.975835, -0.198709, -0.090887,
		0.190927, 0.977687, -0.087605,
		35.250534, 39.109734, 41.207840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.486725, 38.467480, 41.754562>,  <35.116886, 38.425354, 41.269165>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.486725, 38.467480, 41.754562> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.464523, 38.863483, 41.702717>,  <35.451202, 39.101086, 41.671608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.464523, 38.863483, 41.702717>,  <35.486725, 38.467480, 41.754562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.464523, 38.863483, 41.702717> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332576, 0.140732, 0.932517,
		0.941442, 0.008652, -0.337064,
		-0.055504, 0.990010, -0.129614,
		35.447872, 39.160488, 41.663834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.101955, 38.748783, 41.950951>,  <35.486725, 38.467480, 41.754562>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.101955, 38.748783, 41.950951> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.807053, 39.016815, 41.985474>,  <35.630112, 39.177635, 42.006187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.807053, 39.016815, 41.985474>,  <36.101955, 38.748783, 41.950951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.807053, 39.016815, 41.985474> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273166, 0.178804, 0.945203,
		0.617929, 0.720432, -0.314867,
		-0.737254, 0.670080, 0.086310,
		35.585876, 39.217838, 42.011368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.398041, 39.302410, 42.301010>,  <36.101955, 38.748783, 41.950951>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.398041, 39.302410, 42.301010> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.010117, 39.380989, 42.358810>,  <35.777363, 39.428139, 42.393490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.010117, 39.380989, 42.358810>,  <36.398041, 39.302410, 42.301010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.010117, 39.380989, 42.358810> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148302, 0.004700, 0.988931,
		0.193598, 0.980502, -0.033692,
		-0.969807, 0.196452, 0.144500,
		35.719173, 39.439926, 42.402161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.455399, 39.773285, 42.793560>,  <36.398041, 39.302410, 42.301010>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.455399, 39.773285, 42.793560> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.095787, 39.598301, 42.801300>,  <35.880020, 39.493309, 42.805943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.095787, 39.598301, 42.801300>,  <36.455399, 39.773285, 42.793560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.095787, 39.598301, 42.801300> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024079, -0.005271, 0.999696,
		-0.437225, 0.899222, 0.015272,
		-0.899030, -0.437460, 0.019348,
		35.826077, 39.467064, 42.807106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.133312, 40.112263, 43.260448>,  <36.455399, 39.773285, 42.793560>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.133312, 40.112263, 43.260448> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.910465, 39.780529, 43.243336>,  <35.776756, 39.581490, 43.233070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.910465, 39.780529, 43.243336>,  <36.133312, 40.112263, 43.260448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.910465, 39.780529, 43.243336> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146984, -0.149177, 0.977825,
		-0.817325, 0.538471, 0.205007,
		-0.557113, -0.829334, -0.042779,
		35.743332, 39.531731, 43.230503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.613819, 40.326153, 43.735760>,  <36.133312, 40.112263, 43.260448>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.613819, 40.326153, 43.735760> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.615616, 39.929169, 43.686768>,  <35.616695, 39.690979, 43.657372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.615616, 39.929169, 43.686768>,  <35.613819, 40.326153, 43.735760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.615616, 39.929169, 43.686768> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153638, -0.121713, 0.980603,
		-0.988117, 0.014411, -0.153026,
		0.004494, -0.992461, -0.122480,
		35.616962, 39.631432, 43.650024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<34.970322, 40.143276, 44.108997> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.167225, 39.795975, 44.084290>,  <35.285366, 39.587593, 44.069466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.167225, 39.795975, 44.084290>,  <34.970322, 40.143276, 44.108997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.167225, 39.795975, 44.084290> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202611, -0.183301, 0.961951,
		-0.846542, -0.461012, -0.266149,
		0.492256, -0.868256, -0.061766,
		35.314903, 39.535500, 44.065762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.615494, 39.590664, 44.395039>,  <34.970322, 40.143276, 44.108997>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.615494, 39.590664, 44.395039> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.990635, 39.456909, 44.432163>,  <35.215721, 39.376656, 44.454437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.990635, 39.456909, 44.432163>,  <34.615494, 39.590664, 44.395039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.990635, 39.456909, 44.432163> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151895, -0.155077, 0.976155,
		-0.312026, -0.929587, -0.196232,
		0.937853, -0.334392, 0.092811,
		35.271992, 39.356590, 44.460007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.540787, 39.054314, 44.901745>,  <34.615494, 39.590664, 44.395039>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.540787, 39.054314, 44.901745> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.935024, 39.115490, 44.872864>,  <35.171566, 39.152195, 44.855537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.935024, 39.115490, 44.872864>,  <34.540787, 39.054314, 44.901745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.935024, 39.115490, 44.872864> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099149, -0.176665, 0.979264,
		0.137019, -0.972315, -0.189285,
		0.985594, 0.152945, -0.072198,
		35.230701, 39.161373, 44.851204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.841175, 38.414803, 45.155132>,  <34.540787, 39.054314, 44.901745>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.841175, 38.414803, 45.155132> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.091434, 38.725895, 45.179451>,  <35.241589, 38.912552, 45.194042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.091434, 38.725895, 45.179451>,  <34.841175, 38.414803, 45.155132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.091434, 38.725895, 45.179451> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092011, -0.150956, 0.984249,
		0.774662, -0.610198, -0.166005,
		0.625646, 0.777734, 0.060795,
		35.279129, 38.959217, 45.197689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.314148, 38.184624, 45.575047>,  <34.841175, 38.414803, 45.155132>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.314148, 38.184624, 45.575047> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.402344, 38.574615, 45.586388>,  <35.455261, 38.808609, 45.593193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.402344, 38.574615, 45.586388>,  <35.314148, 38.184624, 45.575047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.402344, 38.574615, 45.586388> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025709, -0.023245, 0.999399,
		0.975050, -0.221087, 0.019940,
		0.220490, 0.974977, 0.028349,
		35.468491, 38.867107, 45.594891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.926388, 38.290859, 45.907459>,  <35.314148, 38.184624, 45.575047>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.926388, 38.290859, 45.907459> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.717819, 38.626816, 45.967724>,  <35.592678, 38.828392, 46.003883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.717819, 38.626816, 45.967724>,  <35.926388, 38.290859, 45.907459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.717819, 38.626816, 45.967724> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105912, -0.111497, 0.988105,
		0.846701, 0.531176, -0.030818,
		-0.521421, 0.839893, 0.150663,
		35.561394, 38.878784, 46.012924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.284130, 38.628330, 46.445545>,  <35.926388, 38.290859, 45.907459>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.284130, 38.628330, 46.445545> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.925175, 38.804489, 46.456497>,  <35.709801, 38.910183, 46.463070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.925175, 38.804489, 46.456497>,  <36.284130, 38.628330, 46.445545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.925175, 38.804489, 46.456497> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109272, 0.161690, 0.980773,
		0.427500, 0.883125, -0.193221,
		-0.897387, 0.440394, 0.027379,
		35.655960, 38.936607, 46.464710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.396427, 39.201027, 46.866489>,  <36.284130, 38.628330, 46.445545>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.396427, 39.201027, 46.866489> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.997501, 39.171947, 46.870129>,  <35.758148, 39.154499, 46.872311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.997501, 39.171947, 46.870129>,  <36.396427, 39.201027, 46.866489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.997501, 39.171947, 46.870129> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004489, 0.184569, 0.982809,
		-0.073125, 0.980127, -0.184400,
		-0.997313, -0.072696, 0.009097,
		35.698307, 39.150139, 46.872856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.122902, 39.799500, 47.234795>,  <36.396427, 39.201027, 46.866489>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.122902, 39.799500, 47.234795> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.819199, 39.545792, 47.293064>,  <35.636974, 39.393566, 47.328026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.819199, 39.545792, 47.293064>,  <36.122902, 39.799500, 47.234795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.819199, 39.545792, 47.293064> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182326, 0.422199, 0.887978,
		-0.624725, 0.647646, -0.436203,
		-0.759260, -0.634273, 0.145676,
		35.591419, 39.355511, 47.336765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.537525, 40.186600, 47.356472>,  <36.122902, 39.799500, 47.234795>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.537525, 40.186600, 47.356472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.451012, 39.829960, 47.515602>,  <35.399105, 39.615974, 47.611080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.451012, 39.829960, 47.515602>,  <35.537525, 40.186600, 47.356472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.451012, 39.829960, 47.515602> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227854, 0.442316, 0.867433,
		-0.949371, 0.096962, -0.298819,
		-0.216280, -0.891603, 0.397829,
		35.386127, 39.562481, 47.634953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.938492, 40.267036, 47.715866>,  <35.537525, 40.186600, 47.356472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.938492, 40.267036, 47.715866> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.103336, 39.940323, 47.877369>,  <35.202244, 39.744293, 47.974270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.103336, 39.940323, 47.877369>,  <34.938492, 40.267036, 47.715866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.103336, 39.940323, 47.877369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091166, 0.477882, 0.873680,
		-0.906559, -0.323248, 0.271406,
		0.412115, -0.816786, 0.403759,
		35.226971, 39.695286, 47.998497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.588249, 40.126774, 48.353741>,  <34.938492, 40.267036, 47.715866>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.588249, 40.126774, 48.353741> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.929852, 39.926258, 48.409431>,  <35.134811, 39.805950, 48.442848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.929852, 39.926258, 48.409431>,  <34.588249, 40.126774, 48.353741>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.929852, 39.926258, 48.409431> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009373, 0.282396, 0.959252,
		-0.520178, -0.817902, 0.245867,
		0.854006, -0.501287, 0.139230,
		35.186054, 39.775871, 48.451202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.491470, 39.651196, 48.952065>,  <34.588249, 40.126774, 48.353741>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.491470, 39.651196, 48.952065> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.883766, 39.702213, 48.892887>,  <35.119144, 39.732822, 48.857380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.883766, 39.702213, 48.892887>,  <34.491470, 39.651196, 48.952065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.883766, 39.702213, 48.892887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139029, 0.076193, 0.987353,
		0.137204, -0.988902, 0.056993,
		0.980737, 0.127545, -0.147940,
		35.177986, 39.740475, 48.848507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.837967, 39.224434, 49.387737>,  <34.491470, 39.651196, 48.952065>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.837967, 39.224434, 49.387737> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.126240, 39.489540, 49.306389>,  <35.299206, 39.648602, 49.257580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.126240, 39.489540, 49.306389>,  <34.837967, 39.224434, 49.387737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.126240, 39.489540, 49.306389> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252010, 0.022830, 0.967455,
		0.645836, -0.748481, -0.150570,
		0.720685, 0.662763, -0.203369,
		35.342445, 39.688370, 49.245377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.438534, 38.948891, 49.679092>,  <34.837967, 39.224434, 49.387737>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.438534, 38.948891, 49.679092> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.512470, 39.341957, 49.673515>,  <35.556831, 39.577797, 49.670170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.512470, 39.341957, 49.673515>,  <35.438534, 38.948891, 49.679092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.512470, 39.341957, 49.673515> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256353, -0.034513, 0.965967,
		0.948745, -0.182123, -0.258290,
		0.184839, 0.982670, -0.013943,
		35.567921, 39.636757, 49.669331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.038155, 38.952995, 49.916279>,  <35.438534, 38.948891, 49.679092>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.038155, 38.952995, 49.916279> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.925343, 39.334755, 49.955441>,  <35.857655, 39.563812, 49.978939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.925343, 39.334755, 49.955441>,  <36.038155, 38.952995, 49.916279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.925343, 39.334755, 49.955441> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300266, -0.009115, 0.953812,
		0.911208, 0.298399, -0.284002,
		-0.282028, 0.954398, 0.097904,
		35.840733, 39.621075, 49.984814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.488125, 39.265884, 50.284328>,  <36.038155, 38.952995, 49.916279>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.488125, 39.265884, 50.284328> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.173363, 39.504211, 50.348560>,  <35.984505, 39.647209, 50.387100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.173363, 39.504211, 50.348560>,  <36.488125, 39.265884, 50.284328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.173363, 39.504211, 50.348560> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215501, 0.021491, 0.976267,
		0.578224, 0.802833, -0.145311,
		-0.786903, 0.595816, 0.160584,
		35.937290, 39.682957, 50.396736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.678246, 39.524189, 50.849552>,  <36.488125, 39.265884, 50.284328>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.678246, 39.524189, 50.849552> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.296284, 39.641911, 50.865299>,  <36.067108, 39.712543, 50.874748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.296284, 39.641911, 50.865299>,  <36.678246, 39.524189, 50.849552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.296284, 39.641911, 50.865299> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023099, -0.058553, 0.998017,
		0.296027, 0.953916, 0.049115,
		-0.954900, 0.294306, 0.039368,
		36.009815, 39.730202, 50.877110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.621773, 39.962067, 51.405514>,  <36.678246, 39.524189, 50.849552>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.621773, 39.962067, 51.405514> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.251686, 39.820316, 51.351276>,  <36.029633, 39.735268, 51.318733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.251686, 39.820316, 51.351276>,  <36.621773, 39.962067, 51.405514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.251686, 39.820316, 51.351276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083047, -0.159569, 0.983687,
		-0.370233, 0.921387, 0.118206,
		-0.925219, -0.354377, -0.135596,
		35.974121, 39.714005, 51.310596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.164318, 40.392735, 51.815220>,  <36.621773, 39.962067, 51.405514>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.164318, 40.392735, 51.815220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.958824, 40.051289, 51.780785>,  <35.835526, 39.846420, 51.760124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.958824, 40.051289, 51.780785>,  <36.164318, 40.392735, 51.815220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.958824, 40.051289, 51.780785> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104032, -0.037625, 0.993862,
		-0.851616, 0.519542, -0.069474,
		-0.513740, -0.853616, -0.086091,
		35.804703, 39.795204, 51.754959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.589535, 40.490177, 52.209629>,  <36.164318, 40.392735, 51.815220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.589535, 40.490177, 52.209629> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.599022, 40.093014, 52.163025>,  <35.604713, 39.854717, 52.135063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.599022, 40.093014, 52.163025>,  <35.589535, 40.490177, 52.209629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.599022, 40.093014, 52.163025> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188479, -0.118896, 0.974853,
		-0.981791, -0.001157, -0.189961,
		0.023713, -0.992906, -0.116513,
		35.606136, 39.795143, 52.128071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.013817, 40.162643, 52.593990>,  <35.589535, 40.490177, 52.209629>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.013817, 40.162643, 52.593990> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.300854, 39.888882, 52.542366>,  <35.473076, 39.724625, 52.511391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.300854, 39.888882, 52.542366>,  <35.013817, 40.162643, 52.593990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.300854, 39.888882, 52.542366> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146389, -0.032947, 0.988678,
		-0.680908, -0.728357, 0.076547,
		0.717589, -0.684405, -0.129058,
		35.516129, 39.683559, 52.503647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.031345, 39.837620, 53.202290>,  <35.013817, 40.162643, 52.593990>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.031345, 39.837620, 53.202290> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.381077, 39.724686, 53.044388>,  <35.590916, 39.656925, 52.949646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.381077, 39.724686, 53.044388>,  <35.031345, 39.837620, 53.202290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.381077, 39.724686, 53.044388> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376651, -0.118212, 0.918782,
		-0.306069, -0.952005, 0.002986,
		0.874332, -0.282335, -0.394755,
		35.643375, 39.639984, 52.925961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.072147, 39.135887, 53.270557>,  <35.031345, 39.837620, 53.202290>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.072147, 39.135887, 53.270557> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.392326, 39.373547, 53.302258>,  <35.584435, 39.516140, 53.321278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.392326, 39.373547, 53.302258>,  <35.072147, 39.135887, 53.270557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.392326, 39.373547, 53.302258> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074049, -0.229219, 0.970554,
		0.594816, -0.771006, -0.227473,
		0.800444, 0.594146, 0.079251,
		35.632458, 39.551792, 53.326035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.582817, 38.709846, 52.900146>,  <35.072147, 39.135887, 53.270557>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.582817, 38.709846, 52.900146> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.296101, 38.557892, 53.134033>,  <34.124069, 38.466717, 53.274364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.296101, 38.557892, 53.134033>,  <34.582817, 38.709846, 52.900146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.296101, 38.557892, 53.134033> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461598, -0.369998, -0.806244,
		0.522629, -0.847812, 0.089854,
		-0.716789, -0.379890, 0.584719,
		34.081062, 38.443924, 53.309448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.455269, 37.983704, 52.674362>,  <34.582817, 38.709846, 52.900146>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.455269, 37.983704, 52.674362> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.113670, 38.092461, 52.851791>,  <33.908710, 38.157715, 52.958248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.113670, 38.092461, 52.851791>,  <34.455269, 37.983704, 52.674362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.113670, 38.092461, 52.851791> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476930, -0.068422, -0.876274,
		-0.207902, -0.959892, 0.188106,
		-0.853999, 0.271893, 0.443577,
		33.857471, 38.174026, 52.984863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.926083, 37.529121, 52.374660>,  <34.455269, 37.983704, 52.674362>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.926083, 37.529121, 52.374660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.712032, 37.821880, 52.543407>,  <33.583603, 37.997536, 52.644653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.712032, 37.821880, 52.543407>,  <33.926083, 37.529121, 52.374660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.712032, 37.821880, 52.543407> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605690, 0.015699, -0.795545,
		-0.588877, -0.681238, 0.434900,
		-0.535128, 0.731893, 0.421864,
		33.551495, 38.041447, 52.669968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.229355, 37.282982, 52.475121>,  <33.926083, 37.529121, 52.374660>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.229355, 37.282982, 52.475121> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.236340, 37.681694, 52.443832>,  <33.240532, 37.920921, 52.425060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.236340, 37.681694, 52.443832>,  <33.229355, 37.282982, 52.475121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.236340, 37.681694, 52.443832> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521242, -0.057681, -0.851457,
		-0.853230, 0.055642, 0.518558,
		0.017466, 0.996783, -0.078218,
		33.241581, 37.980728, 52.420368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.532074, 37.394711, 52.324837>,  <33.229355, 37.282982, 52.475121>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.532074, 37.394711, 52.324837> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.761925, 37.708675, 52.232128>,  <32.899837, 37.897053, 52.176502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.761925, 37.708675, 52.232128>,  <32.532074, 37.394711, 52.324837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.761925, 37.708675, 52.232128> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540482, 0.151299, -0.827640,
		-0.614558, 0.600852, 0.511171,
		0.574628, 0.784911, -0.231768,
		32.934315, 37.944149, 52.162598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.048470, 37.911488, 52.073009>,  <32.532074, 37.394711, 52.324837>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.048470, 37.911488, 52.073009> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.407005, 37.967560, 51.904758>,  <32.622128, 38.001205, 51.803810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.407005, 37.967560, 51.904758>,  <32.048470, 37.911488, 52.073009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.407005, 37.967560, 51.904758> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441157, 0.187364, -0.877653,
		-0.044223, 0.972236, 0.229785,
		0.896340, 0.140183, -0.420623,
		32.675907, 38.009613, 51.778572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.968517, 38.393665, 51.461658>,  <32.048470, 37.911488, 52.073009>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.968517, 38.393665, 51.461658> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.335300, 38.252495, 51.387222>,  <32.555370, 38.167793, 51.342560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.335300, 38.252495, 51.387222>,  <31.968517, 38.393665, 51.461658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.335300, 38.252495, 51.387222> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113417, 0.216596, -0.969651,
		0.382524, 0.910235, 0.158581,
		0.916958, -0.352929, -0.186089,
		32.610390, 38.146618, 51.331394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.120655, 38.810223, 50.961773>,  <31.968517, 38.393665, 51.461658>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.120655, 38.810223, 50.961773> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.422997, 38.549522, 50.936790>,  <32.604401, 38.393101, 50.921803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.422997, 38.549522, 50.936790>,  <32.120655, 38.810223, 50.961773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.422997, 38.549522, 50.936790> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020850, 0.119300, -0.992639,
		0.654405, 0.748991, 0.103762,
		0.755857, -0.651752, -0.062454,
		32.649754, 38.353996, 50.918053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.604950, 39.137810, 50.445198>,  <32.120655, 38.810223, 50.961773>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.604950, 39.137810, 50.445198> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.699299, 38.750084, 50.472912>,  <32.755909, 38.517448, 50.489540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.699299, 38.750084, 50.472912>,  <32.604950, 39.137810, 50.445198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.699299, 38.750084, 50.472912> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171620, -0.028622, -0.984748,
		0.956510, 0.244162, 0.159602,
		0.235870, -0.969312, 0.069280,
		32.770061, 38.459290, 50.493694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.280125, 39.025352, 50.244049>,  <32.604950, 39.137810, 50.445198>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.280125, 39.025352, 50.244049> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.109676, 38.669567, 50.177998>,  <33.007408, 38.456097, 50.138367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.109676, 38.669567, 50.177998>,  <33.280125, 39.025352, 50.244049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.109676, 38.669567, 50.177998> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311782, 0.026961, -0.949771,
		0.849241, -0.456205, 0.265831,
		-0.426123, -0.889466, -0.165133,
		32.981838, 38.402729, 50.128456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.786987, 38.657902, 49.827698>,  <33.280125, 39.025352, 50.244049>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.786987, 38.657902, 49.827698> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.420666, 38.503998, 49.781624>,  <33.200874, 38.411655, 49.753979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.420666, 38.503998, 49.781624>,  <33.786987, 38.657902, 49.827698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.420666, 38.503998, 49.781624> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097248, 0.065827, -0.993081,
		0.389681, -0.920666, -0.022867,
		-0.915801, -0.384761, -0.115184,
		33.145924, 38.388569, 49.747070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.860966, 37.956268, 49.461323>,  <33.786987, 38.657902, 49.827698>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.860966, 37.956268, 49.461323> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.483566, 38.072987, 49.398510>,  <33.257126, 38.143017, 49.360821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.483566, 38.072987, 49.398510>,  <33.860966, 37.956268, 49.461323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.483566, 38.072987, 49.398510> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177609, 0.045237, -0.983061,
		-0.279746, -0.955411, -0.094507,
		-0.943503, 0.291792, -0.157035,
		33.200516, 38.160522, 49.351398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.555702, 37.526794, 48.908836>,  <33.860966, 37.956268, 49.461323>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.555702, 37.526794, 48.908836> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.346748, 37.867683, 48.897377>,  <33.221375, 38.072216, 48.890503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.346748, 37.867683, 48.897377>,  <33.555702, 37.526794, 48.908836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.346748, 37.867683, 48.897377> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074541, 0.012174, -0.997144,
		-0.849443, -0.523032, -0.069885,
		-0.522389, 0.852226, -0.028647,
		33.190033, 38.123352, 48.888783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.207016, 37.483112, 48.173626>,  <33.555702, 37.526794, 48.908836>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.207016, 37.483112, 48.173626> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.133034, 37.861076, 48.281658>,  <33.088646, 38.087852, 48.346478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.133034, 37.861076, 48.281658>,  <33.207016, 37.483112, 48.173626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.133034, 37.861076, 48.281658> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102391, 0.254799, -0.961558,
		-0.977399, -0.205497, 0.049624,
		-0.184953, 0.944907, 0.270081,
		33.077549, 38.144547, 48.362682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.688427, 37.748146, 47.749676>,  <33.207016, 37.483112, 48.173626>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.688427, 37.748146, 47.749676> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.877190, 38.077637, 47.875393>,  <32.990448, 38.275330, 47.950821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.877190, 38.077637, 47.875393>,  <32.688427, 37.748146, 47.749676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.877190, 38.077637, 47.875393> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179370, 0.438724, -0.880538,
		-0.863209, 0.359158, 0.354789,
		0.471907, 0.823727, 0.314288,
		33.018761, 38.324757, 47.969681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.274769, 38.291195, 47.500702>,  <32.688427, 37.748146, 47.749676>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.274769, 38.291195, 47.500702> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.625790, 38.457329, 47.596527>,  <32.836403, 38.557011, 47.654022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.625790, 38.457329, 47.596527>,  <32.274769, 38.291195, 47.500702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.625790, 38.457329, 47.596527> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073817, 0.610720, -0.788399,
		-0.473757, 0.674180, 0.566600,
		0.877557, 0.415334, 0.239567,
		32.889057, 38.581928, 47.668396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.244022, 39.084034, 47.601330>,  <32.274769, 38.291195, 47.500702>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.244022, 39.084034, 47.601330> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.599464, 38.954739, 47.471161>,  <32.812729, 38.877163, 47.393059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.599464, 38.954739, 47.471161>,  <32.244022, 39.084034, 47.601330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.599464, 38.954739, 47.471161> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067390, 0.609784, -0.789697,
		0.453700, 0.723658, 0.520073,
		0.888603, -0.323238, -0.325427,
		32.866047, 38.857769, 47.373531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.595692, 39.662098, 47.362789>,  <32.244022, 39.084034, 47.601330>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.595692, 39.662098, 47.362789> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.789444, 39.353512, 47.197758>,  <32.905693, 39.168362, 47.098740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.789444, 39.353512, 47.197758>,  <32.595692, 39.662098, 47.362789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.789444, 39.353512, 47.197758> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035523, 0.453863, -0.890363,
		0.874138, 0.445927, 0.192436,
		0.484377, -0.771464, -0.412580,
		32.934757, 39.122074, 47.073982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.948200, 39.992592, 46.731117>,  <32.595692, 39.662098, 47.362789>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.948200, 39.992592, 46.731117> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.993221, 39.599319, 46.673580>,  <33.020233, 39.363358, 46.639057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.993221, 39.599319, 46.673580>,  <32.948200, 39.992592, 46.731117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.993221, 39.599319, 46.673580> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080159, 0.153279, -0.984926,
		0.990407, 0.099323, 0.096062,
		0.112550, -0.983179, -0.143847,
		33.026985, 39.304367, 46.630424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.605061, 39.838356, 46.222496>,  <32.948200, 39.992592, 46.731117>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.605061, 39.838356, 46.222496> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.378338, 39.508846, 46.227062>,  <33.242302, 39.311142, 46.229801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.378338, 39.508846, 46.227062>,  <33.605061, 39.838356, 46.222496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.378338, 39.508846, 46.227062> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017623, -0.025977, -0.999507,
		0.823661, -0.566329, 0.029241,
		-0.566809, -0.823770, 0.011416,
		33.208294, 39.261715, 46.230488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<45.966053, 33.358986, 42.416775> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.694904, 33.587566, 42.601784>,  <45.532215, 33.724712, 42.712791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.694904, 33.587566, 42.601784>,  <45.966053, 33.358986, 42.416775>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.694904, 33.587566, 42.601784> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453783, 0.169755, -0.874794,
		-0.578416, -0.802889, 0.144241,
		-0.677876, 0.571448, 0.462526,
		45.491543, 33.759003, 42.740543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.299564, 33.096096, 42.333885>,  <45.966053, 33.358986, 42.416775>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.299564, 33.096096, 42.333885> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.235641, 33.482342, 42.415920>,  <45.197289, 33.714088, 42.465141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.235641, 33.482342, 42.415920>,  <45.299564, 33.096096, 42.333885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.235641, 33.482342, 42.415920> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547465, 0.086183, -0.832379,
		-0.821428, -0.245295, 0.514866,
		-0.159806, 0.965610, 0.205084,
		45.187698, 33.772026, 42.477444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.553246, 33.280521, 42.271145>,  <45.299564, 33.096096, 42.333885>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.553246, 33.280521, 42.271145> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.764198, 33.617085, 42.223988>,  <44.890770, 33.819023, 42.195694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.764198, 33.617085, 42.223988>,  <44.553246, 33.280521, 42.271145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.764198, 33.617085, 42.223988> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469981, 0.173312, -0.865494,
		-0.707802, 0.511854, 0.486848,
		0.527384, 0.841408, -0.117891,
		44.922413, 33.869507, 42.188622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.060230, 33.652981, 42.137665>,  <44.553246, 33.280521, 42.271145>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.060230, 33.652981, 42.137665> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.354252, 33.894703, 42.014694>,  <44.530663, 34.039738, 41.940910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.354252, 33.894703, 42.014694>,  <44.060230, 33.652981, 42.137665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.354252, 33.894703, 42.014694> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466749, 0.122129, -0.875917,
		-0.491779, 0.787334, 0.371832,
		0.735050, 0.604309, -0.307427,
		44.574768, 34.075996, 41.922466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.741642, 34.261604, 41.953793>,  <44.060230, 33.652981, 42.137665>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.741642, 34.261604, 41.953793> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.089260, 34.255905, 41.755985>,  <44.297832, 34.252483, 41.637299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.089260, 34.255905, 41.755985>,  <43.741642, 34.261604, 41.953793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.089260, 34.255905, 41.755985> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462881, 0.329411, -0.822940,
		0.174628, 0.944079, 0.279678,
		0.869049, -0.014251, -0.494520,
		44.349976, 34.251629, 41.607628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.680920, 34.763279, 41.478233>,  <43.741642, 34.261604, 41.953793>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.680920, 34.763279, 41.478233> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.995068, 34.560955, 41.335491>,  <44.183556, 34.439560, 41.249847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.995068, 34.560955, 41.335491>,  <43.680920, 34.763279, 41.478233>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.995068, 34.560955, 41.335491> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293972, 0.202569, -0.934102,
		0.544764, 0.838525, 0.010399,
		0.785374, -0.505808, -0.356855,
		44.230679, 34.409214, 41.228436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.084019, 35.284969, 41.020130>,  <43.680920, 34.763279, 41.478233>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.084019, 35.284969, 41.020130> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.151611, 34.910248, 40.897594>,  <44.192165, 34.685413, 40.824074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.151611, 34.910248, 40.897594>,  <44.084019, 35.284969, 41.020130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.151611, 34.910248, 40.897594> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392983, 0.221000, -0.892594,
		0.903886, 0.271219, -0.330803,
		0.168981, -0.936803, -0.306343,
		44.202305, 34.629208, 40.805691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.465130, 35.368149, 40.451622>,  <44.084019, 35.284969, 41.020130>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.465130, 35.368149, 40.451622> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.335915, 34.990459, 40.426033>,  <44.258385, 34.763847, 40.410679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.335915, 34.990459, 40.426033>,  <44.465130, 35.368149, 40.451622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.335915, 34.990459, 40.426033> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014479, 0.072524, -0.997262,
		0.946275, -0.321229, -0.037099,
		-0.323040, -0.944220, -0.063976,
		44.239002, 34.707191, 40.406841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.958591, 35.034363, 39.944805>,  <44.465130, 35.368149, 40.451622>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.958591, 35.034363, 39.944805> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.633762, 34.801666, 39.963234>,  <44.438866, 34.662048, 39.974293>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.633762, 34.801666, 39.963234>,  <44.958591, 35.034363, 39.944805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.633762, 34.801666, 39.963234> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187328, 0.185095, -0.964701,
		0.552678, -0.792034, -0.259286,
		-0.812068, -0.581740, 0.046072,
		44.390141, 34.627144, 39.977055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.025524, 34.376953, 39.442459>,  <44.958591, 35.034363, 39.944805>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.025524, 34.376953, 39.442459> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.632057, 34.402885, 39.509613>,  <44.395977, 34.418446, 39.549904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.632057, 34.402885, 39.509613>,  <45.025524, 34.376953, 39.442459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.632057, 34.402885, 39.509613> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171793, -0.060281, -0.983287,
		-0.053594, -0.996076, 0.070429,
		-0.983674, 0.064797, 0.167888,
		44.336956, 34.422337, 39.559978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.677433, 33.841393, 39.079651>,  <45.025524, 34.376953, 39.442459>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.677433, 33.841393, 39.079651> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.395340, 34.118320, 39.140766>,  <44.226082, 34.284477, 39.177437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.395340, 34.118320, 39.140766>,  <44.677433, 33.841393, 39.079651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.395340, 34.118320, 39.140766> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357599, -0.161272, -0.919845,
		-0.612182, -0.703343, 0.361306,
		-0.705234, 0.692315, 0.152787,
		44.183769, 34.326015, 39.186604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.160580, 33.597675, 38.743622>,  <44.677433, 33.841393, 39.079651>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.160580, 33.597675, 38.743622> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.058846, 33.982880, 38.779217>,  <43.997807, 34.214005, 38.800575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.058846, 33.982880, 38.779217>,  <44.160580, 33.597675, 38.743622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.058846, 33.982880, 38.779217> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506814, -0.054348, -0.860340,
		-0.823682, -0.263918, 0.501891,
		-0.254336, 0.963013, 0.088992,
		43.982544, 34.271782, 38.805916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.365185, 33.641869, 38.714352>,  <44.160580, 33.597675, 38.743622>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.365185, 33.641869, 38.714352> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.529560, 33.991768, 38.611637>,  <43.628185, 34.201710, 38.550007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.529560, 33.991768, 38.611637>,  <43.365185, 33.641869, 38.714352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.529560, 33.991768, 38.611637> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545686, 0.010369, -0.837926,
		-0.730314, 0.484460, 0.481601,
		0.410936, 0.874751, -0.256790,
		43.652840, 34.254192, 38.534599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.811821, 34.033054, 38.389580>,  <43.365185, 33.641869, 38.714352>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.811821, 34.033054, 38.389580> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.131371, 34.245770, 38.277157>,  <43.323101, 34.373398, 38.209702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.131371, 34.245770, 38.277157>,  <42.811821, 34.033054, 38.389580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.131371, 34.245770, 38.277157> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403148, 0.126612, -0.906334,
		-0.446392, 0.837359, 0.315537,
		0.798878, 0.531788, -0.281061,
		43.371033, 34.405308, 38.192837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.508053, 34.488163, 38.000942>,  <42.811821, 34.033054, 38.389580>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.508053, 34.488163, 38.000942> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.890865, 34.496487, 37.885246>,  <43.120552, 34.501480, 37.815830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.890865, 34.496487, 37.885246>,  <42.508053, 34.488163, 38.000942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.890865, 34.496487, 37.885246> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285821, -0.100694, -0.952978,
		-0.048951, 0.994700, -0.090421,
		0.957032, 0.020805, -0.289235,
		43.177975, 34.502728, 37.798477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.491524, 34.981731, 37.537716>,  <42.508053, 34.488163, 38.000942>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.491524, 34.981731, 37.537716> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.832600, 34.794331, 37.445259>,  <43.037247, 34.681889, 37.389786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.832600, 34.794331, 37.445259>,  <42.491524, 34.981731, 37.537716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.832600, 34.794331, 37.445259> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235516, 0.050206, -0.970573,
		0.466320, 0.882035, -0.067530,
		0.852688, -0.468502, -0.231146,
		43.088406, 34.653782, 37.375916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.864182, 35.368969, 36.994305>,  <42.491524, 34.981731, 37.537716>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.864182, 35.368969, 36.994305> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.976955, 34.986221, 36.966244>,  <43.044621, 34.756573, 36.949406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.976955, 34.986221, 36.966244>,  <42.864182, 35.368969, 36.994305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.976955, 34.986221, 36.966244> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272614, -0.009788, -0.962074,
		0.919887, 0.290370, -0.263615,
		0.281937, -0.956865, -0.070155,
		43.061535, 34.699162, 36.945198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.317131, 35.325741, 36.347118>,  <42.864182, 35.368969, 36.994305>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.317131, 35.325741, 36.347118> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.166210, 34.960960, 36.411587>,  <43.075657, 34.742092, 36.450268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.166210, 34.960960, 36.411587>,  <43.317131, 35.325741, 36.347118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.166210, 34.960960, 36.411587> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145676, -0.113427, -0.982809,
		0.914559, -0.394299, -0.090053,
		-0.377306, -0.911955, 0.161175,
		43.053017, 34.687374, 36.459938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.759274, 34.832314, 35.972424>,  <43.317131, 35.325741, 36.347118>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.759274, 34.832314, 35.972424> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.412045, 34.640793, 36.024887>,  <43.203709, 34.525879, 36.056366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.412045, 34.640793, 36.024887>,  <43.759274, 34.832314, 35.972424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.412045, 34.640793, 36.024887> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046409, -0.184776, -0.981684,
		0.494266, -0.858259, 0.138178,
		-0.868071, -0.478800, 0.131159,
		43.151623, 34.497154, 36.064236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.660816, 34.262939, 35.452557>,  <43.759274, 34.832314, 35.972424>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.660816, 34.262939, 35.452557> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.287289, 34.293709, 35.592304>,  <43.063171, 34.312172, 35.676151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.287289, 34.293709, 35.592304>,  <43.660816, 34.262939, 35.452557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.287289, 34.293709, 35.592304> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357726, -0.207602, -0.910458,
		0.002494, -0.975184, 0.221381,
		-0.933824, 0.076923, 0.349366,
		43.007141, 34.316788, 35.697113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.376823, 33.802334, 35.038811>,  <43.660816, 34.262939, 35.452557>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.376823, 33.802334, 35.038811> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.073971, 34.028854, 35.169075>,  <42.892258, 34.164768, 35.247234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.073971, 34.028854, 35.169075>,  <43.376823, 33.802334, 35.038811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.073971, 34.028854, 35.169075> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443642, -0.079813, -0.892643,
		-0.479514, -0.820324, 0.311664,
		-0.757132, 0.566302, 0.325659,
		42.846832, 34.198746, 35.266773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.161324, 33.767223, 34.780060>,  <43.376823, 33.802334, 35.038811>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.161324, 33.767223, 34.780060> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.476616, 33.973091, 34.645119>,  <44.665791, 34.096611, 34.564156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.476616, 33.973091, 34.645119>,  <44.161324, 33.767223, 34.780060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.476616, 33.973091, 34.645119> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488228, -0.189314, 0.851935,
		0.374601, -0.836226, -0.400500,
		0.788231, 0.514671, -0.337351,
		44.713085, 34.127491, 34.543915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.639767, 33.365425, 34.928696>,  <44.161324, 33.767223, 34.780060>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.639767, 33.365425, 34.928696> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.837955, 33.707748, 34.869232>,  <44.956867, 33.913143, 34.833553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.837955, 33.707748, 34.869232>,  <44.639767, 33.365425, 34.928696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.837955, 33.707748, 34.869232> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616337, -0.225778, 0.754423,
		0.612077, -0.465420, -0.639333,
		0.495470, 0.855809, -0.148662,
		44.986595, 33.964493, 34.824635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.368282, 33.243153, 34.792103>,  <44.639767, 33.365425, 34.928696>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.368282, 33.243153, 34.792103> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.353996, 33.617855, 34.931362>,  <45.345425, 33.842678, 35.014915>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.353996, 33.617855, 34.931362>,  <45.368282, 33.243153, 34.792103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.353996, 33.617855, 34.931362> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565112, -0.268388, 0.780139,
		0.824241, 0.224606, -0.519788,
		-0.035719, 0.936760, 0.348144,
		45.343281, 33.898884, 35.035805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.993458, 33.244904, 35.174809>,  <45.368282, 33.243153, 34.792103>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.993458, 33.244904, 35.174809> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.811642, 33.573193, 35.313259>,  <45.702553, 33.770164, 35.396332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.811642, 33.573193, 35.313259>,  <45.993458, 33.244904, 35.174809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.811642, 33.573193, 35.313259> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534201, -0.059766, 0.843242,
		0.712754, 0.568193, -0.411264,
		-0.454545, 0.820722, 0.346128,
		45.675278, 33.819408, 35.417099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.545654, 33.459137, 35.661564>,  <45.993458, 33.244904, 35.174809>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.545654, 33.459137, 35.661564> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.202679, 33.647240, 35.745144>,  <45.996895, 33.760101, 35.795292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.202679, 33.647240, 35.745144>,  <46.545654, 33.459137, 35.661564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.202679, 33.647240, 35.745144> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232413, -0.008388, 0.972581,
		0.459113, 0.882491, -0.102101,
		-0.857438, 0.470254, 0.208953,
		45.945446, 33.788315, 35.807831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.733780, 33.718071, 36.252399>,  <46.545654, 33.459137, 35.661564>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.733780, 33.718071, 36.252399> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.340538, 33.785515, 36.280907>,  <46.104595, 33.825981, 36.298012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.340538, 33.785515, 36.280907>,  <46.733780, 33.718071, 36.252399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.340538, 33.785515, 36.280907> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028333, -0.244468, 0.969243,
		0.180848, 0.954885, 0.235560,
		-0.983103, 0.168612, 0.071266,
		46.045609, 33.836098, 36.302288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.585438, 34.141380, 36.875076>,  <46.733780, 33.718071, 36.252399>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.585438, 34.141380, 36.875076> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.252369, 33.938114, 36.787048>,  <46.052528, 33.816154, 36.734230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.252369, 33.938114, 36.787048>,  <46.585438, 34.141380, 36.875076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.252369, 33.938114, 36.787048> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060160, -0.312042, 0.948162,
		-0.550490, 0.802746, 0.229257,
		-0.832671, -0.508162, -0.220069,
		46.002567, 33.785667, 36.721027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.100849, 34.251606, 37.402912>,  <46.585438, 34.141380, 36.875076>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.100849, 34.251606, 37.402912> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.950413, 33.932003, 37.215233>,  <45.860149, 33.740242, 37.102627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.950413, 33.932003, 37.215233>,  <46.100849, 34.251606, 37.402912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.950413, 33.932003, 37.215233> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123161, -0.458773, 0.879976,
		-0.918360, 0.388739, 0.074135,
		-0.376092, -0.799005, -0.469197,
		45.837585, 33.692303, 37.074474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.437691, 34.095917, 37.772785>,  <46.100849, 34.251606, 37.402912>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.437691, 34.095917, 37.772785> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.524200, 33.760696, 37.572426>,  <45.576107, 33.559566, 37.452209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.524200, 33.760696, 37.572426>,  <45.437691, 34.095917, 37.772785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.524200, 33.760696, 37.572426> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472545, -0.538799, 0.697421,
		-0.854358, 0.085865, -0.512543,
		0.216274, -0.838047, -0.500902,
		45.589081, 33.509281, 37.422153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.805122, 33.643505, 37.811020>,  <45.437691, 34.095917, 37.772785>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.805122, 33.643505, 37.811020> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.100410, 33.393650, 37.709152>,  <45.277584, 33.243736, 37.648033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.100410, 33.393650, 37.709152>,  <44.805122, 33.643505, 37.811020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.100410, 33.393650, 37.709152> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385110, -0.700225, 0.601145,
		-0.553822, -0.345704, -0.757476,
		0.738222, -0.624639, -0.254666,
		45.321877, 33.206257, 37.632751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.541245, 32.962154, 37.723850>,  <44.805122, 33.643505, 37.811020>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.541245, 32.962154, 37.723850> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.929810, 32.921974, 37.809887>,  <45.162949, 32.897865, 37.861511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.929810, 32.921974, 37.809887>,  <44.541245, 32.962154, 37.723850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.929810, 32.921974, 37.809887> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221424, -0.710096, 0.668383,
		0.085598, -0.696903, -0.712039,
		0.971413, -0.100450, 0.215094,
		45.221233, 32.891838, 37.874416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.626087, 32.181847, 37.780739>,  <44.541245, 32.962154, 37.723850>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.626087, 32.181847, 37.780739> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.939842, 32.358292, 37.955166>,  <45.128094, 32.464157, 38.059822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.939842, 32.358292, 37.955166>,  <44.626087, 32.181847, 37.780739>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.939842, 32.358292, 37.955166> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004866, -0.698631, 0.715465,
		0.620250, -0.563325, -0.545852,
		0.784389, 0.441111, 0.436068,
		45.175159, 32.490623, 38.085987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.957150, 31.642410, 38.064938>,  <44.626087, 32.181847, 37.780739>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.957150, 31.642410, 38.064938> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.131275, 31.944778, 38.260525>,  <45.235748, 32.126198, 38.377876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.131275, 31.944778, 38.260525>,  <44.957150, 31.642410, 38.064938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.131275, 31.944778, 38.260525> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022362, -0.552037, 0.833519,
		0.900003, -0.351905, -0.257212,
		0.435310, 0.755922, 0.488966,
		45.261868, 32.171555, 38.407215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.556156, 31.406994, 38.457050>,  <44.957150, 31.642410, 38.064938>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.556156, 31.406994, 38.457050> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.443153, 31.738073, 38.651005>,  <45.375351, 31.936720, 38.767376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.443153, 31.738073, 38.651005>,  <45.556156, 31.406994, 38.457050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.443153, 31.738073, 38.651005> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101869, -0.528499, 0.842800,
		0.953842, 0.188700, 0.233619,
		-0.282504, 0.827697, 0.484882,
		45.358402, 31.986382, 38.796471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.979759, 31.448385, 39.063656>,  <45.556156, 31.406994, 38.457050>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.979759, 31.448385, 39.063656> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.659512, 31.674751, 39.142395>,  <45.467361, 31.810572, 39.189640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.659512, 31.674751, 39.142395>,  <45.979759, 31.448385, 39.063656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.659512, 31.674751, 39.142395> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141598, -0.497927, 0.855581,
		0.582203, 0.657121, 0.478782,
		-0.800618, 0.565916, 0.196848,
		45.419327, 31.844526, 39.201450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.110905, 31.543663, 39.766407>,  <45.979759, 31.448385, 39.063656>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.110905, 31.543663, 39.766407> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.719452, 31.602863, 39.709309>,  <45.484581, 31.638384, 39.675049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.719452, 31.602863, 39.709309>,  <46.110905, 31.543663, 39.766407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.719452, 31.602863, 39.709309> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195203, -0.450511, 0.871169,
		0.064624, 0.880418, 0.469774,
		-0.978631, 0.148000, -0.142747,
		45.425861, 31.647263, 39.666485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.814659, 31.709953, 40.408955>,  <46.110905, 31.543663, 39.766407>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.814659, 31.709953, 40.408955> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.504993, 31.575495, 40.194412>,  <45.319195, 31.494820, 40.065689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.504993, 31.575495, 40.194412>,  <45.814659, 31.709953, 40.408955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.504993, 31.575495, 40.194412> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297293, -0.554977, 0.776928,
		-0.558826, 0.760924, 0.329709,
		-0.774164, -0.336147, -0.536353,
		45.272743, 31.474651, 40.033504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.229351, 31.748075, 40.857159>,  <45.814659, 31.709953, 40.408955>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.229351, 31.748075, 40.857159> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.102486, 31.490313, 40.578838>,  <45.026367, 31.335655, 40.411846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.102486, 31.490313, 40.578838>,  <45.229351, 31.748075, 40.857159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.102486, 31.490313, 40.578838> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386293, -0.582281, 0.715351,
		-0.866133, 0.495667, -0.064253,
		-0.317162, -0.644409, -0.695805,
		45.007336, 31.296989, 40.370098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.573219, 31.448961, 41.084702>,  <45.229351, 31.748075, 40.857159>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.573219, 31.448961, 41.084702> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.693264, 31.183304, 40.810810>,  <44.765289, 31.023909, 40.646477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.693264, 31.183304, 40.810810>,  <44.573219, 31.448961, 41.084702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.693264, 31.183304, 40.810810> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422632, -0.736090, 0.528728,
		-0.855170, 0.130710, -0.501597,
		0.300111, -0.664143, -0.684724,
		44.783298, 30.984060, 40.605392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.962303, 30.992117, 40.930065>,  <44.573219, 31.448961, 41.084702>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.962303, 30.992117, 40.930065> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.298595, 30.798115, 40.833775>,  <44.500370, 30.681713, 40.776001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.298595, 30.798115, 40.833775>,  <43.962303, 30.992117, 40.930065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.298595, 30.798115, 40.833775> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380880, -0.845728, 0.373730,
		-0.384847, -0.222518, -0.895756,
		0.840728, -0.485005, -0.240723,
		44.550816, 30.652613, 40.761559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.707653, 30.384022, 40.629948>,  <43.962303, 30.992117, 40.930065>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.707653, 30.384022, 40.629948> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.081818, 30.332621, 40.761700>,  <44.306316, 30.301781, 40.840752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.081818, 30.332621, 40.761700>,  <43.707653, 30.384022, 40.629948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.081818, 30.332621, 40.761700> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253366, -0.893403, 0.370996,
		0.246592, -0.430487, -0.868259,
		0.935413, -0.128503, 0.329377,
		44.362442, 30.294069, 40.860512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<35.614803, 40.320984, 41.080032> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.522522, 39.939728, 41.158318>,  <35.467152, 39.710976, 41.205288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.522522, 39.939728, 41.158318>,  <35.614803, 40.320984, 41.080032>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.522522, 39.939728, 41.158318> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004843, -0.200014, -0.979781,
		0.973011, -0.226991, 0.041529,
		-0.230707, -0.953137, 0.195715,
		35.453308, 39.653786, 41.217033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.158562, 39.947094, 40.780415>,  <35.614803, 40.320984, 41.080032>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.158562, 39.947094, 40.780415> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.825890, 39.726868, 40.809219>,  <35.626286, 39.594730, 40.826500>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.825890, 39.726868, 40.809219>,  <36.158562, 39.947094, 40.780415>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.825890, 39.726868, 40.809219> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109662, -0.289999, -0.950723,
		0.544323, -0.782798, 0.301562,
		-0.831678, -0.550570, 0.072010,
		35.576385, 39.561695, 40.830822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.407337, 39.339687, 40.513180>,  <36.158562, 39.947094, 40.780415>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.407337, 39.339687, 40.513180> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.007668, 39.340626, 40.496941>,  <35.767864, 39.341190, 40.487198>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.007668, 39.340626, 40.496941>,  <36.407337, 39.339687, 40.513180>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.007668, 39.340626, 40.496941> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037122, -0.355117, -0.934085,
		-0.016609, -0.934819, 0.354736,
		-0.999173, 0.002346, -0.040600,
		35.707916, 39.341331, 40.484760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.196732, 38.703556, 40.390862>,  <36.407337, 39.339687, 40.513180>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.196732, 38.703556, 40.390862> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.893417, 38.929466, 40.260609>,  <35.711430, 39.065010, 40.182457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.893417, 38.929466, 40.260609>,  <36.196732, 38.703556, 40.390862>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.893417, 38.929466, 40.260609> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012217, -0.487101, -0.873260,
		-0.651812, -0.666156, 0.362461,
		-0.758283, 0.564773, -0.325637,
		35.665932, 39.098900, 40.162918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.852409, 38.228645, 39.872589>,  <36.196732, 38.703556, 40.390862>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.852409, 38.228645, 39.872589> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.719765, 38.603046, 39.825375>,  <35.640179, 38.827686, 39.797047>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.719765, 38.603046, 39.825375>,  <35.852409, 38.228645, 39.872589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.719765, 38.603046, 39.825375> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131777, -0.169844, -0.976621,
		-0.934168, -0.308303, 0.179666,
		-0.331610, 0.936003, -0.118035,
		35.620281, 38.883846, 39.789963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.246544, 38.106548, 39.393269>,  <35.852409, 38.228645, 39.872589>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.246544, 38.106548, 39.393269> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.349083, 38.491917, 39.362022>,  <35.410606, 38.723137, 39.343277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.349083, 38.491917, 39.362022>,  <35.246544, 38.106548, 39.393269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.349083, 38.491917, 39.362022> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159365, -0.037580, -0.986504,
		-0.953356, 0.265339, 0.143902,
		0.256350, 0.963423, -0.078113,
		35.425987, 38.780945, 39.338589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.811836, 38.349785, 38.868919>,  <35.246544, 38.106548, 39.393269>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.811836, 38.349785, 38.868919> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.107533, 38.616898, 38.903759>,  <35.284950, 38.777164, 38.924664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.107533, 38.616898, 38.903759>,  <34.811836, 38.349785, 38.868919>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.107533, 38.616898, 38.903759> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033999, 0.092160, -0.995164,
		-0.672579, 0.738630, 0.045425,
		0.739244, 0.667781, 0.087097,
		35.329308, 38.817230, 38.929890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.631481, 39.010292, 38.709755>,  <34.811836, 38.349785, 38.868919>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.631481, 39.010292, 38.709755> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.026039, 39.017925, 38.644440>,  <35.262775, 39.022507, 38.605251>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.026039, 39.017925, 38.644440>,  <34.631481, 39.010292, 38.709755>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.026039, 39.017925, 38.644440> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164345, 0.139320, -0.976515,
		0.004112, 0.990064, 0.140561,
		0.986394, 0.019085, -0.163285,
		35.321957, 39.023651, 38.595455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.731628, 39.408222, 38.152687>,  <34.631481, 39.010292, 38.709755>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.731628, 39.408222, 38.152687> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.078899, 39.209736, 38.154846>,  <35.287262, 39.090645, 38.156139>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.078899, 39.209736, 38.154846>,  <34.731628, 39.408222, 38.152687>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.078899, 39.209736, 38.154846> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013781, -0.034976, -0.999293,
		0.496057, 0.867492, -0.037204,
		0.868180, -0.496219, 0.005395,
		35.339352, 39.060871, 38.156464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.025555, 39.662373, 37.614494>,  <34.731628, 39.408222, 38.152687>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.025555, 39.662373, 37.614494> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.226444, 39.321812, 37.675007>,  <35.346977, 39.117474, 37.711315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.226444, 39.321812, 37.675007>,  <35.025555, 39.662373, 37.614494>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.226444, 39.321812, 37.675007> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050119, -0.145991, -0.988016,
		0.863285, 0.503786, -0.030648,
		0.502223, -0.851402, 0.151281,
		35.377110, 39.066391, 37.720390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.590611, 39.722569, 37.118134>,  <35.025555, 39.662373, 37.614494>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.590611, 39.722569, 37.118134> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.587841, 39.334724, 37.215950>,  <35.586178, 39.102016, 37.274639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.587841, 39.334724, 37.215950>,  <35.590611, 39.722569, 37.118134>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.587841, 39.334724, 37.215950> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040005, -0.244620, -0.968793,
		0.999175, 0.003075, 0.040483,
		-0.006924, -0.969614, 0.244542,
		35.585762, 39.043839, 37.289314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.144520, 39.525391, 36.788940>,  <35.590611, 39.722569, 37.118134>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.144520, 39.525391, 36.788940> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.900158, 39.215115, 36.852310>,  <35.753540, 39.028950, 36.890331>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.900158, 39.215115, 36.852310>,  <36.144520, 39.525391, 36.788940>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.900158, 39.215115, 36.852310> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089959, -0.130803, -0.987319,
		0.786574, -0.617413, 0.010129,
		-0.610908, -0.775688, 0.158428,
		35.716885, 38.982407, 36.899837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.448608, 38.818081, 36.516342>,  <36.144520, 39.525391, 36.788940>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.448608, 38.818081, 36.516342> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.049953, 38.825073, 36.548351>,  <35.810760, 38.829269, 36.567554>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.049953, 38.825073, 36.548351>,  <36.448608, 38.818081, 36.516342>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.049953, 38.825073, 36.548351> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081894, -0.230000, -0.969739,
		0.001452, -0.973034, 0.230659,
		-0.996640, 0.017482, 0.080020,
		35.750961, 38.830318, 36.572357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.161949, 38.211094, 36.498180>,  <36.448608, 38.818081, 36.516342>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.161949, 38.211094, 36.498180> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.327751, 38.436749, 36.212540>,  <36.427231, 38.572140, 36.041157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.327751, 38.436749, 36.212540>,  <36.161949, 38.211094, 36.498180>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.327751, 38.436749, 36.212540> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846562, 0.048921, 0.530037,
		0.333947, -0.824232, -0.457298,
		0.414501, 0.564136, -0.714101,
		36.452103, 38.605988, 35.998310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.782734, 37.839588, 36.417698>,  <36.161949, 38.211094, 36.498180>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.782734, 37.839588, 36.417698> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.919468, 37.520557, 36.218895>,  <37.001507, 37.329140, 36.099613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.919468, 37.520557, 36.218895>,  <36.782734, 37.839588, 36.417698>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.919468, 37.520557, 36.218895> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034366, -0.539126, 0.841524,
		-0.939132, -0.270581, -0.211701,
		0.341834, -0.797577, -0.497012,
		37.022018, 37.281284, 36.069790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.378395, 37.290577, 36.666328>,  <36.782734, 37.839588, 36.417698>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.378395, 37.290577, 36.666328> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.704960, 37.137516, 36.493332>,  <36.900898, 37.045681, 36.389534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.704960, 37.137516, 36.493332>,  <36.378395, 37.290577, 36.666328>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.704960, 37.137516, 36.493332> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059176, -0.689564, 0.721803,
		-0.574427, -0.614883, -0.540326,
		0.816414, -0.382649, -0.432491,
		36.949883, 37.022720, 36.363586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.291634, 36.616333, 36.736637>,  <36.378395, 37.290577, 36.666328>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.291634, 36.616333, 36.736637> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.682610, 36.598186, 36.654125>,  <36.917194, 36.587299, 36.604618>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.682610, 36.598186, 36.654125>,  <36.291634, 36.616333, 36.736637>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.682610, 36.598186, 36.654125> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120092, -0.684032, 0.719498,
		-0.173744, -0.728039, -0.663153,
		0.977441, -0.045369, -0.206278,
		36.975842, 36.584576, 36.592243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.496357, 35.922058, 36.890915>,  <36.291634, 36.616333, 36.736637>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.496357, 35.922058, 36.890915> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.831375, 36.140484, 36.898159>,  <37.032387, 36.271538, 36.902508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.831375, 36.140484, 36.898159>,  <36.496357, 35.922058, 36.890915>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.831375, 36.140484, 36.898159> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164064, -0.282986, 0.944988,
		0.521151, -0.788500, -0.326604,
		0.837547, 0.546065, 0.018114,
		37.082638, 36.304302, 36.903595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.043034, 35.451019, 36.963184>,  <36.496357, 35.922058, 36.890915>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.043034, 35.451019, 36.963184> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.189602, 35.806980, 37.071854>,  <37.277542, 36.020557, 37.137054>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.189602, 35.806980, 37.071854>,  <37.043034, 35.451019, 36.963184>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.189602, 35.806980, 37.071854> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174110, -0.352397, 0.919512,
		0.914014, -0.289628, -0.284067,
		0.366421, 0.889905, 0.271669,
		37.299530, 36.073952, 37.153355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.678150, 35.259811, 37.191704>,  <37.043034, 35.451019, 36.963184>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.678150, 35.259811, 37.191704> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.586178, 35.612720, 37.356010>,  <37.530994, 35.824467, 37.454594>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.586178, 35.612720, 37.356010>,  <37.678150, 35.259811, 37.191704>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.586178, 35.612720, 37.356010> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272253, -0.346906, 0.897516,
		0.934350, 0.318199, -0.160437,
		-0.229932, 0.882273, 0.410762,
		37.517197, 35.877403, 37.479240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.212246, 35.365341, 37.724293>,  <37.678150, 35.259811, 37.191704>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.212246, 35.365341, 37.724293> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.902035, 35.606625, 37.798805>,  <37.715908, 35.751392, 37.843513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.902035, 35.606625, 37.798805>,  <38.212246, 35.365341, 37.724293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.902035, 35.606625, 37.798805> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205448, -0.037873, 0.977935,
		0.596951, 0.796686, -0.094556,
		-0.775526, 0.603205, 0.186286,
		37.669376, 35.787586, 37.854691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.411835, 35.852192, 38.233280>,  <38.212246, 35.365341, 37.724293>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.411835, 35.852192, 38.233280> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.012096, 35.864834, 38.240299>,  <37.772255, 35.872421, 38.244511>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.012096, 35.864834, 38.240299>,  <38.411835, 35.852192, 38.233280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.012096, 35.864834, 38.240299> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012961, -0.139830, 0.990091,
		0.033747, 0.989671, 0.139329,
		-0.999346, 0.031607, 0.017546,
		37.712292, 35.874317, 38.245564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.075726, 36.474609, 38.644341>,  <38.411835, 35.852192, 38.233280>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.075726, 36.474609, 38.644341> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.822571, 36.164982, 38.650951>,  <37.670677, 35.979206, 38.654919>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.822571, 36.164982, 38.650951>,  <38.075726, 36.474609, 38.644341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.822571, 36.164982, 38.650951> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077957, 0.084943, 0.993332,
		-0.770306, 0.627383, -0.114104,
		-0.632892, -0.774064, 0.016523,
		37.632702, 35.932762, 38.655907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.404251, 36.710991, 38.965145>,  <38.075726, 36.474609, 38.644341>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.404251, 36.710991, 38.965145> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.432457, 36.314770, 39.012203>,  <37.449379, 36.077038, 39.040440>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.432457, 36.314770, 39.012203>,  <37.404251, 36.710991, 38.965145>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.432457, 36.314770, 39.012203> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093182, 0.110886, 0.989455,
		-0.993149, -0.080734, -0.084482,
		0.070515, -0.990548, 0.117649,
		37.453613, 36.017605, 39.047497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.152069, 36.608807, 39.582550>,  <37.404251, 36.710991, 38.965145>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.152069, 36.608807, 39.582550> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.267288, 36.228165, 39.539692>,  <37.336418, 35.999779, 39.513977>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.267288, 36.228165, 39.539692>,  <37.152069, 36.608807, 39.582550>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.267288, 36.228165, 39.539692> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049509, -0.096935, 0.994059,
		-0.956335, -0.291641, 0.019191,
		0.288048, -0.951604, -0.107141,
		37.353703, 35.942684, 39.507549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.619640, 36.233688, 39.904724>,  <37.152069, 36.608807, 39.582550>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.619640, 36.233688, 39.904724> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.941303, 35.995937, 39.901794>,  <37.134300, 35.853287, 39.900036>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.941303, 35.995937, 39.901794>,  <36.619640, 36.233688, 39.904724>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.941303, 35.995937, 39.901794> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043374, -0.070966, 0.996535,
		-0.592836, -0.801050, -0.082848,
		0.804154, -0.594376, -0.007327,
		37.182549, 35.817623, 39.899597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.471153, 35.684868, 40.393131>,  <36.619640, 36.233688, 39.904724>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.471153, 35.684868, 40.393131> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.869041, 35.666321, 40.356518>,  <37.107777, 35.655193, 40.334549>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.869041, 35.666321, 40.356518>,  <36.471153, 35.684868, 40.393131>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.869041, 35.666321, 40.356518> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087881, -0.075447, 0.993270,
		-0.052965, -0.996071, -0.070974,
		0.994722, -0.046371, -0.091532,
		37.167458, 35.652412, 40.329060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.716923, 35.068241, 40.815445>,  <36.471153, 35.684868, 40.393131>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.716923, 35.068241, 40.815445> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.980331, 35.365963, 40.770973>,  <37.138378, 35.544598, 40.744289>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.980331, 35.365963, 40.770973>,  <36.716923, 35.068241, 40.815445>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.980331, 35.365963, 40.770973> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069153, 0.087265, 0.993782,
		0.749378, -0.662116, 0.005995,
		0.658522, 0.744303, -0.111182,
		37.177887, 35.589252, 40.737617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.021736, 34.420532, 41.004559>,  <36.716923, 35.068241, 40.815445>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.021736, 34.420532, 41.004559> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.905220, 34.056709, 41.123123>,  <36.835312, 33.838417, 41.194260>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.905220, 34.056709, 41.123123>,  <37.021736, 34.420532, 41.004559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.905220, 34.056709, 41.123123> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301090, -0.206931, -0.930873,
		0.908017, -0.360399, -0.213581,
		-0.291289, -0.909556, 0.296409,
		36.817833, 33.783844, 41.212048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.272896, 33.914379, 40.514687>,  <37.021736, 34.420532, 41.004559>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.272896, 33.914379, 40.514687> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.969341, 33.727592, 40.696255>,  <36.787209, 33.615520, 40.805195>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.969341, 33.727592, 40.696255>,  <37.272896, 33.914379, 40.514687>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.969341, 33.727592, 40.696255> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327135, -0.329343, -0.885729,
		0.563100, -0.820656, 0.097172,
		-0.758882, -0.466965, 0.453918,
		36.741676, 33.587502, 40.832432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.177246, 33.303356, 40.118366>,  <37.272896, 33.914379, 40.514687>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.177246, 33.303356, 40.118366> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.823502, 33.315216, 40.304714>,  <36.611256, 33.322334, 40.416523>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.823502, 33.315216, 40.304714>,  <37.177246, 33.303356, 40.118366>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.823502, 33.315216, 40.304714> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433085, -0.424554, -0.795105,
		0.174209, -0.904917, 0.388299,
		-0.884358, 0.029653, 0.465867,
		36.558193, 33.324112, 40.444473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.837566, 32.621815, 40.016083>,  <37.177246, 33.303356, 40.118366>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.837566, 32.621815, 40.016083> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.563286, 32.908981, 40.064087>,  <36.398716, 33.081280, 40.092892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.563286, 32.908981, 40.064087>,  <36.837566, 32.621815, 40.016083>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.563286, 32.908981, 40.064087> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529644, -0.379029, -0.758824,
		-0.499284, -0.583894, 0.640143,
		-0.685706, 0.717917, 0.120013,
		36.357574, 33.124355, 40.100090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.197186, 32.210892, 39.882885>,  <36.837566, 32.621815, 40.016083>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.197186, 32.210892, 39.882885> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.127026, 32.602802, 39.844368>,  <36.084930, 32.837948, 39.821259>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.127026, 32.602802, 39.844368>,  <36.197186, 32.210892, 39.882885>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.127026, 32.602802, 39.844368> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577902, -0.181652, -0.795633,
		-0.797033, -0.083911, 0.598077,
		-0.175404, 0.979776, -0.096290,
		36.074406, 32.896736, 39.815479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.541473, 32.214859, 39.572388>,  <36.197186, 32.210892, 39.882885>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.541473, 32.214859, 39.572388> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.625923, 32.604935, 39.545784>,  <35.676594, 32.838982, 39.529819>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.625923, 32.604935, 39.545784>,  <35.541473, 32.214859, 39.572388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.625923, 32.604935, 39.545784> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581829, 0.070704, -0.810232,
		-0.785430, 0.209759, 0.582323,
		0.211126, 0.975193, -0.066511,
		35.689262, 32.897491, 39.525829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.952606, 32.563511, 39.633938>,  <35.541473, 32.214859, 39.572388>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.952606, 32.563511, 39.633938> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.208534, 32.776440, 39.412212>,  <35.362091, 32.904198, 39.279179>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.208534, 32.776440, 39.412212>,  <34.952606, 32.563511, 39.633938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.208534, 32.776440, 39.412212> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690495, 0.081524, -0.718729,
		-0.337404, 0.842609, 0.419724,
		0.639825, 0.532319, -0.554311,
		35.400482, 32.936134, 39.245918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.613167, 33.241032, 39.550682>,  <34.952606, 32.563511, 39.633938>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.613167, 33.241032, 39.550682> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.891563, 33.289665, 39.267609>,  <35.058601, 33.318844, 39.097767>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.891563, 33.289665, 39.267609>,  <34.613167, 33.241032, 39.550682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.891563, 33.289665, 39.267609> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711532, 0.249244, -0.656962,
		0.096509, 0.960778, 0.259983,
		0.695994, 0.121584, -0.707679,
		35.100361, 33.326141, 39.055305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.514915, 33.952511, 39.334240>,  <34.613167, 33.241032, 39.550682>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.514915, 33.952511, 39.334240> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.711029, 33.761948, 39.042309>,  <34.828697, 33.647610, 38.867149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.711029, 33.761948, 39.042309>,  <34.514915, 33.952511, 39.334240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.711029, 33.761948, 39.042309> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582166, 0.444170, -0.681025,
		0.648616, 0.758780, -0.059579,
		0.490285, -0.476409, -0.729832,
		34.858116, 33.619026, 38.823360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.536522, 34.414795, 38.794987>,  <34.514915, 33.952511, 39.334240>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.536522, 34.414795, 38.794987> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.625370, 34.062561, 38.627541>,  <34.678680, 33.851223, 38.527073>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.625370, 34.062561, 38.627541>,  <34.536522, 34.414795, 38.794987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.625370, 34.062561, 38.627541> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587565, 0.221737, -0.778204,
		0.778093, 0.418821, -0.468145,
		0.222123, -0.880581, -0.418616,
		34.692005, 33.798386, 38.501957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.833530, 34.582035, 38.275955>,  <34.536522, 34.414795, 38.794987>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.833530, 34.582035, 38.275955> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.678883, 34.214809, 38.240879>,  <34.586094, 33.994476, 38.219833>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.678883, 34.214809, 38.240879>,  <34.833530, 34.582035, 38.275955>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.678883, 34.214809, 38.240879> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453572, 0.272074, -0.848675,
		0.802992, -0.288344, -0.521596,
		-0.386622, -0.918060, -0.087688,
		34.562897, 33.939392, 38.214573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.053406, 34.261669, 37.613873>,  <34.833530, 34.582035, 38.275955>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.053406, 34.261669, 37.613873> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.702099, 34.138329, 37.760059>,  <34.491314, 34.064323, 37.847771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.702099, 34.138329, 37.760059>,  <35.053406, 34.261669, 37.613873>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.702099, 34.138329, 37.760059> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450591, 0.277867, -0.848385,
		0.160051, -0.909785, -0.382982,
		-0.878266, -0.308353, 0.365468,
		34.438618, 34.045822, 37.869698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.964962, 34.427071, 44.795395> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.573757, 34.351700, 44.831165>,  <37.339035, 34.306477, 44.852627>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.573757, 34.351700, 44.831165>,  <37.964962, 34.427071, 44.795395>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.573757, 34.351700, 44.831165> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056639, -0.172693, -0.983346,
		0.200730, -0.966785, 0.158223,
		-0.978008, -0.188425, 0.089423,
		37.280354, 34.295174, 44.857990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.885944, 33.822426, 44.456337>,  <37.964962, 34.427071, 44.795395>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.885944, 33.822426, 44.456337> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.505756, 33.944103, 44.481880>,  <37.277645, 34.017109, 44.497204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.505756, 33.944103, 44.481880>,  <37.885944, 33.822426, 44.456337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.505756, 33.944103, 44.481880> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140064, -0.235766, -0.961664,
		-0.277487, -0.922971, 0.266695,
		-0.950465, 0.304203, 0.063853,
		37.220615, 34.035362, 44.501038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.554188, 33.290234, 44.213459>,  <37.885944, 33.822426, 44.456337>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.554188, 33.290234, 44.213459> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.282471, 33.582745, 44.188824>,  <37.119438, 33.758251, 44.174042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.282471, 33.582745, 44.188824>,  <37.554188, 33.290234, 44.213459>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.282471, 33.582745, 44.188824> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194299, -0.260149, -0.945817,
		-0.707676, -0.630523, 0.318804,
		-0.679296, 0.731275, -0.061591,
		37.078682, 33.802128, 44.170345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.965763, 33.017048, 43.859516>,  <37.554188, 33.290234, 44.213459>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.965763, 33.017048, 43.859516> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.922897, 33.409748, 43.796680>,  <36.897179, 33.645370, 43.758980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.922897, 33.409748, 43.796680>,  <36.965763, 33.017048, 43.859516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.922897, 33.409748, 43.796680> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342897, -0.184802, -0.921016,
		-0.933240, -0.044838, 0.356445,
		-0.107169, 0.981752, -0.157089,
		36.890747, 33.704273, 43.749554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.250381, 33.068077, 43.558056>,  <36.965763, 33.017048, 43.859516>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.250381, 33.068077, 43.558056> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.474499, 33.387260, 43.469204>,  <36.608971, 33.578770, 43.415894>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.474499, 33.387260, 43.469204>,  <36.250381, 33.068077, 43.558056>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.474499, 33.387260, 43.469204> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133129, -0.177931, -0.974996,
		-0.817526, 0.575854, 0.006538,
		0.560292, 0.797955, -0.222127,
		36.642586, 33.626648, 43.402565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.809898, 33.340000, 42.967953>,  <36.250381, 33.068077, 43.558056>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.809898, 33.340000, 42.967953> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.183987, 33.481613, 42.969910>,  <36.408440, 33.566582, 42.971085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.183987, 33.481613, 42.969910>,  <35.809898, 33.340000, 42.967953>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.183987, 33.481613, 42.969910> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064220, -0.156034, -0.985662,
		-0.348198, 0.922123, -0.168662,
		0.935219, 0.354037, 0.004888,
		36.464554, 33.587826, 42.971375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.832912, 33.669270, 42.308575>,  <35.809898, 33.340000, 42.967953>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.832912, 33.669270, 42.308575> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.221985, 33.698238, 42.396801>,  <36.455429, 33.715618, 42.449738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.221985, 33.698238, 42.396801>,  <35.832912, 33.669270, 42.308575>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.221985, 33.698238, 42.396801> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211989, 0.110185, -0.971041,
		-0.094624, 0.991269, 0.091823,
		0.972680, 0.072418, 0.220564,
		36.513790, 33.719963, 42.462971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.094627, 34.248047, 41.950001>,  <35.832912, 33.669270, 42.308575>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.094627, 34.248047, 41.950001> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.396812, 33.993141, 42.010883>,  <36.578125, 33.840199, 42.047413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.396812, 33.993141, 42.010883>,  <36.094627, 34.248047, 41.950001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.396812, 33.993141, 42.010883> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277479, 0.100742, -0.955435,
		0.593531, 0.764032, 0.252934,
		0.755464, -0.637264, 0.152210,
		36.623451, 33.801964, 42.056545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.757389, 34.616692, 41.715149>,  <36.094627, 34.248047, 41.950001>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.757389, 34.616692, 41.715149> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.806820, 34.220993, 41.683861>,  <36.836479, 33.983574, 41.665089>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.806820, 34.220993, 41.683861>,  <36.757389, 34.616692, 41.715149>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.806820, 34.220993, 41.683861> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049675, 0.084891, -0.995151,
		0.991091, 0.119090, 0.059631,
		0.123575, -0.989248, -0.078219,
		36.843891, 33.924217, 41.660397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.280373, 34.972855, 41.392460>,  <36.757389, 34.616692, 41.715149>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.280373, 34.972855, 41.392460> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.353550, 35.345165, 41.265854>,  <37.397457, 35.568554, 41.189892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.353550, 35.345165, 41.265854>,  <37.280373, 34.972855, 41.392460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.353550, 35.345165, 41.265854> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314781, 0.249539, 0.915775,
		0.931368, -0.267165, -0.247341,
		0.182942, 0.930781, -0.316511,
		37.408432, 35.624401, 41.170902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.863659, 35.124027, 41.711025>,  <37.280373, 34.972855, 41.392460>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.863659, 35.124027, 41.711025> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.720856, 35.489742, 41.634483>,  <37.635174, 35.709171, 41.588558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.720856, 35.489742, 41.634483>,  <37.863659, 35.124027, 41.711025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.720856, 35.489742, 41.634483> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149268, 0.258062, 0.954527,
		0.922097, 0.312214, -0.228605,
		-0.357011, 0.914290, -0.191355,
		37.613754, 35.764030, 41.577076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.356651, 35.662117, 42.027885>,  <37.863659, 35.124027, 41.711025>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.356651, 35.662117, 42.027885> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.020592, 35.869137, 41.963024>,  <37.818958, 35.993351, 41.924107>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.020592, 35.869137, 41.963024>,  <38.356651, 35.662117, 42.027885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.020592, 35.869137, 41.963024> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068346, 0.397623, 0.915000,
		0.538035, 0.757652, -0.369435,
		-0.840147, 0.517551, -0.162153,
		37.768547, 36.024403, 41.914379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.468143, 36.276596, 42.387032>,  <38.356651, 35.662117, 42.027885>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.468143, 36.276596, 42.387032> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.075439, 36.320621, 42.325012>,  <37.839817, 36.347038, 42.287800>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.075439, 36.320621, 42.325012>,  <38.468143, 36.276596, 42.387032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.075439, 36.320621, 42.325012> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070889, 0.544773, 0.835582,
		0.176433, 0.831329, -0.527032,
		-0.981757, 0.110063, -0.155048,
		37.780914, 36.353642, 42.278496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.246555, 36.952103, 42.502636>,  <38.468143, 36.276596, 42.387032>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.246555, 36.952103, 42.502636> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.904438, 36.753975, 42.563480>,  <37.699169, 36.635098, 42.599987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.904438, 36.753975, 42.563480>,  <38.246555, 36.952103, 42.502636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.904438, 36.753975, 42.563480> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091528, 0.433376, 0.896553,
		-0.509999, 0.752892, -0.415998,
		-0.855291, -0.495317, 0.152111,
		37.647850, 36.605381, 42.609112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.710827, 37.436863, 42.768425>,  <38.246555, 36.952103, 42.502636>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.710827, 37.436863, 42.768425> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.632645, 37.056999, 42.866356>,  <37.585735, 36.829079, 42.925114>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.632645, 37.056999, 42.866356>,  <37.710827, 37.436863, 42.768425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.632645, 37.056999, 42.866356> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092027, 0.266297, 0.959488,
		-0.976386, 0.165002, -0.139442,
		-0.195451, -0.949663, 0.244824,
		37.574009, 36.772099, 42.939804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.317623, 37.512989, 43.292278>,  <37.710827, 37.436863, 42.768425>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.317623, 37.512989, 43.292278> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.417305, 37.127285, 43.328281>,  <37.477116, 36.895863, 43.349884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.417305, 37.127285, 43.328281>,  <37.317623, 37.512989, 43.292278>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.417305, 37.127285, 43.328281> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103257, 0.065953, 0.992465,
		-0.962930, -0.256623, -0.083131,
		0.249206, -0.964259, 0.090007,
		37.492065, 36.838009, 43.355282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.849987, 37.282078, 43.664345>,  <37.317623, 37.512989, 43.292278>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.849987, 37.282078, 43.664345> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.139317, 37.012157, 43.722916>,  <37.312916, 36.850204, 43.758057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.139317, 37.012157, 43.722916>,  <36.849987, 37.282078, 43.664345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.139317, 37.012157, 43.722916> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149330, 0.054171, 0.987303,
		-0.674166, -0.736008, -0.061585,
		0.723326, -0.674802, 0.146428,
		37.356316, 36.809715, 43.766846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.542778, 36.924835, 44.249092>,  <36.849987, 37.282078, 43.664345>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.542778, 36.924835, 44.249092> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.936268, 36.868233, 44.204788>,  <37.172359, 36.834270, 44.178207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.936268, 36.868233, 44.204788>,  <36.542778, 36.924835, 44.249092>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.936268, 36.868233, 44.204788> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112838, 0.006737, 0.993591,
		-0.139853, -0.989914, 0.022595,
		0.983722, -0.141506, -0.110758,
		37.231384, 36.825783, 44.171562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.791676, 36.356438, 44.759586>,  <36.542778, 36.924835, 44.249092>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.791676, 36.356438, 44.759586> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.110470, 36.582310, 44.673851>,  <37.301746, 36.717834, 44.622410>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.110470, 36.582310, 44.673851>,  <36.791676, 36.356438, 44.759586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.110470, 36.582310, 44.673851> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198895, 0.089709, 0.975906,
		0.570306, -0.820418, -0.040816,
		0.796990, 0.564683, -0.214339,
		37.349567, 36.751713, 44.609550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.390881, 36.070560, 45.122257>,  <36.791676, 36.356438, 44.759586>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.390881, 36.070560, 45.122257> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.451172, 36.457649, 45.041470>,  <37.487347, 36.689903, 44.992996>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.451172, 36.457649, 45.041470>,  <37.390881, 36.070560, 45.122257>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.451172, 36.457649, 45.041470> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251700, 0.160002, 0.954487,
		0.955996, -0.194702, -0.219459,
		0.150727, 0.967724, -0.201968,
		37.496391, 36.747967, 44.980881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.119999, 36.134804, 45.505775>,  <37.390881, 36.070560, 45.122257>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.119999, 36.134804, 45.505775> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.960217, 36.495308, 45.438633>,  <37.864349, 36.711609, 45.398350>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.960217, 36.495308, 45.438633>,  <38.119999, 36.134804, 45.505775>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.960217, 36.495308, 45.438633> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127871, 0.236081, 0.963284,
		0.907793, 0.363321, -0.209547,
		-0.399452, 0.901257, -0.167854,
		37.840382, 36.765686, 45.388275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.616463, 36.592506, 45.878166>,  <38.119999, 36.134804, 45.505775>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.616463, 36.592506, 45.878166> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.288109, 36.811096, 45.811806>,  <38.091099, 36.942249, 45.771988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.288109, 36.811096, 45.811806>,  <38.616463, 36.592506, 45.878166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.288109, 36.811096, 45.811806> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122325, 0.452005, 0.883588,
		0.557845, 0.705027, -0.437889,
		-0.820881, 0.546470, -0.165906,
		38.041843, 36.975037, 45.762035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.787193, 37.335838, 45.914154>,  <38.616463, 36.592506, 45.878166>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.787193, 37.335838, 45.914154> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.397587, 37.343060, 46.004459>,  <38.163822, 37.347393, 46.058643>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.397587, 37.343060, 46.004459>,  <38.787193, 37.335838, 45.914154>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.397587, 37.343060, 46.004459> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206659, 0.478671, 0.853326,
		-0.092659, 0.877808, -0.469965,
		-0.974015, 0.018055, 0.225760,
		38.105381, 37.348476, 46.072189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.054960, 35.280910, 47.556324> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.437428, 35.353096, 47.464081>,  <31.666908, 35.396408, 47.408737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.437428, 35.353096, 47.464081>,  <31.054960, 35.280910, 47.556324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.437428, 35.353096, 47.464081> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266443, 0.209517, -0.940803,
		-0.121468, 0.961007, 0.248417,
		0.956166, 0.180466, -0.230604,
		31.724277, 35.407234, 47.394901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.023554, 35.909599, 47.085857>,  <31.054960, 35.280910, 47.556324>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.023554, 35.909599, 47.085857> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.363865, 35.712936, 47.011612>,  <31.568052, 35.594940, 46.967064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.363865, 35.712936, 47.011612>,  <31.023554, 35.909599, 47.085857>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.363865, 35.712936, 47.011612> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068049, 0.247155, -0.966583,
		0.521100, 0.834979, 0.176818,
		0.850778, -0.491655, -0.185612,
		31.619099, 35.565441, 46.955929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.280403, 36.278240, 46.496193>,  <31.023554, 35.909599, 47.085857>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.280403, 36.278240, 46.496193> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.510998, 35.951397, 46.495541>,  <31.649355, 35.755291, 46.495148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.510998, 35.951397, 46.495541>,  <31.280403, 36.278240, 46.496193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.510998, 35.951397, 46.495541> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279463, 0.199045, -0.939299,
		0.767829, 0.541038, 0.343097,
		0.576488, -0.817104, -0.001632,
		31.683945, 35.706264, 46.495052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.096722, 36.458538, 46.344707>,  <31.280403, 36.278240, 46.496193>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.096722, 36.458538, 46.344707> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.032215, 36.077591, 46.241180>,  <31.993511, 35.849022, 46.179062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.032215, 36.077591, 46.241180>,  <32.096722, 36.458538, 46.344707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.032215, 36.077591, 46.241180> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289263, 0.205125, -0.935014,
		0.943568, -0.225651, 0.242406,
		-0.161263, -0.952368, -0.258822,
		31.983835, 35.791882, 46.163532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.681820, 36.203194, 45.949890>,  <32.096722, 36.458538, 46.344707>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.681820, 36.203194, 45.949890> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.391209, 35.959892, 45.822033>,  <32.216843, 35.813911, 45.745319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.391209, 35.959892, 45.822033>,  <32.681820, 36.203194, 45.949890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.391209, 35.959892, 45.822033> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276766, 0.166737, -0.946361,
		0.628928, -0.776029, 0.047205,
		-0.726532, -0.608258, -0.319644,
		32.173248, 35.777416, 45.726139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.945389, 35.832268, 45.414806>,  <32.681820, 36.203194, 45.949890>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.945389, 35.832268, 45.414806> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.548603, 35.820595, 45.365562>,  <32.310532, 35.813591, 45.336014>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.548603, 35.820595, 45.365562>,  <32.945389, 35.832268, 45.414806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.548603, 35.820595, 45.365562> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124875, -0.069215, -0.989755,
		0.020363, -0.997175, 0.072303,
		-0.991963, -0.029183, -0.123112,
		32.251015, 35.811840, 45.328629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.880100, 35.552719, 44.804398>,  <32.945389, 35.832268, 45.414806>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.880100, 35.552719, 44.804398> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.489552, 35.633137, 44.836109>,  <32.255222, 35.681389, 44.855137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.489552, 35.633137, 44.836109>,  <32.880100, 35.552719, 44.804398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.489552, 35.633137, 44.836109> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077224, 0.018072, -0.996850,
		-0.201844, -0.979416, -0.002120,
		-0.976369, 0.201044, 0.079282,
		32.196640, 35.693451, 44.859894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.474895, 34.952862, 44.356937>,  <32.880100, 35.552719, 44.804398>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.474895, 34.952862, 44.356937> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.245449, 35.276485, 44.408154>,  <32.107780, 35.470657, 44.438885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.245449, 35.276485, 44.408154>,  <32.474895, 34.952862, 44.356937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.245449, 35.276485, 44.408154> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173813, 0.032533, -0.984241,
		-0.800471, -0.586831, 0.121963,
		-0.573616, 0.809056, 0.128040,
		32.073364, 35.519203, 44.446564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.764563, 34.805397, 44.026760>,  <32.474895, 34.952862, 44.356937>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.764563, 34.805397, 44.026760> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.787046, 35.203819, 44.054203>,  <31.800537, 35.442875, 44.070667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.787046, 35.203819, 44.054203>,  <31.764563, 34.805397, 44.026760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.787046, 35.203819, 44.054203> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193213, 0.078267, -0.978030,
		-0.979545, 0.041719, 0.196851,
		0.056210, 0.996059, 0.068605,
		31.803909, 35.502636, 44.074783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.266745, 35.081383, 43.525726>,  <31.764563, 34.805397, 44.026760>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.266745, 35.081383, 43.525726> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.493275, 35.400955, 43.606701>,  <31.629192, 35.592701, 43.655285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.493275, 35.400955, 43.606701>,  <31.266745, 35.081383, 43.525726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.493275, 35.400955, 43.606701> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012351, 0.253825, -0.967171,
		-0.824089, 0.545233, 0.153616,
		0.566325, 0.798933, 0.202441,
		31.663172, 35.640636, 43.667435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.855581, 35.682899, 43.292576>,  <31.266745, 35.081383, 43.525726>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.855581, 35.682899, 43.292576> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.239130, 35.796299, 43.287014>,  <31.469259, 35.864338, 43.283676>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.239130, 35.796299, 43.287014>,  <30.855581, 35.682899, 43.292576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.239130, 35.796299, 43.287014> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090714, 0.259658, -0.961431,
		-0.268956, 0.923149, 0.274696,
		0.958871, 0.283501, -0.013906,
		31.526791, 35.881348, 43.282841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.915499, 36.393822, 43.017647>,  <30.855581, 35.682899, 43.292576>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.915499, 36.393822, 43.017647> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.272223, 36.221729, 42.961685>,  <31.486258, 36.118473, 42.928108>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.272223, 36.221729, 42.961685>,  <30.915499, 36.393822, 43.017647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.272223, 36.221729, 42.961685> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048258, 0.217010, -0.974976,
		0.449829, 0.876245, 0.172769,
		0.891810, -0.430235, -0.139903,
		31.539766, 36.092659, 42.919716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.346264, 36.961761, 42.703835>,  <30.915499, 36.393822, 43.017647>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.346264, 36.961761, 42.703835> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.518492, 36.615154, 42.602829>,  <31.621828, 36.407192, 42.542225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.518492, 36.615154, 42.602829>,  <31.346264, 36.961761, 42.703835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.518492, 36.615154, 42.602829> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250908, 0.383666, -0.888733,
		0.866980, 0.319303, 0.382610,
		0.430570, -0.866514, -0.252515,
		31.647663, 36.355202, 42.527073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.062290, 37.096745, 42.502834>,  <31.346264, 36.961761, 42.703835>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.062290, 37.096745, 42.502834> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.982668, 36.743469, 42.332958>,  <31.934895, 36.531506, 42.231033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.982668, 36.743469, 42.332958>,  <32.062290, 37.096745, 42.502834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.982668, 36.743469, 42.332958> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206383, 0.385864, -0.899174,
		0.958009, -0.266637, 0.105465,
		-0.199058, -0.883184, -0.424690,
		31.922951, 36.478516, 42.205551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.834782, 37.206478, 42.564034>,  <32.062290, 37.096745, 42.502834>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.834782, 37.206478, 42.564034> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.016430, 37.553596, 42.483337>,  <33.125420, 37.761868, 42.434921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.016430, 37.553596, 42.483337>,  <32.834782, 37.206478, 42.564034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.016430, 37.553596, 42.483337> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148385, 0.149603, 0.977548,
		0.878495, -0.473863, -0.060830,
		0.454123, 0.867798, -0.201740,
		33.152668, 37.813934, 42.422817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.536804, 37.173607, 42.945583>,  <32.834782, 37.206478, 42.564034>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.536804, 37.173607, 42.945583> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.448795, 37.556404, 42.869942>,  <33.395988, 37.786083, 42.824554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.448795, 37.556404, 42.869942>,  <33.536804, 37.173607, 42.945583>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.448795, 37.556404, 42.869942> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126562, 0.220224, 0.967204,
		0.967249, 0.188876, -0.169573,
		-0.220025, 0.956989, -0.189107,
		33.382790, 37.843502, 42.813210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.989361, 37.550323, 43.450150>,  <33.536804, 37.173607, 42.945583>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.989361, 37.550323, 43.450150> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.697510, 37.790657, 43.319527>,  <33.522400, 37.934856, 43.241154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.697510, 37.790657, 43.319527>,  <33.989361, 37.550323, 43.450150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.697510, 37.790657, 43.319527> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118888, 0.358815, 0.925806,
		0.673433, 0.714316, -0.190368,
		-0.729625, 0.600836, -0.326562,
		33.478622, 37.970909, 43.221558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.168201, 38.237526, 43.541473>,  <33.989361, 37.550323, 43.450150>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.168201, 38.237526, 43.541473> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.768414, 38.224533, 43.542244>,  <33.528542, 38.216740, 43.542706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.768414, 38.224533, 43.542244>,  <34.168201, 38.237526, 43.541473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.768414, 38.224533, 43.542244> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009840, 0.358092, 0.933634,
		-0.031011, 0.933121, -0.358223,
		-0.999471, -0.032478, 0.001923,
		33.468571, 38.214790, 43.542820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.004597, 38.809132, 43.995865>,  <34.168201, 38.237526, 43.541473>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.004597, 38.809132, 43.995865> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.665482, 38.598522, 43.970505>,  <33.462013, 38.472157, 43.955288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.665482, 38.598522, 43.970505>,  <34.004597, 38.809132, 43.995865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.665482, 38.598522, 43.970505> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387486, 0.533372, 0.751911,
		-0.362085, 0.662030, -0.656209,
		-0.847791, -0.526527, -0.063401,
		33.411144, 38.440563, 43.951485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.463211, 39.253605, 43.921478>,  <34.004597, 38.809132, 43.995865>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.463211, 39.253605, 43.921478> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.317501, 38.925125, 44.097176>,  <33.230076, 38.728035, 44.202595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.317501, 38.925125, 44.097176>,  <33.463211, 39.253605, 43.921478>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.317501, 38.925125, 44.097176> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313378, 0.552230, 0.772552,
		-0.876983, 0.143771, -0.458509,
		-0.364273, -0.821202, 0.439242,
		33.208218, 38.678764, 44.228947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.069160, 39.621376, 44.403461>,  <33.463211, 39.253605, 43.921478>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.069160, 39.621376, 44.403461> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.020176, 39.241005, 44.517117>,  <32.990784, 39.012783, 44.585308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.020176, 39.241005, 44.517117>,  <33.069160, 39.621376, 44.403461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.020176, 39.241005, 44.517117> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182910, 0.303009, 0.935270,
		-0.975473, 0.062562, -0.211042,
		-0.122460, -0.950932, 0.284134,
		32.983437, 38.955727, 44.602356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.503906, 39.573357, 44.824493>,  <33.069160, 39.621376, 44.403461>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.503906, 39.573357, 44.824493> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.724846, 39.252121, 44.913906>,  <32.857410, 39.059380, 44.967552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.724846, 39.252121, 44.913906>,  <32.503906, 39.573357, 44.824493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.724846, 39.252121, 44.913906> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118586, 0.189720, 0.974651,
		-0.825137, -0.564852, 0.009556,
		0.552346, -0.803087, 0.223529,
		32.890549, 39.011196, 44.980965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.089386, 39.214691, 45.282635>,  <32.503906, 39.573357, 44.824493>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.089386, 39.214691, 45.282635> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.456760, 39.069138, 45.344692>,  <32.677185, 38.981804, 45.381927>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.456760, 39.069138, 45.344692>,  <32.089386, 39.214691, 45.282635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.456760, 39.069138, 45.344692> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208094, -0.110887, 0.971803,
		-0.336420, -0.924820, -0.177565,
		0.918433, -0.363884, 0.155144,
		32.732288, 38.959972, 45.391235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.056206, 38.630981, 45.819214>,  <32.089386, 39.214691, 45.282635>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.056206, 38.630981, 45.819214> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.443451, 38.731174, 45.818077>,  <32.675800, 38.791290, 45.817394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.443451, 38.731174, 45.818077>,  <32.056206, 38.630981, 45.819214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.443451, 38.731174, 45.818077> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006066, 0.034765, 0.999377,
		0.250424, -0.967497, 0.035176,
		0.968117, 0.250481, -0.002837,
		32.733887, 38.806320, 45.817226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.511532, 38.178955, 46.107273>,  <32.056206, 38.630981, 45.819214>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.511532, 38.178955, 46.107273> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.724918, 38.515331, 46.143559>,  <32.852951, 38.717159, 46.165329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.724918, 38.515331, 46.143559>,  <32.511532, 38.178955, 46.107273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.724918, 38.515331, 46.143559> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242672, -0.254910, 0.936019,
		0.810264, -0.477318, -0.340059,
		0.533463, 0.840945, 0.090713,
		32.884956, 38.767616, 46.170773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.140858, 38.045589, 46.402962>,  <32.511532, 38.178955, 46.107273>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.140858, 38.045589, 46.402962> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.107815, 38.439461, 46.464382>,  <33.087990, 38.675785, 46.501236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.107815, 38.439461, 46.464382>,  <33.140858, 38.045589, 46.402962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.107815, 38.439461, 46.464382> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321510, -0.119509, 0.939334,
		0.943296, 0.126962, -0.306713,
		-0.082605, 0.984682, 0.153552,
		33.083035, 38.734867, 46.510448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.826061, 38.224125, 46.744270>,  <33.140858, 38.045589, 46.402962>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.826061, 38.224125, 46.744270> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.521297, 38.466801, 46.834976>,  <33.338440, 38.612408, 46.889400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.521297, 38.466801, 46.834976>,  <33.826061, 38.224125, 46.744270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.521297, 38.466801, 46.834976> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209076, -0.100986, 0.972671,
		0.613009, 0.788499, -0.049902,
		-0.761910, 0.606689, 0.226761,
		33.292725, 38.648808, 46.903004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.066357, 38.545883, 47.322723>,  <33.826061, 38.224125, 46.744270>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.066357, 38.545883, 47.322723> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.684814, 38.665955, 47.325851>,  <33.455891, 38.737995, 47.327728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.684814, 38.665955, 47.325851>,  <34.066357, 38.545883, 47.322723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.684814, 38.665955, 47.325851> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055369, -0.201416, 0.977940,
		0.295127, 0.932377, 0.208742,
		-0.953852, 0.300175, 0.007819,
		33.398659, 38.756008, 47.328197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.410778, 39.069698, 46.953781>,  <34.066357, 38.545883, 47.322723>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.410778, 39.069698, 46.953781> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.807632, 39.107712, 46.921177>,  <35.045746, 39.130520, 46.901615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.807632, 39.107712, 46.921177>,  <34.410778, 39.069698, 46.953781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.807632, 39.107712, 46.921177> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085939, 0.043498, -0.995350,
		-0.091042, 0.994524, 0.051323,
		0.992132, 0.095029, -0.081508,
		35.105270, 39.136219, 46.896725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.513405, 39.581612, 46.429188>,  <34.410778, 39.069698, 46.953781>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.513405, 39.581612, 46.429188> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.864449, 39.390411, 46.443714>,  <35.075073, 39.275692, 46.452431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.864449, 39.390411, 46.443714>,  <34.513405, 39.581612, 46.429188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.864449, 39.390411, 46.443714> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115279, 0.136901, -0.983854,
		0.465309, 0.867627, 0.175249,
		0.877610, -0.477998, 0.036318,
		35.127731, 39.247013, 46.454609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.957863, 40.040401, 46.067734>,  <34.513405, 39.581612, 46.429188>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.957863, 40.040401, 46.067734> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.125523, 39.677311, 46.060284>,  <35.226120, 39.459457, 46.055813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.125523, 39.677311, 46.060284>,  <34.957863, 40.040401, 46.067734>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.125523, 39.677311, 46.060284> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094503, 0.064021, -0.993464,
		0.902985, 0.414650, 0.112617,
		0.419150, -0.907726, -0.018625,
		35.251266, 39.404995, 46.054695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.582417, 40.161419, 45.697884>,  <34.957863, 40.040401, 46.067734>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.582417, 40.161419, 45.697884> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.535183, 39.764381, 45.686424>,  <35.506844, 39.526161, 45.679550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.535183, 39.764381, 45.686424>,  <35.582417, 40.161419, 45.697884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.535183, 39.764381, 45.686424> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324857, -0.011354, -0.945695,
		0.938363, -0.120975, 0.323790,
		-0.118082, -0.992591, -0.028645,
		35.499760, 39.466602, 45.677830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.078133, 39.941864, 45.334137>,  <35.582417, 40.161419, 45.697884>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.078133, 39.941864, 45.334137> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.855705, 39.614487, 45.276253>,  <35.722248, 39.418060, 45.241520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.855705, 39.614487, 45.276253>,  <36.078133, 39.941864, 45.334137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.855705, 39.614487, 45.276253> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167651, 0.060083, -0.984014,
		0.814050, -0.571444, 0.103801,
		-0.556072, -0.818439, -0.144714,
		35.688885, 39.368954, 45.232838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.484467, 39.476906, 44.916836>,  <36.078133, 39.941864, 45.334137>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.484467, 39.476906, 44.916836> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.099087, 39.379250, 44.872719>,  <35.867859, 39.320656, 44.846249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.099087, 39.379250, 44.872719>,  <36.484467, 39.476906, 44.916836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.099087, 39.379250, 44.872719> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118087, -0.017462, -0.992850,
		0.240472, -0.969582, 0.045654,
		-0.963446, -0.244144, -0.110296,
		35.810051, 39.306007, 44.839630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.439297, 38.868252, 44.472294>,  <36.484467, 39.476906, 44.916836>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.439297, 38.868252, 44.472294> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.055717, 38.981640, 44.475399>,  <35.825569, 39.049675, 44.477264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.055717, 38.981640, 44.475399>,  <36.439297, 38.868252, 44.472294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.055717, 38.981640, 44.475399> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044007, -0.121705, -0.991590,
		-0.280143, -0.951226, 0.129184,
		-0.958949, 0.283472, 0.007766,
		35.768032, 39.066681, 44.477730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.017387, 38.400536, 44.006268>,  <36.439297, 38.868252, 44.472294>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.017387, 38.400536, 44.006268> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.827164, 38.752342, 44.013069>,  <35.713032, 38.963428, 44.017151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.827164, 38.752342, 44.013069>,  <36.017387, 38.400536, 44.006268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.827164, 38.752342, 44.013069> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116396, -0.043748, -0.992239,
		-0.871951, -0.473844, 0.123177,
		-0.475555, 0.879521, 0.017007,
		35.684498, 39.016197, 44.018169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.505260, 38.308376, 43.538715>,  <36.017387, 38.400536, 44.006268>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.505260, 38.308376, 43.538715> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.535725, 38.705978, 43.570072>,  <35.554001, 38.944542, 43.588886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.535725, 38.705978, 43.570072>,  <35.505260, 38.308376, 43.538715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.535725, 38.705978, 43.570072> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201434, 0.092336, -0.975140,
		-0.976537, 0.058472, 0.207259,
		0.076156, 0.994010, 0.078392,
		35.558571, 39.004181, 43.593590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.902809, 38.542713, 43.248535>,  <35.505260, 38.308376, 43.538715>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.902809, 38.542713, 43.248535> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.153687, 38.854214, 43.253780>,  <35.304214, 39.041115, 43.256927>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.153687, 38.854214, 43.253780>,  <34.902809, 38.542713, 43.248535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.153687, 38.854214, 43.253780> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327974, 0.279339, -0.902443,
		-0.706442, 0.561706, 0.430610,
		0.627194, 0.778753, 0.013112,
		35.341846, 39.087841, 43.257713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.562603, 39.104988, 42.910061>,  <34.902809, 38.542713, 43.248535>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.562603, 39.104988, 42.910061> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.947315, 39.208706, 42.874859>,  <35.178143, 39.270939, 42.853737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.947315, 39.208706, 42.874859>,  <34.562603, 39.104988, 42.910061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.947315, 39.208706, 42.874859> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158146, 0.263642, -0.951569,
		-0.223537, 0.929117, 0.294572,
		0.961780, 0.259296, -0.088002,
		35.235847, 39.286495, 42.848457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.456593, 39.623875, 42.572662>,  <34.562603, 39.104988, 42.910061>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.456593, 39.623875, 42.572662> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.847687, 39.563522, 42.514320>,  <35.082344, 39.527309, 42.479317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.847687, 39.563522, 42.514320>,  <34.456593, 39.623875, 42.572662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.847687, 39.563522, 42.514320> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094384, 0.304576, -0.947800,
		0.187429, 0.940462, 0.283553,
		0.977733, -0.150882, -0.145851,
		35.141006, 39.518257, 42.470566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.622162, 40.071381, 42.082760>,  <34.456593, 39.623875, 42.572662>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.622162, 40.071381, 42.082760> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.912796, 39.797604, 42.058750>,  <35.087177, 39.633335, 42.044342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.912796, 39.797604, 42.058750>,  <34.622162, 40.071381, 42.082760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.912796, 39.797604, 42.058750> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163687, 0.257292, -0.952369,
		0.667291, 0.682154, 0.298980,
		0.726587, -0.684447, -0.060029,
		35.130772, 39.592270, 42.040741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.030880, 40.440968, 41.607079>,  <34.622162, 40.071381, 42.082760>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.030880, 40.440968, 41.607079> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.153633, 40.060516, 41.620789>,  <35.227287, 39.832245, 41.629013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.153633, 40.060516, 41.620789>,  <35.030880, 40.440968, 41.607079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.153633, 40.060516, 41.620789> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051066, -0.019501, -0.998505,
		0.950375, 0.308176, 0.042585,
		0.306885, -0.951129, 0.034270,
		35.245697, 39.775177, 41.631069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<34.486206, 38.697975, 33.966000> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.341190, 38.982323, 34.207073>,  <34.254181, 39.152931, 34.351719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.341190, 38.982323, 34.207073>,  <34.486206, 38.697975, 33.966000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.341190, 38.982323, 34.207073> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658553, -0.652988, 0.374051,
		0.659447, -0.261291, 0.704880,
		-0.362542, 0.710868, 0.602686,
		34.232430, 39.195583, 34.387878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.402744, 38.372066, 34.612820>,  <34.486206, 38.697975, 33.966000>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.402744, 38.372066, 34.612820> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.155235, 38.684704, 34.644379>,  <34.006729, 38.872288, 34.663315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.155235, 38.684704, 34.644379>,  <34.402744, 38.372066, 34.612820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.155235, 38.684704, 34.644379> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673190, -0.579340, 0.459544,
		0.404887, 0.231240, 0.884644,
		-0.618774, 0.781597, 0.078898,
		33.969604, 38.919182, 34.668049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.096695, 38.319294, 35.319286>,  <34.402744, 38.372066, 34.612820>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.096695, 38.319294, 35.319286> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.865501, 38.589058, 35.135502>,  <33.726784, 38.750916, 35.025230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.865501, 38.589058, 35.135502>,  <34.096695, 38.319294, 35.319286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.865501, 38.589058, 35.135502> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804693, -0.377428, 0.458277,
		0.135653, 0.634603, 0.760840,
		-0.577986, 0.674409, -0.459461,
		33.692104, 38.791382, 34.997665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.571949, 38.580894, 35.817623>,  <34.096695, 38.319294, 35.319286>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.571949, 38.580894, 35.817623> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.387386, 38.683346, 35.477859>,  <33.276649, 38.744816, 35.274002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.387386, 38.683346, 35.477859>,  <33.571949, 38.580894, 35.817623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.387386, 38.683346, 35.477859> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873151, -0.300730, 0.383626,
		-0.157185, 0.918673, 0.362400,
		-0.461411, 0.256129, -0.849410,
		33.248962, 38.760185, 35.223038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.774227, 38.709953, 36.032524>,  <33.571949, 38.580894, 35.817623>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.774227, 38.709953, 36.032524> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.790642, 38.623997, 35.642212>,  <32.800491, 38.572422, 35.408024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.790642, 38.623997, 35.642212>,  <32.774227, 38.709953, 36.032524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.790642, 38.623997, 35.642212> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.918508, -0.392500, 0.047812,
		-0.393267, 0.894297, -0.213482,
		0.041034, -0.214888, -0.975776,
		32.802952, 38.559528, 35.349480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.195557, 39.023388, 35.743385>,  <32.774227, 38.709953, 36.032524>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.195557, 39.023388, 35.743385> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.250046, 38.721653, 35.486504>,  <32.282738, 38.540611, 35.332375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.250046, 38.721653, 35.486504>,  <32.195557, 39.023388, 35.743385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.250046, 38.721653, 35.486504> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.951598, -0.279910, 0.126936,
		-0.275510, 0.593824, -0.755955,
		0.136222, -0.754337, -0.642199,
		32.290913, 38.495354, 35.293842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.599482, 38.970928, 35.294834>,  <32.195557, 39.023388, 35.743385>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.599482, 38.970928, 35.294834> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.769518, 38.609833, 35.268406>,  <31.871540, 38.393177, 35.252548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.769518, 38.609833, 35.268406>,  <31.599482, 38.970928, 35.294834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.769518, 38.609833, 35.268406> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.896480, -0.429973, 0.106984,
		-0.124988, 0.013755, -0.992063,
		0.425089, -0.902737, -0.066073,
		31.897045, 38.339012, 35.248585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.268764, 38.598400, 34.734180>,  <31.599482, 38.970928, 35.294834>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.268764, 38.598400, 34.734180> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.449873, 38.287613, 34.909145>,  <31.558538, 38.101143, 35.014122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.449873, 38.287613, 34.909145>,  <31.268764, 38.598400, 34.734180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.449873, 38.287613, 34.909145> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697117, -0.614330, -0.369629,
		0.555902, -0.137567, -0.819786,
		0.452770, -0.776964, 0.437408,
		31.585705, 38.054523, 35.040367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.029650, 37.963665, 34.220940>,  <31.268764, 38.598400, 34.734180>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.029650, 37.963665, 34.220940> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.145102, 37.823666, 34.577412>,  <31.214373, 37.739666, 34.791294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.145102, 37.823666, 34.577412>,  <31.029650, 37.963665, 34.220940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.145102, 37.823666, 34.577412> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697117, -0.714848, -0.054966,
		0.656293, -0.605389, -0.450315,
		0.288631, -0.349996, 0.891176,
		31.231691, 37.718666, 34.844765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.863111, 37.296547, 34.171505>,  <31.029650, 37.963665, 34.220940>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.863111, 37.296547, 34.171505> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.928280, 37.331268, 34.564629>,  <30.967381, 37.352100, 34.800503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.928280, 37.331268, 34.564629>,  <30.863111, 37.296547, 34.171505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.928280, 37.331268, 34.564629> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781176, -0.597122, 0.182235,
		0.602678, -0.797440, -0.029475,
		0.162921, 0.086804, 0.982813,
		30.977156, 37.357311, 34.859474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.814959, 36.645016, 34.463528>,  <30.863111, 37.296547, 34.171505>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.814959, 36.645016, 34.463528> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.757345, 36.862877, 34.794010>,  <30.722778, 36.993591, 34.992298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.757345, 36.862877, 34.794010>,  <30.814959, 36.645016, 34.463528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.757345, 36.862877, 34.794010> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702606, -0.644221, 0.302199,
		0.696850, -0.536969, 0.475463,
		-0.144032, 0.544651, 0.826202,
		30.714136, 37.026272, 35.041870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.781506, 36.186245, 35.067013>,  <30.814959, 36.645016, 34.463528>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.781506, 36.186245, 35.067013> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.575932, 36.522171, 35.136967>,  <30.452587, 36.723728, 35.178940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.575932, 36.522171, 35.136967>,  <30.781506, 36.186245, 35.067013>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.575932, 36.522171, 35.136967> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754117, -0.539481, 0.374524,
		0.408876, 0.060599, 0.910576,
		-0.513934, 0.839815, 0.174883,
		30.421751, 36.774117, 35.189430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.501925, 36.165443, 35.733105>,  <30.781506, 36.186245, 35.067013>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.501925, 36.165443, 35.733105> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.256710, 36.410908, 35.534065>,  <30.109581, 36.558186, 35.414642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.256710, 36.410908, 35.534065>,  <30.501925, 36.165443, 35.733105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.256710, 36.410908, 35.534065> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786488, -0.533787, 0.310658,
		-0.074971, 0.581799, 0.809870,
		-0.613038, 0.613662, -0.497597,
		30.072798, 36.595005, 35.384785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.876621, 35.977425, 36.024784>,  <30.501925, 36.165443, 35.733105>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.876621, 35.977425, 36.024784> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.765341, 36.237068, 35.741585>,  <29.698572, 36.392853, 35.571663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.765341, 36.237068, 35.741585>,  <29.876621, 35.977425, 36.024784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.765341, 36.237068, 35.741585> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.950754, -0.290947, 0.106847,
		-0.136636, 0.702860, 0.698082,
		-0.278203, 0.649105, -0.708001,
		29.681879, 36.431801, 35.529186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.347666, 36.336002, 36.279648>,  <29.876621, 35.977425, 36.024784>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.347666, 36.336002, 36.279648> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.270779, 36.368382, 35.888443>,  <29.224646, 36.387810, 35.653721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.270779, 36.368382, 35.888443>,  <29.347666, 36.336002, 36.279648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.270779, 36.368382, 35.888443> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853691, -0.505316, 0.125962,
		-0.484007, 0.859129, 0.166236,
		-0.192220, 0.080948, -0.978008,
		29.213112, 36.392666, 35.595039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.609583, 36.585423, 36.127377>,  <29.347666, 36.336002, 36.279648>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.609583, 36.585423, 36.127377> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.764915, 36.356724, 35.838295>,  <28.858114, 36.219505, 35.664845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.764915, 36.356724, 35.838295>,  <28.609583, 36.585423, 36.127377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.764915, 36.356724, 35.838295> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842472, -0.538063, -0.027010,
		-0.373417, 0.619345, -0.690631,
		0.388332, -0.571751, -0.722703,
		28.881414, 36.185200, 35.621483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.065235, 36.538605, 35.773125>,  <28.609583, 36.585423, 36.127377>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.065235, 36.538605, 35.773125> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.280741, 36.232613, 35.631969>,  <28.410044, 36.049015, 35.547276>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.280741, 36.232613, 35.631969>,  <28.065235, 36.538605, 35.773125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.280741, 36.232613, 35.631969> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802756, -0.593239, 0.060422,
		-0.255570, 0.250732, -0.933712,
		0.538764, -0.764984, -0.352890,
		28.442369, 36.003117, 35.526104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.660517, 36.244522, 35.076233>,  <28.065235, 36.538605, 35.773125>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.660517, 36.244522, 35.076233> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.889910, 35.939114, 35.194992>,  <28.027546, 35.755867, 35.266247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.889910, 35.939114, 35.194992>,  <27.660517, 36.244522, 35.076233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.889910, 35.939114, 35.194992> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767120, -0.627683, -0.132442,
		0.287483, -0.151807, -0.945679,
		0.573481, -0.763524, 0.296902,
		28.061954, 35.710056, 35.284061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.670347, 35.743252, 34.521351>,  <27.660517, 36.244522, 35.076233>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.670347, 35.743252, 34.521351> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.773033, 35.542114, 34.851501>,  <27.834644, 35.421432, 35.049591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.773033, 35.542114, 34.851501>,  <27.670347, 35.743252, 34.521351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.773033, 35.542114, 34.851501> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741210, -0.650486, -0.165756,
		0.620245, -0.569225, -0.539703,
		0.256717, -0.502843, 0.825376,
		27.850048, 35.391262, 35.099113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.564270, 35.163139, 34.280571>,  <27.670347, 35.743252, 34.521351>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.564270, 35.163139, 34.280571> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.576284, 35.107235, 34.676464>,  <27.583492, 35.073692, 34.913998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.576284, 35.107235, 34.676464>,  <27.564270, 35.163139, 34.280571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.576284, 35.107235, 34.676464> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665247, -0.741818, -0.084564,
		0.746019, -0.655875, -0.115256,
		0.030036, -0.139760, 0.989730,
		27.585295, 35.065308, 34.973385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.857170, 34.398441, 34.388252>,  <27.564270, 35.163139, 34.280571>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.857170, 34.398441, 34.388252> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.666689, 34.520611, 34.718086>,  <27.552401, 34.593910, 34.915989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.666689, 34.520611, 34.718086>,  <27.857170, 34.398441, 34.388252>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.666689, 34.520611, 34.718086> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381959, -0.916501, 0.118882,
		0.792046, -0.258347, 0.553101,
		-0.476205, 0.305421, 0.824589,
		27.523827, 34.612236, 34.965462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.539139, 34.280861, 34.594429>,  <27.857170, 34.398441, 34.388252>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.539139, 34.280861, 34.594429> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.660099, 33.964592, 34.381493>,  <28.732676, 33.774830, 34.253731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.660099, 33.964592, 34.381493>,  <28.539139, 34.280861, 34.594429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.660099, 33.964592, 34.381493> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895472, 0.427035, -0.125584,
		0.326625, -0.438722, 0.837161,
		0.302401, -0.790673, -0.532344,
		28.750820, 33.727390, 34.221790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.107525, 34.079193, 34.875229>,  <28.539139, 34.280861, 34.594429>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.107525, 34.079193, 34.875229> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.122101, 33.932671, 34.503315>,  <29.130846, 33.844757, 34.280167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.122101, 33.932671, 34.503315>,  <29.107525, 34.079193, 34.875229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.122101, 33.932671, 34.503315> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882368, 0.448577, -0.142144,
		0.469146, -0.815231, 0.339558,
		0.036438, -0.366302, -0.929782,
		29.133032, 33.822781, 34.224380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.713684, 33.681782, 34.792068>,  <29.107525, 34.079193, 34.875229>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.713684, 33.681782, 34.792068> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.614214, 33.801067, 34.423454>,  <29.554533, 33.872639, 34.202286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.614214, 33.801067, 34.423454>,  <29.713684, 33.681782, 34.792068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.614214, 33.801067, 34.423454> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968439, 0.093222, -0.231162,
		0.016973, -0.949937, -0.311980,
		-0.248673, 0.298210, -0.921538,
		29.539612, 33.890530, 34.146992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.102383, 33.230789, 34.222916>,  <29.713684, 33.681782, 34.792068>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.102383, 33.230789, 34.222916> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.992887, 33.574936, 34.050941>,  <29.927191, 33.781422, 33.947758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.992887, 33.574936, 34.050941>,  <30.102383, 33.230789, 34.222916>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.992887, 33.574936, 34.050941> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961060, 0.227099, -0.157444,
		-0.037821, -0.456290, -0.889027,
		-0.273738, 0.860363, -0.429933,
		29.910767, 33.833046, 33.921963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.625834, 33.343384, 33.675728>,  <30.102383, 33.230789, 34.222916>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.625834, 33.343384, 33.675728> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.440685, 33.693939, 33.728943>,  <30.329597, 33.904270, 33.760872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.440685, 33.693939, 33.728943>,  <30.625834, 33.343384, 33.675728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.440685, 33.693939, 33.728943> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832070, 0.481313, -0.275675,
		-0.305633, -0.016902, -0.952000,
		-0.462869, 0.876386, 0.133041,
		30.301825, 33.956856, 33.768856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.897823, 33.737640, 33.214226>,  <30.625834, 33.343384, 33.675728>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.897823, 33.737640, 33.214226> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.747446, 34.036739, 33.433144>,  <30.657219, 34.216198, 33.564495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.747446, 34.036739, 33.433144>,  <30.897823, 33.737640, 33.214226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.747446, 34.036739, 33.433144> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720081, 0.607477, -0.335342,
		-0.583224, 0.268030, -0.766818,
		-0.375943, 0.747750, 0.547299,
		30.634663, 34.261063, 33.597332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.946295, 34.505203, 32.870945>,  <30.897823, 33.737640, 33.214226>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.946295, 34.505203, 32.870945> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.915316, 34.572834, 33.263966>,  <30.896729, 34.613411, 33.499779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.915316, 34.572834, 33.263966>,  <30.946295, 34.505203, 32.870945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.915316, 34.572834, 33.263966> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706577, 0.704594, -0.065549,
		-0.703385, 0.689175, -0.174031,
		-0.077446, 0.169073, 0.982556,
		30.892082, 34.623554, 33.558731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.070992, 35.124168, 32.817215>,  <30.946295, 34.505203, 32.870945>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.070992, 35.124168, 32.817215> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.119566, 35.046642, 33.206612>,  <31.148710, 35.000126, 33.440250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.119566, 35.046642, 33.206612>,  <31.070992, 35.124168, 32.817215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.119566, 35.046642, 33.206612> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711542, 0.700807, 0.050762,
		-0.692069, 0.686518, 0.223009,
		0.121437, -0.193811, 0.973494,
		31.155996, 34.988499, 33.498661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.059191, 35.758930, 33.096539>,  <31.070992, 35.124168, 32.817215>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.059191, 35.758930, 33.096539> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.256016, 35.511166, 33.341228>,  <31.374111, 35.362507, 33.488041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.256016, 35.511166, 33.341228>,  <31.059191, 35.758930, 33.096539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.256016, 35.511166, 33.341228> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776370, 0.630132, 0.013550,
		-0.393860, 0.468257, 0.790955,
		0.492061, -0.619410, 0.611724,
		31.403635, 35.325344, 33.524746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.401562, 36.103966, 33.572163>,  <31.059191, 35.758930, 33.096539>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.401562, 36.103966, 33.572163> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.583767, 35.752796, 33.631157>,  <31.693090, 35.542095, 33.666553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.583767, 35.752796, 33.631157>,  <31.401562, 36.103966, 33.572163>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.583767, 35.752796, 33.631157> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889124, 0.456913, -0.026240,
		-0.044352, 0.143087, 0.988716,
		0.455512, -0.877928, 0.147487,
		31.720421, 35.489418, 33.675404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.752806, 36.252586, 34.122623>,  <31.401562, 36.103966, 33.572163>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.752806, 36.252586, 34.122623> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.915831, 35.943214, 33.928425>,  <32.013645, 35.757591, 33.811905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.915831, 35.943214, 33.928425>,  <31.752806, 36.252586, 34.122623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.915831, 35.943214, 33.928425> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875624, 0.481890, -0.032620,
		0.259185, -0.411817, 0.873630,
		0.407560, -0.773426, -0.485496,
		32.038097, 35.711185, 33.782776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.373291, 35.976322, 34.473591>,  <31.752806, 36.252586, 34.122623>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.373291, 35.976322, 34.473591> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.395508, 35.892090, 34.083191>,  <32.408836, 35.841549, 33.848953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.395508, 35.892090, 34.083191>,  <32.373291, 35.976322, 34.473591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.395508, 35.892090, 34.083191> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747008, 0.657354, -0.099321,
		0.662491, -0.723560, 0.193820,
		0.055543, -0.210585, -0.975996,
		32.412170, 35.828915, 33.790394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.129726, 36.062527, 34.338253>,  <32.373291, 35.976322, 34.473591>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.129726, 36.062527, 34.338253> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.961098, 36.076763, 33.975815>,  <32.859921, 36.085304, 33.758350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.961098, 36.076763, 33.975815>,  <33.129726, 36.062527, 34.338253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.961098, 36.076763, 33.975815> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747421, 0.579439, -0.324982,
		0.513461, -0.814238, -0.270876,
		-0.421569, 0.035593, -0.906098,
		32.834625, 36.087440, 33.703987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.637688, 35.950546, 34.024158>,  <33.129726, 36.062527, 34.338253>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.637688, 35.950546, 34.024158> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.375820, 36.086021, 33.753841>,  <33.218700, 36.167309, 33.591652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.375820, 36.086021, 33.753841>,  <33.637688, 35.950546, 34.024158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.375820, 36.086021, 33.753841> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701817, 0.604453, -0.376948,
		0.280815, -0.721058, -0.633419,
		-0.654673, 0.338691, -0.675790,
		33.179417, 36.187630, 33.551105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.038971, 36.011086, 33.404465>,  <33.637688, 35.950546, 34.024158>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.038971, 36.011086, 33.404465> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.716053, 36.245640, 33.377880>,  <33.522301, 36.386375, 33.361931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.716053, 36.245640, 33.377880>,  <34.038971, 36.011086, 33.404465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.716053, 36.245640, 33.377880> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536012, 0.681467, -0.498291,
		-0.246905, -0.437891, -0.864459,
		-0.807298, 0.586391, -0.066457,
		33.473866, 36.421558, 33.357944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.153873, 36.275860, 32.751728>,  <34.038971, 36.011086, 33.404465>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.153873, 36.275860, 32.751728> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.879379, 36.508148, 32.926926>,  <33.714684, 36.647522, 33.032043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.879379, 36.508148, 32.926926>,  <34.153873, 36.275860, 32.751728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.879379, 36.508148, 32.926926> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536417, 0.810726, -0.234479,
		-0.491257, 0.074037, -0.867862,
		-0.686238, 0.580725, 0.437990,
		33.673508, 36.682365, 33.058323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.011993, 36.769341, 32.296436>,  <34.153873, 36.275860, 32.751728>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.011993, 36.769341, 32.296436> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.895161, 36.939739, 32.638947>,  <33.825062, 37.041981, 32.844452>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.895161, 36.939739, 32.638947>,  <34.011993, 36.769341, 32.296436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.895161, 36.939739, 32.638947> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596931, 0.780720, -0.184795,
		-0.747236, 0.457164, -0.482327,
		-0.292081, 0.426001, 0.856278,
		33.807537, 37.067539, 32.895828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.754841, 37.433643, 32.108784>,  <34.011993, 36.769341, 32.296436>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.754841, 37.433643, 32.108784> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.855896, 37.441715, 32.495724>,  <33.916531, 37.446560, 32.727886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.855896, 37.441715, 32.495724>,  <33.754841, 37.433643, 32.108784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.855896, 37.441715, 32.495724> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581991, 0.795527, -0.168591,
		-0.772955, 0.605582, 0.189236,
		0.252638, 0.020180, 0.967350,
		33.931686, 37.447769, 32.785931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.690407, 38.211472, 32.302372>,  <33.754841, 37.433643, 32.108784>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.690407, 38.211472, 32.302372> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.920887, 38.029495, 32.573967>,  <34.059174, 37.920307, 32.736923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.920887, 38.029495, 32.573967>,  <33.690407, 38.211472, 32.302372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.920887, 38.029495, 32.573967> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628840, 0.777430, -0.012741,
		-0.522067, 0.434314, 0.734042,
		0.576200, -0.454943, 0.678984,
		34.093746, 37.893013, 32.777660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.663799, 38.655449, 32.884613>,  <33.690407, 38.211472, 32.302372>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.663799, 38.655449, 32.884613> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.998032, 38.440395, 32.929787>,  <34.198570, 38.311363, 32.956890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.998032, 38.440395, 32.929787>,  <33.663799, 38.655449, 32.884613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.998032, 38.440395, 32.929787> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508890, 0.834931, 0.209573,
		-0.206962, -0.117647, 0.971250,
		0.835582, -0.537633, 0.112930,
		34.248707, 38.279106, 32.963665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.988274, 39.014927, 33.370609>,  <33.663799, 38.655449, 32.884613>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.988274, 39.014927, 33.370609> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.276360, 38.795036, 33.201332>,  <34.449211, 38.663101, 33.099766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.276360, 38.795036, 33.201332>,  <33.988274, 39.014927, 33.370609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.276360, 38.795036, 33.201332> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661246, 0.728491, 0.179040,
		0.209866, -0.408780, 0.888175,
		0.720215, -0.549727, -0.423190,
		34.492424, 38.630119, 33.074375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.725784, 37.839607, 46.581238> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.382458, 37.638771, 46.538906>,  <38.176460, 37.518269, 46.513508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.382458, 37.638771, 46.538906>,  <38.725784, 37.839607, 46.581238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.382458, 37.638771, 46.538906> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196703, 0.131475, 0.971608,
		-0.473922, 0.854763, -0.211610,
		-0.858316, -0.502090, -0.105826,
		38.124962, 37.488144, 46.507160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.146168, 38.322266, 46.812107>,  <38.725784, 37.839607, 46.581238>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.146168, 38.322266, 46.812107> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.004513, 37.948616, 46.829952>,  <37.919518, 37.724426, 46.840660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.004513, 37.948616, 46.829952>,  <38.146168, 38.322266, 46.812107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.004513, 37.948616, 46.829952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195448, 0.120580, 0.973273,
		-0.914540, 0.335957, -0.225276,
		-0.354141, -0.934127, 0.044614,
		37.898270, 37.668377, 46.843338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.610020, 38.435425, 47.240051>,  <38.146168, 38.322266, 46.812107>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.610020, 38.435425, 47.240051> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.664490, 38.039165, 47.243290>,  <37.697174, 37.801411, 47.245232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.664490, 38.039165, 47.243290>,  <37.610020, 38.435425, 47.240051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.664490, 38.039165, 47.243290> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342844, -0.039456, 0.938564,
		-0.929470, -0.130587, -0.345012,
		0.136177, -0.990652, 0.008097,
		37.705341, 37.741970, 47.245720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.063782, 38.177338, 47.602322>,  <37.610020, 38.435425, 47.240051>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.063782, 38.177338, 47.602322> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.342140, 37.891533, 47.631187>,  <37.509155, 37.720051, 47.648506>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.342140, 37.891533, 47.631187>,  <37.063782, 38.177338, 47.602322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.342140, 37.891533, 47.631187> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228403, -0.124935, 0.965517,
		-0.680856, -0.688379, -0.250138,
		0.695893, -0.714510, 0.072165,
		37.550907, 37.677181, 47.652836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.821194, 37.649857, 48.054638>,  <37.063782, 38.177338, 47.602322>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.821194, 37.649857, 48.054638> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.207005, 37.544498, 48.061668>,  <37.438492, 37.481281, 48.065887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.207005, 37.544498, 48.061668>,  <36.821194, 37.649857, 48.054638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.207005, 37.544498, 48.061668> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031077, -0.047191, 0.998402,
		-0.262148, -0.963532, -0.053703,
		0.964527, -0.263399, 0.017573,
		37.496361, 37.465477, 48.066940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.847435, 37.018898, 48.424046>,  <36.821194, 37.649857, 48.054638>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.847435, 37.018898, 48.424046> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.194878, 37.216206, 48.442814>,  <37.403343, 37.334591, 48.454075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.194878, 37.216206, 48.442814>,  <36.847435, 37.018898, 48.424046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.194878, 37.216206, 48.442814> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064458, -0.206376, 0.976347,
		0.491286, -0.845041, -0.211055,
		0.868610, 0.493270, 0.046919,
		37.455460, 37.364185, 48.456890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.191391, 36.762890, 49.008080>,  <36.847435, 37.018898, 48.424046>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.191391, 36.762890, 49.008080> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.381310, 37.110432, 48.952003>,  <37.495262, 37.318958, 48.918358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.381310, 37.110432, 48.952003>,  <37.191391, 36.762890, 49.008080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.381310, 37.110432, 48.952003> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026740, 0.173454, 0.984479,
		0.879687, -0.463683, 0.105590,
		0.474801, 0.868856, -0.140187,
		37.523750, 37.371090, 48.909946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.789539, 36.759548, 49.355095>,  <37.191391, 36.762890, 49.008080>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.789539, 36.759548, 49.355095> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.689247, 37.145069, 49.318836>,  <37.629070, 37.376381, 49.297081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.689247, 37.145069, 49.318836>,  <37.789539, 36.759548, 49.355095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.689247, 37.145069, 49.318836> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158799, 0.133314, 0.978269,
		0.954944, 0.230887, -0.186477,
		-0.250730, 0.963804, -0.090643,
		37.614029, 37.434212, 49.291645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.263599, 37.050755, 49.786808>,  <37.789539, 36.759548, 49.355095>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.263599, 37.050755, 49.786808> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.968292, 37.317886, 49.748932>,  <37.791107, 37.478165, 49.726204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.968292, 37.317886, 49.748932>,  <38.263599, 37.050755, 49.786808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.968292, 37.317886, 49.748932> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127008, 0.275513, 0.952870,
		0.662445, 0.691444, -0.288222,
		-0.738265, 0.667830, -0.094693,
		37.746811, 37.518234, 49.720524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.592770, 37.568504, 50.175571>,  <38.263599, 37.050755, 49.786808>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.592770, 37.568504, 50.175571> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.212132, 37.686314, 50.140419>,  <37.983749, 37.757000, 50.119328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.212132, 37.686314, 50.140419>,  <38.592770, 37.568504, 50.175571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.212132, 37.686314, 50.140419> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003811, 0.274586, 0.961555,
		0.307334, 0.915345, -0.260172,
		-0.951594, 0.294527, -0.087878,
		37.926655, 37.774673, 50.114056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.576469, 38.240982, 50.649414>,  <38.592770, 37.568504, 50.175571>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.576469, 38.240982, 50.649414> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.216805, 38.078144, 50.585175>,  <38.001007, 37.980442, 50.546631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.216805, 38.078144, 50.585175>,  <38.576469, 38.240982, 50.649414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.216805, 38.078144, 50.585175> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278562, 0.249380, 0.927476,
		-0.337516, 0.878685, -0.337632,
		-0.899158, -0.407090, -0.160598,
		37.947056, 37.956017, 50.536995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.161907, 38.677036, 51.097912>,  <38.576469, 38.240982, 50.649414>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.161907, 38.677036, 51.097912> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.952866, 38.344830, 51.020840>,  <37.827438, 38.145504, 50.974598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.952866, 38.344830, 51.020840>,  <38.161907, 38.677036, 51.097912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.952866, 38.344830, 51.020840> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358682, 0.009150, 0.933415,
		-0.773453, 0.556919, -0.302673,
		-0.522606, -0.830516, -0.192680,
		37.796085, 38.095676, 50.963036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.328960, 38.749401, 51.229042>,  <38.161907, 38.677036, 51.097912>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.328960, 38.749401, 51.229042> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.442314, 38.369633, 51.283154>,  <37.510326, 38.141773, 51.315620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.442314, 38.369633, 51.283154>,  <37.328960, 38.749401, 51.229042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.442314, 38.369633, 51.283154> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323309, 0.038224, 0.945521,
		-0.902864, -0.311685, -0.296122,
		0.283385, -0.949417, 0.135281,
		37.527328, 38.084808, 51.323738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.878845, 38.358166, 51.733601>,  <37.328960, 38.749401, 51.229042>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.878845, 38.358166, 51.733601> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.215477, 38.143253, 51.755772>,  <37.417458, 38.014305, 51.769073>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.215477, 38.143253, 51.755772>,  <36.878845, 38.358166, 51.733601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.215477, 38.143253, 51.755772> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174449, -0.173256, 0.969304,
		-0.511183, -0.825417, -0.239537,
		0.841581, -0.537279, 0.055427,
		37.467953, 37.982071, 51.772400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.369820, 38.740414, 52.325336>,  <36.878845, 38.358166, 51.733601>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.369820, 38.740414, 52.325336> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.097557, 39.025532, 52.393017>,  <35.934200, 39.196602, 52.433624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.097557, 39.025532, 52.393017>,  <36.369820, 38.740414, 52.325336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.097557, 39.025532, 52.393017> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218307, 0.023120, -0.975606,
		-0.699319, -0.700991, 0.139871,
		-0.680658, 0.712795, 0.169199,
		35.893360, 39.239368, 52.443775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.807320, 38.487690, 51.968918>,  <36.369820, 38.740414, 52.325336>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.807320, 38.487690, 51.968918> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.750961, 38.879307, 52.027737>,  <35.717148, 39.114277, 52.063026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.750961, 38.879307, 52.027737>,  <35.807320, 38.487690, 51.968918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.750961, 38.879307, 52.027737> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406306, 0.078265, -0.910379,
		-0.902809, -0.188011, 0.386765,
		-0.140892, 0.979044, 0.147048,
		35.708694, 39.173019, 52.071850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.161671, 38.707333, 51.594421>,  <35.807320, 38.487690, 51.968918>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.161671, 38.707333, 51.594421> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.382439, 39.039154, 51.628403>,  <35.514900, 39.238247, 51.648792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.382439, 39.039154, 51.628403>,  <35.161671, 38.707333, 51.594421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.382439, 39.039154, 51.628403> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184729, 0.220972, -0.957625,
		-0.813177, 0.512842, 0.275203,
		0.551923, 0.829557, 0.084953,
		35.548016, 39.288021, 51.653889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.862209, 39.145626, 51.017902>,  <35.161671, 38.707333, 51.594421>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.862209, 39.145626, 51.017902> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.182487, 39.355267, 51.133976>,  <35.374653, 39.481052, 51.203621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.182487, 39.355267, 51.133976>,  <34.862209, 39.145626, 51.017902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.182487, 39.355267, 51.133976> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014801, 0.466934, -0.884168,
		-0.598889, 0.712244, 0.366114,
		0.800695, 0.524100, 0.290184,
		35.422695, 39.512497, 51.221031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.726280, 39.874256, 50.775349>,  <34.862209, 39.145626, 51.017902>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.726280, 39.874256, 50.775349> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.122753, 39.856728, 50.825378>,  <35.360638, 39.846210, 50.855396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.122753, 39.856728, 50.825378>,  <34.726280, 39.874256, 50.775349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.122753, 39.856728, 50.825378> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132243, 0.388898, -0.911740,
		-0.008682, 0.920238, 0.391263,
		0.991179, -0.043826, 0.125071,
		35.420109, 39.843578, 50.862900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.014488, 40.576286, 50.593182>,  <34.726280, 39.874256, 50.775349>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.014488, 40.576286, 50.593182> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.303272, 40.306400, 50.531834>,  <35.476543, 40.144466, 50.495026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.303272, 40.306400, 50.531834>,  <35.014488, 40.576286, 50.593182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.303272, 40.306400, 50.531834> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026989, 0.248951, -0.968140,
		0.691404, 0.694822, 0.197944,
		0.721964, -0.674718, -0.153373,
		35.519863, 40.103985, 50.485821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.608955, 40.925655, 50.057926>,  <35.014488, 40.576286, 50.593182>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.608955, 40.925655, 50.057926> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.660053, 40.528999, 50.050697>,  <35.690712, 40.291004, 50.046360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.660053, 40.528999, 50.050697>,  <35.608955, 40.925655, 50.057926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.660053, 40.528999, 50.050697> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013969, 0.020015, -0.999702,
		0.991709, 0.127454, 0.016409,
		0.127744, -0.991643, -0.018069,
		35.698376, 40.231506, 50.045277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.079025, 40.825409, 49.509785>,  <35.608955, 40.925655, 50.057926>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.079025, 40.825409, 49.509785> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.887440, 40.477108, 49.554302>,  <35.772488, 40.268127, 49.581013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.887440, 40.477108, 49.554302>,  <36.079025, 40.825409, 49.509785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.887440, 40.477108, 49.554302> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025309, -0.140432, -0.989767,
		0.877471, -0.471243, 0.089299,
		-0.478961, -0.870752, 0.111298,
		35.743752, 40.215881, 49.587692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.453499, 40.290871, 49.143814>,  <36.079025, 40.825409, 49.509785>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.453499, 40.290871, 49.143814> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.082726, 40.142311, 49.165180>,  <35.860260, 40.053177, 49.177998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.082726, 40.142311, 49.165180>,  <36.453499, 40.290871, 49.143814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.082726, 40.142311, 49.165180> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027266, -0.208643, -0.977612,
		0.374226, -0.904728, 0.203525,
		-0.926936, -0.371397, 0.053411,
		35.804646, 40.030891, 49.181202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.446823, 39.965446, 48.462589>,  <36.453499, 40.290871, 49.143814>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.446823, 39.965446, 48.462589> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.071133, 39.912544, 48.589314>,  <35.845718, 39.880802, 48.665348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.071133, 39.912544, 48.589314>,  <36.446823, 39.965446, 48.462589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.071133, 39.912544, 48.589314> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242453, -0.397810, -0.884852,
		0.243061, -0.907885, 0.341565,
		-0.939222, -0.132259, 0.316811,
		35.789368, 39.872868, 48.684357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.309555, 39.207157, 48.629734>,  <36.446823, 39.965446, 48.462589>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.309555, 39.207157, 48.629734> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.976048, 39.403908, 48.529423>,  <35.775944, 39.521957, 48.469238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.976048, 39.403908, 48.529423>,  <36.309555, 39.207157, 48.629734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.976048, 39.403908, 48.529423> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159886, -0.649854, -0.743052,
		-0.528454, -0.579440, 0.620472,
		-0.833770, 0.491874, -0.250774,
		35.725918, 39.551472, 48.454189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.722614, 38.679958, 48.550983>,  <36.309555, 39.207157, 48.629734>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.722614, 38.679958, 48.550983> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.596565, 39.006390, 48.357197>,  <35.520935, 39.202248, 48.240925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.596565, 39.006390, 48.357197>,  <35.722614, 38.679958, 48.550983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.596565, 39.006390, 48.357197> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390633, -0.576760, -0.717463,
		-0.864930, -0.036841, 0.500539,
		-0.315123, 0.816082, -0.484466,
		35.502029, 39.251213, 48.211857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.189438, 38.439152, 48.202969>,  <35.722614, 38.679958, 48.550983>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.189438, 38.439152, 48.202969> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.272198, 38.779846, 48.010414>,  <35.321854, 38.984264, 47.894882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.272198, 38.779846, 48.010414>,  <35.189438, 38.439152, 48.202969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.272198, 38.779846, 48.010414> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236055, -0.434040, -0.869418,
		-0.949458, 0.293518, 0.111253,
		0.206901, 0.851737, -0.481389,
		35.334267, 39.035366, 47.865997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.671387, 38.564671, 47.700939>,  <35.189438, 38.439152, 48.202969>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.671387, 38.564671, 47.700939> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.978382, 38.785561, 47.570698>,  <35.162579, 38.918095, 47.492554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.978382, 38.785561, 47.570698>,  <34.671387, 38.564671, 47.700939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.978382, 38.785561, 47.570698> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146193, -0.343759, -0.927608,
		-0.624176, 0.759525, -0.183099,
		0.767484, 0.552223, -0.325603,
		35.208626, 38.951229, 47.473019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.089714, 39.072018, 47.901611>,  <34.671387, 38.564671, 47.700939>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.089714, 39.072018, 47.901611> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.725769, 38.921387, 47.831940>,  <33.507401, 38.831009, 47.790138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.725769, 38.921387, 47.831940>,  <34.089714, 39.072018, 47.901611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.725769, 38.921387, 47.831940> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038605, -0.341146, 0.939217,
		-0.413109, 0.861283, 0.295859,
		-0.909863, -0.376577, -0.174180,
		33.452808, 38.808414, 47.779686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.671970, 39.324165, 48.466370>,  <34.089714, 39.072018, 47.901611>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.671970, 39.324165, 48.466370> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.481503, 39.013615, 48.301197>,  <33.367222, 38.827286, 48.202095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.481503, 39.013615, 48.301197>,  <33.671970, 39.324165, 48.466370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.481503, 39.013615, 48.301197> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262370, -0.322757, 0.909390,
		-0.839302, 0.541360, -0.050011,
		-0.476166, -0.776374, -0.412927,
		33.338654, 38.780701, 48.177319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.938511, 39.368103, 48.698914>,  <33.671970, 39.324165, 48.466370>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.938511, 39.368103, 48.698914> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.001926, 38.983440, 48.609402>,  <33.039974, 38.752644, 48.555695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.001926, 38.983440, 48.609402>,  <32.938511, 39.368103, 48.698914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.001926, 38.983440, 48.609402> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315595, -0.264113, 0.911397,
		-0.935556, -0.073869, -0.345367,
		0.158540, -0.961659, -0.223779,
		33.049488, 38.694942, 48.542267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.277439, 39.067245, 48.880360>,  <32.938511, 39.368103, 48.698914>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.277439, 39.067245, 48.880360> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.570587, 38.796810, 48.910851>,  <32.746475, 38.634548, 48.929146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.570587, 38.796810, 48.910851>,  <32.277439, 39.067245, 48.880360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.570587, 38.796810, 48.910851> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275041, -0.191925, 0.942081,
		-0.622302, -0.711384, -0.326608,
		0.732866, -0.676090, 0.076224,
		32.790447, 38.593983, 48.933720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.996735, 38.502960, 49.182686>,  <32.277439, 39.067245, 48.880360>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.996735, 38.502960, 49.182686> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.389870, 38.461327, 49.243607>,  <32.625751, 38.436344, 49.280159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.389870, 38.461327, 49.243607>,  <31.996735, 38.502960, 49.182686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.389870, 38.461327, 49.243607> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183483, -0.466184, 0.865451,
		-0.019081, -0.878543, -0.477282,
		0.982837, -0.104087, 0.152302,
		32.684723, 38.430099, 49.289299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.990656, 37.838253, 49.527763>,  <31.996735, 38.502960, 49.182686>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.990656, 37.838253, 49.527763> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.356861, 37.989471, 49.582775>,  <32.576584, 38.080204, 49.615784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.356861, 37.989471, 49.582775>,  <31.990656, 37.838253, 49.527763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.356861, 37.989471, 49.582775> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045092, -0.243289, 0.968905,
		0.399754, -0.893247, -0.205687,
		0.915513, 0.378049, 0.137534,
		32.631516, 38.102886, 49.624035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.361465, 37.286987, 49.863659>,  <31.990656, 37.838253, 49.527763>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.361465, 37.286987, 49.863659> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.541286, 37.632393, 49.955093>,  <32.649181, 37.839634, 50.009953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.541286, 37.632393, 49.955093>,  <32.361465, 37.286987, 49.863659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.541286, 37.632393, 49.955093> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021535, -0.266307, 0.963648,
		0.892993, -0.428290, -0.138315,
		0.449555, 0.863509, 0.228587,
		32.676151, 37.891445, 50.023670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.575695, 36.667053, 49.892094>,  <32.361465, 37.286987, 49.863659>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.575695, 36.667053, 49.892094> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.513481, 36.280014, 49.971649>,  <32.476151, 36.047791, 50.019382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.513481, 36.280014, 49.971649>,  <32.575695, 36.667053, 49.892094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.513481, 36.280014, 49.971649> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084182, -0.187625, -0.978627,
		0.984236, -0.168956, -0.052272,
		-0.155538, -0.967600, 0.198890,
		32.466820, 35.989735, 50.031315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.109604, 36.270878, 49.517685>,  <32.575695, 36.667053, 49.892094>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.109604, 36.270878, 49.517685> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.803959, 36.027256, 49.602715>,  <32.620571, 35.881084, 49.653732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.803959, 36.027256, 49.602715>,  <33.109604, 36.270878, 49.517685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.803959, 36.027256, 49.602715> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005906, -0.336125, -0.941799,
		0.645058, -0.718383, 0.260433,
		-0.764111, -0.609053, 0.212577,
		32.574726, 35.844540, 49.666489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.255032, 35.689293, 49.173927>,  <33.109604, 36.270878, 49.517685>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.255032, 35.689293, 49.173927> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.860126, 35.660282, 49.230572>,  <32.623184, 35.642876, 49.264557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.860126, 35.660282, 49.230572>,  <33.255032, 35.689293, 49.173927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.860126, 35.660282, 49.230572> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105293, -0.369416, -0.923280,
		0.119275, -0.926430, 0.357074,
		-0.987262, -0.072526, 0.141609,
		32.563950, 35.638523, 49.273056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.132355, 35.083481, 48.834106>,  <33.255032, 35.689293, 49.173927>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.132355, 35.083481, 48.834106> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.767082, 35.245125, 48.855293>,  <32.547920, 35.342110, 48.868004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.767082, 35.245125, 48.855293>,  <33.132355, 35.083481, 48.834106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.767082, 35.245125, 48.855293> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196629, -0.322995, -0.925749,
		-0.356996, -0.855786, 0.374411,
		-0.913176, 0.404109, 0.052965,
		32.493130, 35.366356, 48.871181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.702568, 34.571575, 48.484818>,  <33.132355, 35.083481, 48.834106>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.702568, 34.571575, 48.484818> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.487743, 34.908646, 48.500137>,  <32.358849, 35.110886, 48.509327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.487743, 34.908646, 48.500137>,  <32.702568, 34.571575, 48.484818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.487743, 34.908646, 48.500137> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248251, -0.114504, -0.961905,
		-0.806185, -0.526110, 0.270690,
		-0.537063, 0.842673, 0.038296,
		32.326626, 35.161446, 48.511627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.074337, 34.473511, 48.114525>,  <32.702568, 34.571575, 48.484818>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.074337, 34.473511, 48.114525> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.119061, 34.870781, 48.127785>,  <32.145893, 35.109142, 48.135742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.119061, 34.870781, 48.127785>,  <32.074337, 34.473511, 48.114525>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.119061, 34.870781, 48.127785> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310287, 0.066582, -0.948308,
		-0.944045, 0.095739, 0.315614,
		0.111804, 0.993177, 0.033149,
		32.152603, 35.168736, 48.137730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.468504, 34.691059, 47.852695>,  <32.074337, 34.473511, 48.114525>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.468504, 34.691059, 47.852695> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.726912, 34.991440, 47.797962>,  <31.881956, 35.171669, 47.765121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.726912, 34.991440, 47.797962>,  <31.468504, 34.691059, 47.852695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.726912, 34.991440, 47.797962> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254758, 0.043130, -0.966043,
		-0.719552, 0.658944, 0.219175,
		0.646021, 0.750954, -0.136837,
		31.920717, 35.216724, 47.756912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<36.977909, 33.922607, 51.543133> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.913467, 33.633430, 51.811878>,  <36.874802, 33.459923, 51.973125>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.913467, 33.633430, 51.811878>,  <36.977909, 33.922607, 51.543133>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.913467, 33.633430, 51.811878> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106550, -0.689516, -0.716390,
		0.981168, -0.043829, 0.188116,
		-0.161108, -0.722943, 0.671861,
		36.865135, 33.416546, 52.013435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.219303, 34.601570, 51.275131>,  <36.977909, 33.922607, 51.543133>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.219303, 34.601570, 51.275131> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.213024, 34.974808, 51.131416>,  <37.209255, 35.198750, 51.045189>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.213024, 34.974808, 51.131416>,  <37.219303, 34.601570, 51.275131>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.213024, 34.974808, 51.131416> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469403, -0.324151, -0.821333,
		-0.882845, 0.155755, 0.443087,
		-0.015700, 0.933096, -0.359287,
		37.208313, 35.254738, 51.023632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.496574, 34.838573, 51.044006>,  <37.219303, 34.601570, 51.275131>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.496574, 34.838573, 51.044006> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.767963, 35.064949, 50.856647>,  <36.930798, 35.200775, 50.744232>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.767963, 35.064949, 50.856647>,  <36.496574, 34.838573, 51.044006>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.767963, 35.064949, 50.856647> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474910, -0.148561, -0.867404,
		-0.560479, 0.810955, 0.167974,
		0.678471, 0.565935, -0.468396,
		36.971504, 35.234730, 50.716129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.037659, 35.298508, 50.658016>,  <36.496574, 34.838573, 51.044006>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.037659, 35.298508, 50.658016> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.408588, 35.317547, 50.509529>,  <36.631145, 35.328972, 50.420437>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.408588, 35.317547, 50.509529>,  <36.037659, 35.298508, 50.658016>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.408588, 35.317547, 50.509529> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374236, 0.107197, -0.921117,
		-0.004051, 0.993098, 0.117219,
		0.927325, 0.047599, -0.371219,
		36.686787, 35.331825, 50.398163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.959293, 35.846695, 50.245014>,  <36.037659, 35.298508, 50.658016>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.959293, 35.846695, 50.245014> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.272999, 35.624294, 50.134899>,  <36.461224, 35.490852, 50.068829>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.272999, 35.624294, 50.134899>,  <35.959293, 35.846695, 50.245014>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.272999, 35.624294, 50.134899> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404513, -0.121810, -0.906384,
		0.470422, 0.822204, -0.320443,
		0.784266, -0.556006, -0.275290,
		36.508278, 35.457493, 50.052311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.011471, 36.039684, 49.535809>,  <35.959293, 35.846695, 50.245014>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.011471, 36.039684, 49.535809> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.234135, 35.710670, 49.582401>,  <36.367733, 35.513264, 49.610355>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.234135, 35.710670, 49.582401>,  <36.011471, 36.039684, 49.535809>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.234135, 35.710670, 49.582401> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001175, -0.139436, -0.990230,
		0.830737, 0.551362, -0.076653,
		0.556663, -0.822532, 0.116482,
		36.401134, 35.463909, 49.617348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.525364, 36.100395, 49.022820>,  <36.011471, 36.039684, 49.535809>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.525364, 36.100395, 49.022820> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.491615, 35.710739, 49.106667>,  <36.471367, 35.476948, 49.156975>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.491615, 35.710739, 49.106667>,  <36.525364, 36.100395, 49.022820>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.491615, 35.710739, 49.106667> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029079, -0.207872, -0.977724,
		0.996010, -0.088592, -0.010787,
		-0.084376, -0.974136, 0.209618,
		36.466301, 35.418499, 49.169552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.984043, 35.829418, 48.445473>,  <36.525364, 36.100395, 49.022820>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.984043, 35.829418, 48.445473> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.765732, 35.530708, 48.597500>,  <36.634743, 35.351482, 48.688717>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.765732, 35.530708, 48.597500>,  <36.984043, 35.829418, 48.445473>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.765732, 35.530708, 48.597500> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105260, -0.388883, -0.915254,
		0.831289, -0.539536, 0.133640,
		-0.545783, -0.746774, 0.380066,
		36.601997, 35.306675, 48.711521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.273373, 35.244568, 48.162434>,  <36.984043, 35.829418, 48.445473>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.273373, 35.244568, 48.162434> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.898136, 35.151039, 48.264660>,  <36.672993, 35.094921, 48.325996>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.898136, 35.151039, 48.264660>,  <37.273373, 35.244568, 48.162434>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.898136, 35.151039, 48.264660> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121408, -0.469042, -0.874792,
		0.324413, -0.851662, 0.411616,
		-0.938092, -0.233820, 0.255562,
		36.616707, 35.080894, 48.341328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.230175, 34.586868, 48.027767>,  <37.273373, 35.244568, 48.162434>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.230175, 34.586868, 48.027767> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.851883, 34.716389, 48.038700>,  <36.624908, 34.794102, 48.045261>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.851883, 34.716389, 48.038700>,  <37.230175, 34.586868, 48.027767>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.851883, 34.716389, 48.038700> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139582, -0.328823, -0.934019,
		-0.293444, -0.887147, 0.356175,
		-0.945731, 0.323798, 0.027339,
		36.568165, 34.813530, 48.046902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.815937, 34.118382, 47.920036>,  <37.230175, 34.586868, 48.027767>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.815937, 34.118382, 47.920036> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.597500, 34.430786, 47.798836>,  <36.466438, 34.618229, 47.726116>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.597500, 34.430786, 47.798836>,  <36.815937, 34.118382, 47.920036>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.597500, 34.430786, 47.798836> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084896, -0.411424, -0.907482,
		-0.833414, -0.469843, 0.290979,
		-0.546090, 0.781011, -0.302998,
		36.433674, 34.665089, 47.707935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.313206, 33.708614, 47.522137>,  <36.815937, 34.118382, 47.920036>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.313206, 33.708614, 47.522137> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.237514, 34.087971, 47.420353>,  <36.192101, 34.315586, 47.359283>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.237514, 34.087971, 47.420353>,  <36.313206, 33.708614, 47.522137>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.237514, 34.087971, 47.420353> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069527, -0.271428, -0.959944,
		-0.979468, -0.163958, 0.117301,
		-0.189230, 0.948391, -0.254456,
		36.180744, 34.372486, 47.344017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.653435, 33.501118, 47.808475>,  <36.313206, 33.708614, 47.522137>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.653435, 33.501118, 47.808475> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.300358, 33.313381, 47.818054>,  <35.088512, 33.200741, 47.823799>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.300358, 33.313381, 47.818054>,  <35.653435, 33.501118, 47.808475>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.300358, 33.313381, 47.818054> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024499, 0.096838, 0.994999,
		-0.469312, 0.877691, -0.096977,
		-0.882692, -0.469341, 0.023945,
		35.035549, 33.172581, 47.825237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.166340, 33.947731, 48.109909>,  <35.653435, 33.501118, 47.808475>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.166340, 33.947731, 48.109909> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.047138, 33.569019, 48.158566>,  <34.975616, 33.341793, 48.187759>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.047138, 33.569019, 48.158566>,  <35.166340, 33.947731, 48.109909>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.047138, 33.569019, 48.158566> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026767, 0.135668, 0.990393,
		-0.954190, 0.291884, -0.065772,
		-0.298003, -0.946783, 0.121640,
		34.957737, 33.284985, 48.195057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.773781, 33.988453, 48.718697>,  <35.166340, 33.947731, 48.109909>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.773781, 33.988453, 48.718697> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.794479, 33.591312, 48.675663>,  <34.806900, 33.353027, 48.649841>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.794479, 33.591312, 48.675663>,  <34.773781, 33.988453, 48.718697>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.794479, 33.591312, 48.675663> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153550, -0.114357, 0.981501,
		-0.986785, -0.034272, -0.158370,
		0.051749, -0.992848, -0.107583,
		34.810005, 33.293457, 48.643387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.283363, 33.725842, 49.170074>,  <34.773781, 33.988453, 48.718697>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.283363, 33.725842, 49.170074> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.529942, 33.417000, 49.108315>,  <34.677891, 33.231693, 49.071259>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.529942, 33.417000, 49.108315>,  <34.283363, 33.725842, 49.170074>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.529942, 33.417000, 49.108315> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017773, -0.209679, 0.977609,
		-0.787194, -0.599902, -0.142979,
		0.616449, -0.772109, -0.154396,
		34.714878, 33.185368, 49.061996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.938183, 33.110649, 49.462360>,  <34.283363, 33.725842, 49.170074>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.938183, 33.110649, 49.462360> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.331459, 33.038174, 49.453331>,  <34.567425, 32.994690, 49.447914>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.331459, 33.038174, 49.453331>,  <33.938183, 33.110649, 49.462360>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.331459, 33.038174, 49.453331> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015152, -0.042249, 0.998992,
		-0.181961, -0.982540, -0.038794,
		0.983189, -0.181190, -0.022575,
		34.626415, 32.983818, 49.446560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.058689, 32.645027, 49.967773>,  <33.938183, 33.110649, 49.462360>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.058689, 32.645027, 49.967773> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.417065, 32.807148, 49.895077>,  <34.632088, 32.904419, 49.851460>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.417065, 32.807148, 49.895077>,  <34.058689, 32.645027, 49.967773>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.417065, 32.807148, 49.895077> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141965, 0.126414, 0.981766,
		0.420886, -0.905400, 0.055721,
		0.895936, 0.405302, -0.181741,
		34.685844, 32.928738, 49.840553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.522678, 32.291473, 50.363445>,  <34.058689, 32.645027, 49.967773>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.522678, 32.291473, 50.363445> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.717865, 32.631969, 50.286213>,  <34.834976, 32.836266, 50.239872>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.717865, 32.631969, 50.286213>,  <34.522678, 32.291473, 50.363445>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.717865, 32.631969, 50.286213> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175117, 0.121235, 0.977055,
		0.855117, -0.510580, -0.089908,
		0.487965, 0.851240, -0.193081,
		34.864254, 32.887341, 50.228291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.168709, 32.220428, 50.664658>,  <34.522678, 32.291473, 50.363445>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.168709, 32.220428, 50.664658> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.121456, 32.613758, 50.609364>,  <35.093105, 32.849758, 50.576187>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.121456, 32.613758, 50.609364>,  <35.168709, 32.220428, 50.664658>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.121456, 32.613758, 50.609364> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243172, 0.163619, 0.956084,
		0.962762, 0.079333, -0.258448,
		-0.118136, 0.983329, -0.138235,
		35.086014, 32.908756, 50.567894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.761818, 32.504353, 51.063465>,  <35.168709, 32.220428, 50.664658>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.761818, 32.504353, 51.063465> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.473061, 32.774956, 51.005211>,  <35.299805, 32.937317, 50.970257>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.473061, 32.774956, 51.005211>,  <35.761818, 32.504353, 51.063465>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.473061, 32.774956, 51.005211> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202282, 0.407557, 0.890494,
		0.661781, 0.613380, -0.431057,
		-0.721892, 0.676507, -0.145638,
		35.256493, 32.977909, 50.961521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.965576, 33.184956, 51.422112>,  <35.761818, 32.504353, 51.063465>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.965576, 33.184956, 51.422112> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.575539, 33.267654, 51.389984>,  <35.341518, 33.317272, 51.370708>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.575539, 33.267654, 51.389984>,  <35.965576, 33.184956, 51.422112>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.575539, 33.267654, 51.389984> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024330, 0.459645, 0.887769,
		0.220462, 0.863703, -0.453226,
		-0.975092, 0.206747, -0.080320,
		35.283012, 33.329678, 51.365887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.848972, 33.856274, 51.650002>,  <35.965576, 33.184956, 51.422112>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.848972, 33.856274, 51.650002> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.490650, 33.687946, 51.707188>,  <35.275658, 33.586948, 51.741501>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.490650, 33.687946, 51.707188>,  <35.848972, 33.856274, 51.650002>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.490650, 33.687946, 51.707188> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035611, 0.388603, 0.920717,
		-0.443010, 0.819696, -0.363099,
		-0.895809, -0.420817, 0.142965,
		35.221909, 33.561703, 51.750076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.487644, 34.384579, 51.992130>,  <35.848972, 33.856274, 51.650002>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.487644, 34.384579, 51.992130> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.290218, 34.046131, 52.072605>,  <35.171764, 33.843063, 52.120892>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.290218, 34.046131, 52.072605>,  <35.487644, 34.384579, 51.992130>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.290218, 34.046131, 52.072605> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137651, 0.304412, 0.942542,
		-0.858748, 0.437510, -0.266716,
		-0.493563, -0.846120, 0.201189,
		35.142151, 33.792294, 52.132961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.902000, 34.573318, 52.182690>,  <35.487644, 34.384579, 51.992130>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.902000, 34.573318, 52.182690> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.953037, 34.212154, 52.346870>,  <34.983662, 33.995457, 52.445377>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.953037, 34.212154, 52.346870>,  <34.902000, 34.573318, 52.182690>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.953037, 34.212154, 52.346870> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164234, 0.388887, 0.906529,
		-0.978134, -0.183079, -0.098668,
		0.127596, -0.902911, 0.410451,
		34.991318, 33.941280, 52.470005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.609795, 34.751934, 52.757477>,  <34.902000, 34.573318, 52.182690>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.609795, 34.751934, 52.757477> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.775707, 34.393810, 52.822441>,  <34.875256, 34.178936, 52.861420>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.775707, 34.393810, 52.822441>,  <34.609795, 34.751934, 52.757477>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.775707, 34.393810, 52.822441> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047543, 0.199574, 0.978729,
		-0.908678, -0.398237, 0.125345,
		0.414782, -0.895309, 0.162415,
		34.900143, 34.125217, 52.871166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.042412, 35.122139, 52.229607>,  <34.609795, 34.751934, 52.757477>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.042412, 35.122139, 52.229607> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.708538, 35.224327, 52.424763>,  <33.508213, 35.285641, 52.541855>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.708538, 35.224327, 52.424763>,  <34.042412, 35.122139, 52.229607>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.708538, 35.224327, 52.424763> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444908, 0.209330, -0.870769,
		-0.324587, -0.943883, -0.061063,
		-0.834686, 0.255473, 0.487887,
		33.458134, 35.300968, 52.571129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.346317, 34.806168, 51.997849>,  <34.042412, 35.122139, 52.229607>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.346317, 34.806168, 51.997849> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.223667, 35.151485, 52.158195>,  <33.150078, 35.358677, 52.254406>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.223667, 35.151485, 52.158195>,  <33.346317, 34.806168, 51.997849>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.223667, 35.151485, 52.158195> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598048, 0.152910, -0.786738,
		-0.740488, -0.480971, 0.469410,
		-0.306621, 0.863299, 0.400872,
		33.131680, 35.410477, 52.278458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.559761, 34.803616, 52.076683>,  <33.346317, 34.806168, 51.997849>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.559761, 34.803616, 52.076683> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.728989, 35.165806, 52.063236>,  <32.830524, 35.383118, 52.055168>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.728989, 35.165806, 52.063236>,  <32.559761, 34.803616, 52.076683>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.728989, 35.165806, 52.063236> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602804, 0.253565, -0.756526,
		-0.676489, 0.340331, 0.653099,
		0.423072, 0.905472, -0.033619,
		32.855911, 35.437447, 52.053150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.079033, 35.176785, 51.789391>,  <32.559761, 34.803616, 52.076683>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.079033, 35.176785, 51.789391> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.377785, 35.437958, 51.739021>,  <32.557037, 35.594662, 51.708801>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.377785, 35.437958, 51.739021>,  <32.079033, 35.176785, 51.789391>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.377785, 35.437958, 51.739021> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337224, 0.208709, -0.917998,
		-0.573108, 0.728096, 0.376064,
		0.746878, 0.652930, -0.125919,
		32.601849, 35.633835, 51.701244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.807625, 35.653957, 51.425201>,  <32.079033, 35.176785, 51.789391>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.807625, 35.653957, 51.425201> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.193317, 35.737347, 51.359726>,  <32.424732, 35.787380, 51.320438>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.193317, 35.737347, 51.359726>,  <31.807625, 35.653957, 51.425201>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.193317, 35.737347, 51.359726> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200341, 0.168849, -0.965067,
		-0.173549, 0.963343, 0.204575,
		0.964233, 0.208470, -0.163693,
		32.482586, 35.799889, 51.310619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.876743, 36.349968, 51.062256>,  <31.807625, 35.653957, 51.425201>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.876743, 36.349968, 51.062256> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.198883, 36.130779, 50.971809>,  <32.392166, 35.999264, 50.917542>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.198883, 36.130779, 50.971809>,  <31.876743, 36.349968, 51.062256>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.198883, 36.130779, 50.971809> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198417, 0.110265, -0.973895,
		0.558605, 0.829194, -0.019925,
		0.805352, -0.547976, -0.226121,
		32.440487, 35.966385, 50.903973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.057575, 36.665951, 50.462543>,  <31.876743, 36.349968, 51.062256>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.057575, 36.665951, 50.462543> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.257118, 36.319435, 50.452030>,  <32.376842, 36.111526, 50.445721>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.257118, 36.319435, 50.452030>,  <32.057575, 36.665951, 50.462543>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.257118, 36.319435, 50.452030> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163054, -0.064021, -0.984538,
		0.851209, 0.495428, -0.173189,
		0.498855, -0.866287, -0.026286,
		32.406776, 36.059547, 50.444145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.767551, 37.158226, 50.454338>,  <32.057575, 36.665951, 50.462543>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.767551, 37.158226, 50.454338> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.800961, 37.556789, 50.459873>,  <32.821007, 37.795929, 50.463192>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.800961, 37.556789, 50.459873>,  <32.767551, 37.158226, 50.454338>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.800961, 37.556789, 50.459873> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391748, -0.045598, 0.918942,
		0.916274, -0.071336, -0.394150,
		0.083526, 0.996410, 0.013835,
		32.826019, 37.855713, 50.464024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.513294, 37.386261, 50.676262>,  <32.767551, 37.158226, 50.454338>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.513294, 37.386261, 50.676262> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.268124, 37.693344, 50.751038>,  <33.121021, 37.877594, 50.795902>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.268124, 37.693344, 50.751038>,  <33.513294, 37.386261, 50.676262>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.268124, 37.693344, 50.751038> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399395, 0.096889, 0.911645,
		0.681765, 0.633433, -0.366005,
		-0.612928, 0.767708, 0.186935,
		33.084244, 37.923656, 50.807117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.872784, 37.816441, 51.122238>,  <33.513294, 37.386261, 50.676262>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.872784, 37.816441, 51.122238> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.496418, 37.935074, 51.187618>,  <33.270599, 38.006256, 51.226849>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.496418, 37.935074, 51.187618>,  <33.872784, 37.816441, 51.122238>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.496418, 37.935074, 51.187618> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212334, 0.140682, 0.967017,
		0.263810, 0.944587, -0.195345,
		-0.940914, 0.296588, 0.163455,
		33.214146, 38.024052, 51.236656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.860008, 38.425041, 51.504494>,  <33.872784, 37.816441, 51.122238>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.860008, 38.425041, 51.504494> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.481800, 38.311573, 51.568405>,  <33.254875, 38.243492, 51.606750>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.481800, 38.311573, 51.568405>,  <33.860008, 38.425041, 51.504494>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.481800, 38.311573, 51.568405> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096390, 0.224851, 0.969614,
		-0.310976, 0.932187, -0.185257,
		-0.945517, -0.283669, 0.159777,
		33.198143, 38.226471, 51.616337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.634258, 39.033756, 51.877869>,  <33.860008, 38.425041, 51.504494>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.634258, 39.033756, 51.877869> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.413746, 38.710026, 51.958939>,  <33.281437, 38.515789, 52.007580>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.413746, 38.710026, 51.958939>,  <33.634258, 39.033756, 51.877869>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.413746, 38.710026, 51.958939> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041647, 0.215927, 0.975521,
		-0.833277, 0.546230, -0.085331,
		-0.551284, -0.809326, 0.202676,
		33.248360, 38.467228, 52.019741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.239876, 39.290527, 52.412529>,  <33.634258, 39.033756, 51.877869>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.239876, 39.290527, 52.412529> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.244228, 38.890587, 52.407120>,  <33.246841, 38.650623, 52.403873>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.244228, 38.890587, 52.407120>,  <33.239876, 39.290527, 52.412529>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.244228, 38.890587, 52.407120> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175637, -0.011398, 0.984389,
		-0.984395, -0.013087, 0.175487,
		0.010882, -0.999849, -0.013519,
		33.247494, 38.590633, 52.403065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.854988, 39.062309, 53.008541>,  <33.239876, 39.290527, 52.412529>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.854988, 39.062309, 53.008541> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.058838, 38.727009, 52.930965>,  <33.181149, 38.525829, 52.884418>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.058838, 38.727009, 52.930965>,  <32.854988, 39.062309, 53.008541>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.058838, 38.727009, 52.930965> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306980, -0.033425, 0.951129,
		-0.803770, -0.544255, 0.240293,
		0.509625, -0.838254, -0.193941,
		33.211727, 38.475533, 52.872784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.758533, 38.644630, 53.568516>,  <32.854988, 39.062309, 53.008541>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.758533, 38.644630, 53.568516> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.088932, 38.499287, 53.396145>,  <33.287170, 38.412083, 53.292721>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.088932, 38.499287, 53.396145>,  <32.758533, 38.644630, 53.568516>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.088932, 38.499287, 53.396145> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478570, 0.048124, 0.876730,
		-0.297829, -0.930406, 0.213642,
		0.825996, -0.363359, -0.430931,
		33.336731, 38.390278, 53.266865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.050858, 38.130848, 54.039436>,  <32.758533, 38.644630, 53.568516>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.050858, 38.130848, 54.039436> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.358036, 38.249477, 53.812347>,  <33.542343, 38.320656, 53.676094>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.358036, 38.249477, 53.812347>,  <33.050858, 38.130848, 54.039436>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.358036, 38.249477, 53.812347> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607337, -0.055585, 0.792497,
		0.203481, -0.953390, -0.222809,
		0.767944, 0.296578, -0.567718,
		33.588421, 38.338451, 53.642033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<32.803959, 37.504910, 37.629303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.202553, 37.474533, 37.615196>,  <33.441711, 37.456306, 37.606731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.202553, 37.474533, 37.615196>,  <32.803959, 37.504910, 37.629303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.202553, 37.474533, 37.615196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037976, 0.034580, 0.998680,
		-0.074620, -0.996513, 0.037342,
		0.996488, -0.075940, -0.035263,
		33.501499, 37.451752, 37.604618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.039253, 36.959389, 38.146065>,  <32.803959, 37.504910, 37.629303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.039253, 36.959389, 38.146065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.357174, 37.190357, 38.071362>,  <33.547928, 37.328938, 38.026539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.357174, 37.190357, 38.071362>,  <33.039253, 36.959389, 38.146065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.357174, 37.190357, 38.071362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128418, 0.140746, 0.981682,
		0.593126, -0.804226, 0.037714,
		0.794802, 0.577418, -0.186757,
		33.595615, 37.363583, 38.015335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.479561, 36.613518, 38.556385>,  <33.039253, 36.959389, 38.146065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.479561, 36.613518, 38.556385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.594646, 36.991390, 38.493389>,  <33.663696, 37.218113, 38.455589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.594646, 36.991390, 38.493389>,  <33.479561, 36.613518, 38.556385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.594646, 36.991390, 38.493389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214001, 0.096875, 0.972018,
		0.933502, -0.313362, -0.174291,
		0.287709, 0.944679, -0.157493,
		33.680958, 37.274796, 38.446140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.221462, 36.710014, 38.890011>,  <33.479561, 36.613518, 38.556385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.221462, 36.710014, 38.890011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.081333, 37.081554, 38.841816>,  <33.997257, 37.304478, 38.812901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.081333, 37.081554, 38.841816>,  <34.221462, 36.710014, 38.890011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.081333, 37.081554, 38.841816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079223, 0.157565, 0.984326,
		0.933273, 0.335284, -0.128784,
		-0.350321, 0.928848, -0.120489,
		33.976238, 37.360210, 38.805668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.595276, 37.255550, 39.290714>,  <34.221462, 36.710014, 38.890011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.595276, 37.255550, 39.290714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.225971, 37.401665, 39.243141>,  <34.004387, 37.489334, 39.214596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.225971, 37.401665, 39.243141>,  <34.595276, 37.255550, 39.290714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.225971, 37.401665, 39.243141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031601, 0.236324, 0.971160,
		0.382858, 0.900398, -0.206647,
		-0.923266, 0.365287, -0.118932,
		33.948990, 37.511250, 39.207462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.655781, 37.828583, 39.669292>,  <34.595276, 37.255550, 39.290714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.655781, 37.828583, 39.669292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.263985, 37.756115, 39.634010>,  <34.028908, 37.712635, 39.612843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.263985, 37.756115, 39.634010>,  <34.655781, 37.828583, 39.669292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.263985, 37.756115, 39.634010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116311, 0.150911, 0.981681,
		-0.164538, 0.971805, -0.168887,
		-0.979489, -0.181167, -0.088201,
		33.970139, 37.701763, 39.607552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.398659, 38.189697, 40.264641>,  <34.655781, 37.828583, 39.669292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.398659, 38.189697, 40.264641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.074997, 37.993938, 40.134556>,  <33.880802, 37.876484, 40.056507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.074997, 37.993938, 40.134556>,  <34.398659, 38.189697, 40.264641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.074997, 37.993938, 40.134556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380401, 0.014465, 0.924708,
		-0.447848, 0.871940, -0.197873,
		-0.809152, -0.489400, -0.325209,
		33.832253, 37.847118, 40.036995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.779583, 38.643257, 40.503845>,  <34.398659, 38.189697, 40.264641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.779583, 38.643257, 40.503845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.670490, 38.261215, 40.457550>,  <33.605034, 38.031990, 40.429771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.670490, 38.261215, 40.457550>,  <33.779583, 38.643257, 40.503845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.670490, 38.261215, 40.457550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528022, 0.048031, 0.847871,
		-0.804245, 0.292357, -0.517414,
		-0.272733, -0.955102, -0.115742,
		33.588669, 37.974686, 40.422829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.049858, 38.639496, 40.532978>,  <33.779583, 38.643257, 40.503845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.049858, 38.639496, 40.532978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.182026, 38.277508, 40.640198>,  <33.261326, 38.060314, 40.704529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.182026, 38.277508, 40.640198>,  <33.049858, 38.639496, 40.532978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.182026, 38.277508, 40.640198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446402, 0.100385, 0.889184,
		-0.831593, -0.413464, -0.370811,
		0.330422, -0.904970, 0.268051,
		33.281151, 38.006016, 40.720612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.556751, 38.302753, 40.962360>,  <33.049858, 38.639496, 40.532978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.556751, 38.302753, 40.962360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.875172, 38.084724, 41.067585>,  <33.066223, 37.953907, 41.130722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.875172, 38.084724, 41.067585>,  <32.556751, 38.302753, 40.962360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.875172, 38.084724, 41.067585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378041, -0.108372, 0.919424,
		-0.472648, -0.831352, -0.292331,
		0.796046, -0.545077, 0.263063,
		33.113987, 37.921200, 41.146503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.379662, 37.837616, 41.413280>,  <32.556751, 38.302753, 40.962360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.379662, 37.837616, 41.413280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.770588, 37.817280, 41.495522>,  <33.005142, 37.805080, 41.544865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.770588, 37.817280, 41.495522>,  <32.379662, 37.837616, 41.413280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.770588, 37.817280, 41.495522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184921, 0.268420, 0.945386,
		-0.103249, -0.961959, 0.252930,
		0.977315, -0.050839, 0.205601,
		33.063782, 37.802029, 41.557201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.462132, 37.419109, 41.985775>,  <32.379662, 37.837616, 41.413280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.462132, 37.419109, 41.985775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.793720, 37.642544, 41.974564>,  <32.992676, 37.776604, 41.967838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.793720, 37.642544, 41.974564>,  <32.462132, 37.419109, 41.985775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.793720, 37.642544, 41.974564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185373, 0.321697, 0.928519,
		0.527671, -0.764524, 0.370225,
		0.828975, 0.558583, -0.028029,
		33.042412, 37.810120, 41.966156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.738480, 36.856888, 41.623302>,  <32.462132, 37.419109, 41.985775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.738480, 36.856888, 41.623302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.416954, 36.619236, 41.635319>,  <32.224041, 36.476646, 41.642529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.416954, 36.619236, 41.635319>,  <32.738480, 36.856888, 41.623302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.416954, 36.619236, 41.635319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073038, 0.048445, -0.996152,
		0.590386, -0.802911, -0.082334,
		-0.803810, -0.594127, 0.030042,
		32.175812, 36.440998, 41.644333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.836102, 36.312634, 41.116543>,  <32.738480, 36.856888, 41.623302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.836102, 36.312634, 41.116543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.440315, 36.326904, 41.172668>,  <32.202843, 36.335464, 41.206345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.440315, 36.326904, 41.172668>,  <32.836102, 36.312634, 41.116543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.440315, 36.326904, 41.172668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143476, -0.111906, -0.983307,
		-0.019374, -0.993078, 0.115845,
		-0.989464, 0.035671, 0.140314,
		32.143475, 36.337608, 41.214764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.554852, 35.755329, 40.697525>,  <32.836102, 36.312634, 41.116543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.554852, 35.755329, 40.697525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.230854, 35.977852, 40.771751>,  <32.036457, 36.111366, 40.816288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.230854, 35.977852, 40.771751>,  <32.554852, 35.755329, 40.697525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.230854, 35.977852, 40.771751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328874, -0.168913, -0.929145,
		-0.485546, -0.813627, 0.319773,
		-0.809992, 0.556308, 0.185566,
		31.987856, 36.144745, 40.827419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.904772, 35.326626, 40.441818>,  <32.554852, 35.755329, 40.697525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.904772, 35.326626, 40.441818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.848486, 35.722603, 40.436081>,  <31.814714, 35.960190, 40.432636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.848486, 35.722603, 40.436081>,  <31.904772, 35.326626, 40.441818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.848486, 35.722603, 40.436081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338878, -0.061775, -0.938800,
		-0.930248, -0.127241, 0.344163,
		-0.140715, 0.989946, -0.014347,
		31.806271, 36.019588, 40.431778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.224243, 35.360126, 40.304108>,  <31.904772, 35.326626, 40.441818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.224243, 35.360126, 40.304108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.368725, 35.715988, 40.192364>,  <31.455414, 35.929504, 40.125317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.368725, 35.715988, 40.192364>,  <31.224243, 35.360126, 40.304108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.368725, 35.715988, 40.192364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514303, -0.059834, -0.855518,
		-0.777833, 0.452694, 0.435941,
		0.361204, 0.889656, -0.279363,
		31.477085, 35.982883, 40.108555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.633270, 35.574974, 39.971859>,  <31.224243, 35.360126, 40.304108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.633270, 35.574974, 39.971859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.934376, 35.802116, 39.838661>,  <31.115040, 35.938400, 39.758743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.934376, 35.802116, 39.838661>,  <30.633270, 35.574974, 39.971859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.934376, 35.802116, 39.838661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350053, -0.083092, -0.933037,
		-0.557500, 0.818923, 0.136231,
		0.752766, 0.567856, -0.332990,
		31.160206, 35.972473, 39.738766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.381451, 36.041653, 39.554287>,  <30.633270, 35.574974, 39.971859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.381451, 36.041653, 39.554287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.763489, 36.033630, 39.436039>,  <30.992712, 36.028816, 39.365089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.763489, 36.033630, 39.436039>,  <30.381451, 36.041653, 39.554287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.763489, 36.033630, 39.436039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296257, -0.047043, -0.953949,
		0.005223, 0.998692, -0.050872,
		0.955094, -0.020054, -0.295623,
		31.050016, 36.027615, 39.347351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.419533, 36.441116, 38.834042>,  <30.381451, 36.041653, 39.554287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.419533, 36.441116, 38.834042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.763611, 36.237495, 38.846291>,  <30.970057, 36.115322, 38.853642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.763611, 36.237495, 38.846291>,  <30.419533, 36.441116, 38.834042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.763611, 36.237495, 38.846291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176755, -0.353938, -0.918415,
		0.478357, 0.784601, -0.394432,
		0.860193, -0.509048, 0.030626,
		31.021669, 36.084782, 38.855480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.617748, 36.387062, 38.146988>,  <30.419533, 36.441116, 38.834042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.617748, 36.387062, 38.146988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.834841, 36.105377, 38.330086>,  <30.965096, 35.936367, 38.439945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.834841, 36.105377, 38.330086>,  <30.617748, 36.387062, 38.146988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.834841, 36.105377, 38.330086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249987, -0.655733, -0.712404,
		0.801842, 0.272213, -0.531930,
		0.542730, -0.704211, 0.457745,
		30.997660, 35.894115, 38.467411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.068886, 36.097424, 37.643085>,  <30.617748, 36.387062, 38.146988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.068886, 36.097424, 37.643085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.027544, 35.809841, 37.918018>,  <31.002739, 35.637291, 38.082977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.027544, 35.809841, 37.918018>,  <31.068886, 36.097424, 37.643085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.027544, 35.809841, 37.918018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209736, -0.659738, -0.721635,
		0.972280, -0.218743, -0.082603,
		-0.103356, -0.718956, 0.687328,
		30.996536, 35.594154, 38.124218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.479954, 35.507545, 37.452568>,  <31.068886, 36.097424, 37.643085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.479954, 35.507545, 37.452568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.202929, 35.357170, 37.698830>,  <31.036715, 35.266945, 37.846588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.202929, 35.357170, 37.698830>,  <31.479954, 35.507545, 37.452568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.202929, 35.357170, 37.698830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251976, -0.673629, -0.694790,
		0.675920, -0.636314, 0.371802,
		-0.692561, -0.375937, 0.615655,
		30.995161, 35.244389, 37.883526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.608686, 34.691315, 37.457951>,  <31.479954, 35.507545, 37.452568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.608686, 34.691315, 37.457951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.236673, 34.747635, 37.593727>,  <31.013466, 34.781425, 37.675194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.236673, 34.747635, 37.593727>,  <31.608686, 34.691315, 37.457951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.236673, 34.747635, 37.593727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305217, -0.810381, -0.500125,
		0.204661, -0.568734, 0.796652,
		-0.930030, 0.140796, 0.339440,
		30.957664, 34.789875, 37.695560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.282003, 34.071995, 37.588184>,  <31.608686, 34.691315, 37.457951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.282003, 34.071995, 37.588184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.961451, 34.307621, 37.546642>,  <30.769119, 34.448997, 37.521717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.961451, 34.307621, 37.546642>,  <31.282003, 34.071995, 37.588184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.961451, 34.307621, 37.546642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432977, -0.691070, -0.578751,
		-0.412696, -0.418833, 0.808864,
		-0.801382, 0.589068, -0.103857,
		30.721037, 34.484341, 37.515484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.664705, 33.606583, 37.633556>,  <31.282003, 34.071995, 37.588184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.664705, 33.606583, 37.633556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.569477, 33.945099, 37.442932>,  <30.512341, 34.148209, 37.328556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.569477, 33.945099, 37.442932>,  <30.664705, 33.606583, 37.633556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.569477, 33.945099, 37.442932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401109, -0.532542, -0.745326,
		-0.884553, 0.013713, 0.466238,
		-0.238070, 0.846293, -0.476562,
		30.498056, 34.198986, 37.299965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.366768, 33.748688, 38.281139>,  <30.664705, 33.606583, 37.633556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.366768, 33.748688, 38.281139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.105900, 34.034359, 38.382824>,  <29.949379, 34.205761, 38.443832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.105900, 34.034359, 38.382824>,  <30.366768, 33.748688, 38.281139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.105900, 34.034359, 38.382824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004914, 0.339309, -0.940662,
		-0.758058, -0.612222, -0.224797,
		-0.652169, 0.714181, 0.254208,
		29.910250, 34.248611, 38.459087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.158442, 33.831535, 38.338829>,  <30.366768, 33.748688, 38.281139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.158442, 33.831535, 38.338829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.246744, 33.577339, 38.042881>,  <31.299725, 33.424820, 37.865311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.246744, 33.577339, 38.042881>,  <31.158442, 33.831535, 38.338829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.246744, 33.577339, 38.042881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946877, -0.042250, 0.318808,
		-0.233860, -0.770949, 0.592408,
		0.220755, -0.635494, -0.739874,
		31.312971, 33.386692, 37.820919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.314173, 33.254974, 38.705719>,  <31.158442, 33.831535, 38.338829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.314173, 33.254974, 38.705719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.502632, 33.301693, 38.356007>,  <31.615707, 33.329723, 38.146179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.502632, 33.301693, 38.356007>,  <31.314173, 33.254974, 38.705719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.502632, 33.301693, 38.356007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880025, 0.004932, 0.474902,
		0.059781, -0.993143, -0.100463,
		0.471150, 0.116800, -0.874286,
		31.643978, 33.336731, 38.093719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.878220, 33.028175, 38.404533>,  <31.314173, 33.254974, 38.705719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.878220, 33.028175, 38.404533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.142635, 33.317879, 38.326073>,  <32.301285, 33.491699, 38.278996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.142635, 33.317879, 38.326073>,  <31.878220, 33.028175, 38.404533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.142635, 33.317879, 38.326073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439257, -0.161580, 0.883711,
		0.608341, -0.670329, -0.424947,
		0.661040, 0.724258, -0.196151,
		32.340946, 33.535156, 38.267227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.555622, 32.779762, 38.544052>,  <31.878220, 33.028175, 38.404533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.555622, 32.779762, 38.544052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.589577, 33.177887, 38.562622>,  <32.609947, 33.416759, 38.573765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.589577, 33.177887, 38.562622>,  <32.555622, 32.779762, 38.544052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.589577, 33.177887, 38.562622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498166, -0.082746, 0.863124,
		0.862917, -0.050138, -0.502853,
		0.084885, 0.995309, 0.046426,
		32.615044, 33.476479, 38.576550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.255608, 32.917114, 38.751560>,  <32.555622, 32.779762, 38.544052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.255608, 32.917114, 38.751560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.023563, 33.223022, 38.863705>,  <32.884338, 33.406567, 38.930992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.023563, 33.223022, 38.863705>,  <33.255608, 32.917114, 38.751560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.023563, 33.223022, 38.863705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261420, -0.151182, 0.953312,
		0.771447, 0.626319, -0.112223,
		-0.580111, 0.764767, 0.280361,
		32.849529, 33.452454, 38.947815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.672020, 33.369129, 39.068157>,  <33.255608, 32.917114, 38.751560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.672020, 33.369129, 39.068157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.304550, 33.427296, 39.215073>,  <33.084068, 33.462196, 39.303223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.304550, 33.427296, 39.215073>,  <33.672020, 33.369129, 39.068157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.304550, 33.427296, 39.215073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364262, -0.047883, 0.930065,
		0.152833, 0.988211, -0.008981,
		-0.918670, 0.145416, 0.367286,
		33.028950, 33.470921, 39.325260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.727493, 33.918091, 39.587494>,  <33.672020, 33.369129, 39.068157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.727493, 33.918091, 39.587494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.381195, 33.731750, 39.660664>,  <33.173416, 33.619946, 39.704567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.381195, 33.731750, 39.660664>,  <33.727493, 33.918091, 39.587494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.381195, 33.731750, 39.660664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252503, -0.090999, 0.963307,
		-0.432111, 0.880172, 0.196411,
		-0.865750, -0.465850, 0.182925,
		33.121471, 33.591995, 39.715542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.492069, 34.241001, 40.229870>,  <33.727493, 33.918091, 39.587494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.492069, 34.241001, 40.229870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.299946, 33.892399, 40.190296>,  <33.184673, 33.683239, 40.166553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.299946, 33.892399, 40.190296>,  <33.492069, 34.241001, 40.229870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.299946, 33.892399, 40.190296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225129, -0.231513, 0.946424,
		-0.847717, 0.432298, 0.307398,
		-0.480304, -0.871504, -0.098935,
		33.155853, 33.630947, 40.160614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.192200, 34.169296, 40.770134>,  <33.492069, 34.241001, 40.229870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.192200, 34.169296, 40.770134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.193130, 33.785828, 40.656330>,  <33.193687, 33.555748, 40.588047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.193130, 33.785828, 40.656330>,  <33.192200, 34.169296, 40.770134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.193130, 33.785828, 40.656330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210005, -0.277695, 0.937434,
		-0.977697, -0.061926, 0.200681,
		0.002324, -0.958671, -0.284507,
		33.193829, 33.498226, 40.570976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.711575, 33.901985, 41.133308>,  <33.192200, 34.169296, 40.770134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.711575, 33.901985, 41.133308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.935684, 33.584030, 41.040146>,  <33.070148, 33.393257, 40.984249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.935684, 33.584030, 41.040146>,  <32.711575, 33.901985, 41.133308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.935684, 33.584030, 41.040146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121815, -0.199050, 0.972389,
		-0.819303, -0.573173, -0.014692,
		0.560271, -0.794892, -0.232903,
		33.103767, 33.345562, 40.970276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.411385, 33.440735, 41.478367>,  <32.711575, 33.901985, 41.133308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.411385, 33.440735, 41.478367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.770382, 33.282211, 41.400963>,  <32.985779, 33.187099, 41.354519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.770382, 33.282211, 41.400963>,  <32.411385, 33.440735, 41.478367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.770382, 33.282211, 41.400963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122920, -0.196613, 0.972746,
		-0.423552, -0.896819, -0.127745,
		0.897493, -0.396306, -0.193513,
		33.039631, 33.163319, 41.342911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.432640, 32.916786, 41.992401>,  <32.411385, 33.440735, 41.478367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.432640, 32.916786, 41.992401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.810543, 32.987682, 41.882107>,  <33.037285, 33.030220, 41.815929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.810543, 32.987682, 41.882107>,  <32.432640, 32.916786, 41.992401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.810543, 32.987682, 41.882107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314807, -0.256278, 0.913903,
		0.091318, -0.950214, -0.297917,
		0.944752, 0.177242, -0.275731,
		33.093967, 33.040855, 41.799389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.772015, 32.294727, 42.114330>,  <32.432640, 32.916786, 41.992401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.772015, 32.294727, 42.114330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.060207, 32.569027, 42.073055>,  <33.233124, 32.733608, 42.048290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.060207, 32.569027, 42.073055>,  <32.772015, 32.294727, 42.114330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.060207, 32.569027, 42.073055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417830, -0.310513, 0.853815,
		0.553465, -0.658273, -0.510248,
		0.720482, 0.685753, -0.103188,
		33.276352, 32.774754, 42.042099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.339825, 31.913868, 42.190083>,  <32.772015, 32.294727, 42.114330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.339825, 31.913868, 42.190083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.465538, 32.280685, 42.288273>,  <33.540966, 32.500774, 42.347187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.465538, 32.280685, 42.288273>,  <33.339825, 31.913868, 42.190083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.465538, 32.280685, 42.288273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545533, -0.386082, 0.743865,
		0.776928, -0.099874, -0.621617,
		0.314288, 0.917042, 0.245473,
		33.559826, 32.555798, 42.361916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.091801, 31.943174, 42.362568>,  <33.339825, 31.913868, 42.190083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.091801, 31.943174, 42.362568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.934322, 32.274864, 42.521255>,  <33.839836, 32.473877, 42.616470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.934322, 32.274864, 42.521255>,  <34.091801, 31.943174, 42.362568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.934322, 32.274864, 42.521255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557879, -0.127477, 0.820074,
		0.730599, 0.544182, -0.412421,
		-0.393695, 0.829226, 0.396722,
		33.816216, 32.523632, 42.640270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.698765, 32.275818, 42.723240>,  <34.091801, 31.943174, 42.362568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.698765, 32.275818, 42.723240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.362259, 32.411804, 42.891380>,  <34.160355, 32.493397, 42.992264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.362259, 32.411804, 42.891380>,  <34.698765, 32.275818, 42.723240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.362259, 32.411804, 42.891380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480561, 0.114070, 0.869511,
		0.247654, 0.933494, -0.259337,
		-0.841266, 0.339965, 0.420351,
		34.109879, 32.513794, 43.017487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.919876, 32.733994, 43.168526>,  <34.698765, 32.275818, 42.723240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.919876, 32.733994, 43.168526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.547752, 32.678246, 43.304230>,  <34.324478, 32.644794, 43.385651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.547752, 32.678246, 43.304230>,  <34.919876, 32.733994, 43.168526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.547752, 32.678246, 43.304230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323883, 0.121889, 0.938213,
		-0.172113, 0.982710, -0.068255,
		-0.930310, -0.139372, 0.339261,
		34.268658, 32.636433, 43.406010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.030148, 33.077610, 43.770927>,  <34.919876, 32.733994, 43.168526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.030148, 33.077610, 43.770927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.679653, 32.885418, 43.785583>,  <34.469357, 32.770103, 43.794376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.679653, 32.885418, 43.785583>,  <35.030148, 33.077610, 43.770927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.679653, 32.885418, 43.785583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096162, -0.099844, 0.990346,
		-0.472186, 0.871302, 0.133691,
		-0.876238, -0.480483, 0.036641,
		34.416782, 32.741272, 43.796577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.491142, 33.535179, 44.153271>,  <35.030148, 33.077610, 43.770927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.491142, 33.535179, 44.153271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.392738, 33.147877, 44.170952>,  <34.333694, 32.915493, 44.181561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.392738, 33.147877, 44.170952>,  <34.491142, 33.535179, 44.153271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.392738, 33.147877, 44.170952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051985, 0.032362, 0.998123,
		-0.967872, 0.247847, 0.042373,
		-0.246011, -0.968258, 0.044207,
		34.318935, 32.857399, 44.184216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.999195, 33.497906, 44.670780>,  <34.491142, 33.535179, 44.153271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.999195, 33.497906, 44.670780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.146393, 33.127193, 44.640701>,  <34.234711, 32.904766, 44.622654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.146393, 33.127193, 44.640701>,  <33.999195, 33.497906, 44.670780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.146393, 33.127193, 44.640701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064126, -0.055382, 0.996404,
		-0.927616, -0.371488, 0.039051,
		0.367990, -0.926784, -0.075195,
		34.256790, 32.849159, 44.618141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.625969, 33.027859, 45.153107>,  <33.999195, 33.497906, 44.670780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.625969, 33.027859, 45.153107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.989071, 32.874237, 45.085609>,  <34.206932, 32.782063, 45.045109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.989071, 32.874237, 45.085609>,  <33.625969, 33.027859, 45.153107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.989071, 32.874237, 45.085609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118933, -0.150135, 0.981486,
		-0.402279, -0.911022, -0.090609,
		0.907759, -0.384055, -0.168747,
		34.261398, 32.759022, 45.034985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.642540, 32.442467, 45.563061>,  <33.625969, 33.027859, 45.153107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.642540, 32.442467, 45.563061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.022194, 32.537071, 45.479919>,  <34.249989, 32.593834, 45.430035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.022194, 32.537071, 45.479919>,  <33.642540, 32.442467, 45.563061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.022194, 32.537071, 45.479919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215756, -0.007752, 0.976416,
		0.229318, -0.971599, -0.058386,
		0.949138, 0.236507, -0.207850,
		34.306934, 32.608025, 45.417564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.004314, 31.998840, 46.091831>,  <33.642540, 32.442467, 45.563061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.004314, 31.998840, 46.091831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.296936, 32.231136, 45.948967>,  <34.472511, 32.370514, 45.863251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.296936, 32.231136, 45.948967>,  <34.004314, 31.998840, 46.091831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.296936, 32.231136, 45.948967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492785, -0.088380, 0.865651,
		0.471154, -0.809276, -0.350836,
		0.731558, 0.580741, -0.357159,
		34.516403, 32.405357, 45.841820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.638321, 31.752995, 46.356396>,  <34.004314, 31.998840, 46.091831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.638321, 31.752995, 46.356396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.720375, 32.133762, 46.265385>,  <34.769608, 32.362225, 46.210777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.720375, 32.133762, 46.265385>,  <34.638321, 31.752995, 46.356396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.720375, 32.133762, 46.265385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348494, 0.146195, 0.925839,
		0.914588, -0.269213, -0.301749,
		0.205134, 0.951920, -0.227527,
		34.781914, 32.419338, 46.197128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.257019, 31.897865, 46.664112>,  <34.638321, 31.752995, 46.356396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.257019, 31.897865, 46.664112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.073090, 32.248497, 46.607304>,  <34.962730, 32.458878, 46.573219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.073090, 32.248497, 46.607304>,  <35.257019, 31.897865, 46.664112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.073090, 32.248497, 46.607304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101981, 0.210997, 0.972153,
		0.882134, 0.432537, -0.186416,
		-0.459825, 0.876580, -0.142017,
		34.935143, 32.511471, 46.564697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.677261, 32.264606, 47.156849>,  <35.257019, 31.897865, 46.664112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.677261, 32.264606, 47.156849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.344860, 32.477455, 47.091995>,  <35.145420, 32.605164, 47.053085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.344860, 32.477455, 47.091995>,  <35.677261, 32.264606, 47.156849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.344860, 32.477455, 47.091995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013966, 0.311325, 0.950201,
		0.556093, 0.787355, -0.266143,
		-0.831003, 0.532117, -0.162129,
		35.095558, 32.637089, 47.043358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.830425, 32.945488, 47.267487>,  <35.677261, 32.264606, 47.156849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.830425, 32.945488, 47.267487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.436764, 32.938107, 47.338017>,  <35.200565, 32.933678, 47.380337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.436764, 32.938107, 47.338017>,  <35.830425, 32.945488, 47.267487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.436764, 32.938107, 47.338017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166362, 0.247658, 0.954458,
		-0.061284, 0.968672, -0.240664,
		-0.984158, -0.018456, 0.176328,
		35.141518, 32.932571, 47.390915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.857735, 33.565445, 46.923649>,  <35.830425, 32.945488, 47.267487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.857735, 33.565445, 46.923649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.042068, 33.920380, 46.930222>,  <36.152668, 34.133339, 46.934166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.042068, 33.920380, 46.930222>,  <35.857735, 33.565445, 46.923649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.042068, 33.920380, 46.930222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154931, -0.062204, -0.985965,
		-0.873860, 0.456910, -0.166142,
		0.460831, 0.887336, 0.016432,
		36.180317, 34.186581, 46.935150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.452869, 34.002647, 46.475159>,  <35.857735, 33.565445, 46.923649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.452869, 34.002647, 46.475159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.803619, 34.194462, 46.488617>,  <36.014069, 34.309551, 46.496693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.803619, 34.194462, 46.488617>,  <35.452869, 34.002647, 46.475159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.803619, 34.194462, 46.488617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069837, -0.057828, -0.995881,
		-0.475615, 0.875615, -0.084198,
		0.876877, 0.479536, 0.033646,
		36.066681, 34.338322, 46.498711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.426826, 34.566757, 46.048588>,  <35.452869, 34.002647, 46.475159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.426826, 34.566757, 46.048588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.823479, 34.522900, 46.075840>,  <36.061470, 34.496586, 46.092190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.823479, 34.522900, 46.075840>,  <35.426826, 34.566757, 46.048588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.823479, 34.522900, 46.075840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085745, 0.164953, -0.982567,
		0.096493, 0.980188, 0.172974,
		0.991633, -0.109643, 0.068130,
		36.120968, 34.490005, 46.096279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.720032, 35.156326, 45.685070>,  <35.426826, 34.566757, 46.048588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.720032, 35.156326, 45.685070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.020828, 34.892975, 45.697929>,  <36.201305, 34.734962, 45.705647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.020828, 34.892975, 45.697929>,  <35.720032, 35.156326, 45.685070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.020828, 34.892975, 45.697929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207924, 0.190642, -0.959387,
		0.625516, 0.728139, 0.280255,
		0.751996, -0.658383, 0.032148,
		36.246426, 34.695461, 45.707573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.221195, 35.497936, 45.357815>,  <35.720032, 35.156326, 45.685070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.221195, 35.497936, 45.357815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.209820, 35.098476, 45.340408>,  <36.202995, 34.858803, 45.329964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.209820, 35.098476, 45.340408>,  <36.221195, 35.497936, 45.357815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.209820, 35.098476, 45.340408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146726, 0.038890, -0.988412,
		0.988768, -0.034498, 0.145422,
		-0.028443, -0.998648, -0.043515,
		36.201286, 34.798882, 45.327354>
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
