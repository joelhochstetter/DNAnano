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
	<24.250357, 34.813126, 35.551960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.379387, 34.873272, 35.178150>,  <24.456804, 34.909359, 34.953865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.379387, 34.873272, 35.178150>,  <24.250357, 34.813126, 35.551960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.379387, 34.873272, 35.178150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938280, 0.079384, 0.336643,
		0.124808, -0.985437, -0.115481,
		0.322573, 0.150370, -0.934524,
		24.476158, 34.918385, 34.897793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.693619, 34.228176, 35.487324>,  <24.250357, 34.813126, 35.551960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.693619, 34.228176, 35.487324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.767677, 34.560917, 35.278038>,  <24.812113, 34.760559, 35.152466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.767677, 34.560917, 35.278038>,  <24.693619, 34.228176, 35.487324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.767677, 34.560917, 35.278038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934716, 0.015285, 0.355067,
		0.303360, -0.554793, -0.774712,
		0.185147, 0.831848, -0.523210,
		24.823221, 34.810471, 35.121075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.286064, 34.213806, 35.144123>,  <24.693619, 34.228176, 35.487324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.286064, 34.213806, 35.144123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.238701, 34.602295, 35.226791>,  <25.210283, 34.835388, 35.276394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.238701, 34.602295, 35.226791>,  <25.286064, 34.213806, 35.144123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.238701, 34.602295, 35.226791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913168, 0.024756, 0.406830,
		0.390004, 0.236900, -0.889817,
		-0.118407, 0.971218, 0.206675,
		25.203178, 34.893661, 35.288795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.812502, 34.700710, 34.791740>,  <25.286064, 34.213806, 35.144123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.812502, 34.700710, 34.791740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.664993, 34.834049, 35.138817>,  <25.576488, 34.914055, 35.347061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.664993, 34.834049, 35.138817>,  <25.812502, 34.700710, 34.791740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.664993, 34.834049, 35.138817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898494, -0.111331, 0.424634,
		0.238152, 0.936207, -0.258456,
		-0.368771, 0.333349, 0.867690,
		25.554361, 34.934055, 35.399124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.131536, 35.316128, 35.130970>,  <25.812502, 34.700710, 34.791740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.131536, 35.316128, 35.130970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.021790, 35.041836, 35.400639>,  <25.955942, 34.877262, 35.562439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.021790, 35.041836, 35.400639>,  <26.131536, 35.316128, 35.130970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.021790, 35.041836, 35.400639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889447, 0.085523, 0.448965,
		-0.365524, 0.722818, 0.586452,
		-0.274365, -0.685725, 0.674169,
		25.939480, 34.836117, 35.602890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.072466, 35.586842, 35.812160>,  <26.131536, 35.316128, 35.130970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.072466, 35.586842, 35.812160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.175596, 35.201748, 35.844841>,  <26.237474, 34.970692, 35.864449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.175596, 35.201748, 35.844841>,  <26.072466, 35.586842, 35.812160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.175596, 35.201748, 35.844841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835198, 0.264583, 0.482121,
		-0.485770, -0.056068, 0.872287,
		0.257824, -0.962732, 0.081698,
		26.252943, 34.912930, 35.869350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.194880, 35.339535, 36.519417>,  <26.072466, 35.586842, 35.812160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.194880, 35.339535, 36.519417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.419064, 35.111633, 36.278996>,  <26.553574, 34.974892, 36.134743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.419064, 35.111633, 36.278996>,  <26.194880, 35.339535, 36.519417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.419064, 35.111633, 36.278996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793324, 0.161004, 0.587124,
		-0.237744, -0.805890, 0.542235,
		0.560460, -0.569753, -0.601054,
		26.587202, 34.940708, 36.098679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.816616, 34.827766, 36.577053>,  <26.194880, 35.339535, 36.519417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.816616, 34.827766, 36.577053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.173590, 34.695187, 36.699497>,  <27.387774, 34.615639, 36.772964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.173590, 34.695187, 36.699497>,  <26.816616, 34.827766, 36.577053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.173590, 34.695187, 36.699497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387506, 0.910590, -0.143755,
		-0.231093, 0.246912, 0.941080,
		0.892432, -0.331453, 0.306110,
		27.441319, 34.595749, 36.791328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.207651, 35.435436, 36.792225>,  <26.816616, 34.827766, 36.577053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.207651, 35.435436, 36.792225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.518942, 35.186264, 36.760422>,  <27.705715, 35.036758, 36.741341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.518942, 35.186264, 36.760422>,  <27.207651, 35.435436, 36.792225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.518942, 35.186264, 36.760422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578787, 0.760609, -0.294075,
		0.243662, 0.182839, 0.952470,
		0.778225, -0.622932, -0.079507,
		27.752409, 34.999386, 36.736568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.770933, 35.690948, 37.216904>,  <27.207651, 35.435436, 36.792225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.770933, 35.690948, 37.216904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.900854, 35.461922, 36.915794>,  <27.978807, 35.324505, 36.735130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.900854, 35.461922, 36.915794>,  <27.770933, 35.690948, 37.216904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.900854, 35.461922, 36.915794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653395, 0.711296, -0.259100,
		0.683798, -0.407702, 0.605145,
		0.324802, -0.572571, -0.752773,
		27.998295, 35.290150, 36.689964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.444868, 35.778900, 37.177135>,  <27.770933, 35.690948, 37.216904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.444868, 35.778900, 37.177135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.400217, 35.620716, 36.812466>,  <28.373426, 35.525806, 36.593666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.400217, 35.620716, 36.812466>,  <28.444868, 35.778900, 37.177135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.400217, 35.620716, 36.812466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654899, 0.660732, -0.366799,
		0.747427, -0.637998, 0.185233,
		-0.111628, -0.395464, -0.911673,
		28.366728, 35.502075, 36.538963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.101740, 35.595921, 36.863419>,  <28.444868, 35.778900, 37.177135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.101740, 35.595921, 36.863419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.813026, 35.693150, 36.604206>,  <28.639797, 35.751488, 36.448681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.813026, 35.693150, 36.604206>,  <29.101740, 35.595921, 36.863419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.813026, 35.693150, 36.604206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668936, 0.485298, -0.563037,
		0.177626, -0.839881, -0.512883,
		-0.721785, 0.243075, -0.648028,
		28.596491, 35.766071, 36.409798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.661224, 36.035698, 36.527756>,  <29.101740, 35.595921, 36.863419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.661224, 36.035698, 36.527756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.803308, 36.150917, 36.172035>,  <29.888559, 36.220047, 35.958603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.803308, 36.150917, 36.172035>,  <29.661224, 36.035698, 36.527756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.803308, 36.150917, 36.172035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472008, -0.765887, -0.436606,
		-0.806867, 0.574844, -0.136089,
		0.355209, 0.288048, -0.889300,
		29.909872, 36.237331, 35.905247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.012794, 36.340065, 36.390499>,  <29.661224, 36.035698, 36.527756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.012794, 36.340065, 36.390499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.168947, 36.146935, 36.076942>,  <29.262638, 36.031055, 35.888809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.168947, 36.146935, 36.076942>,  <29.012794, 36.340065, 36.390499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.168947, 36.146935, 36.076942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876034, -0.456665, -0.154991,
		-0.283140, 0.747218, -0.601246,
		0.390380, -0.482827, -0.783888,
		29.286060, 36.002087, 35.841774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.462818, 36.254978, 35.917122>,  <29.012794, 36.340065, 36.390499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.462818, 36.254978, 35.917122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.723156, 35.960011, 35.844879>,  <28.879358, 35.783031, 35.801533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.723156, 35.960011, 35.844879>,  <28.462818, 36.254978, 35.917122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.723156, 35.960011, 35.844879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737369, -0.670626, 0.080920,
		-0.180789, 0.080506, -0.980222,
		0.650847, -0.737415, -0.180604,
		28.918409, 35.738785, 35.790699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.220247, 35.681889, 35.355865>,  <28.462818, 36.254978, 35.917122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.220247, 35.681889, 35.355865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.468931, 35.597336, 35.657539>,  <28.618141, 35.546604, 35.838543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.468931, 35.597336, 35.657539>,  <28.220247, 35.681889, 35.355865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.468931, 35.597336, 35.657539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688144, -0.607290, 0.397059,
		0.374080, -0.765844, -0.523017,
		0.621709, -0.211379, 0.754187,
		28.655443, 35.533920, 35.883797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.355545, 34.904087, 35.397617>,  <28.220247, 35.681889, 35.355865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.355545, 34.904087, 35.397617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.381554, 35.104172, 35.743000>,  <28.397160, 35.224224, 35.950230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.381554, 35.104172, 35.743000>,  <28.355545, 34.904087, 35.397617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.381554, 35.104172, 35.743000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618974, -0.658493, 0.428088,
		0.782716, -0.562291, 0.266804,
		0.065021, 0.500216, 0.863456,
		28.401060, 35.254238, 36.002037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.517282, 34.418312, 35.862957>,  <28.355545, 34.904087, 35.397617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.517282, 34.418312, 35.862957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.361181, 34.701145, 36.098835>,  <28.267521, 34.870846, 36.240360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.361181, 34.701145, 36.098835>,  <28.517282, 34.418312, 35.862957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.361181, 34.701145, 36.098835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382962, -0.707108, 0.594423,
		0.837282, 0.006145, 0.546736,
		-0.390254, 0.707079, 0.589696,
		28.244104, 34.913269, 36.275745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.736073, 34.225677, 36.524094>,  <28.517282, 34.418312, 35.862957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.736073, 34.225677, 36.524094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.412991, 34.453571, 36.584778>,  <28.219141, 34.590309, 36.621189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.412991, 34.453571, 36.584778>,  <28.736073, 34.225677, 36.524094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.412991, 34.453571, 36.584778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461877, -0.771371, 0.437786,
		0.366450, 0.283528, 0.886186,
		-0.807703, 0.569736, 0.151714,
		28.170679, 34.624493, 36.630291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.563299, 34.322285, 37.228638>,  <28.736073, 34.225677, 36.524094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.563299, 34.322285, 37.228638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.219263, 34.359467, 37.027996>,  <28.012842, 34.381775, 36.907612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.219263, 34.359467, 37.027996>,  <28.563299, 34.322285, 37.228638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.219263, 34.359467, 37.027996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421292, -0.683908, 0.595637,
		-0.287683, 0.723623, 0.627383,
		-0.860088, 0.092956, -0.501605,
		27.961237, 34.387352, 36.877514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.961519, 34.421307, 37.723770>,  <28.563299, 34.322285, 37.228638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.961519, 34.421307, 37.723770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.854652, 34.273743, 37.367676>,  <27.790531, 34.185204, 37.154018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.854652, 34.273743, 37.367676>,  <27.961519, 34.421307, 37.723770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.854652, 34.273743, 37.367676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541438, -0.706746, 0.455363,
		-0.797161, 0.603668, -0.010922,
		-0.267169, -0.368911, -0.890239,
		27.774502, 34.163071, 37.100605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.289366, 34.235435, 37.667122>,  <27.961519, 34.421307, 37.723770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.289366, 34.235435, 37.667122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.458818, 33.992149, 37.398613>,  <27.560490, 33.846176, 37.237507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.458818, 33.992149, 37.398613>,  <27.289366, 34.235435, 37.667122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.458818, 33.992149, 37.398613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468116, -0.781427, 0.412600,
		-0.775499, 0.139438, -0.615759,
		0.423638, -0.608217, -0.671269,
		27.585909, 33.809685, 37.197231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.779135, 33.890545, 37.249760>,  <27.289366, 34.235435, 37.667122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.779135, 33.890545, 37.249760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.113628, 33.674603, 37.288277>,  <27.314323, 33.545036, 37.311386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.113628, 33.674603, 37.288277>,  <26.779135, 33.890545, 37.249760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.113628, 33.674603, 37.288277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536147, -0.768001, 0.350315,
		-0.115165, -0.344573, -0.931669,
		0.836232, -0.539855, 0.096294,
		27.364498, 33.512646, 37.317165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.609949, 33.272896, 36.952995>,  <26.779135, 33.890545, 37.249760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.609949, 33.272896, 36.952995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.918064, 33.229580, 37.204369>,  <27.102934, 33.203590, 37.355194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.918064, 33.229580, 37.204369>,  <26.609949, 33.272896, 36.952995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.918064, 33.229580, 37.204369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450542, -0.789833, 0.416143,
		0.451297, -0.603687, -0.657186,
		0.770288, -0.108286, 0.628435,
		27.149151, 33.197094, 37.392899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.927542, 32.509651, 36.945816>,  <26.609949, 33.272896, 36.952995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.927542, 32.509651, 36.945816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.969509, 32.690487, 37.300129>,  <26.994690, 32.798988, 37.512718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.969509, 32.690487, 37.300129>,  <26.927542, 32.509651, 36.945816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.969509, 32.690487, 37.300129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151569, -0.873022, 0.463530,
		0.982862, -0.182890, -0.023075,
		0.104920, 0.452088, 0.885781,
		27.000986, 32.826115, 37.565865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.504429, 32.190277, 37.233475>,  <26.927542, 32.509651, 36.945816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.504429, 32.190277, 37.233475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.251472, 32.335976, 37.506943>,  <27.099699, 32.423397, 37.671024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.251472, 32.335976, 37.506943>,  <27.504429, 32.190277, 37.233475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.251472, 32.335976, 37.506943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029350, -0.893186, 0.448728,
		0.774092, 0.263706, 0.575535,
		-0.632392, 0.364249, 0.683669,
		27.061754, 32.445251, 37.712044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.175066, 31.702341, 37.478355>,  <27.504429, 32.190277, 37.233475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.175066, 31.702341, 37.478355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.253635, 31.315601, 37.543613>,  <28.300777, 31.083557, 37.582767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.253635, 31.315601, 37.543613>,  <28.175066, 31.702341, 37.478355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.253635, 31.315601, 37.543613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434137, 0.063433, 0.898611,
		-0.879171, -0.247337, -0.407286,
		0.196424, -0.966851, 0.163146,
		28.312563, 31.025545, 37.592556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.585945, 31.416195, 37.731899>,  <28.175066, 31.702341, 37.478355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.585945, 31.416195, 37.731899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.878471, 31.177855, 37.864651>,  <28.053988, 31.034851, 37.944302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.878471, 31.177855, 37.864651>,  <27.585945, 31.416195, 37.731899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.878471, 31.177855, 37.864651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421704, -0.012591, 0.906646,
		-0.536045, -0.802998, -0.260480,
		0.731315, -0.595849, 0.331878,
		28.097866, 30.999100, 37.964214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.685772, 32.097839, 38.009159>,  <27.585945, 31.416195, 37.731899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.685772, 32.097839, 38.009159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.455519, 32.392754, 38.150616>,  <27.317368, 32.569702, 38.235489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.455519, 32.392754, 38.150616>,  <27.685772, 32.097839, 38.009159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.455519, 32.392754, 38.150616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375768, -0.622615, 0.686403,
		0.726254, 0.262230, 0.635445,
		-0.575633, 0.737283, 0.353639,
		27.282829, 32.613937, 38.256706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.704554, 32.146236, 38.737938>,  <27.685772, 32.097839, 38.009159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.704554, 32.146236, 38.737938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.338629, 32.263752, 38.627083>,  <27.119074, 32.334263, 38.560570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.338629, 32.263752, 38.627083>,  <27.704554, 32.146236, 38.737938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.338629, 32.263752, 38.627083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401614, -0.589132, 0.701163,
		0.042726, 0.752734, 0.656937,
		-0.914812, 0.293793, -0.277137,
		27.064186, 32.351891, 38.543941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.376707, 32.233597, 39.331863>,  <27.704554, 32.146236, 38.737938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.376707, 32.233597, 39.331863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.072393, 32.197342, 39.074806>,  <26.889805, 32.175591, 38.920570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.072393, 32.197342, 39.074806>,  <27.376707, 32.233597, 39.331863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.072393, 32.197342, 39.074806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503078, -0.543229, 0.672172,
		-0.410029, 0.834678, 0.367681,
		-0.760782, -0.090638, -0.642647,
		26.844158, 32.170151, 38.882011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.854979, 32.419762, 39.692612>,  <27.376707, 32.233597, 39.331863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.854979, 32.419762, 39.692612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.731220, 32.173397, 39.402805>,  <26.656965, 32.025578, 39.228920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.731220, 32.173397, 39.402805>,  <26.854979, 32.419762, 39.692612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.731220, 32.173397, 39.402805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330878, -0.644569, 0.689239,
		-0.891512, 0.452977, -0.004362,
		-0.309397, -0.615908, -0.724521,
		26.638401, 31.988625, 39.185448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.201458, 31.977976, 39.799522>,  <26.854979, 32.419762, 39.692612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.201458, 31.977976, 39.799522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.388861, 31.745655, 39.533237>,  <26.501303, 31.606262, 39.373466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.388861, 31.745655, 39.533237>,  <26.201458, 31.977976, 39.799522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.388861, 31.745655, 39.533237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021410, -0.760768, 0.648671,
		-0.883200, -0.289654, -0.368861,
		0.468508, -0.580803, -0.665709,
		26.529413, 31.571415, 39.333527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.779808, 31.487558, 39.544689>,  <26.201458, 31.977976, 39.799522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.779808, 31.487558, 39.544689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.167301, 31.406059, 39.601326>,  <26.399797, 31.357159, 39.635307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.167301, 31.406059, 39.601326>,  <25.779808, 31.487558, 39.544689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.167301, 31.406059, 39.601326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232313, -0.544454, 0.805978,
		-0.087129, -0.813668, -0.574763,
		0.968731, -0.203749, 0.141588,
		26.457920, 31.344934, 39.643803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.074570, 30.788189, 39.215115>,  <25.779808, 31.487558, 39.544689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.074570, 30.788189, 39.215115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.218706, 30.932238, 39.559315>,  <26.305187, 31.018667, 39.765835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.218706, 30.932238, 39.559315>,  <26.074570, 30.788189, 39.215115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.218706, 30.932238, 39.559315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503517, -0.701456, 0.504411,
		0.785255, -0.615038, -0.071435,
		0.360340, 0.360122, 0.860504,
		26.326809, 31.040274, 39.817467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.639929, 31.027500, 38.743492>,  <26.074570, 30.788189, 39.215115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.639929, 31.027500, 38.743492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.386744, 31.276905, 38.927052>,  <26.234833, 31.426548, 39.037189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.386744, 31.276905, 38.927052>,  <26.639929, 31.027500, 38.743492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.386744, 31.276905, 38.927052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229406, 0.717191, -0.658035,
		-0.739412, -0.311237, -0.596993,
		-0.632963, 0.623513, 0.458900,
		26.196854, 31.463959, 39.064720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.098080, 31.299414, 38.225735>,  <26.639929, 31.027500, 38.743492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.098080, 31.299414, 38.225735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.230528, 31.522930, 38.529869>,  <26.309996, 31.657040, 38.712349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.230528, 31.522930, 38.529869>,  <26.098080, 31.299414, 38.225735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.230528, 31.522930, 38.529869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306919, 0.698193, -0.646783,
		-0.892279, 0.447523, 0.059680,
		0.331119, 0.558793, 0.760336,
		26.329863, 31.690569, 38.757969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.916290, 32.014019, 37.954311>,  <26.098080, 31.299414, 38.225735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.916290, 32.014019, 37.954311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.201212, 32.053089, 38.232327>,  <26.372164, 32.076530, 38.399136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.201212, 32.053089, 38.232327>,  <25.916290, 32.014019, 37.954311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.201212, 32.053089, 38.232327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452684, 0.692841, -0.561292,
		-0.536379, 0.714444, 0.449296,
		0.712303, 0.097677, 0.695043,
		26.414904, 32.082394, 38.440838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.932180, 32.676601, 38.124699>,  <25.916290, 32.014019, 37.954311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.932180, 32.676601, 38.124699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.297550, 32.557037, 38.235199>,  <26.516771, 32.485298, 38.301498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.297550, 32.557037, 38.235199>,  <25.932180, 32.676601, 38.124699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.297550, 32.557037, 38.235199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405848, 0.720197, -0.562675,
		-0.030764, 0.626075, 0.779156,
		0.913422, -0.298909, 0.276248,
		26.571577, 32.467365, 38.318073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.297668, 33.278526, 38.493813>,  <25.932180, 32.676601, 38.124699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.297668, 33.278526, 38.493813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.547928, 33.021809, 38.316425>,  <26.698084, 32.867779, 38.209991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.547928, 33.021809, 38.316425>,  <26.297668, 33.278526, 38.493813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.547928, 33.021809, 38.316425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426184, 0.757341, -0.494775,
		0.653400, 0.120556, 0.747352,
		0.625648, -0.641795, -0.443467,
		26.735622, 32.829269, 38.183384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.044695, 33.403992, 38.696457>,  <26.297668, 33.278526, 38.493813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.044695, 33.403992, 38.696457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.013393, 33.238884, 38.333469>,  <26.994614, 33.139820, 38.115677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.013393, 33.238884, 38.333469>,  <27.044695, 33.403992, 38.696457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.013393, 33.238884, 38.333469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376914, 0.830446, -0.410238,
		0.922937, -0.374140, 0.090595,
		-0.078252, -0.412770, -0.907468,
		26.989918, 33.115051, 38.061230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.690929, 33.277691, 38.318039>,  <27.044695, 33.403992, 38.696457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.690929, 33.277691, 38.318039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.385021, 33.327362, 38.065147>,  <27.201477, 33.357166, 37.913414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.385021, 33.327362, 38.065147>,  <27.690929, 33.277691, 38.318039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.385021, 33.327362, 38.065147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396678, 0.863979, -0.310139,
		0.507716, -0.487975, -0.710004,
		-0.764769, 0.124180, -0.632225,
		27.155590, 33.364616, 37.875481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.217894, 33.277569, 38.868443>,  <27.690929, 33.277691, 38.318039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.217894, 33.277569, 38.868443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.020435, 33.021484, 39.103878>,  <27.901960, 32.867832, 39.245140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.020435, 33.021484, 39.103878>,  <28.217894, 33.277569, 38.868443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.020435, 33.021484, 39.103878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857903, -0.247562, 0.450239,
		-0.142535, 0.727214, 0.671449,
		-0.493645, -0.640213, 0.588593,
		27.872341, 32.829422, 39.280457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.356569, 33.466175, 39.655560>,  <28.217894, 33.277569, 38.868443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.356569, 33.466175, 39.655560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.271433, 33.081944, 39.584011>,  <28.220350, 32.851406, 39.541084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.271433, 33.081944, 39.584011>,  <28.356569, 33.466175, 39.655560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.271433, 33.081944, 39.584011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788649, -0.276962, 0.548930,
		-0.576829, -0.024229, 0.816506,
		-0.212841, -0.960575, -0.178868,
		28.207581, 32.793770, 39.530350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.165848, 32.934620, 40.254040>,  <28.356569, 33.466175, 39.655560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.165848, 32.934620, 40.254040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.369150, 32.882824, 39.913475>,  <28.491133, 32.851746, 39.709137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.369150, 32.882824, 39.913475>,  <28.165848, 32.934620, 40.254040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.369150, 32.882824, 39.913475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860369, 0.119907, 0.495366,
		0.037945, -0.984304, 0.172355,
		0.508257, -0.129492, -0.851414,
		28.521627, 32.843975, 39.658051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.543583, 32.303722, 40.236004>,  <28.165848, 32.934620, 40.254040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.543583, 32.303722, 40.236004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.731091, 32.575569, 40.010303>,  <28.843596, 32.738678, 39.874882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.731091, 32.575569, 40.010303>,  <28.543583, 32.303722, 40.236004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.731091, 32.575569, 40.010303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811714, -0.079479, 0.578622,
		0.348393, -0.729252, -0.588909,
		0.468767, 0.679613, -0.564254,
		28.871721, 32.779453, 39.841026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.207512, 32.060822, 40.115238>,  <28.543583, 32.303722, 40.236004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.207512, 32.060822, 40.115238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.212450, 32.460766, 40.119705>,  <29.215414, 32.700733, 40.122387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.212450, 32.460766, 40.119705>,  <29.207512, 32.060822, 40.115238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.212450, 32.460766, 40.119705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844699, -0.016405, 0.534991,
		0.535100, 0.002827, -0.844784,
		0.012346, 0.999862, 0.011167,
		29.216154, 32.760723, 40.123055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.921095, 32.220661, 40.147705>,  <29.207512, 32.060822, 40.115238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.921095, 32.220661, 40.147705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.696852, 32.526882, 40.273968>,  <29.562305, 32.710617, 40.349728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.696852, 32.526882, 40.273968>,  <29.921095, 32.220661, 40.147705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.696852, 32.526882, 40.273968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709885, 0.248036, 0.659197,
		0.426356, 0.593635, -0.682508,
		-0.560610, 0.765555, 0.315661,
		29.528669, 32.756550, 40.368668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.356579, 32.776150, 40.304996>,  <29.921095, 32.220661, 40.147705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.356579, 32.776150, 40.304996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.049057, 32.840393, 40.552593>,  <29.864544, 32.878941, 40.701149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.049057, 32.840393, 40.552593>,  <30.356579, 32.776150, 40.304996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.049057, 32.840393, 40.552593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636633, 0.283557, 0.717143,
		-0.060340, 0.945410, -0.320248,
		-0.768803, 0.160608, 0.618989,
		29.818417, 32.888577, 40.738289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.170864, 33.462296, 40.502964>,  <30.356579, 32.776150, 40.304996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.170864, 33.462296, 40.502964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.102795, 33.182823, 40.780926>,  <30.061953, 33.015141, 40.947701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.102795, 33.182823, 40.780926>,  <30.170864, 33.462296, 40.502964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.102795, 33.182823, 40.780926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628667, 0.466059, 0.622549,
		-0.758827, 0.542804, 0.359925,
		-0.170175, -0.698679, 0.694901,
		30.051743, 32.973221, 40.989395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.463797, 33.378479, 41.207863>,  <30.170864, 33.462296, 40.502964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.463797, 33.378479, 41.207863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.777918, 33.551548, 41.030735>,  <30.966391, 33.655388, 40.924458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.777918, 33.551548, 41.030735>,  <30.463797, 33.378479, 41.207863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.777918, 33.551548, 41.030735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214396, 0.861053, 0.461109,
		0.580803, -0.267172, 0.768952,
		0.785304, 0.432674, -0.442822,
		31.013510, 33.681351, 40.897888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.045605, 33.538776, 41.679470>,  <30.463797, 33.378479, 41.207863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.045605, 33.538776, 41.679470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.041079, 33.782295, 41.362175>,  <31.038363, 33.928406, 41.171799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.041079, 33.782295, 41.362175>,  <31.045605, 33.538776, 41.679470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.041079, 33.782295, 41.362175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177806, 0.779426, 0.600733,
		0.984001, 0.147841, 0.099429,
		-0.011316, 0.608801, -0.793242,
		31.037683, 33.964935, 41.124203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.640295, 34.160889, 41.667255>,  <31.045605, 33.538776, 41.679470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.640295, 34.160889, 41.667255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.289436, 34.265621, 41.506229>,  <31.078920, 34.328461, 41.409615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.289436, 34.265621, 41.506229>,  <31.640295, 34.160889, 41.667255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.289436, 34.265621, 41.506229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034282, 0.802007, 0.596329,
		0.478995, 0.536870, -0.694503,
		-0.877148, 0.261830, -0.402563,
		31.026293, 34.344170, 41.385460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.644022, 34.741833, 42.028908>,  <31.640295, 34.160889, 41.667255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.644022, 34.741833, 42.028908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.300371, 34.829781, 41.844059>,  <31.094181, 34.882549, 41.733150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.300371, 34.829781, 41.844059>,  <31.644022, 34.741833, 42.028908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.300371, 34.829781, 41.844059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126677, 0.966268, 0.224230,
		0.495840, 0.134101, -0.857998,
		-0.859125, 0.219871, -0.462126,
		31.042633, 34.895741, 41.705421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.732651, 35.208633, 41.428059>,  <31.644022, 34.741833, 42.028908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.732651, 35.208633, 41.428059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.401217, 35.215961, 41.651882>,  <31.202356, 35.220360, 41.786175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.401217, 35.215961, 41.651882>,  <31.732651, 35.208633, 41.428059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.401217, 35.215961, 41.651882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108968, 0.985629, 0.129084,
		-0.549152, 0.167931, -0.818676,
		-0.828588, 0.018323, 0.559559,
		31.152639, 35.221458, 41.819752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.155594, 35.656124, 41.224892>,  <31.732651, 35.208633, 41.428059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.155594, 35.656124, 41.224892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.142019, 35.600674, 41.620796>,  <31.133875, 35.567402, 41.858341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.142019, 35.600674, 41.620796>,  <31.155594, 35.656124, 41.224892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.142019, 35.600674, 41.620796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089988, 0.985887, 0.141169,
		-0.995364, 0.093857, -0.020981,
		-0.033935, -0.138627, 0.989763,
		31.131840, 35.559086, 41.917725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.811211, 36.254177, 41.403275>,  <31.155594, 35.656124, 41.224892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.811211, 36.254177, 41.403275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.972652, 36.102844, 41.736492>,  <31.069517, 36.012047, 41.936424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.972652, 36.102844, 41.736492>,  <30.811211, 36.254177, 41.403275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.972652, 36.102844, 41.736492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080151, 0.921622, 0.379721,
		-0.911415, -0.086488, 0.402296,
		0.403606, -0.378328, 0.833048,
		31.093735, 35.989346, 41.986408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.519115, 36.632133, 41.897694>,  <30.811211, 36.254177, 41.403275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.519115, 36.632133, 41.897694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.830313, 36.471363, 42.090851>,  <31.017031, 36.374901, 42.206745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.830313, 36.471363, 42.090851>,  <30.519115, 36.632133, 41.897694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.830313, 36.471363, 42.090851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008338, 0.775139, 0.631735,
		-0.628221, -0.487458, 0.606403,
		0.777991, -0.401925, 0.482894,
		31.063709, 36.350784, 42.235718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.376318, 36.414185, 42.670242>,  <30.519115, 36.632133, 41.897694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.376318, 36.414185, 42.670242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.755583, 36.526287, 42.610317>,  <30.983143, 36.593548, 42.574364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.755583, 36.526287, 42.610317>,  <30.376318, 36.414185, 42.670242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.755583, 36.526287, 42.610317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117720, 0.747656, 0.653569,
		0.295173, -0.602054, 0.741892,
		0.948164, 0.280252, -0.149814,
		31.040031, 36.610363, 42.565372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.555437, 35.798759, 42.957237>,  <30.376318, 36.414185, 42.670242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.555437, 35.798759, 42.957237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.601425, 35.780125, 42.560326>,  <30.629019, 35.768944, 42.322178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.601425, 35.780125, 42.560326>,  <30.555437, 35.798759, 42.957237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.601425, 35.780125, 42.560326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.961670, 0.245111, -0.122931,
		0.248945, 0.968375, -0.016618,
		0.114970, -0.046584, -0.992276,
		30.635916, 35.766151, 42.262642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.985310, 35.096092, 42.896076>,  <30.555437, 35.798759, 42.957237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.985310, 35.096092, 42.896076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.932606, 34.709270, 42.983204>,  <30.900984, 34.477177, 43.035480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.932606, 34.709270, 42.983204>,  <30.985310, 35.096092, 42.896076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.932606, 34.709270, 42.983204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597385, -0.097889, -0.795958,
		0.791057, -0.234997, -0.564806,
		-0.131760, -0.967055, 0.217819,
		30.893078, 34.419155, 43.048550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.934858, 34.587986, 43.546078>,  <30.985310, 35.096092, 42.896076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.934858, 34.587986, 43.546078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.146311, 34.592934, 43.885582>,  <31.273182, 34.595901, 44.089287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.146311, 34.592934, 43.885582>,  <30.934858, 34.587986, 43.546078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.146311, 34.592934, 43.885582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848820, 0.001042, -0.528681,
		-0.007426, 0.999923, -0.009951,
		0.528630, 0.012372, 0.848762,
		31.304899, 34.596645, 44.140209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.539263, 35.094719, 43.584339>,  <30.934858, 34.587986, 43.546078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.539263, 35.094719, 43.584339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.618576, 34.772408, 43.807556>,  <31.666164, 34.579021, 43.941486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.618576, 34.772408, 43.807556>,  <31.539263, 35.094719, 43.584339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.618576, 34.772408, 43.807556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822676, -0.172679, -0.541652,
		0.532811, 0.566489, 0.628651,
		0.198286, -0.805774, 0.558042,
		31.678062, 34.530674, 43.974968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.239803, 34.954727, 43.380871>,  <31.539263, 35.094719, 43.584339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.239803, 34.954727, 43.380871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.129166, 34.647354, 43.611698>,  <32.062782, 34.462929, 43.750195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.129166, 34.647354, 43.611698>,  <32.239803, 34.954727, 43.380871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.129166, 34.647354, 43.611698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777675, -0.531755, -0.335347,
		0.564552, 0.356020, 0.744668,
		-0.276591, -0.768431, 0.577071,
		32.046188, 34.416824, 43.784821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.606243, 34.896832, 43.920338>,  <32.239803, 34.954727, 43.380871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.606243, 34.896832, 43.920338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.483936, 34.531559, 43.812557>,  <32.410553, 34.312397, 43.747887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.483936, 34.531559, 43.812557>,  <32.606243, 34.896832, 43.920338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.483936, 34.531559, 43.812557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940095, -0.244759, -0.237306,
		0.150752, -0.325873, 0.933317,
		-0.305770, -0.913181, -0.269454,
		32.392204, 34.257607, 43.731720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.009212, 34.330936, 44.344604>,  <32.606243, 34.896832, 43.920338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.009212, 34.330936, 44.344604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.901196, 34.204487, 43.980816>,  <32.836384, 34.128616, 43.762543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.901196, 34.204487, 43.980816>,  <33.009212, 34.330936, 44.344604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.901196, 34.204487, 43.980816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933933, -0.315746, -0.167555,
		-0.234195, -0.894634, 0.380503,
		-0.270043, -0.316123, -0.909474,
		32.820183, 34.109650, 43.707973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.642029, 33.917469, 44.076538>,  <33.009212, 34.330936, 44.344604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.642029, 33.917469, 44.076538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.405148, 33.991314, 43.762798>,  <33.263020, 34.035622, 43.574554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.405148, 33.991314, 43.762798>,  <33.642029, 33.917469, 44.076538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.405148, 33.991314, 43.762798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514185, -0.662880, -0.544246,
		-0.620408, -0.725608, 0.297635,
		-0.592206, 0.184615, -0.784353,
		33.227486, 34.046700, 43.527493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.359840, 33.265980, 43.857491>,  <33.642029, 33.917469, 44.076538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.359840, 33.265980, 43.857491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.395100, 33.544735, 43.572792>,  <33.416256, 33.711987, 43.401974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.395100, 33.544735, 43.572792>,  <33.359840, 33.265980, 43.857491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.395100, 33.544735, 43.572792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426477, -0.672128, -0.605278,
		-0.900193, -0.250191, -0.356450,
		0.088145, 0.696885, -0.711746,
		33.421543, 33.753799, 43.359268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.930210, 33.070107, 43.261143>,  <33.359840, 33.265980, 43.857491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.930210, 33.070107, 43.261143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.246624, 33.293922, 43.162209>,  <33.436474, 33.428211, 43.102848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.246624, 33.293922, 43.162209>,  <32.930210, 33.070107, 43.261143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.246624, 33.293922, 43.162209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159845, -0.579300, -0.799287,
		-0.590514, 0.592732, -0.547688,
		0.791039, 0.559535, -0.247340,
		33.483936, 33.461784, 43.088005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.963367, 33.120251, 42.437099>,  <32.930210, 33.070107, 43.261143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.963367, 33.120251, 42.437099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.315296, 33.263397, 42.562225>,  <33.526451, 33.349285, 42.637302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.315296, 33.263397, 42.562225>,  <32.963367, 33.120251, 42.437099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.315296, 33.263397, 42.562225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460648, -0.479768, -0.746744,
		-0.117157, 0.801095, -0.586959,
		0.879817, 0.357867, 0.312815,
		33.579243, 33.370758, 42.656071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.185959, 33.517914, 41.909832>,  <32.963367, 33.120251, 42.437099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.185959, 33.517914, 41.909832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.501785, 33.394020, 42.121738>,  <33.691280, 33.319683, 42.248882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.501785, 33.394020, 42.121738>,  <33.185959, 33.517914, 41.909832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.501785, 33.394020, 42.121738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324644, -0.521764, -0.788903,
		0.520765, 0.794875, -0.311413,
		0.789564, -0.309735, 0.529767,
		33.738655, 33.301098, 42.280670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.840092, 33.644917, 41.510399>,  <33.185959, 33.517914, 41.909832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.840092, 33.644917, 41.510399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.927963, 33.353283, 41.769684>,  <33.980686, 33.178303, 41.925255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.927963, 33.353283, 41.769684>,  <33.840092, 33.644917, 41.510399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.927963, 33.353283, 41.769684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399816, -0.538799, -0.741514,
		0.889882, 0.422060, 0.173137,
		0.219678, -0.729082, 0.648213,
		33.993866, 33.134560, 41.964149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.407791, 33.336361, 41.248993>,  <33.840092, 33.644917, 41.510399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.407791, 33.336361, 41.248993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.289314, 33.056084, 41.508621>,  <34.218227, 32.887917, 41.664398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.289314, 33.056084, 41.508621>,  <34.407791, 33.336361, 41.248993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.289314, 33.056084, 41.508621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545837, -0.681839, -0.486988,
		0.783794, 0.210047, 0.584420,
		-0.296191, -0.700696, 0.649073,
		34.200459, 32.845875, 41.703342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.973122, 33.009838, 41.518192>,  <34.407791, 33.336361, 41.248993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.973122, 33.009838, 41.518192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.681526, 32.743805, 41.582993>,  <34.506569, 32.584183, 41.621872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.681526, 32.743805, 41.582993>,  <34.973122, 33.009838, 41.518192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.681526, 32.743805, 41.582993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479041, -0.664712, -0.573304,
		0.488980, -0.340324, 0.803167,
		-0.728984, -0.665085, 0.162002,
		34.462830, 32.544281, 41.631592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.303219, 32.342697, 41.469330>,  <34.973122, 33.009838, 41.518192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.303219, 32.342697, 41.469330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.913734, 32.260040, 41.430977>,  <34.680046, 32.210445, 41.407967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.913734, 32.260040, 41.430977>,  <35.303219, 32.342697, 41.469330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.913734, 32.260040, 41.430977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216673, -0.710186, -0.669842,
		0.070325, -0.673005, 0.736287,
		-0.973708, -0.206640, -0.095878,
		34.621620, 32.198048, 41.402214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.265339, 31.679329, 41.385181>,  <35.303219, 32.342697, 41.469330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.265339, 31.679329, 41.385181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.905781, 31.774176, 41.237801>,  <34.690044, 31.831083, 41.149372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.905781, 31.774176, 41.237801>,  <35.265339, 31.679329, 41.385181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.905781, 31.774176, 41.237801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057060, -0.770404, -0.634998,
		-0.434428, -0.591822, 0.678984,
		-0.898897, 0.237118, -0.368455,
		34.636112, 31.845310, 41.127266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.068726, 31.024641, 41.123146>,  <35.265339, 31.679329, 41.385181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.068726, 31.024641, 41.123146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.810688, 31.285936, 40.964584>,  <34.655865, 31.442713, 40.869446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.810688, 31.285936, 40.964584>,  <35.068726, 31.024641, 41.123146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.810688, 31.285936, 40.964584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178486, -0.633253, -0.753082,
		-0.742968, -0.415053, 0.525099,
		-0.645090, 0.653239, -0.396406,
		34.617161, 31.481909, 40.845661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.367085, 30.645966, 40.961536>,  <35.068726, 31.024641, 41.123146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.367085, 30.645966, 40.961536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.410908, 30.966013, 40.725636>,  <34.437202, 31.158041, 40.584095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.410908, 30.966013, 40.725636>,  <34.367085, 30.645966, 40.961536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.410908, 30.966013, 40.725636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058466, -0.587110, -0.807393,
		-0.992259, 0.122940, -0.017545,
		0.109561, 0.800117, -0.589753,
		34.443775, 31.206049, 40.548710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.835320, 30.596548, 40.447437>,  <34.367085, 30.645966, 40.961536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.835320, 30.596548, 40.447437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.102501, 30.852238, 40.294994>,  <34.262810, 31.005651, 40.203529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.102501, 30.852238, 40.294994>,  <33.835320, 30.596548, 40.447437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.102501, 30.852238, 40.294994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031606, -0.535996, -0.843628,
		-0.743536, 0.551456, -0.378221,
		0.667949, 0.639222, -0.381103,
		34.302887, 31.044004, 40.180664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.594910, 30.713570, 39.836323>,  <33.835320, 30.596548, 40.447437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.594910, 30.713570, 39.836323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.970737, 30.843306, 39.792484>,  <34.196236, 30.921148, 39.766182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.970737, 30.843306, 39.792484>,  <33.594910, 30.713570, 39.836323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.970737, 30.843306, 39.792484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029355, -0.242630, -0.969675,
		-0.341098, 0.914294, -0.218446,
		0.939569, 0.324342, -0.109599,
		34.252609, 30.940609, 39.759605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.582550, 31.194357, 39.311798>,  <33.594910, 30.713570, 39.836323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.582550, 31.194357, 39.311798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.970505, 31.101576, 39.341503>,  <34.203278, 31.045908, 39.359325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.970505, 31.101576, 39.341503>,  <33.582550, 31.194357, 39.311798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.970505, 31.101576, 39.341503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039093, -0.152685, -0.987501,
		0.240390, 0.960669, -0.139020,
		0.969889, -0.231951, 0.074259,
		34.261471, 31.031990, 39.363781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.949375, 31.608959, 38.744366>,  <33.582550, 31.194357, 39.311798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.949375, 31.608959, 38.744366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.168026, 31.284498, 38.827530>,  <34.299217, 31.089821, 38.877430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.168026, 31.284498, 38.827530>,  <33.949375, 31.608959, 38.744366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.168026, 31.284498, 38.827530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112132, -0.316960, -0.941787,
		0.829834, 0.491494, -0.264215,
		0.546628, -0.811154, 0.207912,
		34.332016, 31.041153, 38.889904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.288914, 31.529484, 38.075024>,  <33.949375, 31.608959, 38.744366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.288914, 31.529484, 38.075024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.354977, 31.185881, 38.268860>,  <34.394615, 30.979719, 38.385162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.354977, 31.185881, 38.268860>,  <34.288914, 31.529484, 38.075024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.354977, 31.185881, 38.268860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040036, -0.496774, -0.866956,
		0.985454, 0.123787, -0.116439,
		0.165162, -0.859007, 0.484592,
		34.404526, 30.928179, 38.414238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.935265, 31.290665, 37.768127>,  <34.288914, 31.529484, 38.075024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.935265, 31.290665, 37.768127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.700260, 31.007656, 37.925224>,  <34.559258, 30.837851, 38.019482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.700260, 31.007656, 37.925224>,  <34.935265, 31.290665, 37.768127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.700260, 31.007656, 37.925224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052559, -0.450949, -0.891001,
		0.807510, -0.544112, 0.227749,
		-0.587507, -0.707522, 0.392744,
		34.524010, 30.795399, 38.043049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.069283, 30.777853, 37.387356>,  <34.935265, 31.290665, 37.768127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.069283, 30.777853, 37.387356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.722401, 30.670986, 37.555443>,  <34.514271, 30.606867, 37.656296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.722401, 30.670986, 37.555443>,  <35.069283, 30.777853, 37.387356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.722401, 30.670986, 37.555443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275826, -0.444866, -0.852065,
		0.414583, -0.854819, 0.312097,
		-0.867203, -0.267167, 0.420215,
		34.462238, 30.590836, 37.681507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.025112, 30.058815, 37.127060>,  <35.069283, 30.777853, 37.387356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.025112, 30.058815, 37.127060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.668716, 30.193100, 37.249325>,  <34.454880, 30.273670, 37.322681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.668716, 30.193100, 37.249325>,  <35.025112, 30.058815, 37.127060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.668716, 30.193100, 37.249325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433661, -0.429964, -0.791877,
		-0.134418, -0.838111, 0.528680,
		-0.890994, 0.335710, 0.305661,
		34.401417, 30.293814, 37.341022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.641911, 29.488836, 37.179096>,  <35.025112, 30.058815, 37.127060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.641911, 29.488836, 37.179096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.374180, 29.783567, 37.140961>,  <34.213543, 29.960405, 37.118080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.374180, 29.783567, 37.140961>,  <34.641911, 29.488836, 37.179096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.374180, 29.783567, 37.140961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530801, -0.564022, -0.632559,
		-0.519858, -0.372783, 0.768623,
		-0.669327, 0.736826, -0.095337,
		34.173382, 30.004616, 37.112358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.979168, 29.097221, 37.260914>,  <34.641911, 29.488836, 37.179096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.979168, 29.097221, 37.260914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.867020, 29.434805, 37.077991>,  <33.799732, 29.637354, 36.968239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.867020, 29.434805, 37.077991>,  <33.979168, 29.097221, 37.260914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.867020, 29.434805, 37.077991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494516, -0.535322, -0.684751,
		-0.822706, 0.034160, 0.567440,
		-0.280372, 0.843957, -0.457305,
		33.782909, 29.687992, 36.940800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.395203, 28.931414, 36.956821>,  <33.979168, 29.097221, 37.260914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.395203, 28.931414, 36.956821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.496887, 29.263842, 36.758953>,  <33.557896, 29.463299, 36.640232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.496887, 29.263842, 36.758953>,  <33.395203, 28.931414, 36.956821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.496887, 29.263842, 36.758953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373527, -0.387421, -0.842842,
		-0.892107, 0.399031, 0.211942,
		0.254209, 0.831071, -0.494670,
		33.573151, 29.513163, 36.610554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.867893, 29.190456, 36.615101>,  <33.395203, 28.931414, 36.956821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.867893, 29.190456, 36.615101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.171619, 29.339182, 36.401485>,  <33.353855, 29.428417, 36.273315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.171619, 29.339182, 36.401485>,  <32.867893, 29.190456, 36.615101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.171619, 29.339182, 36.401485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433262, -0.323462, -0.841223,
		-0.485519, 0.870131, -0.084517,
		0.759312, 0.371812, -0.534042,
		33.399414, 29.450726, 36.241272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.515038, 29.521732, 36.108025>,  <32.867893, 29.190456, 36.615101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.515038, 29.521732, 36.108025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.876839, 29.508177, 35.937981>,  <33.093922, 29.500044, 35.835953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.876839, 29.508177, 35.937981>,  <32.515038, 29.521732, 36.108025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.876839, 29.508177, 35.937981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421805, 0.075785, -0.903514,
		0.062835, 0.996548, 0.054254,
		0.904507, -0.033888, -0.425111,
		33.148190, 29.498011, 35.810448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.504349, 30.102503, 35.684765>,  <32.515038, 29.521732, 36.108025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.504349, 30.102503, 35.684765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.751122, 29.823948, 35.538101>,  <32.899185, 29.656815, 35.450104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.751122, 29.823948, 35.538101>,  <32.504349, 30.102503, 35.684765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.751122, 29.823948, 35.538101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313186, 0.210173, -0.926143,
		0.722015, 0.686203, -0.088435,
		0.616936, -0.696386, -0.366657,
		32.936203, 29.615032, 35.428104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.816357, 30.375662, 35.095242>,  <32.504349, 30.102503, 35.684765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.816357, 30.375662, 35.095242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.905598, 29.988588, 35.048225>,  <32.959145, 29.756344, 35.020016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.905598, 29.988588, 35.048225>,  <32.816357, 30.375662, 35.095242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.905598, 29.988588, 35.048225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044155, 0.130489, -0.990466,
		0.973794, 0.215789, 0.071840,
		0.223106, -0.967682, -0.117541,
		32.972530, 29.698284, 35.012962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.451759, 30.424643, 34.590607>,  <32.816357, 30.375662, 35.095242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.451759, 30.424643, 34.590607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.266853, 30.070066, 34.581383>,  <33.155910, 29.857321, 34.575848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.266853, 30.070066, 34.581383>,  <33.451759, 30.424643, 34.590607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.266853, 30.070066, 34.581383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157099, -0.056279, -0.985978,
		0.872713, -0.459410, 0.165275,
		-0.462269, -0.886440, -0.023057,
		33.128174, 29.804134, 34.574467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.917831, 29.915060, 34.253029>,  <33.451759, 30.424643, 34.590607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.917831, 29.915060, 34.253029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.541538, 29.794102, 34.191616>,  <33.315762, 29.721527, 34.154770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.541538, 29.794102, 34.191616>,  <33.917831, 29.915060, 34.253029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.541538, 29.794102, 34.191616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188608, -0.090247, -0.977897,
		0.281859, -0.948899, 0.141933,
		-0.940735, -0.302399, -0.153533,
		33.259319, 29.703382, 34.145557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.019413, 29.748222, 33.614285>,  <33.917831, 29.915060, 34.253029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.019413, 29.748222, 33.614285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.632080, 29.673927, 33.681023>,  <33.399681, 29.629351, 33.721066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.632080, 29.673927, 33.681023>,  <34.019413, 29.748222, 33.614285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.632080, 29.673927, 33.681023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170774, 0.005219, -0.985296,
		0.182138, -0.982585, -0.036773,
		-0.968329, -0.185740, 0.166850,
		33.341579, 29.618206, 33.731079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.873871, 29.161205, 33.269848>,  <34.019413, 29.748222, 33.614285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.873871, 29.161205, 33.269848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.537601, 29.376486, 33.293892>,  <33.335842, 29.505655, 33.308319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.537601, 29.376486, 33.293892>,  <33.873871, 29.161205, 33.269848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.537601, 29.376486, 33.293892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132016, -0.096013, -0.986587,
		-0.525211, -0.837329, 0.151767,
		-0.840669, 0.538202, 0.060114,
		33.285400, 29.537947, 33.311928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.248043, 28.736162, 32.985229>,  <33.873871, 29.161205, 33.269848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.248043, 28.736162, 32.985229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.164742, 29.127083, 32.969666>,  <33.114761, 29.361635, 32.960327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.164742, 29.127083, 32.969666>,  <33.248043, 28.736162, 32.985229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.164742, 29.127083, 32.969666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338444, -0.109327, -0.934614,
		-0.917652, -0.181472, 0.353530,
		-0.208257, 0.977300, -0.038906,
		33.102264, 29.420273, 32.957993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.639034, 28.765839, 32.519596>,  <33.248043, 28.736162, 32.985229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.639034, 28.765839, 32.519596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.794098, 29.134535, 32.523792>,  <32.887135, 29.355753, 32.526310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.794098, 29.134535, 32.523792>,  <32.639034, 28.765839, 32.519596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.794098, 29.134535, 32.523792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095183, 0.051348, -0.994135,
		-0.916875, 0.384387, 0.107640,
		0.387660, 0.921743, 0.010493,
		32.910397, 29.411058, 32.526939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.306652, 29.093746, 32.028217>,  <32.639034, 28.765839, 32.519596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.306652, 29.093746, 32.028217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.620411, 29.334227, 32.089237>,  <32.808666, 29.478516, 32.125851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.620411, 29.334227, 32.089237>,  <32.306652, 29.093746, 32.028217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.620411, 29.334227, 32.089237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057584, 0.174305, -0.983006,
		-0.617575, 0.779856, 0.102105,
		0.784401, 0.601201, 0.152554,
		32.855732, 29.514587, 32.135002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.166115, 29.633186, 31.506472>,  <32.306652, 29.093746, 32.028217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.166115, 29.633186, 31.506472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.554581, 29.650028, 31.600334>,  <32.787659, 29.660133, 31.656652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.554581, 29.650028, 31.600334>,  <32.166115, 29.633186, 31.506472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.554581, 29.650028, 31.600334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220372, 0.216961, -0.950981,
		-0.090954, 0.975272, 0.201426,
		0.971166, 0.042106, 0.234656,
		32.845932, 29.662661, 31.670731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.501431, 30.217926, 31.151236>,  <32.166115, 29.633186, 31.506472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.501431, 30.217926, 31.151236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.805046, 29.975990, 31.247597>,  <32.987213, 29.830830, 31.305414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.805046, 29.975990, 31.247597>,  <32.501431, 30.217926, 31.151236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.805046, 29.975990, 31.247597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316176, 0.018997, -0.948510,
		0.569119, 0.796122, 0.205655,
		0.759036, -0.604838, 0.240903,
		33.032757, 29.794538, 31.319868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.128208, 30.509567, 30.823450>,  <32.501431, 30.217926, 31.151236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.128208, 30.509567, 30.823450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.247753, 30.135683, 30.900387>,  <33.319481, 29.911352, 30.946548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.247753, 30.135683, 30.900387>,  <33.128208, 30.509567, 30.823450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.247753, 30.135683, 30.900387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536574, -0.002082, -0.843850,
		0.789157, 0.355402, 0.500920,
		0.298863, -0.934711, 0.192343,
		33.337414, 29.855270, 30.958090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.917480, 30.525370, 30.734385>,  <33.128208, 30.509567, 30.823450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.917480, 30.525370, 30.734385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.814491, 30.139338, 30.753670>,  <33.752697, 29.907719, 30.765242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.814491, 30.139338, 30.753670>,  <33.917480, 30.525370, 30.734385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.814491, 30.139338, 30.753670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548302, -0.187003, -0.815104,
		0.795658, -0.183432, 0.577305,
		-0.257474, -0.965082, 0.048214,
		33.737247, 29.849813, 30.768133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.500401, 30.158943, 30.731062>,  <33.917480, 30.525370, 30.734385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.500401, 30.158943, 30.731062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.209732, 29.903923, 30.628710>,  <34.035332, 29.750912, 30.567299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.209732, 29.903923, 30.628710>,  <34.500401, 30.158943, 30.731062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.209732, 29.903923, 30.628710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420836, -0.118721, -0.899334,
		0.542992, -0.761207, 0.354575,
		-0.726675, -0.637549, -0.255879,
		33.991730, 29.712658, 30.551947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.824009, 29.565289, 30.379751>,  <34.500401, 30.158943, 30.731062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.824009, 29.565289, 30.379751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.451260, 29.546200, 30.235897>,  <34.227612, 29.534746, 30.149586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.451260, 29.546200, 30.235897>,  <34.824009, 29.565289, 30.379751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.451260, 29.546200, 30.235897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362201, -0.178654, -0.914819,
		-0.020591, -0.982754, 0.183768,
		-0.931873, -0.047724, -0.359633,
		34.171700, 29.531883, 30.128008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.835522, 29.082003, 29.851122>,  <34.824009, 29.565289, 30.379751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.835522, 29.082003, 29.851122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.498661, 29.279058, 29.763411>,  <34.296543, 29.397291, 29.710783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.498661, 29.279058, 29.763411>,  <34.835522, 29.082003, 29.851122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.498661, 29.279058, 29.763411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220341, -0.056766, -0.973770,
		-0.492164, -0.868380, -0.060743,
		-0.842155, 0.492639, -0.219278,
		34.246014, 29.426849, 29.697628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.656708, 28.736057, 29.261557>,  <34.835522, 29.082003, 29.851122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.656708, 28.736057, 29.261557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.418358, 29.057222, 29.268103>,  <34.275349, 29.249922, 29.272030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.418358, 29.057222, 29.268103>,  <34.656708, 28.736057, 29.261557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.418358, 29.057222, 29.268103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024917, 0.001885, -0.999688,
		-0.802692, -0.596095, 0.018882,
		-0.595873, 0.802912, 0.016366,
		34.239597, 29.298096, 29.273012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.099842, 28.531796, 28.748194>,  <34.656708, 28.736057, 29.261557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.099842, 28.531796, 28.748194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.083832, 28.930254, 28.779421>,  <34.074226, 29.169329, 28.798157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.083832, 28.930254, 28.779421>,  <34.099842, 28.531796, 28.748194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.083832, 28.930254, 28.779421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287923, 0.063315, -0.955558,
		-0.956817, -0.060726, 0.284278,
		-0.040028, 0.996145, 0.078066,
		34.071823, 29.229097, 28.802841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.527534, 28.717718, 28.359058>,  <34.099842, 28.531796, 28.748194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.527534, 28.717718, 28.359058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.786812, 29.021341, 28.383308>,  <33.942379, 29.203514, 28.397858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.786812, 29.021341, 28.383308>,  <33.527534, 28.717718, 28.359058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.786812, 29.021341, 28.383308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005388, 0.075042, -0.997166,
		-0.761454, 0.646686, 0.044552,
		0.648196, 0.759056, 0.060625,
		33.981270, 29.249058, 28.401497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.290600, 29.368404, 28.119263>,  <33.527534, 28.717718, 28.359058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.290600, 29.368404, 28.119263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.683392, 29.351257, 28.045641>,  <33.919067, 29.340969, 28.001469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.683392, 29.351257, 28.045641>,  <33.290600, 29.368404, 28.119263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.683392, 29.351257, 28.045641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176558, 0.139148, -0.974405,
		0.067383, 0.989343, 0.129072,
		0.981981, -0.042870, -0.184052,
		33.977985, 29.338396, 27.990425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.304726, 29.746763, 27.532269>,  <33.290600, 29.368404, 28.119263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.304726, 29.746763, 27.532269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.669434, 29.585058, 27.561251>,  <33.888260, 29.488035, 27.578640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.669434, 29.585058, 27.561251>,  <33.304726, 29.746763, 27.532269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.669434, 29.585058, 27.561251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250676, 0.408030, -0.877880,
		0.325328, 0.818587, 0.473367,
		0.911769, -0.404261, 0.072457,
		33.942963, 29.463779, 27.582989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.772682, 30.444925, 27.324844>,  <33.304726, 29.746763, 27.532269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.772682, 30.444925, 27.324844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.012665, 30.743940, 27.210835>,  <34.156654, 30.923349, 27.142427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.012665, 30.743940, 27.210835>,  <33.772682, 30.444925, 27.324844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.012665, 30.743940, 27.210835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201583, -0.486023, -0.850380,
		-0.774221, 0.452733, -0.442283,
		0.599955, 0.747539, -0.285026,
		34.192650, 30.968203, 27.125326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.574753, 30.693529, 26.689560>,  <33.772682, 30.444925, 27.324844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.574753, 30.693529, 26.689560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.963093, 30.787992, 26.705982>,  <34.196095, 30.844671, 26.715836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.963093, 30.787992, 26.705982>,  <33.574753, 30.693529, 26.689560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.963093, 30.787992, 26.705982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169388, -0.554740, -0.814599,
		-0.169599, 0.797805, -0.578570,
		0.970847, 0.236158, 0.041056,
		34.254349, 30.858839, 26.718300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.884949, 30.646288, 26.045486>,  <33.574753, 30.693529, 26.689560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.884949, 30.646288, 26.045486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.204556, 30.619953, 26.284565>,  <34.396320, 30.604153, 26.428013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.204556, 30.619953, 26.284565>,  <33.884949, 30.646288, 26.045486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.204556, 30.619953, 26.284565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505874, -0.463744, -0.727346,
		0.325065, 0.883519, -0.337233,
		0.799015, -0.065837, 0.597697,
		34.444260, 30.600203, 26.463875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.554680, 31.091955, 25.888609>,  <33.884949, 30.646288, 26.045486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.554680, 31.091955, 25.888609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.590206, 30.718618, 26.027740>,  <34.611523, 30.494617, 26.111219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.590206, 30.718618, 26.027740>,  <34.554680, 31.091955, 25.888609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.590206, 30.718618, 26.027740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458761, -0.271635, -0.846022,
		0.884110, 0.234711, 0.404055,
		0.088815, -0.933341, 0.347831,
		34.616852, 30.438616, 26.132090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.317623, 30.840300, 25.771528>,  <34.554680, 31.091955, 25.888609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.317623, 30.840300, 25.771528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.020561, 30.573124, 25.752254>,  <34.842323, 30.412819, 25.740690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.020561, 30.573124, 25.752254>,  <35.317623, 30.840300, 25.771528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.020561, 30.573124, 25.752254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403109, -0.388425, -0.828631,
		0.534758, -0.634810, 0.557718,
		-0.742655, -0.667938, -0.048184,
		34.797764, 30.372742, 25.737799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.581577, 30.794491, 26.510084>,  <35.317623, 30.840300, 25.771528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.581577, 30.794491, 26.510084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.183502, 30.793495, 26.470890>,  <34.944656, 30.792898, 26.447374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.183502, 30.793495, 26.470890>,  <35.581577, 30.794491, 26.510084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.183502, 30.793495, 26.470890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076764, 0.641389, 0.763366,
		0.060946, 0.767212, -0.638491,
		-0.995185, -0.002489, -0.097984,
		34.884945, 30.792749, 26.441494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.401756, 31.442755, 26.817497>,  <35.581577, 30.794491, 26.510084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.401756, 31.442755, 26.817497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.036243, 31.293571, 26.753111>,  <34.816936, 31.204062, 26.714479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.036243, 31.293571, 26.753111>,  <35.401756, 31.442755, 26.817497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.036243, 31.293571, 26.753111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372105, 0.609594, 0.699952,
		-0.162927, 0.699498, -0.695813,
		-0.913779, -0.372957, -0.160968,
		34.762108, 31.181684, 26.704821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.936352, 32.037697, 26.726175>,  <35.401756, 31.442755, 26.817497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.936352, 32.037697, 26.726175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.715324, 31.720114, 26.827599>,  <34.582706, 31.529564, 26.888453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.715324, 31.720114, 26.827599>,  <34.936352, 32.037697, 26.726175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.715324, 31.720114, 26.827599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350179, 0.497227, 0.793813,
		-0.756333, 0.349848, -0.552782,
		-0.552572, -0.793960, 0.253560,
		34.549553, 31.481926, 26.903667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.258053, 32.162807, 26.669144>,  <34.936352, 32.037697, 26.726175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.258053, 32.162807, 26.669144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.272896, 31.871574, 26.942938>,  <34.281799, 31.696835, 27.107214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.272896, 31.871574, 26.942938>,  <34.258053, 32.162807, 26.669144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.272896, 31.871574, 26.942938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429872, 0.606714, 0.668662,
		-0.902127, -0.319052, -0.290470,
		0.037105, -0.728083, 0.684484,
		34.284027, 31.653149, 27.148283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.597687, 32.232456, 26.951311>,  <34.258053, 32.162807, 26.669144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.597687, 32.232456, 26.951311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.828182, 32.037128, 27.213455>,  <33.966480, 31.919931, 27.370741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.828182, 32.037128, 27.213455>,  <33.597687, 32.232456, 26.951311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.828182, 32.037128, 27.213455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441661, 0.488645, 0.752437,
		-0.687669, -0.723027, 0.065901,
		0.576234, -0.488322, 0.655359,
		34.001053, 31.890633, 27.410063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.188213, 32.061165, 27.549137>,  <33.597687, 32.232456, 26.951311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.188213, 32.061165, 27.549137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.568386, 32.036640, 27.671070>,  <33.796490, 32.021927, 27.744230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.568386, 32.036640, 27.671070>,  <33.188213, 32.061165, 27.549137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.568386, 32.036640, 27.671070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222428, 0.550993, 0.804321,
		-0.217274, -0.832255, 0.510044,
		0.950431, -0.061310, 0.304833,
		33.853516, 32.018246, 27.762520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.135963, 31.951906, 28.213993>,  <33.188213, 32.061165, 27.549137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.135963, 31.951906, 28.213993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.512344, 32.085377, 28.191158>,  <33.738174, 32.165459, 28.177458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.512344, 32.085377, 28.191158>,  <33.135963, 31.951906, 28.213993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.512344, 32.085377, 28.191158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139866, 0.536767, 0.832057,
		0.308282, -0.774945, 0.551745,
		0.940957, 0.333678, -0.057087,
		33.794632, 32.185482, 28.174032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.223717, 32.025227, 28.905827>,  <33.135963, 31.951906, 28.213993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.223717, 32.025227, 28.905827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.559441, 32.182903, 28.756065>,  <33.760876, 32.277512, 28.666208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.559441, 32.182903, 28.756065>,  <33.223717, 32.025227, 28.905827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.559441, 32.182903, 28.756065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179338, 0.449374, 0.875158,
		0.513230, -0.801669, 0.306468,
		0.839305, 0.394196, -0.374402,
		33.811234, 32.301163, 28.643745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.722649, 31.883446, 29.360889>,  <33.223717, 32.025227, 28.905827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.722649, 31.883446, 29.360889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.870003, 32.197613, 29.161924>,  <33.958416, 32.386112, 29.042545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.870003, 32.197613, 29.161924>,  <33.722649, 31.883446, 29.360889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.870003, 32.197613, 29.161924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463510, 0.308631, 0.830606,
		0.805887, -0.536535, -0.250354,
		0.368382, 0.785416, -0.497410,
		33.980518, 32.433239, 29.012701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.362350, 31.869232, 29.519321>,  <33.722649, 31.883446, 29.360889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.362350, 31.869232, 29.519321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.271557, 32.248920, 29.432186>,  <34.217079, 32.476734, 29.379906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.271557, 32.248920, 29.432186>,  <34.362350, 31.869232, 29.519321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.271557, 32.248920, 29.432186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547895, 0.309385, 0.777234,
		0.805164, 0.057070, -0.590300,
		-0.226987, 0.949223, -0.217837,
		34.203461, 32.533688, 29.366835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.892033, 32.253654, 29.774250>,  <34.362350, 31.869232, 29.519321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.892033, 32.253654, 29.774250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.617046, 32.539433, 29.722166>,  <34.452053, 32.710899, 29.690916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.617046, 32.539433, 29.722166>,  <34.892033, 32.253654, 29.774250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.617046, 32.539433, 29.722166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435272, 0.548896, 0.713619,
		0.581315, 0.433912, -0.688326,
		-0.687467, 0.714447, -0.130212,
		34.410805, 32.753765, 29.683102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.178173, 32.868343, 30.030479>,  <34.892033, 32.253654, 29.774250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.178173, 32.868343, 30.030479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.795856, 32.985348, 30.018518>,  <34.566467, 33.055550, 30.011343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.795856, 32.985348, 30.018518>,  <35.178173, 32.868343, 30.030479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.795856, 32.985348, 30.018518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140387, 0.543333, 0.827696,
		0.258356, 0.786910, -0.560379,
		-0.955795, 0.292511, -0.029902,
		34.509117, 33.073101, 30.009548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.268501, 33.493725, 30.206551>,  <35.178173, 32.868343, 30.030479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.268501, 33.493725, 30.206551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.890343, 33.389324, 30.284641>,  <34.663448, 33.326683, 30.331495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.890343, 33.389324, 30.284641>,  <35.268501, 33.493725, 30.206551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.890343, 33.389324, 30.284641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064357, 0.437707, 0.896811,
		-0.319518, 0.860402, -0.397008,
		-0.945392, -0.260998, 0.195229,
		34.606724, 33.311024, 30.343210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.858372, 34.081974, 30.468502>,  <35.268501, 33.493725, 30.206551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.858372, 34.081974, 30.468502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.667252, 33.753811, 30.594131>,  <34.552578, 33.556915, 30.669508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.667252, 33.753811, 30.594131>,  <34.858372, 34.081974, 30.468502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.667252, 33.753811, 30.594131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008112, 0.361627, 0.932288,
		-0.878430, 0.442901, -0.179440,
		-0.477801, -0.820405, 0.314071,
		34.523911, 33.507690, 30.688353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.513992, 34.361568, 31.026659>,  <34.858372, 34.081974, 30.468502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.513992, 34.361568, 31.026659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.478970, 33.968067, 31.089340>,  <34.457954, 33.731964, 31.126949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.478970, 33.968067, 31.089340>,  <34.513992, 34.361568, 31.026659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.478970, 33.968067, 31.089340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087570, 0.164298, 0.982516,
		-0.992303, 0.072304, -0.100533,
		-0.087558, -0.983757, 0.156702,
		34.452702, 33.672939, 31.136351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.937088, 34.308029, 31.444813>,  <34.513992, 34.361568, 31.026659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.937088, 34.308029, 31.444813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.154861, 33.977291, 31.501268>,  <34.285526, 33.778847, 31.535141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.154861, 33.977291, 31.501268>,  <33.937088, 34.308029, 31.444813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.154861, 33.977291, 31.501268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266044, -0.010641, 0.963902,
		-0.795497, -0.562328, -0.225771,
		0.544431, -0.826846, 0.141139,
		34.318192, 33.729237, 31.543610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.540081, 33.974915, 31.939211>,  <33.937088, 34.308029, 31.444813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.540081, 33.974915, 31.939211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.900990, 33.805252, 31.970186>,  <34.117535, 33.703453, 31.988771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.900990, 33.805252, 31.970186>,  <33.540081, 33.974915, 31.939211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.900990, 33.805252, 31.970186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070485, 0.032088, 0.996997,
		-0.425367, -0.905021, -0.000945,
		0.902272, -0.424156, 0.077440,
		34.171673, 33.678005, 31.993418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.449024, 33.397480, 32.344246>,  <33.540081, 33.974915, 31.939211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.449024, 33.397480, 32.344246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.837429, 33.489552, 32.370033>,  <34.070473, 33.544792, 32.385506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.837429, 33.489552, 32.370033>,  <33.449024, 33.397480, 32.344246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.837429, 33.489552, 32.370033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006935, -0.242469, 0.970134,
		0.238934, -0.942458, -0.233844,
		0.971011, 0.230177, 0.064470,
		34.128731, 33.558605, 32.389374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.774998, 32.864841, 32.701527>,  <33.449024, 33.397480, 32.344246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.774998, 32.864841, 32.701527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.042442, 33.160782, 32.731384>,  <34.202911, 33.338348, 32.749298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.042442, 33.160782, 32.731384>,  <33.774998, 32.864841, 32.701527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.042442, 33.160782, 32.731384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062474, -0.155920, 0.985792,
		0.740980, -0.654451, -0.150472,
		0.668614, 0.739853, 0.074648,
		34.243027, 33.382736, 32.753780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.225365, 32.711292, 33.318027>,  <33.774998, 32.864841, 32.701527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.225365, 32.711292, 33.318027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.278854, 33.104713, 33.269451>,  <34.310947, 33.340767, 33.240303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.278854, 33.104713, 33.269451>,  <34.225365, 32.711292, 33.318027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.278854, 33.104713, 33.269451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020163, 0.125221, 0.991924,
		0.990813, -0.130200, 0.036577,
		0.133729, 0.983549, -0.121445,
		34.318974, 33.399776, 33.233017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.716927, 32.919998, 33.840984>,  <34.225365, 32.711292, 33.318027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.716927, 32.919998, 33.840984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.517815, 33.248772, 33.730251>,  <34.398346, 33.446037, 33.663811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.517815, 33.248772, 33.730251>,  <34.716927, 32.919998, 33.840984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.517815, 33.248772, 33.730251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009054, 0.324099, 0.945980,
		0.867256, 0.468383, -0.168771,
		-0.497780, 0.821935, -0.276836,
		34.368481, 33.495354, 33.647202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.142426, 33.418827, 34.106518>,  <34.716927, 32.919998, 33.840984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.142426, 33.418827, 34.106518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.775829, 33.573074, 34.063915>,  <34.555870, 33.665623, 34.038353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.775829, 33.573074, 34.063915>,  <35.142426, 33.418827, 34.106518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.775829, 33.573074, 34.063915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112638, 0.504200, 0.856210,
		0.383870, 0.772712, -0.505530,
		-0.916492, 0.385615, -0.106511,
		34.500881, 33.688759, 34.031963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.137421, 34.156429, 34.290745>,  <35.142426, 33.418827, 34.106518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.137421, 34.156429, 34.290745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.753357, 34.049515, 34.323353>,  <34.522919, 33.985367, 34.342918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.753357, 34.049515, 34.323353>,  <35.137421, 34.156429, 34.290745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.753357, 34.049515, 34.323353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086622, 0.562052, 0.822554,
		-0.265676, 0.782724, -0.562814,
		-0.960163, -0.267285, 0.081522,
		34.465309, 33.969330, 34.347809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.884548, 34.634781, 34.582157>,  <35.137421, 34.156429, 34.290745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.884548, 34.634781, 34.582157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.585567, 34.380817, 34.660339>,  <34.406178, 34.228439, 34.707249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.585567, 34.380817, 34.660339>,  <34.884548, 34.634781, 34.582157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.585567, 34.380817, 34.660339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164375, 0.461828, 0.871605,
		-0.643656, 0.619357, -0.449559,
		-0.747454, -0.634910, 0.195452,
		34.361332, 34.190346, 34.718975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.320782, 35.049004, 34.779015>,  <34.884548, 34.634781, 34.582157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.320782, 35.049004, 34.779015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.272751, 34.676327, 34.916145>,  <34.243931, 34.452721, 34.998425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.272751, 34.676327, 34.916145>,  <34.320782, 35.049004, 34.779015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.272751, 34.676327, 34.916145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045037, 0.350078, 0.935637,
		-0.991742, 0.096909, -0.083997,
		-0.120077, -0.931694, 0.342823,
		34.236729, 34.396820, 35.018993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.654976, 35.093784, 35.174057>,  <34.320782, 35.049004, 34.779015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.654976, 35.093784, 35.174057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.837017, 34.765305, 35.311760>,  <33.946239, 34.568218, 35.394382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.837017, 34.765305, 35.311760>,  <33.654976, 35.093784, 35.174057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.837017, 34.765305, 35.311760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226257, 0.267281, 0.936680,
		-0.861215, -0.504174, -0.064162,
		0.455100, -0.821200, 0.344259,
		33.973549, 34.518944, 35.415039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.140385, 34.719337, 35.645287>,  <33.654976, 35.093784, 35.174057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.140385, 34.719337, 35.645287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.510731, 34.603149, 35.741955>,  <33.732937, 34.533436, 35.799957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.510731, 34.603149, 35.741955>,  <33.140385, 34.719337, 35.645287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.510731, 34.603149, 35.741955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196095, 0.177348, 0.964414,
		-0.322991, -0.940306, 0.107241,
		0.925863, -0.290468, 0.241671,
		33.788490, 34.516010, 35.814457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.099571, 34.294563, 36.194115>,  <33.140385, 34.719337, 35.645287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.099571, 34.294563, 36.194115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.479477, 34.418247, 36.213448>,  <33.707420, 34.492458, 36.225048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.479477, 34.418247, 36.213448>,  <33.099571, 34.294563, 36.194115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.479477, 34.418247, 36.213448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104747, 0.168536, 0.980114,
		0.294922, -0.935938, 0.192459,
		0.949763, 0.309216, 0.048332,
		33.764404, 34.511013, 36.227947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.170498, 34.203674, 36.788044>,  <33.099571, 34.294563, 36.194115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.170498, 34.203674, 36.788044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.499008, 34.414242, 36.700047>,  <33.696114, 34.540581, 36.647247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.499008, 34.414242, 36.700047>,  <33.170498, 34.203674, 36.788044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.499008, 34.414242, 36.700047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020885, 0.413072, 0.910459,
		0.570156, -0.743138, 0.350238,
		0.821271, 0.526419, -0.219995,
		33.745388, 34.572166, 36.634048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.735783, 34.005527, 37.155678>,  <33.170498, 34.203674, 36.788044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.735783, 34.005527, 37.155678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.777615, 34.393391, 37.067287>,  <33.802715, 34.626106, 37.014252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.777615, 34.393391, 37.067287>,  <33.735783, 34.005527, 37.155678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.777615, 34.393391, 37.067287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016181, 0.223826, 0.974495,
		0.994385, -0.098341, 0.039098,
		0.104584, 0.969655, -0.220978,
		33.808990, 34.684288, 37.000996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.977749, 34.211029, 37.701038>,  <33.735783, 34.005527, 37.155678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.977749, 34.211029, 37.701038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.939610, 34.575241, 37.540119>,  <33.916725, 34.793770, 37.443569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.939610, 34.575241, 37.540119>,  <33.977749, 34.211029, 37.701038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.939610, 34.575241, 37.540119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233257, 0.413324, 0.880201,
		0.967729, -0.009910, -0.251799,
		-0.095351, 0.910530, -0.402297,
		33.911003, 34.848400, 37.419430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.609261, 34.646946, 37.914036>,  <33.977749, 34.211029, 37.701038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.609261, 34.646946, 37.914036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.316120, 34.909683, 37.843071>,  <34.140236, 35.067326, 37.800491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.316120, 34.909683, 37.843071>,  <34.609261, 34.646946, 37.914036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.316120, 34.909683, 37.843071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135397, 0.396333, 0.908068,
		0.666777, 0.641461, -0.379390,
		-0.732855, 0.656847, -0.177414,
		34.096264, 35.106739, 37.789848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.827675, 35.309299, 38.185368>,  <34.609261, 34.646946, 37.914036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.827675, 35.309299, 38.185368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.431278, 35.327049, 38.134834>,  <34.193439, 35.337700, 38.104515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.431278, 35.327049, 38.134834>,  <34.827675, 35.309299, 38.185368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.431278, 35.327049, 38.134834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119558, 0.131606, 0.984066,
		0.060296, 0.990308, -0.125115,
		-0.990995, 0.044377, -0.126335,
		34.133980, 35.340363, 38.096935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.604488, 35.857193, 38.629391>,  <34.827675, 35.309299, 38.185368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.604488, 35.857193, 38.629391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.254189, 35.675713, 38.563396>,  <34.044010, 35.566826, 38.523800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.254189, 35.675713, 38.563396>,  <34.604488, 35.857193, 38.629391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.254189, 35.675713, 38.563396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219008, 0.068805, 0.973294,
		-0.430228, 0.888496, -0.159619,
		-0.875751, -0.453696, -0.164986,
		33.991463, 35.539604, 38.513901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.244850, 36.160088, 39.130310>,  <34.604488, 35.857193, 38.629391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.244850, 36.160088, 39.130310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.024307, 35.839348, 39.038193>,  <33.891979, 35.646904, 38.982922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.024307, 35.839348, 39.038193>,  <34.244850, 36.160088, 39.130310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.024307, 35.839348, 39.038193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175139, -0.158637, 0.971679,
		-0.815676, 0.576078, -0.052969,
		-0.551360, -0.801853, -0.230290,
		33.858898, 35.598793, 38.969105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.632061, 36.385288, 39.440228>,  <34.244850, 36.160088, 39.130310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.632061, 36.385288, 39.440228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.677944, 35.993526, 39.373760>,  <33.705475, 35.758469, 39.333881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.677944, 35.993526, 39.373760>,  <33.632061, 36.385288, 39.440228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.677944, 35.993526, 39.373760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082069, -0.157357, 0.984126,
		-0.990004, -0.126521, 0.062329,
		0.114705, -0.979403, -0.166168,
		33.712357, 35.699707, 39.323910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.103348, 36.044880, 39.793030>,  <33.632061, 36.385288, 39.440228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.103348, 36.044880, 39.793030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.420830, 35.808270, 39.736275>,  <33.611320, 35.666302, 39.702221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.420830, 35.808270, 39.736275>,  <33.103348, 36.044880, 39.793030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.420830, 35.808270, 39.736275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026493, -0.199410, 0.979558,
		-0.607727, -0.781238, -0.142601,
		0.793704, -0.591526, -0.141885,
		33.658939, 35.630814, 39.693710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.023289, 35.655098, 40.248520>,  <33.103348, 36.044880, 39.793030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.023289, 35.655098, 40.248520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.406853, 35.583042, 40.160847>,  <33.636993, 35.539810, 40.108242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.406853, 35.583042, 40.160847>,  <33.023289, 35.655098, 40.248520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.406853, 35.583042, 40.160847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192070, -0.156384, 0.968841,
		-0.208800, -0.971131, -0.115359,
		0.958911, -0.180137, -0.219178,
		33.694527, 35.528999, 40.095093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.221401, 34.980652, 40.527176>,  <33.023289, 35.655098, 40.248520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.221401, 34.980652, 40.527176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.576298, 35.156639, 40.471706>,  <33.789234, 35.262234, 40.438423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.576298, 35.156639, 40.471706>,  <33.221401, 34.980652, 40.527176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.576298, 35.156639, 40.471706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282226, -0.279910, 0.917605,
		0.364903, -0.853273, -0.372519,
		0.887239, 0.439972, -0.138675,
		33.842468, 35.288631, 40.430103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.693916, 34.453255, 40.533405>,  <33.221401, 34.980652, 40.527176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.693916, 34.453255, 40.533405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.908749, 34.783520, 40.602482>,  <34.037647, 34.981678, 40.643929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.908749, 34.783520, 40.602482>,  <33.693916, 34.453255, 40.533405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.908749, 34.783520, 40.602482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297436, -0.376942, 0.877181,
		0.789352, -0.419753, -0.448031,
		0.537081, 0.825665, 0.172690,
		34.069874, 35.031219, 40.654289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.295567, 34.112522, 40.716377>,  <33.693916, 34.453255, 40.533405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.295567, 34.112522, 40.716377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.307076, 34.488503, 40.852421>,  <34.313980, 34.714088, 40.934048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.307076, 34.488503, 40.852421>,  <34.295567, 34.112522, 40.716377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.307076, 34.488503, 40.852421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455699, -0.315170, 0.832470,
		0.889669, 0.131031, -0.437402,
		0.028777, 0.939946, 0.340107,
		34.315708, 34.770485, 40.954453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.892250, 34.101078, 41.127907>,  <34.295567, 34.112522, 40.716377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.892250, 34.101078, 41.127907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.663956, 34.405579, 41.251041>,  <34.526981, 34.588280, 41.324924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.663956, 34.405579, 41.251041>,  <34.892250, 34.101078, 41.127907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.663956, 34.405579, 41.251041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396940, -0.072409, 0.914984,
		0.718820, 0.644406, -0.260843,
		-0.570734, 0.761247, 0.307839,
		34.492737, 34.633953, 41.343391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.630180, 33.725285, 40.992191>,  <34.892250, 34.101078, 41.127907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.630180, 33.725285, 40.992191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.966835, 33.930088, 41.060890>,  <36.168827, 34.052971, 41.102108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.966835, 33.930088, 41.060890>,  <35.630180, 33.725285, 40.992191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.966835, 33.930088, 41.060890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032204, 0.269868, -0.962358,
		-0.539084, 0.815487, 0.210642,
		0.841636, 0.512009, 0.171744,
		36.219326, 34.083691, 41.112411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.559937, 34.372612, 40.678246>,  <35.630180, 33.725285, 40.992191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.559937, 34.372612, 40.678246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.954639, 34.332840, 40.729504>,  <36.191463, 34.308979, 40.760258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.954639, 34.332840, 40.729504>,  <35.559937, 34.372612, 40.678246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.954639, 34.332840, 40.729504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156025, 0.366135, -0.917388,
		0.044295, 0.925235, 0.376801,
		0.986759, -0.099426, 0.128142,
		36.250668, 34.303013, 40.767944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.776581, 35.047550, 40.428356>,  <35.559937, 34.372612, 40.678246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.776581, 35.047550, 40.428356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.109097, 34.825909, 40.445866>,  <36.308605, 34.692924, 40.456371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.109097, 34.825909, 40.445866>,  <35.776581, 35.047550, 40.428356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.109097, 34.825909, 40.445866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282031, 0.352634, -0.892249,
		0.478967, 0.754066, 0.449417,
		0.831294, -0.554107, 0.043770,
		36.358486, 34.659676, 40.458996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.383873, 35.491875, 40.360474>,  <35.776581, 35.047550, 40.428356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.383873, 35.491875, 40.360474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.459633, 35.129818, 40.208233>,  <36.505089, 34.912586, 40.116890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.459633, 35.129818, 40.208233>,  <36.383873, 35.491875, 40.360474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.459633, 35.129818, 40.208233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183769, 0.413440, -0.891794,
		0.964551, 0.098961, 0.244640,
		0.189397, -0.905138, -0.380598,
		36.516453, 34.858276, 40.094055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.904858, 35.588371, 39.917816>,  <36.383873, 35.491875, 40.360474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.904858, 35.588371, 39.917816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.781605, 35.228474, 39.794189>,  <36.707653, 35.012535, 39.720013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.781605, 35.228474, 39.794189>,  <36.904858, 35.588371, 39.917816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.781605, 35.228474, 39.794189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150989, 0.274502, -0.949658,
		0.939285, -0.339286, 0.051268,
		-0.308133, -0.899741, -0.309064,
		36.689163, 34.958553, 39.701469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.417984, 35.334888, 39.590561>,  <36.904858, 35.588371, 39.917816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.417984, 35.334888, 39.590561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.119591, 35.098862, 39.467052>,  <36.940556, 34.957245, 39.392948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.119591, 35.098862, 39.467052>,  <37.417984, 35.334888, 39.590561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.119591, 35.098862, 39.467052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201899, 0.241438, -0.949181,
		0.634628, -0.770409, -0.060974,
		-0.745979, -0.590066, -0.308768,
		36.895798, 34.921841, 39.374420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.667850, 34.791393, 39.136066>,  <37.417984, 35.334888, 39.590561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.667850, 34.791393, 39.136066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.279041, 34.773708, 39.043789>,  <37.045757, 34.763096, 38.988422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.279041, 34.773708, 39.043789>,  <37.667850, 34.791393, 39.136066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.279041, 34.773708, 39.043789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222943, 0.135578, -0.965358,
		0.073952, -0.989780, -0.121929,
		-0.972022, -0.044207, -0.230691,
		36.987434, 34.760445, 38.974583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.611015, 34.301086, 38.660072>,  <37.667850, 34.791393, 39.136066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.611015, 34.301086, 38.660072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.270920, 34.504772, 38.606724>,  <37.066860, 34.626984, 38.574715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.270920, 34.504772, 38.606724>,  <37.611015, 34.301086, 38.660072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.270920, 34.504772, 38.606724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135291, -0.033461, -0.990241,
		-0.508709, -0.859988, -0.040443,
		-0.850242, 0.509215, -0.133370,
		37.015846, 34.657536, 38.566711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.126587, 33.798447, 38.189266>,  <37.611015, 34.301086, 38.660072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.126587, 33.798447, 38.189266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.053009, 34.191391, 38.175766>,  <37.008862, 34.427158, 38.167667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.053009, 34.191391, 38.175766>,  <37.126587, 33.798447, 38.189266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.053009, 34.191391, 38.175766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061728, -0.022725, -0.997834,
		-0.980997, -0.185626, -0.056459,
		-0.183941, 0.982358, -0.033752,
		36.997826, 34.486099, 38.165642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.644215, 33.937328, 37.601574>,  <37.126587, 33.798447, 38.189266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.644215, 33.937328, 37.601574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.813251, 34.294991, 37.660774>,  <36.914673, 34.509586, 37.696293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.813251, 34.294991, 37.660774>,  <36.644215, 33.937328, 37.601574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.813251, 34.294991, 37.660774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108336, 0.112289, -0.987752,
		-0.899821, 0.433452, -0.049417,
		0.422595, 0.894153, 0.147999,
		36.940029, 34.563236, 37.705173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.336212, 34.471886, 37.113457>,  <36.644215, 33.937328, 37.601574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.336212, 34.471886, 37.113457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.688457, 34.646973, 37.186028>,  <36.899807, 34.752026, 37.229572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.688457, 34.646973, 37.186028>,  <36.336212, 34.471886, 37.113457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.688457, 34.646973, 37.186028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189764, 0.025055, -0.981510,
		-0.434172, 0.898762, -0.061000,
		0.880616, 0.437720, 0.181430,
		36.952641, 34.778290, 37.240456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.393005, 34.861664, 36.578564>,  <36.336212, 34.471886, 37.113457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.393005, 34.861664, 36.578564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.764275, 34.846416, 36.726643>,  <36.987034, 34.837269, 36.815491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.764275, 34.846416, 36.726643>,  <36.393005, 34.861664, 36.578564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.764275, 34.846416, 36.726643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355215, -0.205987, -0.911807,
		0.111009, 0.977812, -0.177653,
		0.928170, -0.038114, 0.370200,
		37.042725, 34.834984, 36.837704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.004482, 35.347450, 36.267155>,  <36.393005, 34.861664, 36.578564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.004482, 35.347450, 36.267155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.101681, 34.981060, 36.394867>,  <37.160000, 34.761227, 36.471493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.101681, 34.981060, 36.394867>,  <37.004482, 35.347450, 36.267155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.101681, 34.981060, 36.394867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385708, -0.210769, -0.898224,
		0.890046, 0.341414, 0.302083,
		0.242996, -0.915977, 0.319280,
		37.174580, 34.706268, 36.490650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.667873, 35.303730, 36.133629>,  <37.004482, 35.347450, 36.267155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.667873, 35.303730, 36.133629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.503124, 34.940258, 36.160938>,  <37.404274, 34.722176, 36.177326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.503124, 34.940258, 36.160938>,  <37.667873, 35.303730, 36.133629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.503124, 34.940258, 36.160938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263630, -0.190545, -0.945617,
		0.872274, -0.371472, 0.318036,
		-0.411870, -0.908681, 0.068276,
		37.379562, 34.667652, 36.181419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.971886, 35.024498, 35.552780>,  <37.667873, 35.303730, 36.133629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.971886, 35.024498, 35.552780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.696472, 34.760132, 35.672188>,  <37.531223, 34.601513, 35.743832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.696472, 34.760132, 35.672188>,  <37.971886, 35.024498, 35.552780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.696472, 34.760132, 35.672188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038326, -0.444225, -0.895095,
		0.724195, -0.604858, 0.331192,
		-0.688529, -0.660917, 0.298524,
		37.489914, 34.561855, 35.761745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.201778, 34.401752, 35.255974>,  <37.971886, 35.024498, 35.552780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.201778, 34.401752, 35.255974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.811752, 34.337685, 35.317410>,  <37.577736, 34.299244, 35.354271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.811752, 34.337685, 35.317410>,  <38.201778, 34.401752, 35.255974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.811752, 34.337685, 35.317410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068803, -0.439819, -0.895447,
		0.210979, -0.883688, 0.417832,
		-0.975066, -0.160173, 0.153593,
		37.519234, 34.289631, 35.363487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.107311, 33.793945, 34.956879>,  <38.201778, 34.401752, 35.255974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.107311, 33.793945, 34.956879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.741917, 33.955654, 34.975204>,  <37.522678, 34.052681, 34.986198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.741917, 33.955654, 34.975204>,  <38.107311, 33.793945, 34.956879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.741917, 33.955654, 34.975204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183933, -0.309902, -0.932807,
		-0.362914, -0.860536, 0.357452,
		-0.913489, 0.404276, 0.045813,
		37.467869, 34.076935, 34.988949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.801151, 33.331615, 34.614677>,  <38.107311, 33.793945, 34.956879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.801151, 33.331615, 34.614677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.546658, 33.640190, 34.618565>,  <37.393963, 33.825333, 34.620895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.546658, 33.640190, 34.618565>,  <37.801151, 33.331615, 34.614677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.546658, 33.640190, 34.618565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365483, -0.290291, -0.884394,
		-0.679433, -0.566232, 0.466639,
		-0.636234, 0.771435, 0.009714,
		37.355789, 33.871620, 34.621479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.199047, 33.019722, 34.574642>,  <37.801151, 33.331615, 34.614677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.199047, 33.019722, 34.574642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.145618, 33.395439, 34.448223>,  <37.113564, 33.620869, 34.372372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.145618, 33.395439, 34.448223>,  <37.199047, 33.019722, 34.574642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.145618, 33.395439, 34.448223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429765, -0.342253, -0.835563,
		-0.893007, 0.024219, 0.449390,
		-0.133568, 0.939295, -0.316043,
		37.105549, 33.677227, 34.353409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.492966, 33.102776, 34.299622>,  <37.199047, 33.019722, 34.574642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.492966, 33.102776, 34.299622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.707832, 33.396759, 34.134071>,  <36.836754, 33.573147, 34.034740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.707832, 33.396759, 34.134071>,  <36.492966, 33.102776, 34.299622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.707832, 33.396759, 34.134071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234359, -0.341312, -0.910265,
		-0.810264, 0.585959, -0.011099,
		0.537166, 0.734954, -0.413878,
		36.868980, 33.617245, 34.009907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.076839, 33.383701, 33.729954>,  <36.492966, 33.102776, 34.299622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.076839, 33.383701, 33.729954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.453003, 33.494751, 33.651413>,  <36.678703, 33.561378, 33.604290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.453003, 33.494751, 33.651413>,  <36.076839, 33.383701, 33.729954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.453003, 33.494751, 33.651413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047766, -0.463854, -0.884623,
		-0.336669, 0.841288, -0.422953,
		0.940411, 0.277622, -0.196350,
		36.735126, 33.578037, 33.592506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.061821, 33.577934, 33.066643>,  <36.076839, 33.383701, 33.729954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.061821, 33.577934, 33.066643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.453117, 33.518497, 33.124565>,  <36.687893, 33.482834, 33.159321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.453117, 33.518497, 33.124565>,  <36.061821, 33.577934, 33.066643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.453117, 33.518497, 33.124565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064010, -0.447749, -0.891865,
		0.197364, 0.881726, -0.428494,
		0.978238, -0.148594, 0.144809,
		36.746590, 33.473919, 33.168007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.358200, 33.915211, 32.526287>,  <36.061821, 33.577934, 33.066643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.358200, 33.915211, 32.526287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.602196, 33.630039, 32.664642>,  <36.748592, 33.458935, 32.747654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.602196, 33.630039, 32.664642>,  <36.358200, 33.915211, 32.526287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.602196, 33.630039, 32.664642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040281, -0.463837, -0.885005,
		0.791382, 0.525914, -0.311655,
		0.609993, -0.712931, 0.345888,
		36.785194, 33.416161, 32.768410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.874435, 33.723778, 31.976627>,  <36.358200, 33.915211, 32.526287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.874435, 33.723778, 31.976627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.898773, 33.416325, 32.231342>,  <36.913376, 33.231853, 32.384171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.898773, 33.416325, 32.231342>,  <36.874435, 33.723778, 31.976627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.898773, 33.416325, 32.231342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005294, -0.637713, -0.770256,
		0.998133, 0.050236, -0.034731,
		0.060844, -0.768634, 0.636789,
		36.917027, 33.185734, 32.422379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.492954, 33.358074, 31.804859>,  <36.874435, 33.723778, 31.976627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.492954, 33.358074, 31.804859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.241859, 33.110535, 31.993738>,  <37.091202, 32.962009, 32.107067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.241859, 33.110535, 31.993738>,  <37.492954, 33.358074, 31.804859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.241859, 33.110535, 31.993738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004841, -0.603489, -0.797357,
		0.778412, -0.502815, 0.375835,
		-0.627735, -0.618852, 0.472198,
		37.053539, 32.924877, 32.135399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.722095, 32.643887, 31.758181>,  <37.492954, 33.358074, 31.804859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.722095, 32.643887, 31.758181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.326813, 32.617615, 31.813517>,  <37.089645, 32.601852, 31.846718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.326813, 32.617615, 31.813517>,  <37.722095, 32.643887, 31.758181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.326813, 32.617615, 31.813517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034810, -0.783361, -0.620592,
		0.149130, -0.618087, 0.771835,
		-0.988205, -0.065681, 0.138338,
		37.030350, 32.597912, 31.855019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.658760, 31.898752, 31.813364>,  <37.722095, 32.643887, 31.758181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.658760, 31.898752, 31.813364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.296761, 32.054237, 31.744225>,  <37.079559, 32.147530, 31.702742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.296761, 32.054237, 31.744225>,  <37.658760, 31.898752, 31.813364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.296761, 32.054237, 31.744225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233043, -0.792917, -0.563004,
		-0.355901, -0.469238, 0.808177,
		-0.905000, 0.388714, -0.172847,
		37.025261, 32.170853, 31.692369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.232372, 31.264269, 31.726971>,  <37.658760, 31.898752, 31.813364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.232372, 31.264269, 31.726971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.024261, 31.574846, 31.584730>,  <36.899395, 31.761192, 31.499386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.024261, 31.574846, 31.584730>,  <37.232372, 31.264269, 31.726971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.024261, 31.574846, 31.584730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235910, -0.530860, -0.813962,
		-0.820770, -0.339593, 0.459363,
		-0.520273, 0.776444, -0.355600,
		36.868179, 31.807779, 31.478050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.534042, 30.973415, 31.477406>,  <37.232372, 31.264269, 31.726971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.534042, 30.973415, 31.477406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.600273, 31.322182, 31.293081>,  <36.640011, 31.531441, 31.182486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.600273, 31.322182, 31.293081>,  <36.534042, 30.973415, 31.477406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.600273, 31.322182, 31.293081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285698, -0.404817, -0.868619,
		-0.943907, 0.275478, 0.182075,
		0.165579, 0.871914, -0.460813,
		36.649948, 31.583755, 31.154837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.072052, 30.891876, 31.035616>,  <36.534042, 30.973415, 31.477406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.072052, 30.891876, 31.035616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.299210, 31.187399, 30.890472>,  <36.435505, 31.364712, 30.803387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.299210, 31.187399, 30.890472>,  <36.072052, 30.891876, 31.035616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.299210, 31.187399, 30.890472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248427, -0.266441, -0.931286,
		-0.784720, 0.619012, 0.032230,
		0.567890, 0.738805, -0.362861,
		36.469578, 31.409040, 30.781614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.739105, 31.072187, 30.535969>,  <36.072052, 30.891876, 31.035616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.739105, 31.072187, 30.535969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.109612, 31.209356, 30.473446>,  <36.331917, 31.291658, 30.435932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.109612, 31.209356, 30.473446>,  <35.739105, 31.072187, 30.535969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.109612, 31.209356, 30.473446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084147, -0.216097, -0.972739,
		-0.367351, 0.914170, -0.171308,
		0.926268, 0.342921, -0.156308,
		36.387493, 31.312233, 30.426554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.668777, 31.450583, 29.880327>,  <35.739105, 31.072187, 30.535969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.668777, 31.450583, 29.880327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.057274, 31.359907, 29.909451>,  <36.290371, 31.305502, 29.926924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.057274, 31.359907, 29.909451>,  <35.668777, 31.450583, 29.880327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.057274, 31.359907, 29.909451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038572, -0.451566, -0.891404,
		0.234949, 0.862960, -0.447324,
		0.971242, -0.226688, 0.072809,
		36.348648, 31.291901, 29.931293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.032085, 31.572643, 29.260391>,  <35.668777, 31.450583, 29.880327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.032085, 31.572643, 29.260391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.287880, 31.318628, 29.433729>,  <36.441357, 31.166220, 29.537733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.287880, 31.318628, 29.433729>,  <36.032085, 31.572643, 29.260391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.287880, 31.318628, 29.433729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142229, -0.456213, -0.878431,
		0.755534, 0.623377, -0.201420,
		0.639484, -0.635036, 0.433347,
		36.479725, 31.128117, 29.563734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.646137, 31.595196, 28.834909>,  <36.032085, 31.572643, 29.260391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.646137, 31.595196, 28.834909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.651188, 31.247753, 29.033045>,  <36.654221, 31.039288, 29.151926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.651188, 31.247753, 29.033045>,  <36.646137, 31.595196, 28.834909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.651188, 31.247753, 29.033045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192301, -0.484023, -0.853664,
		0.981255, 0.106037, 0.160921,
		0.012631, -0.868607, 0.495341,
		36.654976, 30.987171, 29.181646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.240391, 31.349661, 28.553556>,  <36.646137, 31.595196, 28.834909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.240391, 31.349661, 28.553556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.019886, 31.055754, 28.711662>,  <36.887585, 30.879410, 28.806526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.019886, 31.055754, 28.711662>,  <37.240391, 31.349661, 28.553556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.019886, 31.055754, 28.711662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225539, -0.587342, -0.777279,
		0.803272, -0.339335, 0.489495,
		-0.551258, -0.734767, 0.395262,
		36.854507, 30.835323, 28.830240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.723564, 30.701342, 28.456259>,  <37.240391, 31.349661, 28.553556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.723564, 30.701342, 28.456259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.344551, 30.581049, 28.499613>,  <37.117146, 30.508873, 28.525625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.344551, 30.581049, 28.499613>,  <37.723564, 30.701342, 28.456259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.344551, 30.581049, 28.499613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186780, -0.796004, -0.575753,
		0.259420, -0.525300, 0.810408,
		-0.947531, -0.300729, 0.108384,
		37.060291, 30.490829, 28.532127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.762154, 30.056705, 28.287899>,  <37.723564, 30.701342, 28.456259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.762154, 30.056705, 28.287899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.362564, 30.074526, 28.284613>,  <37.122810, 30.085218, 28.282640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.362564, 30.074526, 28.284613>,  <37.762154, 30.056705, 28.287899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.362564, 30.074526, 28.284613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028781, -0.764194, -0.644344,
		-0.034984, -0.643446, 0.764692,
		-0.998973, 0.044550, -0.008215,
		37.062874, 30.087891, 28.282148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.482704, 29.330318, 28.515169>,  <37.762154, 30.056705, 28.287899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.482704, 29.330318, 28.515169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.225739, 29.534744, 28.286741>,  <37.071560, 29.657400, 28.149685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.225739, 29.534744, 28.286741>,  <37.482704, 29.330318, 28.515169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.225739, 29.534744, 28.286741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043168, -0.768121, -0.638848,
		-0.765120, -0.385769, 0.515532,
		-0.642439, 0.511050, -0.571052,
		37.033012, 29.688063, 28.115421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.027485, 28.696627, 28.741144>,  <37.482704, 29.330318, 28.515169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.027485, 28.696627, 28.741144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.319553, 28.423355, 28.736746>,  <37.494793, 28.259392, 28.734106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.319553, 28.423355, 28.736746>,  <37.027485, 28.696627, 28.741144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.319553, 28.423355, 28.736746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163149, 0.158698, 0.973754,
		-0.663505, -0.712797, 0.227336,
		0.730167, -0.683180, -0.010995,
		37.538605, 28.218401, 28.733448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.016994, 28.247461, 29.287031>,  <37.027485, 28.696627, 28.741144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.016994, 28.247461, 29.287031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.387791, 28.295624, 29.144939>,  <37.610268, 28.324522, 29.059685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.387791, 28.295624, 29.144939>,  <37.016994, 28.247461, 29.287031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.387791, 28.295624, 29.144939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306411, 0.303134, 0.902342,
		0.216326, -0.945311, 0.244110,
		0.926992, 0.120402, -0.355229,
		37.665890, 28.331745, 29.038370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.401604, 27.806057, 29.581612>,  <37.016994, 28.247461, 29.287031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.401604, 27.806057, 29.581612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.640301, 28.106127, 29.467676>,  <37.783520, 28.286169, 29.399315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.640301, 28.106127, 29.467676>,  <37.401604, 27.806057, 29.581612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.640301, 28.106127, 29.467676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383084, 0.045570, 0.922589,
		0.705084, -0.659666, -0.260187,
		0.596744, 0.750176, -0.284839,
		37.819324, 28.331179, 29.382225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.012108, 27.713514, 29.864952>,  <37.401604, 27.806057, 29.581612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.012108, 27.713514, 29.864952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.076515, 28.103870, 29.806011>,  <38.115158, 28.338083, 29.770647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.076515, 28.103870, 29.806011>,  <38.012108, 27.713514, 29.864952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.076515, 28.103870, 29.806011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349128, 0.083326, 0.933363,
		0.923138, -0.201729, -0.327294,
		0.161014, 0.975891, -0.147351,
		38.124821, 28.396637, 29.761806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.564140, 27.830790, 30.355867>,  <38.012108, 27.713514, 29.864952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.564140, 27.830790, 30.355867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.396442, 28.184166, 30.272181>,  <38.295826, 28.396191, 30.221968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.396442, 28.184166, 30.272181>,  <38.564140, 27.830790, 30.355867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.396442, 28.184166, 30.272181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320155, 0.359506, 0.876503,
		0.849552, 0.300484, -0.433557,
		-0.419241, 0.883440, -0.209217,
		38.270672, 28.449198, 30.209415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.981621, 28.258316, 30.743654>,  <38.564140, 27.830790, 30.355867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.981621, 28.258316, 30.743654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.685452, 28.514952, 30.663517>,  <38.507751, 28.668934, 30.615435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.685452, 28.514952, 30.663517>,  <38.981621, 28.258316, 30.743654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.685452, 28.514952, 30.663517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161265, 0.458930, 0.873715,
		0.652511, 0.614609, -0.443267,
		-0.740421, 0.641591, -0.200342,
		38.463326, 28.707430, 30.603415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.180645, 29.045172, 30.808144>,  <38.981621, 28.258316, 30.743654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.180645, 29.045172, 30.808144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.790764, 28.990862, 30.879162>,  <38.556835, 28.958275, 30.921772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.790764, 28.990862, 30.879162>,  <39.180645, 29.045172, 30.808144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.790764, 28.990862, 30.879162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068551, 0.574463, 0.815655,
		-0.212739, 0.807191, -0.550623,
		-0.974701, -0.135776, 0.177545,
		38.498352, 28.950129, 30.932425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.060921, 29.748453, 31.073936>,  <39.180645, 29.045172, 30.808144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.060921, 29.748453, 31.073936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.777103, 29.488073, 31.181868>,  <38.606812, 29.331844, 31.246626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.777103, 29.488073, 31.181868>,  <39.060921, 29.748453, 31.073936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.777103, 29.488073, 31.181868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128948, 0.496401, 0.858463,
		-0.692760, 0.574325, -0.436158,
		-0.709546, -0.650950, 0.269829,
		38.564240, 29.292788, 31.262815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.521973, 30.217876, 31.347349>,  <39.060921, 29.748453, 31.073936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.521973, 30.217876, 31.347349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.483337, 29.842783, 31.480814>,  <38.460155, 29.617727, 31.560894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.483337, 29.842783, 31.480814>,  <38.521973, 30.217876, 31.347349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.483337, 29.842783, 31.480814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200063, 0.346679, 0.916400,
		-0.975011, 0.021756, -0.221089,
		-0.096585, -0.937732, 0.333663,
		38.454361, 29.561464, 31.580914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.850994, 30.228743, 31.604628>,  <38.521973, 30.217876, 31.347349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.850994, 30.228743, 31.604628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.024128, 29.908470, 31.770308>,  <38.128010, 29.716307, 31.869715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.024128, 29.908470, 31.770308>,  <37.850994, 30.228743, 31.604628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.024128, 29.908470, 31.770308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248141, 0.335898, 0.908624,
		-0.866647, -0.496067, -0.053293,
		0.432837, -0.800681, 0.414200,
		38.153980, 29.668266, 31.894567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.384480, 30.091530, 32.191692>,  <37.850994, 30.228743, 31.604628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.384480, 30.091530, 32.191692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.728786, 29.903877, 32.270687>,  <37.935371, 29.791286, 32.318085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.728786, 29.903877, 32.270687>,  <37.384480, 30.091530, 32.191692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.728786, 29.903877, 32.270687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152620, 0.132265, 0.979394,
		-0.485586, -0.873167, 0.042250,
		0.860763, -0.469133, 0.197489,
		37.987015, 29.763138, 32.329933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.232517, 29.720306, 32.816002>,  <37.384480, 30.091530, 32.191692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.232517, 29.720306, 32.816002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.632202, 29.729815, 32.803310>,  <37.872013, 29.735519, 32.795696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.632202, 29.729815, 32.803310>,  <37.232517, 29.720306, 32.816002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.632202, 29.729815, 32.803310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020806, 0.366940, 0.930012,
		0.033751, -0.929941, 0.366157,
		0.999214, 0.023770, -0.031733,
		37.931965, 29.736946, 32.793789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.519325, 29.340847, 33.413864>,  <37.232517, 29.720306, 32.816002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.519325, 29.340847, 33.413864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.786274, 29.608667, 33.283440>,  <37.946442, 29.769360, 33.205185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.786274, 29.608667, 33.283440>,  <37.519325, 29.340847, 33.413864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.786274, 29.608667, 33.283440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078953, 0.371753, 0.924968,
		0.740531, -0.643038, 0.195233,
		0.667368, 0.669553, -0.326064,
		37.986485, 29.809534, 33.185619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.855984, 29.419384, 34.011044>,  <37.519325, 29.340847, 33.413864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.855984, 29.419384, 34.011044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.010609, 29.714098, 33.789154>,  <38.103382, 29.890926, 33.656021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.010609, 29.714098, 33.789154>,  <37.855984, 29.419384, 34.011044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.010609, 29.714098, 33.789154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120318, 0.556055, 0.822390,
		0.914383, -0.384646, 0.126299,
		0.386559, 0.736784, -0.554727,
		38.126575, 29.935133, 33.622734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.499126, 29.716522, 34.342491>,  <37.855984, 29.419384, 34.011044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.499126, 29.716522, 34.342491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.380497, 30.011135, 34.099323>,  <38.309319, 30.187902, 33.953423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.380497, 30.011135, 34.099323>,  <38.499126, 29.716522, 34.342491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.380497, 30.011135, 34.099323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275982, 0.675497, 0.683768,
		0.914263, 0.035014, -0.403604,
		-0.296574, 0.736532, -0.607919,
		38.291523, 30.232094, 33.916946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.117077, 30.145693, 34.086712>,  <38.499126, 29.716522, 34.342491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.117077, 30.145693, 34.086712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.789227, 30.369537, 34.037651>,  <38.592514, 30.503843, 34.008213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.789227, 30.369537, 34.037651>,  <39.117077, 30.145693, 34.086712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.789227, 30.369537, 34.037651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282357, 0.580883, 0.763446,
		0.498479, 0.591111, -0.634119,
		-0.819630, 0.559610, -0.122654,
		38.543339, 30.537420, 34.000854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.332481, 30.941275, 34.112148>,  <39.117077, 30.145693, 34.086712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.332481, 30.941275, 34.112148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.941349, 30.904051, 34.187176>,  <38.706669, 30.881716, 34.232193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.941349, 30.904051, 34.187176>,  <39.332481, 30.941275, 34.112148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.941349, 30.904051, 34.187176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078814, 0.666332, 0.741478,
		-0.193983, 0.739825, -0.644227,
		-0.977834, -0.093061, 0.187566,
		38.647999, 30.876133, 34.243446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.122643, 31.543617, 34.099648>,  <39.332481, 30.941275, 34.112148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.122643, 31.543617, 34.099648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.817547, 31.385036, 34.304024>,  <38.634491, 31.289888, 34.426647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.817547, 31.385036, 34.304024>,  <39.122643, 31.543617, 34.099648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.817547, 31.385036, 34.304024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024940, 0.807504, 0.589335,
		-0.646227, 0.436765, -0.625801,
		-0.762738, -0.396452, 0.510938,
		38.588726, 31.266100, 34.457306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.650074, 32.112244, 34.291843>,  <39.122643, 31.543617, 34.099648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.650074, 32.112244, 34.291843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.543564, 31.836597, 34.561428>,  <38.479660, 31.671209, 34.723179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.543564, 31.836597, 34.561428>,  <38.650074, 32.112244, 34.291843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.543564, 31.836597, 34.561428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009917, 0.701123, 0.712971,
		-0.963847, 0.183160, -0.193523,
		-0.266272, -0.689115, 0.673959,
		38.463684, 31.629864, 34.763615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.196968, 32.491867, 34.666241>,  <38.650074, 32.112244, 34.291843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.196968, 32.491867, 34.666241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.286121, 32.172234, 34.889591>,  <38.339615, 31.980453, 35.023602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.286121, 32.172234, 34.889591>,  <38.196968, 32.491867, 34.666241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.286121, 32.172234, 34.889591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158033, 0.535593, 0.829558,
		-0.961950, -0.273137, -0.006907,
		0.222883, -0.799085, 0.558379,
		38.352985, 31.932508, 35.057106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.736675, 32.510487, 35.251354>,  <38.196968, 32.491867, 34.666241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.736675, 32.510487, 35.251354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.086250, 32.338856, 35.342674>,  <38.295998, 32.235878, 35.397465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.086250, 32.338856, 35.342674>,  <37.736675, 32.510487, 35.251354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.086250, 32.338856, 35.342674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004165, 0.476312, 0.879266,
		-0.486015, -0.767476, 0.418055,
		0.873941, -0.429078, 0.228298,
		38.348431, 32.210133, 35.411163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.621971, 32.339439, 35.968460>,  <37.736675, 32.510487, 35.251354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.621971, 32.339439, 35.968460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.015316, 32.309414, 35.902294>,  <38.251324, 32.291397, 35.862595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.015316, 32.309414, 35.902294>,  <37.621971, 32.339439, 35.968460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.015316, 32.309414, 35.902294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181420, 0.451499, 0.873634,
		0.009105, -0.889109, 0.457605,
		0.983363, -0.075064, -0.165413,
		38.310326, 32.286896, 35.852669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.952820, 32.222393, 36.606117>,  <37.621971, 32.339439, 35.968460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.952820, 32.222393, 36.606117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.247452, 32.361744, 36.374229>,  <38.424232, 32.445354, 36.235096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.247452, 32.361744, 36.374229>,  <37.952820, 32.222393, 36.606117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.247452, 32.361744, 36.374229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358507, 0.525704, 0.771433,
		0.573511, -0.776059, 0.262329,
		0.736585, 0.348378, -0.579720,
		38.468426, 32.466259, 36.200314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.516254, 32.214043, 36.996231>,  <37.952820, 32.222393, 36.606117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.516254, 32.214043, 36.996231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.617664, 32.461346, 36.698647>,  <38.678509, 32.609730, 36.520096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.617664, 32.461346, 36.698647>,  <38.516254, 32.214043, 36.996231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.617664, 32.461346, 36.698647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426686, 0.618752, 0.659610,
		0.868138, -0.484666, -0.106933,
		0.253526, 0.618260, -0.743962,
		38.693722, 32.646824, 36.475456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.182415, 32.264496, 37.184753>,  <38.516254, 32.214043, 36.996231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.182415, 32.264496, 37.184753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.043701, 32.571186, 36.968651>,  <38.960472, 32.755199, 36.838989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.043701, 32.571186, 36.968651>,  <39.182415, 32.264496, 37.184753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.043701, 32.571186, 36.968651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426296, 0.641909, 0.637357,
		0.835470, -0.009280, -0.549458,
		-0.346788, 0.766724, -0.540252,
		38.939667, 32.801205, 36.806576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.819466, 32.621902, 36.883827>,  <39.182415, 32.264496, 37.184753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.819466, 32.621902, 36.883827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.507542, 32.870365, 36.914997>,  <39.320389, 33.019444, 36.933701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.507542, 32.870365, 36.914997>,  <39.819466, 32.621902, 36.883827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.507542, 32.870365, 36.914997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561117, 0.638327, 0.526960,
		0.277580, 0.454652, -0.846310,
		-0.779806, 0.621152, 0.077926,
		39.273602, 33.056709, 36.938374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.104591, 33.307663, 37.043335>,  <39.819466, 32.621902, 36.883827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.104591, 33.307663, 37.043335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.714668, 33.345078, 37.124329>,  <39.480713, 33.367527, 37.172924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.714668, 33.345078, 37.124329>,  <40.104591, 33.307663, 37.043335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.714668, 33.345078, 37.124329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214800, 0.638207, 0.739292,
		-0.060075, 0.764161, -0.642222,
		-0.974809, 0.093537, 0.202482,
		39.422226, 33.373138, 37.185074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.187672, 33.986736, 37.130035>,  <40.104591, 33.307663, 37.043335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.187672, 33.986736, 37.130035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.854843, 33.849022, 37.303989>,  <39.655148, 33.766392, 37.408363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.854843, 33.849022, 37.303989>,  <40.187672, 33.986736, 37.130035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.854843, 33.849022, 37.303989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202307, 0.541656, 0.815892,
		-0.516458, 0.766861, -0.381046,
		-0.832072, -0.344286, 0.434884,
		39.605221, 33.745735, 37.434456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.846176, 34.598320, 37.396950>,  <40.187672, 33.986736, 37.130035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.846176, 34.598320, 37.396950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.696033, 34.283089, 37.592106>,  <39.605949, 34.093948, 37.709198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.696033, 34.283089, 37.592106>,  <39.846176, 34.598320, 37.396950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.696033, 34.283089, 37.592106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203914, 0.443267, 0.872888,
		-0.904172, 0.427131, -0.005682,
		-0.375357, -0.788082, 0.487887,
		39.583427, 34.046665, 37.738472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.486370, 34.877338, 38.013523>,  <39.846176, 34.598320, 37.396950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.486370, 34.877338, 38.013523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.563015, 34.491219, 38.084492>,  <39.609001, 34.259548, 38.127075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.563015, 34.491219, 38.084492>,  <39.486370, 34.877338, 38.013523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.563015, 34.491219, 38.084492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299441, 0.229652, 0.926064,
		-0.934676, -0.124317, 0.333055,
		0.191612, -0.965301, 0.177424,
		39.620499, 34.201630, 38.137718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.397652, 34.874454, 38.714016>,  <39.486370, 34.877338, 38.013523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.397652, 34.874454, 38.714016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.559124, 34.509865, 38.682354>,  <39.656006, 34.291111, 38.663357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.559124, 34.509865, 38.682354>,  <39.397652, 34.874454, 38.714016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.559124, 34.509865, 38.682354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234541, 0.019467, 0.971911,
		-0.884327, -0.410906, 0.221636,
		0.403679, -0.911470, -0.079159,
		39.680229, 34.236423, 38.658607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.063099, 34.305351, 39.147732>,  <39.397652, 34.874454, 38.714016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.063099, 34.305351, 39.147732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.428577, 34.154789, 39.086433>,  <39.647865, 34.064453, 39.049652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.428577, 34.154789, 39.086433>,  <39.063099, 34.305351, 39.147732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.428577, 34.154789, 39.086433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144743, -0.050967, 0.988156,
		-0.379759, -0.925052, 0.007914,
		0.913692, -0.376406, -0.153250,
		39.702686, 34.041866, 39.040459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.217522, 33.773266, 39.642773>,  <39.063099, 34.305351, 39.147732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.217522, 33.773266, 39.642773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.587261, 33.868477, 39.523487>,  <39.809105, 33.925602, 39.451916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.587261, 33.868477, 39.523487>,  <39.217522, 33.773266, 39.642773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.587261, 33.868477, 39.523487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321074, -0.062960, 0.944959,
		0.206151, -0.969216, -0.134621,
		0.924345, 0.238028, -0.298211,
		39.864563, 33.939884, 39.434025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.750801, 33.313465, 40.013546>,  <39.217522, 33.773266, 39.642773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.750801, 33.313465, 40.013546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.959236, 33.634560, 39.897564>,  <40.084297, 33.827217, 39.827972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.959236, 33.634560, 39.897564>,  <39.750801, 33.313465, 40.013546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.959236, 33.634560, 39.897564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492218, -0.005098, 0.870457,
		0.697273, -0.596306, -0.397780,
		0.521087, 0.802741, -0.289958,
		40.115562, 33.875381, 39.810577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.439396, 33.117966, 40.165501>,  <39.750801, 33.313465, 40.013546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.439396, 33.117966, 40.165501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.463013, 33.516361, 40.138580>,  <40.477180, 33.755398, 40.122429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.463013, 33.516361, 40.138580>,  <40.439396, 33.117966, 40.165501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.463013, 33.516361, 40.138580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538585, 0.024987, 0.842201,
		0.840500, -0.085973, -0.534946,
		0.059040, 0.995984, -0.067305,
		40.480724, 33.815155, 40.118389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.148716, 33.245903, 40.467281>,  <40.439396, 33.117966, 40.165501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.148716, 33.245903, 40.467281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.937401, 33.584274, 40.496426>,  <40.810612, 33.787296, 40.513912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.937401, 33.584274, 40.496426>,  <41.148716, 33.245903, 40.467281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.937401, 33.584274, 40.496426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546636, 0.273204, 0.791548,
		0.649690, 0.457995, -0.606748,
		-0.528291, 0.845931, 0.072859,
		40.778912, 33.838055, 40.518284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.623627, 33.929642, 40.470825>,  <41.148716, 33.245903, 40.467281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.623627, 33.929642, 40.470825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.278881, 34.019001, 40.652939>,  <41.072033, 34.072617, 40.762207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.278881, 34.019001, 40.652939>,  <41.623627, 33.929642, 40.470825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.278881, 34.019001, 40.652939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492863, 0.157463, 0.855740,
		0.119478, 0.961925, -0.245816,
		-0.861865, 0.223396, 0.455284,
		41.020321, 34.086021, 40.789524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.863503, 34.419006, 40.937683>,  <41.623627, 33.929642, 40.470825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.863503, 34.419006, 40.937683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.490726, 34.351841, 41.066242>,  <41.267063, 34.311543, 41.143379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.490726, 34.351841, 41.066242>,  <41.863503, 34.419006, 40.937683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.490726, 34.351841, 41.066242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330037, -0.025564, 0.943622,
		-0.150232, 0.985470, 0.079242,
		-0.931937, -0.167915, 0.321401,
		41.211147, 34.301468, 41.162663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.702412, 34.944263, 41.416481>,  <41.863503, 34.419006, 40.937683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.702412, 34.944263, 41.416481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.462902, 34.637787, 41.509804>,  <41.319199, 34.453903, 41.565796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.462902, 34.637787, 41.509804>,  <41.702412, 34.944263, 41.416481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.462902, 34.637787, 41.509804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304836, 0.051358, 0.951019,
		-0.740641, 0.640561, 0.202810,
		-0.598770, -0.766188, 0.233304,
		41.283272, 34.407932, 41.579796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.467899, 35.004559, 42.212082>,  <41.702412, 34.944263, 41.416481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.467899, 35.004559, 42.212082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.394154, 34.620327, 42.128857>,  <41.349907, 34.389786, 42.078922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.394154, 34.620327, 42.128857>,  <41.467899, 35.004559, 42.212082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.394154, 34.620327, 42.128857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195347, -0.243282, 0.950081,
		-0.963249, 0.134518, 0.232500,
		-0.184366, -0.960583, -0.208063,
		41.338844, 34.332153, 42.066437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.056038, 34.768360, 42.782581>,  <41.467899, 35.004559, 42.212082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.056038, 34.768360, 42.782581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.284344, 34.496078, 42.598904>,  <41.421329, 34.332710, 42.488697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.284344, 34.496078, 42.598904>,  <41.056038, 34.768360, 42.782581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.284344, 34.496078, 42.598904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398300, -0.259517, 0.879777,
		-0.718040, -0.685047, 0.123001,
		0.570768, -0.680707, -0.459198,
		41.455574, 34.291866, 42.461143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.116005, 34.201069, 43.282417>,  <41.056038, 34.768360, 42.782581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.116005, 34.201069, 43.282417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.421085, 34.152046, 43.028404>,  <41.604134, 34.122631, 42.875996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.421085, 34.152046, 43.028404>,  <41.116005, 34.201069, 43.282417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.421085, 34.152046, 43.028404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620478, -0.138368, 0.771920,
		-0.182474, -0.982768, -0.029488,
		0.762699, -0.122559, -0.635035,
		41.649895, 34.115280, 42.837894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.442680, 33.563557, 43.447811>,  <41.116005, 34.201069, 43.282417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.442680, 33.563557, 43.447811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.726799, 33.782558, 43.270851>,  <41.897270, 33.913960, 43.164677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.726799, 33.782558, 43.270851>,  <41.442680, 33.563557, 43.447811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.726799, 33.782558, 43.270851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680444, -0.373161, 0.630672,
		0.180210, -0.748992, -0.637602,
		0.710296, 0.547506, -0.442400,
		41.939888, 33.946812, 43.138130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.072304, 33.167706, 43.546917>,  <41.442680, 33.563557, 43.447811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.072304, 33.167706, 43.546917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.193371, 33.541592, 43.472404>,  <42.266010, 33.765923, 43.427696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.193371, 33.541592, 43.472404>,  <42.072304, 33.167706, 43.546917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.193371, 33.541592, 43.472404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766609, -0.122620, 0.630298,
		0.566306, -0.333577, -0.753673,
		0.302668, 0.934714, -0.186283,
		42.284172, 33.822006, 43.416519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.899879, 33.207069, 43.583076>,  <42.072304, 33.167706, 43.546917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.899879, 33.207069, 43.583076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.747768, 33.574486, 43.626278>,  <42.656502, 33.794937, 43.652199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.747768, 33.574486, 43.626278>,  <42.899879, 33.207069, 43.583076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.747768, 33.574486, 43.626278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560002, 0.135738, 0.817296,
		0.736062, 0.371283, -0.566005,
		-0.380277, 0.918545, 0.108008,
		42.633686, 33.850048, 43.658680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.476883, 33.712017, 43.559311>,  <42.899879, 33.207069, 43.583076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.476883, 33.712017, 43.559311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.167324, 33.878193, 43.750519>,  <42.981590, 33.977898, 43.865242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.167324, 33.878193, 43.750519>,  <43.476883, 33.712017, 43.559311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.167324, 33.878193, 43.750519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601848, 0.247471, 0.759301,
		0.197149, 0.875311, -0.441547,
		-0.773894, 0.415439, 0.478015,
		42.935154, 34.002823, 43.893925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.834999, 34.171528, 43.980125>,  <43.476883, 33.712017, 43.559311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.834999, 34.171528, 43.980125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.471012, 34.220814, 44.138504>,  <43.252621, 34.250385, 44.233532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.471012, 34.220814, 44.138504>,  <43.834999, 34.171528, 43.980125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.471012, 34.220814, 44.138504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404384, 0.475033, 0.781548,
		-0.091790, 0.871299, -0.482091,
		-0.909971, 0.123211, 0.395943,
		43.198021, 34.257778, 44.257286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.763142, 34.913795, 44.205467>,  <43.834999, 34.171528, 43.980125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.763142, 34.913795, 44.205467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.497494, 34.695633, 44.410004>,  <43.338104, 34.564735, 44.532726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.497494, 34.695633, 44.410004>,  <43.763142, 34.913795, 44.205467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.497494, 34.695633, 44.410004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283701, 0.448947, 0.847325,
		-0.691704, 0.707796, -0.143423,
		-0.664122, -0.545410, 0.511341,
		43.298256, 34.532009, 44.563404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.481018, 35.333488, 44.624760>,  <43.763142, 34.913795, 44.205467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.481018, 35.333488, 44.624760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.378334, 34.989849, 44.801872>,  <43.316723, 34.783665, 44.908138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.378334, 34.989849, 44.801872>,  <43.481018, 35.333488, 44.624760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.378334, 34.989849, 44.801872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178160, 0.408216, 0.895332,
		-0.949926, 0.308724, 0.048265,
		-0.256708, -0.859098, 0.442778,
		43.301323, 34.732121, 44.934704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.046749, 35.477959, 45.074894>,  <43.481018, 35.333488, 44.624760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.046749, 35.477959, 45.074894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.169342, 35.121590, 45.208954>,  <43.242897, 34.907768, 45.289391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.169342, 35.121590, 45.208954>,  <43.046749, 35.477959, 45.074894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.169342, 35.121590, 45.208954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025935, 0.344149, 0.938557,
		-0.951524, -0.296342, 0.082369,
		0.306481, -0.890922, 0.335152,
		43.261288, 34.854313, 45.309498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.768917, 35.413315, 45.749523>,  <43.046749, 35.477959, 45.074894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.768917, 35.413315, 45.749523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.078281, 35.161198, 45.722481>,  <43.263901, 35.009926, 45.706253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.078281, 35.161198, 45.722481>,  <42.768917, 35.413315, 45.749523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.078281, 35.161198, 45.722481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301037, 0.271329, 0.914197,
		-0.557868, -0.727400, 0.399590,
		0.773407, -0.630293, -0.067608,
		43.310303, 34.972111, 45.702198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.794186, 35.308979, 46.371605>,  <42.768917, 35.413315, 45.749523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.794186, 35.308979, 46.371605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.138500, 35.155846, 46.237450>,  <43.345089, 35.063965, 46.156956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.138500, 35.155846, 46.237450>,  <42.794186, 35.308979, 46.371605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.138500, 35.155846, 46.237450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429343, 0.192293, 0.882433,
		-0.273333, -0.903583, 0.329890,
		0.860786, -0.382834, -0.335387,
		43.396736, 35.040997, 46.136833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.017643, 34.850510, 46.853737>,  <42.794186, 35.308979, 46.371605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.017643, 34.850510, 46.853737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.356415, 34.941772, 46.661633>,  <43.559677, 34.996532, 46.546371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.356415, 34.941772, 46.661633>,  <43.017643, 34.850510, 46.853737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.356415, 34.941772, 46.661633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478338, 0.067432, 0.875583,
		0.232159, -0.971285, -0.052028,
		0.846933, 0.228162, -0.480257,
		43.610497, 35.010220, 46.517555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.581043, 34.452682, 47.171452>,  <43.017643, 34.850510, 46.853737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.581043, 34.452682, 47.171452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.739803, 34.763683, 46.976330>,  <43.835060, 34.950283, 46.859257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.739803, 34.763683, 46.976330>,  <43.581043, 34.452682, 47.171452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.739803, 34.763683, 46.976330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709174, 0.077634, 0.700746,
		0.582705, -0.624065, -0.520575,
		0.396897, 0.777506, -0.487808,
		43.858871, 34.996937, 46.829987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.225853, 34.279919, 46.765163>,  <43.581043, 34.452682, 47.171452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.225853, 34.279919, 46.765163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.237270, 34.673027, 46.838200>,  <44.244122, 34.908894, 46.882019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.237270, 34.673027, 46.838200>,  <44.225853, 34.279919, 46.765163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.237270, 34.673027, 46.838200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819851, -0.127520, 0.558196,
		0.571865, 0.133758, -0.809370,
		0.028548, 0.982775, 0.182586,
		44.245834, 34.967861, 46.892975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.901676, 34.537926, 46.675201>,  <44.225853, 34.279919, 46.765163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.901676, 34.537926, 46.675201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.746563, 34.806400, 46.927910>,  <44.653496, 34.967484, 47.079536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.746563, 34.806400, 46.927910>,  <44.901676, 34.537926, 46.675201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.746563, 34.806400, 46.927910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888117, 0.088601, 0.450997,
		0.246729, 0.735973, -0.630451,
		-0.387780, 0.671188, 0.631770,
		44.630230, 35.007755, 47.117439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.422421, 34.930653, 46.627243>,  <44.901676, 34.537926, 46.675201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.422421, 34.930653, 46.627243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.223488, 35.052139, 46.952305>,  <45.104126, 35.125031, 47.147343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.223488, 35.052139, 46.952305>,  <45.422421, 34.930653, 46.627243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.223488, 35.052139, 46.952305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864149, 0.090454, 0.495041,
		0.076843, 0.948459, -0.307442,
		-0.497335, 0.303716, 0.812659,
		45.074287, 35.143253, 47.196102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.844215, 35.505169, 46.912189>,  <45.422421, 34.930653, 46.627243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.844215, 35.505169, 46.912189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.597027, 35.373268, 47.197670>,  <45.448711, 35.294128, 47.368958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.597027, 35.373268, 47.197670>,  <45.844215, 35.505169, 46.912189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.597027, 35.373268, 47.197670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749512, 0.026967, 0.661442,
		-0.237361, 0.943681, 0.230492,
		-0.617974, -0.329757, 0.713701,
		45.411636, 35.274342, 47.411781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.856983, 36.065277, 47.482456>,  <45.844215, 35.505169, 46.912189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.856983, 36.065277, 47.482456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.737919, 35.716679, 47.638348>,  <45.666481, 35.507519, 47.731884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.737919, 35.716679, 47.638348>,  <45.856983, 36.065277, 47.482456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.737919, 35.716679, 47.638348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682182, 0.091418, 0.725445,
		-0.667852, 0.481805, 0.567308,
		-0.297661, -0.871497, 0.389732,
		45.648621, 35.455231, 47.755268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.742977, 36.003750, 48.244621>,  <45.856983, 36.065277, 47.482456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.742977, 36.003750, 48.244621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.838242, 35.624813, 48.158989>,  <45.895401, 35.397453, 48.107609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.838242, 35.624813, 48.158989>,  <45.742977, 36.003750, 48.244621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.838242, 35.624813, 48.158989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754040, 0.041428, 0.655521,
		-0.612131, -0.317543, 0.724197,
		0.238158, -0.947338, -0.214080,
		45.909691, 35.340611, 48.094765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.727203, 35.471329, 48.824703>,  <45.742977, 36.003750, 48.244621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.727203, 35.471329, 48.824703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.027618, 35.391632, 48.572914>,  <46.207867, 35.343815, 48.421841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.027618, 35.391632, 48.572914>,  <45.727203, 35.471329, 48.824703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.027618, 35.391632, 48.572914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655640, 0.112540, 0.746639,
		-0.077924, -0.973466, 0.215156,
		0.751042, -0.199247, -0.629474,
		46.252930, 35.331860, 48.384071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.293804, 34.947735, 49.076286>,  <45.727203, 35.471329, 48.824703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.293804, 34.947735, 49.076286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.456039, 35.184174, 48.797401>,  <46.553379, 35.326038, 48.630070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.456039, 35.184174, 48.797401>,  <46.293804, 34.947735, 49.076286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.456039, 35.184174, 48.797401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686953, 0.306070, 0.659103,
		0.602989, -0.746275, -0.281919,
		0.405585, 0.591097, -0.697213,
		46.577717, 35.361504, 48.588238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.056965, 34.968933, 48.800476>,  <46.293804, 34.947735, 49.076286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.056965, 34.968933, 48.800476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.906696, 34.609150, 48.711178>,  <46.816536, 34.393280, 48.657597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.906696, 34.609150, 48.711178>,  <47.056965, 34.968933, 48.800476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.906696, 34.609150, 48.711178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.890275, 0.417176, -0.182685,
		0.257452, 0.130123, -0.957490,
		-0.375670, -0.899462, -0.223248,
		46.793995, 34.339310, 48.644203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.731461, 34.928364, 48.095463>,  <47.056965, 34.968933, 48.800476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.731461, 34.928364, 48.095463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.560825, 34.662979, 48.341339>,  <46.458447, 34.503750, 48.488865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.560825, 34.662979, 48.341339>,  <46.731461, 34.928364, 48.095463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.560825, 34.662979, 48.341339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.903085, 0.349745, -0.249230,
		-0.049631, -0.661437, -0.748357,
		-0.426584, -0.663461, 0.614692,
		46.432850, 34.463940, 48.525745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.159836, 34.630112, 47.657963>,  <46.731461, 34.928364, 48.095463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.159836, 34.630112, 47.657963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.082550, 34.667545, 48.048637>,  <46.036179, 34.690006, 48.283043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.082550, 34.667545, 48.048637>,  <46.159836, 34.630112, 47.657963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.082550, 34.667545, 48.048637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.910219, 0.354526, -0.214038,
		-0.366290, -0.930351, 0.016680,
		-0.193217, 0.093583, 0.976683,
		46.024586, 34.695621, 48.341640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.546204, 34.277348, 47.749493>,  <46.159836, 34.630112, 47.657963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.546204, 34.277348, 47.749493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.584343, 34.578014, 48.010536>,  <45.607227, 34.758415, 48.167164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.584343, 34.578014, 48.010536>,  <45.546204, 34.277348, 47.749493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.584343, 34.578014, 48.010536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793742, 0.453055, -0.405852,
		-0.600735, -0.479307, 0.639830,
		0.095351, 0.751669, 0.652611,
		45.612949, 34.803516, 48.206318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.041111, 34.446102, 48.272690>,  <45.546204, 34.277348, 47.749493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.041111, 34.446102, 48.272690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.207554, 34.789757, 48.153534>,  <45.307419, 34.995949, 48.082043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.207554, 34.789757, 48.153534>,  <45.041111, 34.446102, 48.272690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.207554, 34.789757, 48.153534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803196, 0.193681, -0.563351,
		-0.426301, 0.473675, 0.770648,
		0.416105, 0.859139, -0.297887,
		45.332386, 35.047497, 48.064167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.577919, 34.941750, 48.378162>,  <45.041111, 34.446102, 48.272690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.577919, 34.941750, 48.378162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.836884, 35.053043, 48.094345>,  <44.992260, 35.119820, 47.924057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.836884, 35.053043, 48.094345>,  <44.577919, 34.941750, 48.378162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.836884, 35.053043, 48.094345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757816, 0.135950, -0.638147,
		-0.081090, 0.950844, 0.298863,
		0.647409, 0.278231, -0.709541,
		45.031105, 35.136513, 47.881481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.358864, 35.583370, 48.240799>,  <44.577919, 34.941750, 48.378162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.358864, 35.583370, 48.240799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.579063, 35.455391, 47.932362>,  <44.711182, 35.378601, 47.747299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.579063, 35.455391, 47.932362>,  <44.358864, 35.583370, 48.240799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.579063, 35.455391, 47.932362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758120, 0.195184, -0.622219,
		0.349585, 0.927111, -0.135113,
		0.550494, -0.319951, -0.771095,
		44.744213, 35.359406, 47.701035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.291073, 36.068916, 47.685783>,  <44.358864, 35.583370, 48.240799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.291073, 36.068916, 47.685783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.433071, 35.749409, 47.491482>,  <44.518269, 35.557705, 47.374901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.433071, 35.749409, 47.491482>,  <44.291073, 36.068916, 47.685783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.433071, 35.749409, 47.491482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578970, 0.220118, -0.785075,
		0.734013, 0.559931, -0.384321,
		0.354991, -0.798765, -0.485752,
		44.539570, 35.509781, 47.345757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.342262, 36.241974, 46.972683>,  <44.291073, 36.068916, 47.685783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.342262, 36.241974, 46.972683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.310268, 35.843300, 46.978664>,  <44.291073, 35.604095, 46.982254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.310268, 35.843300, 46.978664>,  <44.342262, 36.241974, 46.972683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.310268, 35.843300, 46.978664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709791, 0.046415, -0.702881,
		0.699857, -0.066832, -0.711150,
		-0.079983, -0.996684, 0.014953,
		44.286274, 35.544296, 46.983150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.393162, 36.028553, 46.307846>,  <44.342262, 36.241974, 46.972683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.393162, 36.028553, 46.307846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.205914, 35.716717, 46.474270>,  <44.093563, 35.529617, 46.574123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.205914, 35.716717, 46.474270>,  <44.393162, 36.028553, 46.307846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.205914, 35.716717, 46.474270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678782, 0.015773, -0.734171,
		0.565787, -0.626096, -0.536553,
		-0.468124, -0.779587, 0.416058,
		44.065475, 35.482841, 46.599087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.964645, 35.776291, 45.842709>,  <44.393162, 36.028553, 46.307846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.964645, 35.776291, 45.842709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.748592, 35.587143, 46.121178>,  <43.618961, 35.473656, 46.288258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.748592, 35.587143, 46.121178>,  <43.964645, 35.776291, 45.842709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.748592, 35.587143, 46.121178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755270, -0.092554, -0.648845,
		0.371253, -0.876258, -0.307154,
		-0.540128, -0.472870, 0.696173,
		43.586555, 35.445282, 46.330029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.603386, 35.404987, 45.781059>,  <43.964645, 35.776291, 45.842709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.603386, 35.404987, 45.781059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.298752, 35.258972, 45.995247>,  <44.115971, 35.171364, 46.123760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.298752, 35.258972, 45.995247>,  <44.603386, 35.404987, 45.781059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.298752, 35.258972, 45.995247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408846, -0.370449, -0.834034,
		0.502818, -0.854117, 0.132886,
		-0.761590, -0.365037, 0.535471,
		44.070274, 35.149460, 46.155888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.472504, 34.775948, 45.356838>,  <44.603386, 35.404987, 45.781059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.472504, 34.775948, 45.356838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.178570, 34.802128, 45.626869>,  <44.002209, 34.817837, 45.788887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.178570, 34.802128, 45.626869>,  <44.472504, 34.775948, 45.356838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.178570, 34.802128, 45.626869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599806, -0.527358, -0.601769,
		0.316622, -0.847118, 0.426780,
		-0.734836, 0.065452, 0.675079,
		43.958118, 34.821762, 45.829391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.248055, 34.095882, 45.673908>,  <44.472504, 34.775948, 45.356838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.248055, 34.095882, 45.673908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.961670, 34.375065, 45.667576>,  <43.789837, 34.542576, 45.663776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.961670, 34.375065, 45.667576>,  <44.248055, 34.095882, 45.673908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.961670, 34.375065, 45.667576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511354, -0.539716, -0.668748,
		-0.475300, -0.470706, 0.743321,
		-0.715965, 0.697956, -0.015829,
		43.746880, 34.584450, 45.662827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.758141, 33.730099, 45.251629>,  <44.248055, 34.095882, 45.673908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.758141, 33.730099, 45.251629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.620975, 34.100651, 45.313885>,  <43.538677, 34.322983, 45.351238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.620975, 34.100651, 45.313885>,  <43.758141, 33.730099, 45.251629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.620975, 34.100651, 45.313885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769651, -0.182080, -0.611951,
		-0.538561, -0.329637, 0.775430,
		-0.342912, 0.926383, 0.155644,
		43.518101, 34.378567, 45.360577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.038418, 33.669025, 45.505402>,  <43.758141, 33.730099, 45.251629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.038418, 33.669025, 45.505402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.098396, 34.021320, 45.325706>,  <43.134384, 34.232697, 45.217892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.098396, 34.021320, 45.325706>,  <43.038418, 33.669025, 45.505402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.098396, 34.021320, 45.325706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634734, -0.262617, -0.726736,
		-0.758042, 0.394119, 0.519656,
		0.149950, 0.880740, -0.449236,
		43.143383, 34.285542, 45.190937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.355839, 33.897903, 45.215263>,  <43.038418, 33.669025, 45.505402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.355839, 33.897903, 45.215263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.634743, 34.094147, 45.006214>,  <42.802086, 34.211891, 44.880787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.634743, 34.094147, 45.006214>,  <42.355839, 33.897903, 45.215263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.634743, 34.094147, 45.006214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578499, -0.045391, -0.814420,
		-0.423284, 0.870197, 0.252168,
		0.697259, 0.490609, -0.522621,
		42.843922, 34.241329, 44.849426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.013195, 34.429649, 44.788364>,  <42.355839, 33.897903, 45.215263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.013195, 34.429649, 44.788364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.368343, 34.354565, 44.620342>,  <42.581432, 34.309513, 44.519527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.368343, 34.354565, 44.620342>,  <42.013195, 34.429649, 44.788364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.368343, 34.354565, 44.620342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436350, -0.054040, -0.898153,
		0.145897, 0.980736, -0.129890,
		0.887870, -0.187715, -0.420060,
		42.634705, 34.298248, 44.494324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.068916, 34.913963, 44.199024>,  <42.013195, 34.429649, 44.788364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.068916, 34.913963, 44.199024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.303944, 34.597908, 44.129230>,  <42.444958, 34.408276, 44.087353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.303944, 34.597908, 44.129230>,  <42.068916, 34.913963, 44.199024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.303944, 34.597908, 44.129230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435215, -0.126801, -0.891353,
		0.682169, 0.599667, -0.418385,
		0.587566, -0.790140, -0.174484,
		42.480213, 34.360867, 44.076885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.396481, 35.114193, 43.581181>,  <42.068916, 34.913963, 44.199024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.396481, 35.114193, 43.581181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.426811, 34.715992, 43.603912>,  <42.445007, 34.477074, 43.617550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.426811, 34.715992, 43.603912>,  <42.396481, 35.114193, 43.581181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.426811, 34.715992, 43.603912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292085, -0.076664, -0.953315,
		0.953382, 0.055685, -0.296584,
		0.075823, -0.995501, 0.056826,
		42.449558, 34.417343, 43.620960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.586246, 34.975109, 42.919586>,  <42.396481, 35.114193, 43.581181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.586246, 34.975109, 42.919586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.505356, 34.613327, 43.069817>,  <42.456821, 34.396255, 43.159954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.505356, 34.613327, 43.069817>,  <42.586246, 34.975109, 42.919586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.505356, 34.613327, 43.069817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369033, -0.284860, -0.884686,
		0.907149, -0.317507, -0.276169,
		-0.202225, -0.904458, 0.375581,
		42.444687, 34.341991, 43.182491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.863922, 34.444618, 42.473488>,  <42.586246, 34.975109, 42.919586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.863922, 34.444618, 42.473488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.553188, 34.292736, 42.674427>,  <42.366749, 34.201607, 42.794991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.553188, 34.292736, 42.674427>,  <42.863922, 34.444618, 42.473488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.553188, 34.292736, 42.674427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480913, -0.157252, -0.862551,
		0.406512, -0.911644, -0.060448,
		-0.776834, -0.379707, 0.502346,
		42.320137, 34.178825, 42.825130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.611488, 33.956886, 42.022808>,  <42.863922, 34.444618, 42.473488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.611488, 33.956886, 42.022808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.311558, 34.008083, 42.282463>,  <42.131599, 34.038803, 42.438255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.311558, 34.008083, 42.282463>,  <42.611488, 33.956886, 42.022808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.311558, 34.008083, 42.282463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659069, -0.058197, -0.749828,
		-0.058197, -0.990066, 0.127995,
		0.749828, -0.127995, -0.649134,
		42.086609, 34.046482, 42.477203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.207237, 33.301071, 42.100491>,  <42.611488, 33.956886, 42.022808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.207237, 33.301071, 42.100491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.000443, 33.635555, 42.173668>,  <41.876366, 33.836246, 42.217575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.000443, 33.635555, 42.173668>,  <42.207237, 33.301071, 42.100491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.000443, 33.635555, 42.173668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546472, -0.157928, -0.822452,
		-0.658854, -0.525171, 0.538615,
		-0.516991, 0.836214, 0.182939,
		41.845345, 33.886421, 42.228550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.749870, 33.165215, 41.623077>,  <42.207237, 33.301071, 42.100491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.749870, 33.165215, 41.623077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.562424, 32.991047, 41.315620>,  <42.449955, 32.886547, 41.131145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.562424, 32.991047, 41.315620>,  <42.749870, 33.165215, 41.623077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.562424, 32.991047, 41.315620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839582, -0.490152, -0.234209,
		-0.274771, -0.755091, 0.595264,
		-0.468619, -0.435418, -0.768640,
		42.421837, 32.860420, 41.085030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.320438, 32.555618, 41.568035>,  <42.749870, 33.165215, 41.623077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.320438, 32.555618, 41.568035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.078480, 32.528934, 41.250633>,  <42.933304, 32.512924, 41.060192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.078480, 32.528934, 41.250633>,  <43.320438, 32.555618, 41.568035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.078480, 32.528934, 41.250633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615321, -0.671671, -0.412600,
		-0.505452, -0.737841, 0.447336,
		-0.604895, -0.066705, -0.793506,
		42.897011, 32.508923, 41.012581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.361881, 31.803556, 41.351524>,  <43.320438, 32.555618, 41.568035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.361881, 31.803556, 41.351524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.281635, 32.082565, 41.076363>,  <43.233486, 32.249969, 40.911266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.281635, 32.082565, 41.076363>,  <43.361881, 31.803556, 41.351524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.281635, 32.082565, 41.076363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563027, -0.492542, -0.663628,
		-0.801719, -0.520444, -0.293913,
		-0.200617, 0.697524, -0.687905,
		43.221451, 32.291824, 40.869991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.258015, 31.412039, 40.815105>,  <43.361881, 31.803556, 41.351524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.258015, 31.412039, 40.815105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.383480, 31.773546, 40.698616>,  <43.458759, 31.990452, 40.628723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.383480, 31.773546, 40.698616>,  <43.258015, 31.412039, 40.815105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.383480, 31.773546, 40.698616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571209, -0.424599, -0.702450,
		-0.758507, 0.053986, -0.649425,
		0.313668, 0.903771, -0.291223,
		43.477581, 32.044678, 40.611248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.974186, 31.807680, 40.118153>,  <43.258015, 31.412039, 40.815105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.974186, 31.807680, 40.118153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.358303, 31.824535, 40.228466>,  <43.588776, 31.834648, 40.294655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.358303, 31.824535, 40.228466>,  <42.974186, 31.807680, 40.118153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.358303, 31.824535, 40.228466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258773, -0.503905, -0.824085,
		0.104242, 0.862731, -0.494803,
		0.960297, 0.042137, 0.275779,
		43.646393, 31.837177, 40.311199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.219349, 31.633734, 39.576054>,  <42.974186, 31.807680, 40.118153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.219349, 31.633734, 39.576054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.585743, 31.665754, 39.733307>,  <43.805580, 31.684967, 39.827660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.585743, 31.665754, 39.733307>,  <43.219349, 31.633734, 39.576054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.585743, 31.665754, 39.733307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351599, -0.632132, -0.690498,
		0.193240, 0.770715, -0.607171,
		0.915989, 0.080049, 0.393136,
		43.860538, 31.689770, 39.851246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.715786, 31.622938, 39.029266>,  <43.219349, 31.633734, 39.576054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.715786, 31.622938, 39.029266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.886837, 31.490650, 39.365780>,  <43.989468, 31.411278, 39.567688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.886837, 31.490650, 39.365780>,  <43.715786, 31.622938, 39.029266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.886837, 31.490650, 39.365780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637067, -0.550008, -0.540034,
		0.641315, 0.766887, -0.024505,
		0.427623, -0.330721, 0.841286,
		44.015125, 31.391434, 39.618164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.855431, 31.829565, 38.350330>,  <43.715786, 31.622938, 39.029266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.855431, 31.829565, 38.350330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.210213, 32.009899, 38.310215>,  <44.423080, 32.118099, 38.286144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.210213, 32.009899, 38.310215>,  <43.855431, 31.829565, 38.350330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.210213, 32.009899, 38.310215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376300, 0.579508, -0.722889,
		-0.267787, 0.678908, 0.683647,
		0.886955, 0.450836, -0.100288,
		44.476299, 32.145149, 38.280128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.636330, 32.286743, 37.807293>,  <43.855431, 31.829565, 38.350330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.636330, 32.286743, 37.807293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.021282, 32.376232, 37.868969>,  <44.252254, 32.429924, 37.905975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.021282, 32.376232, 37.868969>,  <43.636330, 32.286743, 37.807293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.021282, 32.376232, 37.868969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031913, 0.470494, -0.881826,
		-0.269828, 0.853572, 0.445654,
		0.962379, 0.223719, 0.154193,
		44.309998, 32.443348, 37.915226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.431343, 33.039364, 37.796230>,  <43.636330, 32.286743, 37.807293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.431343, 33.039364, 37.796230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.721497, 33.146999, 37.542801>,  <43.895588, 33.211578, 37.390743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.721497, 33.146999, 37.542801>,  <43.431343, 33.039364, 37.796230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.721497, 33.146999, 37.542801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681363, 0.411473, -0.605339,
		0.097810, 0.870794, 0.481820,
		0.725381, 0.269086, -0.633573,
		43.939110, 33.227726, 37.352730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.238686, 33.213196, 37.135071>,  <43.431343, 33.039364, 37.796230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.238686, 33.213196, 37.135071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.538757, 33.305363, 36.887154>,  <43.718800, 33.360661, 36.738403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.538757, 33.305363, 36.887154>,  <43.238686, 33.213196, 37.135071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.538757, 33.305363, 36.887154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659032, 0.337017, -0.672381,
		0.053956, 0.912869, 0.404672,
		0.750177, 0.230413, -0.619794,
		43.763809, 33.374485, 36.701214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.183922, 33.906960, 36.958576>,  <43.238686, 33.213196, 37.135071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.183922, 33.906960, 36.958576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.339905, 33.657669, 36.687424>,  <43.433495, 33.508095, 36.524731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.339905, 33.657669, 36.687424>,  <43.183922, 33.906960, 36.958576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.339905, 33.657669, 36.687424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774441, 0.176293, -0.607587,
		0.498168, 0.761914, -0.413903,
		0.389960, -0.623224, -0.677881,
		43.456894, 33.470703, 36.484058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.325352, 34.198708, 36.286999>,  <43.183922, 33.906960, 36.958576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.325352, 34.198708, 36.286999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.227264, 33.811844, 36.260277>,  <43.168411, 33.579723, 36.244244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.227264, 33.811844, 36.260277>,  <43.325352, 34.198708, 36.286999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.227264, 33.811844, 36.260277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813089, 0.242703, -0.529132,
		0.527970, -0.075439, -0.845906,
		-0.245221, -0.967163, -0.066801,
		43.153698, 33.521694, 36.240238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.017925, 34.138710, 36.003231>,  <43.325352, 34.198708, 36.286999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.017925, 34.138710, 36.003231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.389675, 34.027370, 35.906254>,  <44.612724, 33.960567, 35.848068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.389675, 34.027370, 35.906254>,  <44.017925, 34.138710, 36.003231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.389675, 34.027370, 35.906254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178537, 0.913823, -0.364764,
		0.323085, 0.295717, 0.898981,
		0.929376, -0.278351, -0.242446,
		44.668488, 33.943867, 35.833519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.505993, 34.681011, 36.172268>,  <44.017925, 34.138710, 36.003231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.505993, 34.681011, 36.172268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.622356, 34.482769, 35.844917>,  <44.692173, 34.363823, 35.648506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.622356, 34.482769, 35.844917>,  <44.505993, 34.681011, 36.172268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.622356, 34.482769, 35.844917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095296, 0.866129, -0.490652,
		0.951994, 0.064745, 0.299192,
		0.290906, -0.495609, -0.818379,
		44.709629, 34.334087, 35.599403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.125816, 34.966812, 35.919857>,  <44.505993, 34.681011, 36.172268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.125816, 34.966812, 35.919857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.885983, 34.822651, 35.634029>,  <44.742081, 34.736153, 35.462532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.885983, 34.822651, 35.634029>,  <45.125816, 34.966812, 35.919857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.885983, 34.822651, 35.634029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125613, 0.924174, -0.360727,
		0.790391, -0.126528, -0.599393,
		-0.599586, -0.360407, -0.714565,
		44.706108, 34.714527, 35.419659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.414341, 35.117199, 35.236309>,  <45.125816, 34.966812, 35.919857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.414341, 35.117199, 35.236309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.014439, 35.108452, 35.236744>,  <44.774498, 35.103203, 35.237003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.014439, 35.108452, 35.236744>,  <45.414341, 35.117199, 35.236309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.014439, 35.108452, 35.236744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021126, 0.950413, -0.310273,
		0.005755, -0.310221, -0.950647,
		-0.999760, -0.021868, 0.001084,
		44.714512, 35.101891, 35.237068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.124825, 35.287003, 35.403294>,  <45.414341, 35.117199, 35.236309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.124825, 35.287003, 35.403294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.024509, 35.040054, 35.105042>,  <45.964321, 34.891888, 34.926090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.024509, 35.040054, 35.105042>,  <46.124825, 35.287003, 35.403294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.024509, 35.040054, 35.105042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585426, -0.710158, 0.391092,
		-0.770962, -0.338430, 0.539521,
		-0.250788, -0.617366, -0.745630,
		45.949272, 34.854843, 34.881351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.556183, 35.076458, 34.781898>,  <46.124825, 35.287003, 35.403294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.556183, 35.076458, 34.781898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.845291, 35.346935, 34.724812>,  <47.018757, 35.509220, 34.690559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.845291, 35.346935, 34.724812>,  <46.556183, 35.076458, 34.781898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.845291, 35.346935, 34.724812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629912, -0.559630, 0.538540,
		0.284287, -0.479140, -0.830425,
		0.722767, 0.676194, -0.142720,
		47.062122, 35.549793, 34.681995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.196854, 34.754787, 34.599411>,  <46.556183, 35.076458, 34.781898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.196854, 34.754787, 34.599411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.245667, 35.105270, 34.785900>,  <47.274956, 35.315559, 34.897793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.245667, 35.105270, 34.785900>,  <47.196854, 34.754787, 34.599411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.245667, 35.105270, 34.785900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742105, -0.392477, 0.543362,
		0.659080, 0.279678, -0.698135,
		0.122035, 0.876209, 0.466224,
		47.282276, 35.368134, 34.925766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.899029, 35.095509, 34.407951>,  <47.196854, 34.754787, 34.599411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.899029, 35.095509, 34.407951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.753258, 35.143738, 34.777309>,  <47.665794, 35.172676, 34.998924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.753258, 35.143738, 34.777309>,  <47.899029, 35.095509, 34.407951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.753258, 35.143738, 34.777309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748169, -0.552493, 0.367417,
		0.554470, 0.824750, 0.111132,
		-0.364426, 0.120576, 0.923393,
		47.643929, 35.179913, 35.054329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.555294, 27.057646, 36.258930> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.268147, 27.335100, 36.282696>,  <36.095860, 27.501574, 36.296955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.268147, 27.335100, 36.282696>,  <36.555294, 27.057646, 36.258930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.268147, 27.335100, 36.282696> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367174, 0.304723, 0.878821,
		0.591478, 0.652695, -0.473437,
		-0.717870, 0.693637, 0.059416,
		36.052784, 27.543192, 36.300522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.839455, 27.694908, 36.504238>,  <36.555294, 27.057646, 36.258930>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.839455, 27.694908, 36.504238> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.452194, 27.747400, 36.589523>,  <36.219837, 27.778896, 36.640694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.452194, 27.747400, 36.589523>,  <36.839455, 27.694908, 36.504238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.452194, 27.747400, 36.589523> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248656, 0.404901, 0.879901,
		0.029141, 0.904894, -0.424637,
		-0.968153, 0.131230, 0.213208,
		36.161747, 27.786770, 36.653484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.730419, 28.479418, 36.671791>,  <36.839455, 27.694908, 36.504238>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.730419, 28.479418, 36.671791> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.460213, 28.242949, 36.848064>,  <36.298088, 28.101067, 36.953827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.460213, 28.242949, 36.848064>,  <36.730419, 28.479418, 36.671791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.460213, 28.242949, 36.848064> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206339, 0.422219, 0.882698,
		-0.707889, 0.687203, -0.163233,
		-0.675513, -0.591171, 0.440681,
		36.257561, 28.065598, 36.980270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.281147, 28.972540, 37.139568>,  <36.730419, 28.479418, 36.671791>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.281147, 28.972540, 37.139568> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.206268, 28.601274, 37.268238>,  <36.161339, 28.378515, 37.345440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.206268, 28.601274, 37.268238>,  <36.281147, 28.972540, 37.139568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.206268, 28.601274, 37.268238> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086524, 0.341768, 0.935793,
		-0.978504, 0.147347, -0.144286,
		-0.187199, -0.928161, 0.321672,
		36.150108, 28.322826, 37.364738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.746510, 29.061447, 37.515255>,  <36.281147, 28.972540, 37.139568>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.746510, 29.061447, 37.515255> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.887238, 28.707157, 37.636395>,  <35.971672, 28.494583, 37.709080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.887238, 28.707157, 37.636395>,  <35.746510, 29.061447, 37.515255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.887238, 28.707157, 37.636395> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126222, 0.275689, 0.952924,
		-0.927520, -0.373481, -0.014806,
		0.351817, -0.885725, 0.302848,
		35.992783, 28.441441, 37.727249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.327301, 28.863211, 38.095406>,  <35.746510, 29.061447, 37.515255>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.327301, 28.863211, 38.095406> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.665989, 28.651987, 38.121407>,  <35.869202, 28.525253, 38.137009>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.665989, 28.651987, 38.121407>,  <35.327301, 28.863211, 38.095406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.665989, 28.651987, 38.121407> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113921, 0.299288, 0.947338,
		-0.519705, -0.794721, 0.313569,
		0.846716, -0.528058, 0.065007,
		35.920002, 28.493570, 38.140907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.284145, 28.592110, 38.791096>,  <35.327301, 28.863211, 38.095406>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.284145, 28.592110, 38.791096> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.665981, 28.585468, 38.672115>,  <35.895084, 28.581484, 38.600727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.665981, 28.585468, 38.672115>,  <35.284145, 28.592110, 38.791096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.665981, 28.585468, 38.672115> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264218, 0.508425, 0.819569,
		0.137621, -0.860946, 0.489726,
		0.954594, -0.016605, -0.297448,
		35.952358, 28.580486, 38.582882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.506714, 28.228880, 39.290131>,  <35.284145, 28.592110, 38.791096>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.506714, 28.228880, 39.290131> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.807114, 28.417671, 39.105419>,  <35.987354, 28.530947, 38.994591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.807114, 28.417671, 39.105419>,  <35.506714, 28.228880, 39.290131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.807114, 28.417671, 39.105419> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236190, 0.461059, 0.855359,
		0.616619, -0.751439, 0.234777,
		0.750996, 0.471979, -0.461781,
		36.032413, 28.559265, 38.966885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.047009, 28.217838, 39.751450>,  <35.506714, 28.228880, 39.290131>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.047009, 28.217838, 39.751450> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.103378, 28.530130, 39.507942>,  <36.137199, 28.717506, 39.361835>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.103378, 28.530130, 39.507942>,  <36.047009, 28.217838, 39.751450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.103378, 28.530130, 39.507942> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278523, 0.558807, 0.781127,
		0.950035, -0.279634, -0.138703,
		0.140922, 0.780730, -0.608770,
		36.145657, 28.764349, 39.325310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.764923, 28.493279, 39.973450>,  <36.047009, 28.217838, 39.751450>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.764923, 28.493279, 39.973450> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.594139, 28.790207, 39.766891>,  <36.491669, 28.968365, 39.642956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.594139, 28.790207, 39.766891>,  <36.764923, 28.493279, 39.973450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.594139, 28.790207, 39.766891> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316842, 0.657667, 0.683436,
		0.846945, 0.128185, -0.515997,
		-0.426960, 0.742323, -0.516394,
		36.466049, 29.012903, 39.611973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.356369, 29.072407, 39.828751>,  <36.764923, 28.493279, 39.973450>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.356369, 29.072407, 39.828751> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.991035, 29.235060, 39.820129>,  <36.771835, 29.332653, 39.814957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.991035, 29.235060, 39.820129>,  <37.356369, 29.072407, 39.828751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.991035, 29.235060, 39.820129> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307411, 0.723254, 0.618386,
		0.267049, 0.558168, -0.785579,
		-0.913336, 0.406635, -0.021557,
		36.717033, 29.357050, 39.813663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.467575, 29.698336, 39.596794>,  <37.356369, 29.072407, 39.828751>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.467575, 29.698336, 39.596794> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.128670, 29.719147, 39.808239>,  <36.925327, 29.731632, 39.935108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.128670, 29.719147, 39.808239>,  <37.467575, 29.698336, 39.596794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.128670, 29.719147, 39.808239> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389006, 0.738421, 0.550826,
		-0.361682, 0.672330, -0.645878,
		-0.847267, 0.052027, 0.528614,
		36.874489, 29.734755, 39.966824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.410851, 30.395641, 39.727318>,  <37.467575, 29.698336, 39.596794>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.410851, 30.395641, 39.727318> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.158222, 30.255083, 40.003761>,  <37.006645, 30.170748, 40.169628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.158222, 30.255083, 40.003761>,  <37.410851, 30.395641, 39.727318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.158222, 30.255083, 40.003761> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191645, 0.792979, 0.578322,
		-0.751257, 0.497701, -0.433481,
		-0.631573, -0.351395, 0.691113,
		36.968750, 30.149664, 40.211094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.118855, 30.984997, 39.955532>,  <37.410851, 30.395641, 39.727318>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.118855, 30.984997, 39.955532> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.042057, 30.700560, 40.226082>,  <36.995979, 30.529898, 40.388412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.042057, 30.700560, 40.226082>,  <37.118855, 30.984997, 39.955532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.042057, 30.700560, 40.226082> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235626, 0.635638, 0.735149,
		-0.952690, 0.300516, 0.045514,
		-0.191994, -0.711094, 0.676376,
		36.984459, 30.487232, 40.428993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.512440, 31.211798, 40.349911>,  <37.118855, 30.984997, 39.955532>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.512440, 31.211798, 40.349911> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.743042, 30.968613, 40.568275>,  <36.881401, 30.822701, 40.699295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.743042, 30.968613, 40.568275>,  <36.512440, 31.211798, 40.349911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.743042, 30.968613, 40.568275> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183725, 0.747458, 0.638397,
		-0.796172, -0.267740, 0.542610,
		0.576503, -0.607965, 0.545915,
		36.915993, 30.786222, 40.732052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.456474, 31.554010, 41.024666>,  <36.512440, 31.211798, 40.349911>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.456474, 31.554010, 41.024666> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.735016, 31.273516, 41.085800>,  <36.902142, 31.105219, 41.122478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.735016, 31.273516, 41.085800>,  <36.456474, 31.554010, 41.024666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.735016, 31.273516, 41.085800> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314468, 0.489537, 0.813304,
		-0.645137, -0.518286, 0.561407,
		0.696354, -0.701237, 0.152834,
		36.943920, 31.063145, 41.131649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.471485, 31.280106, 41.674366>,  <36.456474, 31.554010, 41.024666>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.471485, 31.280106, 41.674366> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.841850, 31.209963, 41.540539>,  <37.064068, 31.167877, 41.460243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.841850, 31.209963, 41.540539>,  <36.471485, 31.280106, 41.674366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.841850, 31.209963, 41.540539> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371622, 0.581634, 0.723601,
		0.067712, -0.794325, 0.603707,
		0.925911, -0.175355, -0.334573,
		37.119625, 31.157356, 41.440166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.828918, 31.177881, 42.287342>,  <36.471485, 31.280106, 41.674366>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.828918, 31.177881, 42.287342> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.110439, 31.241434, 42.010380>,  <37.279350, 31.279566, 41.844204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.110439, 31.241434, 42.010380>,  <36.828918, 31.177881, 42.287342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.110439, 31.241434, 42.010380> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574785, 0.445427, 0.686453,
		0.417478, -0.881109, 0.222170,
		0.703800, 0.158879, -0.692404,
		37.321579, 31.289099, 41.802658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.534252, 31.090271, 42.650017>,  <36.828918, 31.177881, 42.287342>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.534252, 31.090271, 42.650017> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.631844, 31.325304, 42.341415>,  <37.690399, 31.466324, 42.156254>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.631844, 31.325304, 42.341415>,  <37.534252, 31.090271, 42.650017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.631844, 31.325304, 42.341415> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712263, 0.431330, 0.553746,
		0.658146, -0.684618, -0.313277,
		0.243979, 0.587582, -0.771507,
		37.705036, 31.501579, 42.109962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.179207, 31.071272, 42.712673>,  <37.534252, 31.090271, 42.650017>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.179207, 31.071272, 42.712673> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.086990, 31.390438, 42.489895>,  <38.031658, 31.581938, 42.356228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.086990, 31.390438, 42.489895>,  <38.179207, 31.071272, 42.712673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.086990, 31.390438, 42.489895> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553215, 0.578338, 0.599565,
		0.800501, -0.169882, -0.574751,
		-0.230545, 0.797913, -0.556941,
		38.017826, 31.629812, 42.322811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.862556, 31.401667, 42.585060>,  <38.179207, 31.071272, 42.712673>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.862556, 31.401667, 42.585060> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.579376, 31.677963, 42.526165>,  <38.409470, 31.843742, 42.490829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.579376, 31.677963, 42.526165>,  <38.862556, 31.401667, 42.585060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.579376, 31.677963, 42.526165> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488018, 0.629134, 0.605003,
		0.510532, 0.356460, -0.782492,
		-0.707952, 0.690743, -0.147234,
		38.366989, 31.885187, 42.481995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.285446, 31.893866, 42.574238>,  <38.862556, 31.401667, 42.585060>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.285446, 31.893866, 42.574238> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.919598, 32.050720, 42.613621>,  <38.700089, 32.144833, 42.637253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.919598, 32.050720, 42.613621>,  <39.285446, 31.893866, 42.574238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.919598, 32.050720, 42.613621> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369109, 0.710469, 0.599160,
		0.165001, 0.584347, -0.794552,
		-0.914622, 0.392138, 0.098460,
		38.645210, 32.168362, 42.643158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.753159, 31.640753, 41.973274>,  <39.285446, 31.893866, 42.574238>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.753159, 31.640753, 41.973274> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.150875, 31.655539, 42.013329>,  <40.389503, 31.664410, 42.037361>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.150875, 31.655539, 42.013329>,  <39.753159, 31.640753, 41.973274>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.150875, 31.655539, 42.013329> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101585, -0.615698, -0.781407,
		0.032769, 0.787115, -0.615936,
		0.994287, 0.036964, 0.100135,
		40.449162, 31.666628, 42.043369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.959648, 31.842943, 41.410545>,  <39.753159, 31.640753, 41.973274>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.959648, 31.842943, 41.410545> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.272160, 31.645338, 41.563152>,  <40.459667, 31.526775, 41.654716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.272160, 31.645338, 41.563152>,  <39.959648, 31.842943, 41.410545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.272160, 31.645338, 41.563152> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031003, -0.579765, -0.814194,
		0.623414, 0.647939, -0.437641,
		0.781277, -0.494012, 0.381521,
		40.506542, 31.497135, 41.677608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.359028, 31.899824, 40.928310>,  <39.959648, 31.842943, 41.410545>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.359028, 31.899824, 40.928310> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.519688, 31.597610, 41.135326>,  <40.616085, 31.416283, 41.259537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.519688, 31.597610, 41.135326>,  <40.359028, 31.899824, 40.928310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.519688, 31.597610, 41.135326> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058352, -0.542863, -0.837792,
		0.913932, 0.366699, -0.173954,
		0.401650, -0.755535, 0.517537,
		40.640182, 31.370951, 41.290588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.033028, 31.644285, 40.710102>,  <40.359028, 31.899824, 40.928310>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.033028, 31.644285, 40.710102> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.871983, 31.326757, 40.892422>,  <40.775356, 31.136240, 41.001816>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.871983, 31.326757, 40.892422>,  <41.033028, 31.644285, 40.710102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.871983, 31.326757, 40.892422> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058936, -0.519390, -0.852503,
		0.913473, -0.316362, 0.255895,
		-0.402609, -0.793819, 0.455803,
		40.751202, 31.088612, 41.029163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.412556, 31.072201, 40.443768>,  <41.033028, 31.644285, 40.710102>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.412556, 31.072201, 40.443768> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.089333, 30.901957, 40.606689>,  <40.895401, 30.799810, 40.704445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.089333, 30.901957, 40.606689>,  <41.412556, 31.072201, 40.443768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.089333, 30.901957, 40.606689> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028450, -0.718789, -0.694646,
		0.588418, -0.549725, 0.592930,
		-0.808056, -0.425611, 0.407309,
		40.846916, 30.774273, 40.728882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.653660, 30.410557, 40.616135>,  <41.412556, 31.072201, 40.443768>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.653660, 30.410557, 40.616135> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.255829, 30.385231, 40.583130>,  <41.017132, 30.370035, 40.563328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.255829, 30.385231, 40.583130>,  <41.653660, 30.410557, 40.616135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.255829, 30.385231, 40.583130> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103799, -0.653618, -0.749673,
		-0.006465, -0.754172, 0.656646,
		-0.994577, -0.063313, -0.082508,
		40.957455, 30.366238, 40.558376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.513767, 29.754993, 40.526123>,  <41.653660, 30.410557, 40.616135>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.513767, 29.754993, 40.526123> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.181747, 29.923994, 40.380512>,  <40.982536, 30.025394, 40.293148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.181747, 29.923994, 40.380512>,  <41.513767, 29.754993, 40.526123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.181747, 29.923994, 40.380512> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010094, -0.641246, -0.767269,
		-0.557599, -0.640546, 0.528000,
		-0.830049, 0.422499, -0.364024,
		40.932732, 30.050745, 40.271305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.868397, 29.272570, 40.503540>,  <41.513767, 29.754993, 40.526123>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.868397, 29.272570, 40.503540> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.821716, 29.564566, 40.234173>,  <40.793709, 29.739763, 40.072552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.821716, 29.564566, 40.234173>,  <40.868397, 29.272570, 40.503540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.821716, 29.564566, 40.234173> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226763, -0.679727, -0.697531,
		-0.966933, 0.071307, 0.244857,
		-0.116697, 0.729990, -0.673421,
		40.786709, 29.783564, 40.032146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.383373, 28.924595, 40.126358>,  <40.868397, 29.272570, 40.503540>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.383373, 28.924595, 40.126358> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.450073, 29.234426, 39.882320>,  <40.490093, 29.420326, 39.735897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.450073, 29.234426, 39.882320>,  <40.383373, 28.924595, 40.126358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.450073, 29.234426, 39.882320> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242960, -0.567405, -0.786780,
		-0.955597, 0.279422, 0.093579,
		0.166747, 0.774581, -0.610099,
		40.500095, 29.466801, 39.699291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.813358, 28.963694, 39.639957>,  <40.383373, 28.924595, 40.126358>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.813358, 28.963694, 39.639957> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.140297, 29.138969, 39.490322>,  <40.336460, 29.244135, 39.400543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.140297, 29.138969, 39.490322>,  <39.813358, 28.963694, 39.639957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.140297, 29.138969, 39.490322> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176950, -0.426987, -0.886775,
		-0.548306, 0.790993, -0.271457,
		0.817342, 0.438190, -0.374086,
		40.385498, 29.270426, 39.378098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.568573, 29.090137, 38.896030>,  <39.813358, 28.963694, 39.639957>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.568573, 29.090137, 38.896030> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.965549, 29.133177, 38.872452>,  <40.203735, 29.159000, 38.858303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.965549, 29.133177, 38.872452>,  <39.568573, 29.090137, 38.896030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.965549, 29.133177, 38.872452> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005673, -0.439721, -0.898116,
		-0.122559, 0.891665, -0.435788,
		0.992445, 0.107600, -0.058950,
		40.263283, 29.165457, 38.854767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.672916, 29.449715, 38.241734>,  <39.568573, 29.090137, 38.896030>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.672916, 29.449715, 38.241734> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.963596, 29.213427, 38.382000>,  <40.138004, 29.071653, 38.466160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.963596, 29.213427, 38.382000>,  <39.672916, 29.449715, 38.241734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.963596, 29.213427, 38.382000> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161099, -0.642764, -0.748934,
		0.667802, 0.487756, -0.562258,
		0.726696, -0.590719, 0.350662,
		40.181606, 29.036211, 38.487198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.066586, 29.194857, 37.724937>,  <39.672916, 29.449715, 38.241734>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.066586, 29.194857, 37.724937> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.128544, 28.922880, 38.011623>,  <40.165718, 28.759695, 38.183636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.128544, 28.922880, 38.011623>,  <40.066586, 29.194857, 37.724937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.128544, 28.922880, 38.011623> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138728, -0.733257, -0.665649,
		0.978142, 0.003680, -0.207908,
		0.154899, -0.679942, 0.716719,
		40.175014, 28.718897, 38.226639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.409863, 28.748787, 37.393612>,  <40.066586, 29.194857, 37.724937>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.409863, 28.748787, 37.393612> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.247238, 28.532839, 37.688435>,  <40.149662, 28.403271, 37.865326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.247238, 28.532839, 37.688435>,  <40.409863, 28.748787, 37.393612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.247238, 28.532839, 37.688435> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091900, -0.778480, -0.620905,
		0.908989, -0.320172, 0.266888,
		-0.406564, -0.539868, 0.737054,
		40.125271, 28.370878, 37.909550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.837368, 28.123356, 37.502468>,  <40.409863, 28.748787, 37.393612>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.837368, 28.123356, 37.502468> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.460487, 28.060783, 37.620983>,  <40.234360, 28.023241, 37.692093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.460487, 28.060783, 37.620983>,  <40.837368, 28.123356, 37.502468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.460487, 28.060783, 37.620983> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052792, -0.803960, -0.592336,
		0.330865, -0.573741, 0.749233,
		-0.942200, -0.156430, 0.296291,
		40.177826, 28.013855, 37.709869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.732925, 27.365042, 37.577583>,  <40.837368, 28.123356, 37.502468>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.732925, 27.365042, 37.577583> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.366928, 27.519424, 37.530552>,  <40.147331, 27.612053, 37.502331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.366928, 27.519424, 37.530552>,  <40.732925, 27.365042, 37.577583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.366928, 27.519424, 37.530552> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218779, -0.719477, -0.659157,
		-0.339001, -0.577401, 0.742756,
		-0.914994, 0.385955, -0.117580,
		40.092430, 27.635210, 37.495277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.381027, 26.749823, 37.339825>,  <40.732925, 27.365042, 37.577583>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.381027, 26.749823, 37.339825> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.117378, 27.048773, 37.306381>,  <39.959190, 27.228142, 37.286316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.117378, 27.048773, 37.306381>,  <40.381027, 26.749823, 37.339825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.117378, 27.048773, 37.306381> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366935, -0.416652, -0.831721,
		-0.656443, -0.517526, 0.548862,
		-0.659122, 0.747374, -0.083610,
		39.919643, 27.272985, 37.281300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.710289, 26.377399, 37.093342>,  <40.381027, 26.749823, 37.339825>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.710289, 26.377399, 37.093342> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.695316, 26.765074, 36.995953>,  <39.686333, 26.997679, 36.937519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.695316, 26.765074, 36.995953>,  <39.710289, 26.377399, 37.093342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.695316, 26.765074, 36.995953> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297551, -0.243402, -0.923157,
		-0.953972, 0.037891, 0.297492,
		-0.037430, 0.969185, -0.243473,
		39.684086, 27.055830, 36.922909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.988682, 26.464430, 37.011570> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.169765, 26.764240, 36.818378>,  <39.278416, 26.944126, 36.702465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.169765, 26.764240, 36.818378>,  <38.988682, 26.464430, 37.011570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.169765, 26.764240, 36.818378> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732613, 0.003906, -0.680634,
		-0.508267, 0.661963, 0.550881,
		0.452706, 0.749527, -0.482977,
		39.305576, 26.989098, 36.673485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.472454, 26.902279, 36.847328>,  <38.988682, 26.464430, 37.011570>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.472454, 26.902279, 36.847328> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.760601, 27.031075, 36.601601>,  <38.933491, 27.108353, 36.454163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.760601, 27.031075, 36.601601>,  <38.472454, 26.902279, 36.847328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.760601, 27.031075, 36.601601> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660355, 0.047521, -0.749448,
		-0.212123, 0.945549, 0.246861,
		0.720372, 0.321991, -0.614318,
		38.976711, 27.127672, 36.417305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.154598, 27.488226, 36.474998>,  <38.472454, 26.902279, 36.847328>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.154598, 27.488226, 36.474998> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.459995, 27.341354, 36.262486>,  <38.643234, 27.253231, 36.134979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.459995, 27.341354, 36.262486>,  <38.154598, 27.488226, 36.474998>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.459995, 27.341354, 36.262486> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563690, 0.022585, -0.825678,
		0.315169, 0.929877, -0.189730,
		0.763494, -0.367177, -0.531281,
		38.689045, 27.231201, 36.103100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.144073, 27.866920, 35.793652>,  <38.154598, 27.488226, 36.474998>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.144073, 27.866920, 35.793652> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.366970, 27.541151, 35.728909>,  <38.500710, 27.345690, 35.690063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.366970, 27.541151, 35.728909>,  <38.144073, 27.866920, 35.793652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.366970, 27.541151, 35.728909> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458806, -0.139522, -0.877514,
		0.692083, 0.563250, -0.451409,
		0.557241, -0.814422, -0.161861,
		38.534142, 27.296825, 35.680351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.301666, 28.040869, 35.119556>,  <38.144073, 27.866920, 35.793652>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.301666, 28.040869, 35.119556> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.388290, 27.650642, 35.134350>,  <38.440266, 27.416506, 35.143227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.388290, 27.650642, 35.134350>,  <38.301666, 28.040869, 35.119556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.388290, 27.650642, 35.134350> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423388, -0.127987, -0.896862,
		0.879683, 0.178570, -0.440761,
		0.216564, -0.975568, 0.036984,
		38.453259, 27.357971, 35.145447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.500687, 27.763988, 34.433121>,  <38.301666, 28.040869, 35.119556>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.500687, 27.763988, 34.433121> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.360500, 27.450130, 34.637672>,  <38.276386, 27.261816, 34.760403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.360500, 27.450130, 34.637672>,  <38.500687, 27.763988, 34.433121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.360500, 27.450130, 34.637672> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449049, -0.338381, -0.826954,
		0.821905, -0.519454, -0.233751,
		-0.350468, -0.784643, 0.511378,
		38.255360, 27.214737, 34.791084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.800522, 27.164118, 34.132992>,  <38.500687, 27.763988, 34.433121>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.800522, 27.164118, 34.132992> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.454689, 27.062811, 34.306595>,  <38.247189, 27.002028, 34.410755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.454689, 27.062811, 34.306595>,  <38.800522, 27.164118, 34.132992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.454689, 27.062811, 34.306595> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240808, -0.549238, -0.800218,
		0.441041, -0.796363, 0.413871,
		-0.864578, -0.253265, 0.434007,
		38.195316, 26.986832, 34.436798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.778397, 26.458605, 33.908932>,  <38.800522, 27.164118, 34.132992>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.778397, 26.458605, 33.908932> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.407276, 26.546068, 34.029850>,  <38.184605, 26.598547, 34.102402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.407276, 26.546068, 34.029850>,  <38.778397, 26.458605, 33.908932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.407276, 26.546068, 34.029850> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369721, -0.647417, -0.666451,
		0.049982, -0.730095, 0.681515,
		-0.927797, 0.218660, 0.302291,
		38.128937, 26.611666, 34.120537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.350197, 25.864532, 33.693775>,  <38.778397, 26.458605, 33.908932>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.350197, 25.864532, 33.693775> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.084972, 26.153902, 33.770721>,  <37.925838, 26.327524, 33.816891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.084972, 26.153902, 33.770721>,  <38.350197, 25.864532, 33.693775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.084972, 26.153902, 33.770721> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521997, -0.262655, -0.811499,
		-0.536533, -0.638489, 0.551783,
		-0.663062, 0.723425, 0.192366,
		37.886055, 26.370930, 33.828430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.578327, 25.582415, 33.598656>,  <38.350197, 25.864532, 33.693775>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.578327, 25.582415, 33.598656> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.585857, 25.979624, 33.552101>,  <37.590378, 26.217949, 33.524166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.585857, 25.979624, 33.552101>,  <37.578327, 25.582415, 33.598656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.585857, 25.979624, 33.552101> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442887, -0.096082, -0.891414,
		-0.896380, 0.068330, 0.437989,
		0.018828, 0.993025, -0.116389,
		37.591507, 26.277531, 33.517185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.131199, 25.664757, 33.186802>,  <37.578327, 25.582415, 33.598656>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.131199, 25.664757, 33.186802> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.275867, 26.037613, 33.179745>,  <37.362667, 26.261326, 33.175510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.275867, 26.037613, 33.179745>,  <37.131199, 25.664757, 33.186802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.275867, 26.037613, 33.179745> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425060, 0.148024, -0.892980,
		-0.829771, 0.330459, 0.449751,
		0.361667, 0.932141, -0.017639,
		37.384369, 26.317255, 33.174454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.536560, 26.027056, 33.024918>,  <37.131199, 25.664757, 33.186802>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.536560, 26.027056, 33.024918> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.860443, 26.245224, 32.938301>,  <37.054771, 26.376125, 32.886330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.860443, 26.245224, 32.938301>,  <36.536560, 26.027056, 33.024918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.860443, 26.245224, 32.938301> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328346, 0.115242, -0.937501,
		-0.486377, 0.830203, 0.272398,
		0.809708, 0.545419, -0.216543,
		37.103355, 26.408850, 32.873337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.260853, 26.485668, 32.590065>,  <36.536560, 26.027056, 33.024918>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.260853, 26.485668, 32.590065> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.654274, 26.485859, 32.517818>,  <36.890327, 26.485973, 32.474468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.654274, 26.485859, 32.517818>,  <36.260853, 26.485668, 32.590065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.654274, 26.485859, 32.517818> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178280, 0.163018, -0.970382,
		0.028980, 0.986623, 0.160422,
		0.983553, 0.000478, -0.180620,
		36.949341, 26.486002, 32.463631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.446476, 27.110443, 32.125717>,  <36.260853, 26.485668, 32.590065>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.446476, 27.110443, 32.125717> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.745823, 26.848133, 32.085907>,  <36.925430, 26.690746, 32.062019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.745823, 26.848133, 32.085907>,  <36.446476, 27.110443, 32.125717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.745823, 26.848133, 32.085907> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075280, 0.065105, -0.995035,
		0.658999, 0.752144, -0.000644,
		0.748367, -0.655775, -0.099526,
		36.970333, 26.651400, 32.056049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.996716, 27.379498, 31.611120>,  <36.446476, 27.110443, 32.125717>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.996716, 27.379498, 31.611120> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.037388, 26.981615, 31.605225>,  <37.061790, 26.742886, 31.601686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.037388, 26.981615, 31.605225>,  <36.996716, 27.379498, 31.611120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.037388, 26.981615, 31.605225> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105052, 0.003998, -0.994459,
		0.989255, 0.102669, -0.104089,
		0.101684, -0.994707, -0.014741,
		37.067894, 26.683203, 31.600801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.410278, 27.249331, 30.855762>,  <36.996716, 27.379498, 31.611120>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.410278, 27.249331, 30.855762> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.287148, 26.883690, 30.961336>,  <37.213268, 26.664305, 31.024679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.287148, 26.883690, 30.961336>,  <37.410278, 27.249331, 30.855762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.287148, 26.883690, 30.961336> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172936, -0.219027, -0.960271,
		0.935594, -0.341240, -0.090659,
		-0.307827, -0.914102, 0.263933,
		37.194801, 26.609459, 31.040516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.805092, 26.788086, 30.443529>,  <37.410278, 27.249331, 30.855762>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.805092, 26.788086, 30.443529> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.502556, 26.563616, 30.578012>,  <37.321033, 26.428934, 30.658703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.502556, 26.563616, 30.578012>,  <37.805092, 26.788086, 30.443529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.502556, 26.563616, 30.578012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103129, -0.405230, -0.908380,
		0.646002, -0.721714, 0.248617,
		-0.756337, -0.561176, 0.336209,
		37.275654, 26.395264, 30.678875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.935066, 26.127077, 30.096996>,  <37.805092, 26.788086, 30.443529>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.935066, 26.127077, 30.096996> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.552670, 26.138098, 30.213835>,  <37.323231, 26.144711, 30.283937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.552670, 26.138098, 30.213835>,  <37.935066, 26.127077, 30.096996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.552670, 26.138098, 30.213835> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279343, -0.389872, -0.877478,
		0.089704, -0.920457, 0.380411,
		-0.955992, 0.027551, 0.292096,
		37.265873, 26.146364, 30.301464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695210, 25.680983, 29.719130>,  <37.935066, 26.127077, 30.096996>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.695210, 25.680983, 29.719130> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.350220, 25.858110, 29.817142>,  <37.143227, 25.964388, 29.875950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.350220, 25.858110, 29.817142>,  <37.695210, 25.680983, 29.719130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.350220, 25.858110, 29.817142> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419463, -0.354577, -0.835659,
		-0.283158, -0.823523, 0.491560,
		-0.862480, 0.442815, 0.245036,
		37.091476, 25.990955, 29.890654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.135464, 25.192829, 29.534962>,  <37.695210, 25.680983, 29.719130>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.135464, 25.192829, 29.534962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.948494, 25.544538, 29.571602>,  <36.836311, 25.755564, 29.593586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.948494, 25.544538, 29.571602>,  <37.135464, 25.192829, 29.534962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.948494, 25.544538, 29.571602> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515678, -0.187028, -0.836120,
		-0.718047, -0.438059, 0.540844,
		-0.467423, 0.879275, 0.091602,
		36.808266, 25.808321, 29.599083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.373055, 25.106047, 29.315956>,  <37.135464, 25.192829, 29.534962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.373055, 25.106047, 29.315956> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.460972, 25.494331, 29.277149>,  <36.513721, 25.727303, 29.253866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.460972, 25.494331, 29.277149>,  <36.373055, 25.106047, 29.315956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.460972, 25.494331, 29.277149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413209, 0.002552, -0.910633,
		-0.883712, 0.240242, 0.401667,
		0.219797, 0.970710, -0.097015,
		36.526913, 25.785543, 29.248045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.751522, 25.401199, 29.069311>,  <36.373055, 25.106047, 29.315956>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.751522, 25.401199, 29.069311> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.059212, 25.642389, 28.984720>,  <36.243824, 25.787104, 28.933966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.059212, 25.642389, 28.984720>,  <35.751522, 25.401199, 29.069311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.059212, 25.642389, 28.984720> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398659, 0.194219, -0.896298,
		-0.499371, 0.773758, 0.389778,
		0.769220, 0.602974, -0.211478,
		36.289978, 25.823282, 28.921276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.460361, 26.064543, 28.833355>,  <35.751522, 25.401199, 29.069311>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.460361, 26.064543, 28.833355> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.830826, 26.015110, 28.690830>,  <36.053104, 25.985451, 28.605314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.830826, 26.015110, 28.690830>,  <35.460361, 26.064543, 28.833355>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.830826, 26.015110, 28.690830> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322772, 0.228926, -0.918374,
		0.195063, 0.965568, 0.172133,
		0.926158, -0.123581, -0.356313,
		36.108673, 25.978035, 28.583937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.124039, 25.481176, 28.616341>,  <35.460361, 26.064543, 28.833355>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.124039, 25.481176, 28.616341> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.818417, 25.224123, 28.639133>,  <34.635044, 25.069891, 28.652809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.818417, 25.224123, 28.639133>,  <35.124039, 25.481176, 28.616341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.818417, 25.224123, 28.639133> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372257, -0.367002, 0.852487,
		-0.526923, 0.672558, 0.519633,
		-0.764053, -0.642632, 0.056983,
		34.589199, 25.031334, 28.656229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.773960, 26.034540, 29.101278>,  <35.124039, 25.481176, 28.616341>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.773960, 26.034540, 29.101278> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.376678, 26.051615, 29.057974>,  <34.138309, 26.061859, 29.031992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.376678, 26.051615, 29.057974>,  <34.773960, 26.034540, 29.101278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.376678, 26.051615, 29.057974> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049934, 0.683968, 0.727801,
		0.105115, 0.728262, -0.677189,
		-0.993206, 0.042688, -0.108260,
		34.078716, 26.064421, 29.025496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.657330, 26.807957, 29.054567>,  <34.773960, 26.034540, 29.101278>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.657330, 26.807957, 29.054567> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.332966, 26.603836, 29.169117>,  <34.138348, 26.481363, 29.237846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.332966, 26.603836, 29.169117>,  <34.657330, 26.807957, 29.054567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.332966, 26.603836, 29.169117> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014182, 0.506388, 0.862189,
		-0.584995, 0.695099, -0.417873,
		-0.810913, -0.510303, 0.286376,
		34.089691, 26.450745, 29.255030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.172596, 27.328625, 29.314335>,  <34.657330, 26.807957, 29.054567>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.172596, 27.328625, 29.314335> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.082241, 26.977474, 29.483240>,  <34.028030, 26.766783, 29.584583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.082241, 26.977474, 29.483240>,  <34.172596, 27.328625, 29.314335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.082241, 26.977474, 29.483240> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116999, 0.454778, 0.882886,
		-0.967102, 0.150027, -0.205438,
		-0.225886, -0.877878, 0.422264,
		34.014477, 26.714111, 29.609919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.521446, 27.472069, 29.718069>,  <34.172596, 27.328625, 29.314335>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.521446, 27.472069, 29.718069> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.694946, 27.148165, 29.876133>,  <33.799046, 26.953823, 29.970972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.694946, 27.148165, 29.876133>,  <33.521446, 27.472069, 29.718069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.694946, 27.148165, 29.876133> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111122, 0.483291, 0.868379,
		-0.894156, -0.332746, 0.299609,
		0.433748, -0.809759, 0.395162,
		33.825069, 26.905237, 29.994682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.400749, 27.528091, 30.395445>,  <33.521446, 27.472069, 29.718069>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.400749, 27.528091, 30.395445> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.652943, 27.218340, 30.416740>,  <33.804256, 27.032490, 30.429518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.652943, 27.218340, 30.416740>,  <33.400749, 27.528091, 30.395445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.652943, 27.218340, 30.416740> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265495, 0.279595, 0.922680,
		-0.729389, -0.567596, 0.381872,
		0.630479, -0.774378, 0.053239,
		33.842087, 26.986027, 30.432713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.136192, 27.267096, 31.003637>,  <33.400749, 27.528091, 30.395445>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.136192, 27.267096, 31.003637> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.515347, 27.163923, 30.928816>,  <33.742840, 27.102020, 30.883923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.515347, 27.163923, 30.928816>,  <33.136192, 27.267096, 31.003637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.515347, 27.163923, 30.928816> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239952, 0.191648, 0.951680,
		-0.209619, -0.946965, 0.243551,
		0.947883, -0.257931, -0.187053,
		33.799713, 27.086544, 30.872700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.323593, 26.838303, 31.460859>,  <33.136192, 27.267096, 31.003637>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.323593, 26.838303, 31.460859> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.670021, 26.987406, 31.327604>,  <33.877876, 27.076868, 31.247650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.670021, 26.987406, 31.327604>,  <33.323593, 26.838303, 31.460859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.670021, 26.987406, 31.327604> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279206, 0.192113, 0.940817,
		0.414698, -0.907823, 0.062306,
		0.866065, 0.372759, -0.333138,
		33.929840, 27.099234, 31.227663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.763130, 26.537355, 31.893492>,  <33.323593, 26.838303, 31.460859>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.763130, 26.537355, 31.893492> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.946468, 26.863443, 31.751881>,  <34.056473, 27.059097, 31.666914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.946468, 26.863443, 31.751881>,  <33.763130, 26.537355, 31.893492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.946468, 26.863443, 31.751881> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365409, 0.190261, 0.911195,
		0.810183, -0.547005, -0.210684,
		0.458344, 0.815221, -0.354027,
		34.083973, 27.108009, 31.645672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.443901, 26.605114, 32.164856>,  <33.763130, 26.537355, 31.893492>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.443901, 26.605114, 32.164856> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.406986, 26.981825, 32.035526>,  <34.384838, 27.207851, 31.957928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.406986, 26.981825, 32.035526>,  <34.443901, 26.605114, 32.164856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.406986, 26.981825, 32.035526> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586739, 0.313781, 0.746512,
		0.804501, -0.120816, -0.581534,
		-0.092283, 0.941778, -0.323325,
		34.379303, 27.264359, 31.938528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.110199, 26.846325, 32.166222>,  <34.443901, 26.605114, 32.164856>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.110199, 26.846325, 32.166222> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.880062, 27.171864, 32.198795>,  <34.741978, 27.367188, 32.218338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.880062, 27.171864, 32.198795>,  <35.110199, 26.846325, 32.166222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.880062, 27.171864, 32.198795> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627782, 0.375591, 0.681778,
		0.524278, 0.443379, -0.727013,
		-0.575346, 0.813847, 0.081432,
		34.707458, 27.416018, 32.223225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.541798, 27.247568, 32.484142>,  <35.110199, 26.846325, 32.166222>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.541798, 27.247568, 32.484142> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.215115, 27.477972, 32.497982>,  <35.019104, 27.616215, 32.506287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.215115, 27.477972, 32.497982>,  <35.541798, 27.247568, 32.484142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.215115, 27.477972, 32.497982> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320357, 0.402722, 0.857430,
		0.479955, 0.711356, -0.513436,
		-0.816710, 0.576010, 0.034600,
		34.970100, 27.650776, 32.508362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.789303, 27.940773, 32.585163>,  <35.541798, 27.247568, 32.484142>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.789303, 27.940773, 32.585163> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.417896, 27.921703, 32.732452>,  <35.195053, 27.910261, 32.820824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.417896, 27.921703, 32.732452>,  <35.789303, 27.940773, 32.585163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.417896, 27.921703, 32.732452> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349636, 0.221475, 0.910331,
		-0.124951, 0.974000, -0.188974,
		-0.928516, -0.047675, 0.368219,
		35.139343, 27.907400, 32.842918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.632961, 28.537378, 33.110336>,  <35.789303, 27.940773, 32.585163>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.632961, 28.537378, 33.110336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.339386, 28.285769, 33.212833>,  <35.163242, 28.134802, 33.274330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.339386, 28.285769, 33.212833>,  <35.632961, 28.537378, 33.110336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.339386, 28.285769, 33.212833> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305870, 0.030752, 0.951577,
		-0.606447, 0.776775, 0.169830,
		-0.733939, -0.629027, 0.256242,
		35.119205, 28.097061, 33.289707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.303246, 28.876511, 33.693962>,  <35.632961, 28.537378, 33.110336>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.303246, 28.876511, 33.693962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.226318, 28.484016, 33.699535>,  <35.180164, 28.248520, 33.702881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.226318, 28.484016, 33.699535>,  <35.303246, 28.876511, 33.693962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.226318, 28.484016, 33.699535> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243923, -0.034045, 0.969197,
		-0.950535, 0.189791, 0.245893,
		-0.192316, -0.981234, 0.013934,
		35.168625, 28.189646, 33.703716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.876671, 28.730392, 34.161869>,  <35.303246, 28.876511, 33.693962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.876671, 28.730392, 34.161869> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.066231, 28.379021, 34.137264>,  <35.179966, 28.168198, 34.122501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.066231, 28.379021, 34.137264>,  <34.876671, 28.730392, 34.161869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.066231, 28.379021, 34.137264> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027541, -0.084610, 0.996033,
		-0.880149, -0.470324, -0.064290,
		0.473898, -0.878428, -0.061516,
		35.208401, 28.115492, 34.118809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.636387, 28.307968, 34.614052>,  <34.876671, 28.730392, 34.161869>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.636387, 28.307968, 34.614052> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.933289, 28.058168, 34.516838>,  <35.111427, 27.908289, 34.458511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.933289, 28.058168, 34.516838>,  <34.636387, 28.307968, 34.614052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.933289, 28.058168, 34.516838> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114070, -0.239630, 0.964140,
		-0.660342, -0.743357, -0.106629,
		0.742251, -0.624498, -0.243033,
		35.155964, 27.870819, 34.443928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.516449, 27.703495, 34.974258>,  <34.636387, 28.307968, 34.614052>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.516449, 27.703495, 34.974258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.910671, 27.672882, 34.913841>,  <35.147205, 27.654514, 34.877590>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.910671, 27.672882, 34.913841>,  <34.516449, 27.703495, 34.974258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.910671, 27.672882, 34.913841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120380, -0.310631, 0.942877,
		-0.119078, -0.947444, -0.296933,
		0.985560, -0.076532, -0.151042,
		35.206341, 27.649921, 34.868530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.693012, 27.048265, 35.275379>,  <34.516449, 27.703495, 34.974258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.693012, 27.048265, 35.275379> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.023376, 27.271236, 35.241581>,  <35.221596, 27.405020, 35.221302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.023376, 27.271236, 35.241581>,  <34.693012, 27.048265, 35.275379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.023376, 27.271236, 35.241581> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231022, -0.197902, 0.952609,
		0.514289, -0.806294, -0.292228,
		0.825915, 0.557428, -0.084493,
		35.271152, 27.438465, 35.216232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.108780, 26.786844, 35.790878>,  <34.693012, 27.048265, 35.275379>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.108780, 26.786844, 35.790878> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.320782, 27.115311, 35.706234>,  <35.447983, 27.312391, 35.655449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.320782, 27.115311, 35.706234>,  <35.108780, 26.786844, 35.790878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.320782, 27.115311, 35.706234> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341505, 0.021722, 0.939629,
		0.776188, -0.570275, -0.268919,
		0.530006, 0.821166, -0.211612,
		35.479782, 27.361660, 35.642750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.771233, 26.724251, 36.080559>,  <35.108780, 26.786844, 35.790878>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.771233, 26.724251, 36.080559> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.733624, 27.118380, 36.023563>,  <35.711060, 27.354856, 35.989365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.733624, 27.118380, 36.023563>,  <35.771233, 26.724251, 36.080559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.733624, 27.118380, 36.023563> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509070, 0.170583, 0.843652,
		0.855574, 0.006785, -0.517636,
		-0.094024, 0.985320, -0.142493,
		35.705418, 27.413975, 35.980816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.373791, 28.557465, 38.844597> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.044197, 28.738056, 38.707653>,  <40.846439, 28.846411, 38.625488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.044197, 28.738056, 38.707653>,  <41.373791, 28.557465, 38.844597>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.044197, 28.738056, 38.707653> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147989, 0.754735, 0.639120,
		0.546939, 0.475962, -0.688707,
		-0.823988, 0.451481, -0.342357,
		40.797001, 28.873501, 38.604946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.537746, 29.292833, 38.856846>,  <41.373791, 28.557465, 38.844597>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.537746, 29.292833, 38.856846> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.138584, 29.269188, 38.846348>,  <40.899086, 29.255001, 38.840050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.138584, 29.269188, 38.846348>,  <41.537746, 29.292833, 38.856846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.138584, 29.269188, 38.846348> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058839, 0.661267, 0.747839,
		-0.026856, 0.747817, -0.663361,
		-0.997906, -0.059115, -0.026242,
		40.839211, 29.251453, 38.838474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.196270, 29.940216, 38.640026>,  <41.537746, 29.292833, 38.856846>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.196270, 29.940216, 38.640026> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.961731, 29.726629, 38.883690>,  <40.821007, 29.598476, 39.029888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.961731, 29.726629, 38.883690>,  <41.196270, 29.940216, 38.640026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.961731, 29.726629, 38.883690> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014530, 0.744941, 0.666973,
		-0.809929, 0.399929, -0.429036,
		-0.586348, -0.533966, 0.609160,
		40.785828, 29.566439, 39.066437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.833954, 30.464523, 38.848373>,  <41.196270, 29.940216, 38.640026>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.833954, 30.464523, 38.848373> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.709614, 30.172701, 39.092052>,  <40.635010, 29.997606, 39.238258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.709614, 30.172701, 39.092052>,  <40.833954, 30.464523, 38.848373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.709614, 30.172701, 39.092052> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238790, 0.680335, 0.692910,
		-0.919974, 0.069922, -0.385693,
		-0.310850, -0.729558, 0.609194,
		40.616360, 29.953833, 39.274811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.319294, 30.719711, 39.237457>,  <40.833954, 30.464523, 38.848373>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.319294, 30.719711, 39.237457> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.461517, 30.435440, 39.480278>,  <40.546852, 30.264877, 39.625969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.461517, 30.435440, 39.480278>,  <40.319294, 30.719711, 39.237457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.461517, 30.435440, 39.480278> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209141, 0.572529, 0.792761,
		-0.910954, -0.408834, 0.054937,
		0.355561, -0.710679, 0.607051,
		40.568184, 30.222237, 39.662392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.877468, 30.598949, 39.821156>,  <40.319294, 30.719711, 39.237457>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.877468, 30.598949, 39.821156> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.206429, 30.422064, 39.964321>,  <40.403805, 30.315933, 40.050220>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.206429, 30.422064, 39.964321>,  <39.877468, 30.598949, 39.821156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.206429, 30.422064, 39.964321> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161861, 0.421251, 0.892383,
		-0.545395, -0.791830, 0.274861,
		0.822402, -0.442212, 0.357915,
		40.453148, 30.289400, 40.071697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.626213, 30.363970, 40.499092>,  <39.877468, 30.598949, 39.821156>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.626213, 30.363970, 40.499092> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.026119, 30.372358, 40.501144>,  <40.266064, 30.377392, 40.502377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.026119, 30.372358, 40.501144>,  <39.626213, 30.363970, 40.499092>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.026119, 30.372358, 40.501144> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014386, 0.470068, 0.882513,
		0.016098, -0.882381, 0.470260,
		0.999767, 0.020972, 0.005126,
		40.326050, 30.378651, 40.502682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.816032, 30.120369, 41.141476>,  <39.626213, 30.363970, 40.499092>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.816032, 30.120369, 41.141476> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.138298, 30.322922, 41.018520>,  <40.331657, 30.444454, 40.944748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.138298, 30.322922, 41.018520>,  <39.816032, 30.120369, 41.141476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.138298, 30.322922, 41.018520> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067788, 0.436689, 0.897055,
		0.588488, -0.743558, 0.317496,
		0.805660, 0.506383, -0.307390,
		40.379997, 30.474836, 40.926304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.412674, 30.015694, 41.648155>,  <39.816032, 30.120369, 41.141476>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.412674, 30.015694, 41.648155> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.477200, 30.359838, 41.454762>,  <40.515915, 30.566324, 41.338726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.477200, 30.359838, 41.454762>,  <40.412674, 30.015694, 41.648155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.477200, 30.359838, 41.454762> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040901, 0.483653, 0.874304,
		0.986055, -0.160811, 0.042829,
		0.161312, 0.860360, -0.483486,
		40.525593, 30.617947, 41.309715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.062405, 30.288195, 41.968925>,  <40.412674, 30.015694, 41.648155>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.062405, 30.288195, 41.968925> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.921215, 30.608894, 41.776005>,  <40.836502, 30.801313, 41.660252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.921215, 30.608894, 41.776005>,  <41.062405, 30.288195, 41.968925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.921215, 30.608894, 41.776005> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267053, 0.580366, 0.769323,
		0.896713, 0.142749, -0.418961,
		-0.352971, 0.801747, -0.482300,
		40.815323, 30.849419, 41.631313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.498375, 30.806696, 42.202637>,  <41.062405, 30.288195, 41.968925>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.498375, 30.806696, 42.202637> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.216949, 31.039129, 42.039009>,  <41.048096, 31.178589, 41.940830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.216949, 31.039129, 42.039009>,  <41.498375, 30.806696, 42.202637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.216949, 31.039129, 42.039009> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244973, 0.738680, 0.627965,
		0.667074, 0.341602, -0.662058,
		-0.703563, 0.581085, -0.409071,
		41.005882, 31.213455, 41.916286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.752995, 31.514578, 41.952560>,  <41.498375, 30.806696, 42.202637>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.752995, 31.514578, 41.952560> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.360313, 31.536613, 42.025463>,  <41.124702, 31.549835, 42.069206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.360313, 31.536613, 42.025463>,  <41.752995, 31.514578, 41.952560>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.360313, 31.536613, 42.025463> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161347, 0.748942, 0.642692,
		-0.101098, 0.660342, -0.744129,
		-0.981706, 0.055088, 0.182261,
		41.065804, 31.553141, 42.080143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.402042, 32.231186, 41.809914>,  <41.752995, 31.514578, 41.952560>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.402042, 32.231186, 41.809914> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.264801, 31.998030, 42.104538>,  <41.182457, 31.858137, 42.281311>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.264801, 31.998030, 42.104538>,  <41.402042, 32.231186, 41.809914>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.264801, 31.998030, 42.104538> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151373, 0.739599, 0.655804,
		-0.927020, 0.336505, -0.165527,
		-0.343104, -0.582887, 0.736561,
		41.161869, 31.823164, 42.325508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.035965, 32.604568, 42.293247>,  <41.402042, 32.231186, 41.809914>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.035965, 32.604568, 42.293247> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.175045, 32.282257, 42.485008>,  <41.258495, 32.088871, 42.600067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.175045, 32.282257, 42.485008>,  <41.035965, 32.604568, 42.293247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.175045, 32.282257, 42.485008> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385959, 0.588984, 0.710023,
		-0.854481, -0.061846, 0.515788,
		0.347704, -0.805775, 0.479406,
		41.279358, 32.040524, 42.628830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.081127, 33.130375, 41.796444>,  <41.035965, 32.604568, 42.293247>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.081127, 33.130375, 41.796444> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.116959, 33.519211, 41.883183>,  <41.138458, 33.752510, 41.935226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.116959, 33.519211, 41.883183>,  <41.081127, 33.130375, 41.796444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.116959, 33.519211, 41.883183> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393497, 0.234553, -0.888901,
		-0.914951, -0.005703, 0.403524,
		0.089578, 0.972087, 0.216849,
		41.143833, 33.810837, 41.948238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.405605, 33.416294, 41.857014>,  <41.081127, 33.130375, 41.796444>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.405605, 33.416294, 41.857014> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.682865, 33.690308, 41.767323>,  <40.849220, 33.854713, 41.713509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.682865, 33.690308, 41.767323>,  <40.405605, 33.416294, 41.857014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.682865, 33.690308, 41.767323> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494567, 0.225701, -0.839323,
		-0.524354, 0.692671, 0.495238,
		0.693150, 0.685030, -0.224225,
		40.890812, 33.895817, 41.700054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.025215, 33.984966, 41.657112>,  <40.405605, 33.416294, 41.857014>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.025215, 33.984966, 41.657112> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.383724, 34.059982, 41.496357>,  <40.598831, 34.104992, 41.399902>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.383724, 34.059982, 41.496357>,  <40.025215, 33.984966, 41.657112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.383724, 34.059982, 41.496357> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432025, 0.164441, -0.886743,
		-0.100213, 0.968395, 0.228406,
		0.896277, 0.187540, -0.401891,
		40.652607, 34.116245, 41.375790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.785271, 34.412895, 41.096096>,  <40.025215, 33.984966, 41.657112>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.785271, 34.412895, 41.096096> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.169533, 34.331657, 41.020321>,  <40.400089, 34.282913, 40.974857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.169533, 34.331657, 41.020321>,  <39.785271, 34.412895, 41.096096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.169533, 34.331657, 41.020321> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185791, 0.037029, -0.981891,
		0.206433, 0.978458, -0.002161,
		0.960660, -0.203096, -0.189433,
		40.457729, 34.270729, 40.963490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.082062, 34.906849, 40.683712>,  <39.785271, 34.412895, 41.096096>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.082062, 34.906849, 40.683712> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.289948, 34.569702, 40.627884>,  <40.414677, 34.367416, 40.594387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.289948, 34.569702, 40.627884>,  <40.082062, 34.906849, 40.683712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.289948, 34.569702, 40.627884> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213109, 0.030304, -0.976558,
		0.827335, 0.537273, -0.163873,
		0.519712, -0.842864, -0.139570,
		40.445862, 34.316841, 40.586014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.604313, 35.102245, 40.124241>,  <40.082062, 34.906849, 40.683712>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.604313, 35.102245, 40.124241> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.550453, 34.706146, 40.109955>,  <40.518139, 34.468487, 40.101383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.550453, 34.706146, 40.109955>,  <40.604313, 35.102245, 40.124241>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.550453, 34.706146, 40.109955> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280162, 0.072616, -0.957202,
		0.950463, -0.118878, -0.287208,
		-0.134646, -0.990250, -0.035714,
		40.510059, 34.409073, 40.099239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.864868, 34.885223, 39.457897>,  <40.604313, 35.102245, 40.124241>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.864868, 34.885223, 39.457897> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.642647, 34.571892, 39.569427>,  <40.509312, 34.383892, 39.636345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.642647, 34.571892, 39.569427>,  <40.864868, 34.885223, 39.457897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.642647, 34.571892, 39.569427> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270574, -0.146773, -0.951445,
		0.786222, -0.604027, -0.130408,
		-0.555558, -0.783332, 0.278830,
		40.475979, 34.336891, 39.653076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.056259, 34.357430, 39.007076>,  <40.864868, 34.885223, 39.457897>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.056259, 34.357430, 39.007076> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.697872, 34.242271, 39.142345>,  <40.482841, 34.173176, 39.223507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.697872, 34.242271, 39.142345>,  <41.056259, 34.357430, 39.007076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.697872, 34.242271, 39.142345> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315791, -0.122424, -0.940897,
		0.312282, -0.949804, 0.018773,
		-0.895966, -0.287897, 0.338171,
		40.429081, 34.155903, 39.243797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.848301, 33.650024, 38.703228>,  <41.056259, 34.357430, 39.007076>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.848301, 33.650024, 38.703228> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.497173, 33.798870, 38.823868>,  <40.286495, 33.888176, 38.896252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.497173, 33.798870, 38.823868>,  <40.848301, 33.650024, 38.703228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.497173, 33.798870, 38.823868> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435028, -0.355868, -0.827108,
		-0.200445, -0.857259, 0.474267,
		-0.877822, 0.372110, 0.301600,
		40.233826, 33.910503, 38.914349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.386772, 33.196964, 38.358006>,  <40.848301, 33.650024, 38.703228>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.386772, 33.196964, 38.358006> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.158691, 33.510818, 38.455338>,  <40.021843, 33.699131, 38.513737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.158691, 33.510818, 38.455338>,  <40.386772, 33.196964, 38.358006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.158691, 33.510818, 38.455338> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624482, -0.221546, -0.748959,
		-0.533753, -0.579015, 0.616319,
		-0.570201, 0.784639, 0.243334,
		39.987633, 33.746212, 38.528339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.689552, 32.948139, 38.570232>,  <40.386772, 33.196964, 38.358006>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.689552, 32.948139, 38.570232> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.703205, 33.322113, 38.428967>,  <39.711399, 33.546497, 38.344208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.703205, 33.322113, 38.428967>,  <39.689552, 32.948139, 38.570232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.703205, 33.322113, 38.428967> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590083, -0.266347, -0.762143,
		-0.806621, 0.234412, 0.542599,
		0.034136, 0.934939, -0.353163,
		39.713448, 33.602596, 38.323017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.056942, 33.009506, 38.241398>,  <39.689552, 32.948139, 38.570232>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.056942, 33.009506, 38.241398> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.234627, 33.332230, 38.085587>,  <39.341236, 33.525864, 37.992100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.234627, 33.332230, 38.085587>,  <39.056942, 33.009506, 38.241398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.234627, 33.332230, 38.085587> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509969, -0.129771, -0.850348,
		-0.736621, 0.576379, 0.353803,
		0.444209, 0.806812, -0.389528,
		39.367889, 33.574272, 37.968727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.453293, 33.307819, 37.957832>,  <39.056942, 33.009506, 38.241398>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.453293, 33.307819, 37.957832> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.785233, 33.455486, 37.790466>,  <38.984394, 33.544086, 37.690044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.785233, 33.455486, 37.790466>,  <38.453293, 33.307819, 37.957832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.785233, 33.455486, 37.790466> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356487, -0.226125, -0.906523,
		-0.429270, 0.901435, -0.056047,
		0.829846, 0.369164, -0.418419,
		39.034187, 33.566235, 37.664940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.234043, 33.787369, 37.453144>,  <38.453293, 33.307819, 37.957832>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.234043, 33.787369, 37.453144> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.602322, 33.657139, 37.367065>,  <38.823288, 33.578999, 37.315418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.602322, 33.657139, 37.367065>,  <38.234043, 33.787369, 37.453144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.602322, 33.657139, 37.367065> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312317, -0.284011, -0.906530,
		0.234029, 0.901851, -0.363172,
		0.920700, -0.325579, -0.215197,
		38.878532, 33.559464, 37.302505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.266048, 34.607571, 37.214798>,  <38.234043, 33.787369, 37.453144>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.266048, 34.607571, 37.214798> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.896927, 34.711327, 37.100853>,  <37.675453, 34.773579, 37.032486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.896927, 34.711327, 37.100853>,  <38.266048, 34.607571, 37.214798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.896927, 34.711327, 37.100853> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197948, 0.315116, 0.928180,
		0.330523, 0.912919, -0.239446,
		-0.922806, 0.259387, -0.284863,
		37.620087, 34.789143, 37.015392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.059834, 35.311771, 37.549652>,  <38.266048, 34.607571, 37.214798>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.059834, 35.311771, 37.549652> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.711731, 35.131126, 37.470966>,  <37.502869, 35.022739, 37.423756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.711731, 35.131126, 37.470966>,  <38.059834, 35.311771, 37.549652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.711731, 35.131126, 37.470966> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328371, 0.234181, 0.915058,
		-0.367183, 0.860934, -0.352094,
		-0.870258, -0.451611, -0.196719,
		37.450653, 34.995644, 37.411949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.517067, 35.683083, 37.926109>,  <38.059834, 35.311771, 37.549652>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.517067, 35.683083, 37.926109> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.357784, 35.321667, 37.862816>,  <37.262215, 35.104816, 37.824841>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.357784, 35.321667, 37.862816>,  <37.517067, 35.683083, 37.926109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.357784, 35.321667, 37.862816> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243179, -0.062348, 0.967976,
		-0.884475, 0.423935, -0.194895,
		-0.398207, -0.903544, -0.158237,
		37.238323, 35.050602, 37.815346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.791195, 35.756222, 38.141373>,  <37.517067, 35.683083, 37.926109>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.791195, 35.756222, 38.141373> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.811195, 35.356739, 38.137524>,  <36.823196, 35.117050, 38.135216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.811195, 35.356739, 38.137524>,  <36.791195, 35.756222, 38.141373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.811195, 35.356739, 38.137524> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182439, -0.018607, 0.983041,
		-0.981945, -0.047400, -0.183133,
		0.050003, -0.998703, -0.009623,
		36.826195, 35.057129, 38.134636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.072994, 35.500946, 38.369755>,  <36.791195, 35.756222, 38.141373>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.072994, 35.500946, 38.369755> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.344753, 35.212597, 38.424545>,  <36.507809, 35.039589, 38.457420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.344753, 35.212597, 38.424545>,  <36.072994, 35.500946, 38.369755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.344753, 35.212597, 38.424545> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302447, -0.105036, 0.947361,
		-0.668535, -0.685066, -0.289386,
		0.679401, -0.720868, 0.136977,
		36.548573, 34.996338, 38.465637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.761379, 34.784573, 38.537235>,  <36.072994, 35.500946, 38.369755>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.761379, 34.784573, 38.537235> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.132862, 34.803932, 38.684288>,  <36.355751, 34.815548, 38.772518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.132862, 34.803932, 38.684288>,  <35.761379, 34.784573, 38.537235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.132862, 34.803932, 38.684288> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349684, -0.215499, 0.911746,
		0.123355, -0.975304, -0.183211,
		0.928711, 0.048402, 0.367631,
		36.411476, 34.818451, 38.794579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.708111, 34.405922, 39.111504>,  <35.761379, 34.784573, 38.537235>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.708111, 34.405922, 39.111504> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.076668, 34.543491, 39.183903>,  <36.297802, 34.626034, 39.227345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.076668, 34.543491, 39.183903>,  <35.708111, 34.405922, 39.111504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.076668, 34.543491, 39.183903> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072062, -0.306469, 0.949149,
		0.381904, -0.887578, -0.257594,
		0.921388, 0.343921, 0.181002,
		36.353085, 34.646667, 39.238205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.085190, 33.804237, 39.462944>,  <35.708111, 34.405922, 39.111504>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.085190, 33.804237, 39.462944> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.289047, 34.138840, 39.543457>,  <36.411362, 34.339600, 39.591766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.289047, 34.138840, 39.543457>,  <36.085190, 33.804237, 39.462944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.289047, 34.138840, 39.543457> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137335, -0.310041, 0.940752,
		0.849352, -0.451808, -0.272893,
		0.509647, 0.836507, 0.201285,
		36.441940, 34.389793, 39.603844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.764236, 33.625294, 39.804302>,  <36.085190, 33.804237, 39.462944>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.764236, 33.625294, 39.804302> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.696888, 34.011086, 39.885715>,  <36.656479, 34.242561, 39.934563>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.696888, 34.011086, 39.885715>,  <36.764236, 33.625294, 39.804302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.696888, 34.011086, 39.885715> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001930, -0.206156, 0.978517,
		0.985722, 0.165146, 0.032849,
		-0.168370, 0.964483, 0.203532,
		36.646378, 34.300430, 39.946774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.355293, 33.891434, 40.208977>,  <36.764236, 33.625294, 39.804302>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.355293, 33.891434, 40.208977> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.042896, 34.119106, 40.311802>,  <36.855457, 34.255711, 40.373497>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.042896, 34.119106, 40.311802>,  <37.355293, 33.891434, 40.208977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.042896, 34.119106, 40.311802> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081421, -0.315295, 0.945495,
		0.619210, 0.759355, 0.199899,
		-0.780993, 0.569183, 0.257061,
		36.808598, 34.289860, 40.388920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.539951, 34.386829, 40.830334>,  <37.355293, 33.891434, 40.208977>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.539951, 34.386829, 40.830334> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.144550, 34.326393, 40.832352>,  <36.907310, 34.290131, 40.833565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.144550, 34.326393, 40.832352>,  <37.539951, 34.386829, 40.830334>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.144550, 34.326393, 40.832352> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024940, -0.130055, 0.991193,
		-0.149105, 0.979927, 0.132329,
		-0.988507, -0.151092, 0.005048,
		36.848000, 34.281067, 40.833866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.339684, 34.671768, 41.362843>,  <37.539951, 34.386829, 40.830334>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.339684, 34.671768, 41.362843> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.006042, 34.461472, 41.296074>,  <36.805859, 34.335293, 41.256012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.006042, 34.461472, 41.296074>,  <37.339684, 34.671768, 41.362843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.006042, 34.461472, 41.296074> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091121, -0.167123, 0.981716,
		-0.544025, 0.834065, 0.091492,
		-0.834106, -0.525742, -0.166920,
		36.755810, 34.303749, 41.245998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.907280, 34.091057, 33.307125> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.556889, 33.913464, 33.382545>,  <37.346653, 33.806908, 33.427799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.556889, 33.913464, 33.382545>,  <37.907280, 34.091057, 33.307125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.556889, 33.913464, 33.382545> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156324, 0.631099, 0.759787,
		-0.456325, 0.636079, -0.622231,
		-0.875974, -0.443980, 0.188552,
		37.294098, 33.780270, 33.439110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.514263, 34.669182, 33.533905>,  <37.907280, 34.091057, 33.307125>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.514263, 34.669182, 33.533905> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.343239, 34.329735, 33.658512>,  <37.240623, 34.126068, 33.733276>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.343239, 34.329735, 33.658512>,  <37.514263, 34.669182, 33.533905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.343239, 34.329735, 33.658512> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218421, 0.431376, 0.875333,
		-0.877203, 0.306214, -0.369794,
		-0.427559, -0.848615, 0.311520,
		37.214970, 34.075150, 33.751968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.104446, 34.964687, 34.012112>,  <37.514263, 34.669182, 33.533905>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.104446, 34.964687, 34.012112> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.085651, 34.573242, 34.092220>,  <37.074375, 34.338375, 34.140285>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.085651, 34.573242, 34.092220>,  <37.104446, 34.964687, 34.012112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.085651, 34.573242, 34.092220> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004587, 0.200282, 0.979728,
		-0.998885, 0.046954, -0.004922,
		-0.046988, -0.978613, 0.200274,
		37.071556, 34.279659, 34.152302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.538681, 34.892029, 34.424118>,  <37.104446, 34.964687, 34.012112>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.538681, 34.892029, 34.424118> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.768604, 34.570930, 34.487617>,  <36.906559, 34.378273, 34.525719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.768604, 34.570930, 34.487617>,  <36.538681, 34.892029, 34.424118>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.768604, 34.570930, 34.487617> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019005, 0.180856, 0.983326,
		-0.818070, -0.568237, 0.088701,
		0.574805, -0.802743, 0.158752,
		36.941048, 34.330109, 34.535244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.272751, 34.585876, 35.005577>,  <36.538681, 34.892029, 34.424118>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.272751, 34.585876, 35.005577> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.638493, 34.423950, 35.009056>,  <36.857937, 34.326794, 35.011143>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.638493, 34.423950, 35.009056>,  <36.272751, 34.585876, 35.005577>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.638493, 34.423950, 35.009056> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004378, 0.011603, 0.999923,
		-0.404889, -0.914323, 0.008837,
		0.914355, -0.404819, 0.008701,
		36.912800, 34.302505, 35.011665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.246288, 34.051453, 35.438896>,  <36.272751, 34.585876, 35.005577>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.246288, 34.051453, 35.438896> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.638428, 34.129833, 35.429722>,  <36.873711, 34.176861, 35.424217>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.638428, 34.129833, 35.429722>,  <36.246288, 34.051453, 35.438896>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.638428, 34.129833, 35.429722> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051811, -0.143532, 0.988288,
		0.190365, -0.970052, -0.150864,
		0.980345, 0.195952, -0.022936,
		36.932529, 34.188618, 35.422840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.530899, 33.721886, 36.033863>,  <36.246288, 34.051453, 35.438896>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.530899, 33.721886, 36.033863> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.839275, 33.958961, 35.940598>,  <37.024300, 34.101208, 35.884636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.839275, 33.958961, 35.940598>,  <36.530899, 33.721886, 36.033863>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.839275, 33.958961, 35.940598> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199767, 0.122599, 0.972143,
		0.604770, -0.796042, -0.023884,
		0.770939, 0.592695, -0.233167,
		37.070557, 34.136768, 35.870647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.130196, 33.442322, 36.429241>,  <36.530899, 33.721886, 36.033863>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.130196, 33.442322, 36.429241> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.176743, 33.830536, 36.344841>,  <37.204670, 34.063465, 36.294201>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.176743, 33.830536, 36.344841>,  <37.130196, 33.442322, 36.429241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.176743, 33.830536, 36.344841> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175107, 0.189070, 0.966225,
		0.977648, -0.149387, -0.147945,
		0.116369, 0.970534, -0.211002,
		37.211655, 34.121696, 36.281540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.732536, 33.581398, 36.766003>,  <37.130196, 33.442322, 36.429241>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.732536, 33.581398, 36.766003> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.528660, 33.918991, 36.699184>,  <37.406334, 34.121548, 36.659092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.528660, 33.918991, 36.699184>,  <37.732536, 33.581398, 36.766003>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.528660, 33.918991, 36.699184> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198760, 0.304414, 0.931572,
		0.837083, 0.441613, -0.322908,
		-0.509692, 0.843984, -0.167045,
		37.375751, 34.172188, 36.649071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.346817, 33.920349, 36.741207>,  <37.732536, 33.581398, 36.766003>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.346817, 33.920349, 36.741207> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.636555, 33.650597, 36.798531>,  <38.810398, 33.488747, 36.832924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.636555, 33.650597, 36.798531>,  <38.346817, 33.920349, 36.741207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.636555, 33.650597, 36.798531> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281238, -0.478806, -0.831655,
		0.629471, 0.562099, -0.536481,
		0.724342, -0.674381, 0.143311,
		38.853859, 33.448280, 36.841522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.479008, 33.756027, 36.076275>,  <38.346817, 33.920349, 36.741207>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.479008, 33.756027, 36.076275> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.670792, 33.481480, 36.295006>,  <38.785862, 33.316750, 36.426243>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.670792, 33.481480, 36.295006>,  <38.479008, 33.756027, 36.076275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.670792, 33.481480, 36.295006> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184096, -0.687918, -0.702052,
		0.858038, 0.235936, -0.456186,
		0.479458, -0.686369, 0.546825,
		38.814629, 33.275570, 36.459053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.047539, 33.544258, 35.625809>,  <38.479008, 33.756027, 36.076275>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.047539, 33.544258, 35.625809> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.925545, 33.258816, 35.878082>,  <38.852348, 33.087551, 36.029446>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.925545, 33.258816, 35.878082>,  <39.047539, 33.544258, 35.625809>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.925545, 33.258816, 35.878082> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073693, -0.642561, -0.762682,
		0.949502, -0.279082, 0.143383,
		-0.304983, -0.713602, 0.630680,
		38.834049, 33.044735, 36.067287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.389767, 32.934643, 35.424435>,  <39.047539, 33.544258, 35.625809>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.389767, 32.934643, 35.424435> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.105152, 32.798775, 35.670471>,  <38.934383, 32.717255, 35.818092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.105152, 32.798775, 35.670471>,  <39.389767, 32.934643, 35.424435>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.105152, 32.798775, 35.670471> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231729, -0.712976, -0.661791,
		0.663337, -0.613423, 0.428598,
		-0.711538, -0.339672, 0.615091,
		38.891689, 32.696873, 35.855000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.567062, 32.240841, 35.545273>,  <39.389767, 32.934643, 35.424435>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.567062, 32.240841, 35.545273> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.178436, 32.262016, 35.637585>,  <38.945259, 32.274719, 35.692970>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.178436, 32.262016, 35.637585>,  <39.567062, 32.240841, 35.545273>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.178436, 32.262016, 35.637585> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164499, -0.851946, -0.497120,
		0.170293, -0.520948, 0.836429,
		-0.971566, 0.052936, 0.230776,
		38.886967, 32.277897, 35.706818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.344982, 31.508495, 35.817551>,  <39.567062, 32.240841, 35.545273>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.344982, 31.508495, 35.817551> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.017277, 31.699720, 35.690895>,  <38.820652, 31.814455, 35.614902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.017277, 31.699720, 35.690895>,  <39.344982, 31.508495, 35.817551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.017277, 31.699720, 35.690895> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276069, -0.812833, -0.512921,
		-0.502581, -0.332806, 0.797905,
		-0.819267, 0.478062, -0.316637,
		38.771496, 31.843140, 35.595905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.883526, 31.037079, 35.830479>,  <39.344982, 31.508495, 35.817551>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.883526, 31.037079, 35.830479> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.721802, 31.303619, 35.579876>,  <38.624767, 31.463543, 35.429516>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.721802, 31.303619, 35.579876>,  <38.883526, 31.037079, 35.830479>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.721802, 31.303619, 35.579876> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222272, -0.736038, -0.639408,
		-0.887202, -0.119266, 0.445700,
		-0.404312, 0.666351, -0.626505,
		38.600510, 31.503525, 35.391926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.131794, 30.773680, 35.657066>,  <38.883526, 31.037079, 35.830479>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.131794, 30.773680, 35.657066> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.247601, 31.030121, 35.372765>,  <38.317085, 31.183985, 35.202183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.247601, 31.030121, 35.372765>,  <38.131794, 30.773680, 35.657066>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.247601, 31.030121, 35.372765> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246192, -0.667696, -0.702547,
		-0.924971, 0.378378, -0.035472,
		0.289513, 0.641103, -0.710753,
		38.334454, 31.222452, 35.159538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.632000, 30.666046, 35.063282>,  <38.131794, 30.773680, 35.657066>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.632000, 30.666046, 35.063282> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.922554, 30.879107, 34.889545>,  <38.096886, 31.006943, 34.785305>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.922554, 30.879107, 34.889545>,  <37.632000, 30.666046, 35.063282>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.922554, 30.879107, 34.889545> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193218, -0.448208, -0.872798,
		-0.659568, 0.717910, -0.222654,
		0.726386, 0.532649, -0.434337,
		38.140469, 31.038900, 34.759243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.385841, 31.058336, 34.417877>,  <37.632000, 30.666046, 35.063282>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.385841, 31.058336, 34.417877> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.776646, 30.987915, 34.369781>,  <38.011127, 30.945663, 34.340923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.776646, 30.987915, 34.369781>,  <37.385841, 31.058336, 34.417877>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.776646, 30.987915, 34.369781> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187055, -0.437273, -0.879661,
		0.102287, 0.881929, -0.460151,
		0.977010, -0.176052, -0.120242,
		38.069748, 30.935099, 34.333710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.513496, 31.271200, 33.742455>,  <37.385841, 31.058336, 34.417877>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.513496, 31.271200, 33.742455> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.812065, 31.031719, 33.858669>,  <37.991207, 30.888031, 33.928398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.812065, 31.031719, 33.858669>,  <37.513496, 31.271200, 33.742455>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.812065, 31.031719, 33.858669> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036757, -0.473007, -0.880291,
		0.664455, 0.646391, -0.375070,
		0.746423, -0.598701, 0.290532,
		38.035992, 30.852108, 33.945827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.821754, 31.194105, 33.169689>,  <37.513496, 31.271200, 33.742455>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.821754, 31.194105, 33.169689> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.962196, 30.893091, 33.392548>,  <38.046463, 30.712482, 33.526264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.962196, 30.893091, 33.392548>,  <37.821754, 31.194105, 33.169689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.962196, 30.893091, 33.392548> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185663, -0.527261, -0.829172,
		0.917744, 0.394569, -0.045407,
		0.351106, -0.752537, 0.557147,
		38.067528, 30.667330, 33.559692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.463577, 30.934956, 32.867622>,  <37.821754, 31.194105, 33.169689>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.463577, 30.934956, 32.867622> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.341305, 30.629723, 33.095398>,  <38.267941, 30.446583, 33.232063>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.341305, 30.629723, 33.095398>,  <38.463577, 30.934956, 32.867622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.341305, 30.629723, 33.095398> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156424, -0.630190, -0.760521,
		0.939196, -0.143406, 0.312004,
		-0.305685, -0.763083, 0.569439,
		38.249599, 30.400797, 33.266232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.964912, 30.536356, 32.809715>,  <38.463577, 30.934956, 32.867622>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.964912, 30.536356, 32.809715> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.660263, 30.309803, 32.935658>,  <38.477474, 30.173872, 33.011223>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.660263, 30.309803, 32.935658>,  <38.964912, 30.536356, 32.809715>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.660263, 30.309803, 32.935658> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150975, -0.627598, -0.763759,
		0.630183, -0.534164, 0.563505,
		-0.761627, -0.566383, 0.314856,
		38.431774, 30.139889, 33.030113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<32.103348, 29.119852, 33.994770> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.451290, 29.310522, 34.045563>,  <32.660057, 29.424925, 34.076038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.451290, 29.310522, 34.045563>,  <32.103348, 29.119852, 33.994770>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.451290, 29.310522, 34.045563> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090171, -0.406714, 0.909094,
		0.484988, -0.779335, -0.396767,
		0.869860, 0.476677, 0.126978,
		32.712250, 29.453526, 34.083656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.381809, 28.753128, 34.558483>,  <32.103348, 29.119852, 33.994770>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.381809, 28.753128, 34.558483> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.617451, 29.076324, 34.554291>,  <32.758835, 29.270243, 34.551777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.617451, 29.076324, 34.554291>,  <32.381809, 28.753128, 34.558483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.617451, 29.076324, 34.554291> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202825, -0.135300, 0.969823,
		0.782192, -0.573447, -0.243586,
		0.589099, 0.807993, -0.010479,
		32.794182, 29.318722, 34.551147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.075104, 28.472960, 34.758999>,  <32.381809, 28.753128, 34.558483>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.075104, 28.472960, 34.758999> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.035732, 28.862463, 34.841072>,  <33.012108, 29.096165, 34.890316>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.035732, 28.862463, 34.841072>,  <33.075104, 28.472960, 34.758999>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.035732, 28.862463, 34.841072> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453204, -0.139701, 0.880392,
		0.885956, 0.179647, -0.427562,
		-0.098429, 0.973761, 0.205186,
		33.006203, 29.154591, 34.902626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.714836, 28.710817, 34.991566>,  <33.075104, 28.472960, 34.758999>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.714836, 28.710817, 34.991566> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.467422, 28.979822, 35.154118>,  <33.318974, 29.141226, 35.251648>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.467422, 28.979822, 35.154118>,  <33.714836, 28.710817, 34.991566>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.467422, 28.979822, 35.154118> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517155, -0.040949, 0.854912,
		0.591580, 0.738951, -0.322466,
		-0.618533, 0.672514, 0.406377,
		33.281864, 29.181576, 35.276031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.238918, 29.360518, 35.122841>,  <33.714836, 28.710817, 34.991566>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.238918, 29.360518, 35.122841> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.909061, 29.420378, 35.341042>,  <33.711147, 29.456295, 35.471962>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.909061, 29.420378, 35.341042>,  <34.238918, 29.360518, 35.122841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.909061, 29.420378, 35.341042> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556763, 0.044381, 0.829485,
		0.099924, 0.987742, -0.119919,
		-0.824639, 0.149652, 0.545504,
		33.661671, 29.465273, 35.504692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.351692, 29.985325, 35.608280>,  <34.238918, 29.360518, 35.122841>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.351692, 29.985325, 35.608280> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.027996, 29.848934, 35.799637>,  <33.833778, 29.767099, 35.914452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.027996, 29.848934, 35.799637>,  <34.351692, 29.985325, 35.608280>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.027996, 29.848934, 35.799637> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396010, 0.284879, 0.872938,
		-0.433935, 0.895868, -0.095506,
		-0.809244, -0.340977, 0.478391,
		33.785221, 29.746641, 35.943153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.015930, 30.537073, 35.841942>,  <34.351692, 29.985325, 35.608280>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.015930, 30.537073, 35.841942> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.893074, 30.241238, 36.081501>,  <33.819359, 30.063736, 36.225235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.893074, 30.241238, 36.081501>,  <34.015930, 30.537073, 35.841942>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.893074, 30.241238, 36.081501> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277531, 0.532347, 0.799740,
		-0.910296, 0.411847, 0.041751,
		-0.307144, -0.739587, 0.598894,
		33.800930, 30.019361, 36.261169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.337410, 30.728437, 36.258499>,  <34.015930, 30.537073, 35.841942>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.337410, 30.728437, 36.258499> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.507748, 30.436890, 36.472942>,  <33.609951, 30.261961, 36.601608>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.507748, 30.436890, 36.472942>,  <33.337410, 30.728437, 36.258499>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.507748, 30.436890, 36.472942> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049054, 0.610241, 0.790695,
		-0.903466, -0.310415, 0.295622,
		0.425844, -0.728868, 0.536105,
		33.635502, 30.218229, 36.633774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.205357, 30.820633, 36.976334>,  <33.337410, 30.728437, 36.258499>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.205357, 30.820633, 36.976334> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.503407, 30.558523, 37.025982>,  <33.682236, 30.401257, 37.055771>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.503407, 30.558523, 37.025982>,  <33.205357, 30.820633, 36.976334>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.503407, 30.558523, 37.025982> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135478, 0.330942, 0.933875,
		-0.653023, -0.679036, 0.335367,
		0.745122, -0.655277, 0.124119,
		33.726944, 30.361940, 37.063217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.190506, 30.708206, 37.716282>,  <33.205357, 30.820633, 36.976334>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.190506, 30.708206, 37.716282> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.550152, 30.577211, 37.600109>,  <33.765938, 30.498613, 37.530407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.550152, 30.577211, 37.600109>,  <33.190506, 30.708206, 37.716282>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.550152, 30.577211, 37.600109> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319749, 0.038267, 0.946729,
		-0.298929, -0.944080, 0.139121,
		0.899112, -0.327488, -0.290430,
		33.819885, 30.478966, 37.512981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.394436, 30.092018, 38.175453>,  <33.190506, 30.708206, 37.716282>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.394436, 30.092018, 38.175453> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.728432, 30.255749, 38.028351>,  <33.928829, 30.353987, 37.940090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.728432, 30.255749, 38.028351>,  <33.394436, 30.092018, 38.175453>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.728432, 30.255749, 38.028351> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289699, 0.241207, 0.926225,
		0.467836, -0.879926, 0.082823,
		0.834987, 0.409328, -0.367759,
		33.978928, 30.378548, 37.918022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.891239, 29.740395, 38.589653>,  <33.394436, 30.092018, 38.175453>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.891239, 29.740395, 38.589653> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.081615, 30.050865, 38.424232>,  <34.195843, 30.237148, 38.324978>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.081615, 30.050865, 38.424232>,  <33.891239, 29.740395, 38.589653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.081615, 30.050865, 38.424232> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303677, 0.296268, 0.905542,
		0.825383, -0.556575, -0.094700,
		0.475945, 0.776177, -0.413553,
		34.224400, 30.283718, 38.300167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.572342, 29.721100, 38.879074>,  <33.891239, 29.740395, 38.589653>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.572342, 29.721100, 38.879074> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.546368, 30.102621, 38.761738>,  <34.530785, 30.331533, 38.691338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.546368, 30.102621, 38.761738>,  <34.572342, 29.721100, 38.879074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.546368, 30.102621, 38.761738> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342615, 0.297398, 0.891162,
		0.937229, -0.042633, -0.346098,
		-0.064936, 0.953801, -0.293337,
		34.526886, 30.388762, 38.673737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.138733, 30.020996, 39.152359>,  <34.572342, 29.721100, 38.879074>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.138733, 30.020996, 39.152359> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.885296, 30.324184, 39.090332>,  <34.733234, 30.506098, 39.053116>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.885296, 30.324184, 39.090332>,  <35.138733, 30.020996, 39.152359>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.885296, 30.324184, 39.090332> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180254, 0.339539, 0.923159,
		0.752378, 0.556951, -0.351755,
		-0.633589, 0.757970, -0.155069,
		34.695221, 30.551575, 39.043812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.835567, 29.892044, 38.891289>,  <35.138733, 30.020996, 39.152359>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.835567, 29.892044, 38.891289> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.071774, 29.647268, 39.101742>,  <36.213497, 29.500402, 39.228016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.071774, 29.647268, 39.101742>,  <35.835567, 29.892044, 38.891289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.071774, 29.647268, 39.101742> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062656, -0.684740, -0.726089,
		0.804591, 0.395800, -0.442691,
		0.590515, -0.611942, 0.526137,
		36.248928, 29.463686, 39.259583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.433960, 29.777327, 38.556232>,  <35.835567, 29.892044, 38.891289>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.433960, 29.777327, 38.556232> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.373398, 29.457348, 38.788494>,  <36.337059, 29.265360, 38.927853>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.373398, 29.457348, 38.788494>,  <36.433960, 29.777327, 38.556232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.373398, 29.457348, 38.788494> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122922, -0.598103, -0.791936,
		0.980799, -0.048531, 0.188889,
		-0.151408, -0.799948, 0.580653,
		36.327976, 29.217363, 38.962688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.916931, 29.266417, 38.370296>,  <36.433960, 29.777327, 38.556232>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.916931, 29.266417, 38.370296> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.654945, 29.032892, 38.562206>,  <36.497753, 28.892776, 38.677353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.654945, 29.032892, 38.562206>,  <36.916931, 29.266417, 38.370296>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.654945, 29.032892, 38.562206> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069018, -0.678472, -0.731377,
		0.752501, -0.445914, 0.484669,
		-0.654965, -0.583813, 0.479774,
		36.458454, 28.857748, 38.706139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.226341, 28.511309, 38.342739>,  <36.916931, 29.266417, 38.370296>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.226341, 28.511309, 38.342739> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.831196, 28.542810, 38.396278>,  <36.594109, 28.561712, 38.428402>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.831196, 28.542810, 38.396278>,  <37.226341, 28.511309, 38.342739>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.831196, 28.542810, 38.396278> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146192, -0.762412, -0.630362,
		0.052406, -0.642282, 0.764675,
		-0.987868, 0.078755, 0.133851,
		36.534836, 28.566437, 38.436432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.965839, 27.836552, 38.463745>,  <37.226341, 28.511309, 38.342739>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.965839, 27.836552, 38.463745> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.650600, 28.047321, 38.336464>,  <36.461456, 28.173784, 38.260094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.650600, 28.047321, 38.336464>,  <36.965839, 27.836552, 38.463745>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.650600, 28.047321, 38.336464> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147140, -0.663219, -0.733819,
		-0.597708, -0.531499, 0.600212,
		-0.788096, 0.526924, -0.318206,
		36.414173, 28.205399, 38.241001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.527481, 27.339546, 38.166328>,  <36.965839, 27.836552, 38.463745>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.527481, 27.339546, 38.166328> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.368603, 27.682650, 38.035801>,  <36.273273, 27.888512, 37.957485>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.368603, 27.682650, 38.035801>,  <36.527481, 27.339546, 38.166328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.368603, 27.682650, 38.035801> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374263, -0.476056, -0.795800,
		-0.837950, -0.193962, 0.510117,
		-0.397199, 0.857758, -0.326318,
		36.249443, 27.939978, 37.937904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.741638, 27.180113, 37.831604>,  <36.527481, 27.339546, 38.166328>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.741638, 27.180113, 37.831604> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.873955, 27.531561, 37.693851>,  <35.953346, 27.742430, 37.611198>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.873955, 27.531561, 37.693851>,  <35.741638, 27.180113, 37.831604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.873955, 27.531561, 37.693851> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270160, -0.261483, -0.926628,
		-0.904205, 0.399563, 0.150871,
		0.330796, 0.878622, -0.344381,
		35.973194, 27.795147, 37.590538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.170868, 27.540602, 37.468746>,  <35.741638, 27.180113, 37.831604>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.170868, 27.540602, 37.468746> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.515415, 27.682505, 37.323315>,  <35.722145, 27.767647, 37.236057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.515415, 27.682505, 37.323315>,  <35.170868, 27.540602, 37.468746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.515415, 27.682505, 37.323315> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326577, -0.161479, -0.931274,
		-0.389084, 0.920909, -0.023239,
		0.861371, 0.354755, -0.363577,
		35.773827, 27.788931, 37.214241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.912754, 27.856030, 36.929001>,  <35.170868, 27.540602, 37.468746>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.912754, 27.856030, 36.929001> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.302399, 27.851826, 36.838676>,  <35.536186, 27.849304, 36.784481>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.302399, 27.851826, 36.838676>,  <34.912754, 27.856030, 36.929001>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.302399, 27.851826, 36.838676> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224071, -0.176901, -0.958383,
		-0.029875, 0.984173, -0.174676,
		0.974115, -0.010508, -0.225810,
		35.594635, 27.848673, 36.770935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.018650, 28.311054, 36.395500>,  <34.912754, 27.856030, 36.929001>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.018650, 28.311054, 36.395500> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.335545, 28.067589, 36.378109>,  <35.525681, 27.921509, 36.367672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.335545, 28.067589, 36.378109>,  <35.018650, 28.311054, 36.395500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.335545, 28.067589, 36.378109> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102716, -0.062776, -0.992728,
		0.601510, 0.790940, -0.112253,
		0.792235, -0.608666, -0.043482,
		35.573215, 27.884989, 36.365063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.484463, 28.631544, 35.827000>,  <35.018650, 28.311054, 36.395500>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.484463, 28.631544, 35.827000> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.565353, 28.243797, 35.882755>,  <35.613888, 28.011148, 35.916206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.565353, 28.243797, 35.882755>,  <35.484463, 28.631544, 35.827000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.565353, 28.243797, 35.882755> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140618, -0.169594, -0.975430,
		0.969191, 0.177658, -0.170607,
		0.202227, -0.969369, 0.139387,
		35.626022, 27.952986, 35.924572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.979847, 28.496891, 35.376480>,  <35.484463, 28.631544, 35.827000>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.979847, 28.496891, 35.376480> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.801117, 28.147530, 35.453957>,  <35.693878, 27.937914, 35.500443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.801117, 28.147530, 35.453957>,  <35.979847, 28.496891, 35.376480>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.801117, 28.147530, 35.453957> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072478, -0.251140, -0.965233,
		0.891681, -0.417251, 0.175518,
		-0.446825, -0.873401, 0.193695,
		35.667068, 27.885509, 35.512066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.486000, 27.940786, 35.133617>,  <35.979847, 28.496891, 35.376480>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.486000, 27.940786, 35.133617> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.117905, 27.785061, 35.149628>,  <35.897049, 27.691626, 35.159233>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.117905, 27.785061, 35.149628>,  <36.486000, 27.940786, 35.133617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.117905, 27.785061, 35.149628> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006952, -0.118521, -0.992927,
		0.391304, -0.913448, 0.111774,
		-0.920235, -0.389313, 0.040027,
		35.841835, 27.668266, 35.161636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.485981, 27.439770, 34.633331>,  <36.486000, 27.940786, 35.133617>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.485981, 27.439770, 34.633331> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.103630, 27.520916, 34.718319>,  <35.874218, 27.569603, 34.769314>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.103630, 27.520916, 34.718319>,  <36.485981, 27.439770, 34.633331>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.103630, 27.520916, 34.718319> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219590, -0.012986, -0.975506,
		-0.195137, -0.979120, 0.056960,
		-0.955877, 0.202865, 0.212471,
		35.816868, 27.581776, 34.782059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.977425, 26.897448, 34.722767>,  <36.485981, 27.439770, 34.633331>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.977425, 26.897448, 34.722767> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.315567, 26.778584, 34.545200>,  <37.518452, 26.707266, 34.438660>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.315567, 26.778584, 34.545200>,  <36.977425, 26.897448, 34.722767>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.315567, 26.778584, 34.545200> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502100, 0.158292, 0.850199,
		-0.182378, -0.941615, 0.283018,
		0.845360, -0.297161, -0.443916,
		37.569176, 26.689436, 34.412025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.222359, 26.488043, 35.193253>,  <36.977425, 26.897448, 34.722767>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.222359, 26.488043, 35.193253> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.522026, 26.610888, 34.958504>,  <37.701828, 26.684595, 34.817654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.522026, 26.610888, 34.958504>,  <37.222359, 26.488043, 35.193253>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.522026, 26.610888, 34.958504> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534352, 0.243356, 0.809473,
		0.391420, -0.920032, 0.018208,
		0.749172, 0.307114, -0.586875,
		37.746777, 26.703022, 34.782440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.838825, 26.179317, 35.463387>,  <37.222359, 26.488043, 35.193253>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.838825, 26.179317, 35.463387> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.979515, 26.491083, 35.256001>,  <38.063931, 26.678143, 35.131569>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.979515, 26.491083, 35.256001>,  <37.838825, 26.179317, 35.463387>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.979515, 26.491083, 35.256001> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698687, 0.150022, 0.699522,
		0.622997, -0.608282, -0.491800,
		0.351726, 0.779414, -0.518462,
		38.085033, 26.724907, 35.100460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.602242, 26.125965, 35.446674>,  <37.838825, 26.179317, 35.463387>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.602242, 26.125965, 35.446674> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.542233, 26.506472, 35.338909>,  <38.506229, 26.734776, 35.274250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.542233, 26.506472, 35.338909>,  <38.602242, 26.125965, 35.446674>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.542233, 26.506472, 35.338909> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758344, 0.285555, 0.585980,
		0.634356, -0.116402, -0.764227,
		-0.150020, 0.951267, -0.269416,
		38.497227, 26.791851, 35.258083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.247360, 26.275143, 35.327717>,  <38.602242, 26.125965, 35.446674>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.247360, 26.275143, 35.327717> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.027695, 26.594885, 35.425247>,  <38.895897, 26.786730, 35.483765>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.027695, 26.594885, 35.425247>,  <39.247360, 26.275143, 35.327717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.027695, 26.594885, 35.425247> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696910, 0.276999, 0.661504,
		0.461237, 0.533199, -0.709196,
		-0.549160, 0.799356, 0.243829,
		38.862946, 26.834692, 35.498398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.673164, 26.839331, 35.367142>,  <39.247360, 26.275143, 35.327717>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.673164, 26.839331, 35.367142> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.372612, 26.981102, 35.589779>,  <39.192280, 27.066164, 35.723362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.372612, 26.981102, 35.589779>,  <39.673164, 26.839331, 35.367142>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.372612, 26.981102, 35.589779> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654558, 0.507090, 0.560726,
		-0.083508, 0.785647, -0.613014,
		-0.751385, 0.354428, 0.556597,
		39.147198, 27.087431, 35.756760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.918415, 27.500832, 35.537548>,  <39.673164, 26.839331, 35.367142>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.918415, 27.500832, 35.537548> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.638950, 27.378710, 35.796364>,  <39.471272, 27.305437, 35.951653>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.638950, 27.378710, 35.796364>,  <39.918415, 27.500832, 35.537548>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.638950, 27.378710, 35.796364> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581872, 0.283734, 0.762181,
		-0.416282, 0.909002, -0.020588,
		-0.698666, -0.305303, 0.647036,
		39.429352, 27.287119, 35.990475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.883469, 28.012798, 36.069824>,  <39.918415, 27.500832, 35.537548>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.883469, 28.012798, 36.069824> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.713196, 27.697889, 36.248257>,  <39.611031, 27.508944, 36.355316>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.713196, 27.697889, 36.248257>,  <39.883469, 28.012798, 36.069824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.713196, 27.697889, 36.248257> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501061, 0.205418, 0.840679,
		-0.753479, 0.581380, 0.307029,
		-0.425684, -0.787274, 0.446086,
		39.585491, 27.461706, 36.382084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.460804, 28.244066, 36.546860>,  <39.883469, 28.012798, 36.069824>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.460804, 28.244066, 36.546860> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.543804, 27.872723, 36.670208>,  <39.593605, 27.649916, 36.744217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.543804, 27.872723, 36.670208>,  <39.460804, 28.244066, 36.546860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.543804, 27.872723, 36.670208> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120760, 0.337129, 0.933681,
		-0.970753, -0.156500, 0.182063,
		0.207500, -0.928360, 0.308370,
		39.606052, 27.594215, 36.762718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.005405, 28.147226, 37.077023>,  <39.460804, 28.244066, 36.546860>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.005405, 28.147226, 37.077023> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.297241, 27.877617, 37.123310>,  <39.472343, 27.715851, 37.151081>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.297241, 27.877617, 37.123310>,  <39.005405, 28.147226, 37.077023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.297241, 27.877617, 37.123310> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179878, 0.352378, 0.918408,
		-0.659805, -0.649247, 0.378333,
		0.729590, -0.674024, 0.115716,
		39.516117, 27.675409, 37.158024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.831806, 27.844498, 37.609707>,  <39.005405, 28.147226, 37.077023>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.831806, 27.844498, 37.609707> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.222237, 27.759851, 37.589741>,  <39.456493, 27.709063, 37.577763>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.222237, 27.759851, 37.589741>,  <38.831806, 27.844498, 37.609707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.222237, 27.759851, 37.589741> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124420, 0.355363, 0.926411,
		-0.178306, -0.910459, 0.373191,
		0.976077, -0.211617, -0.049916,
		39.515060, 27.696367, 37.574764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.014725, 27.675280, 38.171471>,  <38.831806, 27.844498, 37.609707>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.014725, 27.675280, 38.171471> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.364697, 27.797218, 38.020966>,  <39.574680, 27.870382, 37.930664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.364697, 27.797218, 38.020966>,  <39.014725, 27.675280, 38.171471>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.364697, 27.797218, 38.020966> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223410, 0.435261, 0.872144,
		0.429635, -0.847125, 0.312718,
		0.874930, 0.304839, -0.376260,
		39.627174, 27.888674, 37.908089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.399315, 27.810818, 38.748974>,  <39.014725, 27.675280, 38.171471>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.399315, 27.810818, 38.748974> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.666256, 27.966629, 38.495075>,  <39.826420, 28.060116, 38.342735>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.666256, 27.966629, 38.495075>,  <39.399315, 27.810818, 38.748974>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.666256, 27.966629, 38.495075> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518353, 0.369024, 0.771448,
		0.534738, -0.843853, 0.044356,
		0.667357, 0.389531, -0.634744,
		39.866463, 28.083488, 38.304653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.147209, 27.593519, 38.942444>,  <39.399315, 27.810818, 38.748974>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.147209, 27.593519, 38.942444> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.176842, 27.935503, 38.737095>,  <40.194622, 28.140694, 38.613884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.176842, 27.935503, 38.737095>,  <40.147209, 27.593519, 38.942444>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.176842, 27.935503, 38.737095> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649296, 0.349376, 0.675537,
		0.756918, -0.383380, -0.529239,
		0.074084, 0.854959, -0.513377,
		40.199066, 28.191990, 38.583080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<39.207153, 29.845345, 32.723373> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.809288, 29.814411, 32.750679>,  <38.570568, 29.795851, 32.767063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.809288, 29.814411, 32.750679>,  <39.207153, 29.845345, 32.723373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.809288, 29.814411, 32.750679> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003420, -0.686143, -0.727459,
		0.103098, -0.723344, 0.682747,
		-0.994665, -0.077334, 0.068266,
		38.510887, 29.791210, 32.771160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.127621, 29.143131, 32.595726>,  <39.207153, 29.845345, 32.723373>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.127621, 29.143131, 32.595726> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.771606, 29.311098, 32.524727>,  <38.557999, 29.411879, 32.482128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.771606, 29.311098, 32.524727>,  <39.127621, 29.143131, 32.595726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.771606, 29.311098, 32.524727> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140067, -0.622379, -0.770081,
		-0.433839, -0.660539, 0.612757,
		-0.890037, 0.419919, -0.177493,
		38.504597, 29.437075, 32.471478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.580505, 28.615856, 32.515305>,  <39.127621, 29.143131, 32.595726>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.580505, 28.615856, 32.515305> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.475594, 28.949404, 32.321037>,  <38.412647, 29.149532, 32.204479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.475594, 28.949404, 32.321037>,  <38.580505, 28.615856, 32.515305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.475594, 28.949404, 32.321037> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007898, -0.501411, -0.865173,
		-0.964959, -0.230754, 0.124924,
		-0.262280, 0.833870, -0.485664,
		38.396908, 29.199564, 32.175339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.074974, 28.361153, 32.060883>,  <38.580505, 28.615856, 32.515305>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.074974, 28.361153, 32.060883> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.196575, 28.713734, 31.916315>,  <38.269535, 28.925283, 31.829575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.196575, 28.713734, 31.916315>,  <38.074974, 28.361153, 32.060883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.196575, 28.713734, 31.916315> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017517, -0.384478, -0.922968,
		-0.952511, 0.274253, -0.132322,
		0.304002, 0.881455, -0.361416,
		38.287777, 28.978170, 31.807890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.609669, 28.450699, 31.428823>,  <38.074974, 28.361153, 32.060883>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.609669, 28.450699, 31.428823> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.896297, 28.725975, 31.383364>,  <38.068275, 28.891140, 31.356089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.896297, 28.725975, 31.383364>,  <37.609669, 28.450699, 31.428823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.896297, 28.725975, 31.383364> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065852, -0.095458, -0.993253,
		-0.694395, 0.719223, -0.023084,
		0.716574, 0.688190, -0.113648,
		38.111271, 28.932432, 31.349270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.229847, 28.836838, 30.996473>,  <37.609669, 28.450699, 31.428823>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.229847, 28.836838, 30.996473> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.627697, 28.878187, 30.998976>,  <37.866405, 28.902998, 31.000477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.627697, 28.878187, 30.998976>,  <37.229847, 28.836838, 30.996473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.627697, 28.878187, 30.998976> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018228, -0.115277, -0.993166,
		-0.101948, 0.987940, -0.116542,
		0.994623, 0.103375, 0.006256,
		37.926083, 28.909201, 31.000853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.359493, 29.390121, 30.428198>,  <37.229847, 28.836838, 30.996473>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.359493, 29.390121, 30.428198> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.707123, 29.196781, 30.470304>,  <37.915699, 29.080776, 30.495569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.707123, 29.196781, 30.470304>,  <37.359493, 29.390121, 30.428198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.707123, 29.196781, 30.470304> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041678, -0.140495, -0.989204,
		0.492921, 0.864080, -0.101955,
		0.869075, -0.483350, 0.105266,
		37.967846, 29.051777, 30.501884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.850185, 29.681004, 29.882711>,  <37.359493, 29.390121, 30.428198>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.850185, 29.681004, 29.882711> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.972324, 29.315332, 29.989326>,  <38.045609, 29.095930, 30.053295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.972324, 29.315332, 29.989326>,  <37.850185, 29.681004, 29.882711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.972324, 29.315332, 29.989326> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188092, -0.216487, -0.957995,
		0.933481, 0.342651, 0.105847,
		0.305343, -0.914179, 0.266537,
		38.063927, 29.041079, 30.069288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.570168, 29.575024, 29.463804>,  <37.850185, 29.681004, 29.882711>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.570168, 29.575024, 29.463804> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.419064, 29.219110, 29.566238>,  <38.328400, 29.005562, 29.627699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.419064, 29.219110, 29.566238>,  <38.570168, 29.575024, 29.463804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.419064, 29.219110, 29.566238> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009385, -0.280245, -0.959883,
		0.925855, -0.360203, 0.114216,
		-0.377761, -0.889784, 0.256086,
		38.305737, 28.952175, 29.643064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.771572, 29.121233, 28.998898>,  <38.570168, 29.575024, 29.463804>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.771572, 29.121233, 28.998898> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.485275, 28.868456, 29.117802>,  <38.313496, 28.716789, 29.189144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.485275, 28.868456, 29.117802>,  <38.771572, 29.121233, 28.998898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.485275, 28.868456, 29.117802> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135979, -0.291399, -0.946888,
		0.684999, -0.718148, 0.122636,
		-0.715741, -0.631941, 0.297261,
		38.270554, 28.678873, 29.206980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.863071, 28.492723, 28.556824>,  <38.771572, 29.121233, 28.998898>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.863071, 28.492723, 28.556824> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.489117, 28.459837, 28.694939>,  <38.264744, 28.440105, 28.777807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.489117, 28.459837, 28.694939>,  <38.863071, 28.492723, 28.556824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.489117, 28.459837, 28.694939> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282527, -0.416483, -0.864130,
		0.214850, -0.905418, 0.366138,
		-0.934889, -0.082215, 0.345286,
		38.208649, 28.435173, 28.798525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.583019, 27.863001, 28.148170>,  <38.863071, 28.492723, 28.556824>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.583019, 27.863001, 28.148170> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.255356, 28.052301, 28.277788>,  <38.058758, 28.165882, 28.355558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.255356, 28.052301, 28.277788>,  <38.583019, 27.863001, 28.148170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.255356, 28.052301, 28.277788> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552829, -0.500946, -0.665907,
		-0.152813, -0.724628, 0.671984,
		-0.819163, 0.473252, 0.324044,
		38.009605, 28.194277, 28.375002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.910458, 27.448147, 28.294655>,  <38.583019, 27.863001, 28.148170>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.910458, 27.448147, 28.294655> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.819500, 27.807421, 28.144159>,  <37.764927, 28.022985, 28.053862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.819500, 27.807421, 28.144159>,  <37.910458, 27.448147, 28.294655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.819500, 27.807421, 28.144159> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370200, -0.437084, -0.819701,
		-0.900692, -0.047109, 0.431897,
		-0.227391, 0.898186, -0.376238,
		37.751282, 28.076878, 28.031288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.230381, 27.372963, 28.012781>,  <37.910458, 27.448147, 28.294655>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.230381, 27.372963, 28.012781> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.371441, 27.718212, 27.868196>,  <37.456078, 27.925362, 27.781446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.371441, 27.718212, 27.868196>,  <37.230381, 27.372963, 28.012781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.371441, 27.718212, 27.868196> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639644, -0.059595, -0.766358,
		-0.683004, 0.501462, 0.531076,
		0.352650, 0.863125, -0.361461,
		37.477238, 27.977150, 27.759758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.121994, 26.806648, 28.623770>,  <37.230381, 27.372963, 28.012781>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.121994, 26.806648, 28.623770> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.866096, 26.521353, 28.738321>,  <36.712559, 26.350176, 28.807053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.866096, 26.521353, 28.738321>,  <37.121994, 26.806648, 28.623770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.866096, 26.521353, 28.738321> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366997, 0.043903, 0.929186,
		-0.675304, 0.699545, 0.233670,
		-0.639748, -0.713239, 0.286378,
		36.674171, 26.307381, 28.824234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.772179, 27.091188, 29.264690>,  <37.121994, 26.806648, 28.623770>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.772179, 27.091188, 29.264690> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.693001, 26.699503, 29.246964>,  <36.645496, 26.464493, 29.236326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.693001, 26.699503, 29.246964>,  <36.772179, 27.091188, 29.264690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.693001, 26.699503, 29.246964> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265775, -0.097135, 0.959129,
		-0.943495, 0.178072, 0.279477,
		-0.197941, -0.979212, -0.044319,
		36.633617, 26.405739, 29.233667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.224403, 26.979343, 29.667528>,  <36.772179, 27.091188, 29.264690>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.224403, 26.979343, 29.667528> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.395714, 26.618399, 29.648256>,  <36.498501, 26.401833, 29.636692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.395714, 26.618399, 29.648256>,  <36.224403, 26.979343, 29.667528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.395714, 26.618399, 29.648256> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322845, 0.102993, 0.940831,
		-0.844008, -0.418491, 0.335433,
		0.428276, -0.902362, -0.048181,
		36.524197, 26.347691, 29.633802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.050152, 26.682400, 30.217796>,  <36.224403, 26.979343, 29.667528>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.050152, 26.682400, 30.217796> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.366276, 26.460356, 30.114054>,  <36.555950, 26.327129, 30.051807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.366276, 26.460356, 30.114054>,  <36.050152, 26.682400, 30.217796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.366276, 26.460356, 30.114054> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356896, 0.072996, 0.931288,
		-0.498034, -0.828568, 0.255806,
		0.790308, -0.555109, -0.259358,
		36.603367, 26.293823, 30.036245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.963615, 26.056648, 30.600668>,  <36.050152, 26.682400, 30.217796>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.963615, 26.056648, 30.600668> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.350353, 26.108967, 30.512945>,  <36.582397, 26.140358, 30.460312>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.350353, 26.108967, 30.512945>,  <35.963615, 26.056648, 30.600668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.350353, 26.108967, 30.512945> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199674, 0.148069, 0.968610,
		0.159179, -0.980288, 0.117040,
		0.966847, 0.130812, -0.219308,
		36.640408, 26.148205, 30.447153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.228992, 25.758383, 31.086147>,  <35.963615, 26.056648, 30.600668>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.228992, 25.758383, 31.086147> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.568481, 25.931494, 30.964571>,  <36.772175, 26.035360, 30.891624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.568481, 25.931494, 30.964571>,  <36.228992, 25.758383, 31.086147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.568481, 25.931494, 30.964571> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337585, -0.000961, 0.941294,
		0.407079, -0.901500, -0.146915,
		0.848718, 0.432778, -0.303942,
		36.823097, 26.061327, 30.873388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.771976, 25.401649, 31.397743>,  <36.228992, 25.758383, 31.086147>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.771976, 25.401649, 31.397743> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.927120, 25.757935, 31.302923>,  <37.020206, 25.971706, 31.246031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.927120, 25.757935, 31.302923>,  <36.771976, 25.401649, 31.397743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.927120, 25.757935, 31.302923> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216543, 0.161929, 0.962750,
		0.895919, -0.424748, -0.130071,
		0.387864, 0.890712, -0.237051,
		37.043480, 26.025148, 31.231808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.493961, 25.485439, 31.690969>,  <36.771976, 25.401649, 31.397743>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.493961, 25.485439, 31.690969> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.341278, 25.854162, 31.663927>,  <37.249668, 26.075396, 31.647701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.341278, 25.854162, 31.663927>,  <37.493961, 25.485439, 31.690969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.341278, 25.854162, 31.663927> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334100, 0.205803, 0.919795,
		0.861788, 0.328503, -0.386532,
		-0.381705, 0.921808, -0.067606,
		37.226768, 26.130705, 31.643646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.987011, 25.828175, 32.014435>,  <37.493961, 25.485439, 31.690969>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.987011, 25.828175, 32.014435> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.681194, 26.085819, 32.024174>,  <37.497704, 26.240406, 32.030018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.681194, 26.085819, 32.024174>,  <37.987011, 25.828175, 32.014435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.681194, 26.085819, 32.024174> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234838, 0.243178, 0.941125,
		0.600269, 0.725248, -0.337182,
		-0.764544, 0.644112, 0.024344,
		37.451832, 26.279053, 32.031475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.186466, 26.485418, 32.165180>,  <37.987011, 25.828175, 32.014435>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.186466, 26.485418, 32.165180> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.800014, 26.504578, 32.266605>,  <37.568142, 26.516073, 32.327461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.800014, 26.504578, 32.266605>,  <38.186466, 26.485418, 32.165180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.800014, 26.504578, 32.266605> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257910, 0.210978, 0.942853,
		-0.008336, 0.976317, -0.216186,
		-0.966133, 0.047897, 0.253561,
		37.510174, 26.518948, 32.342674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.070641, 27.202896, 32.448872>,  <38.186466, 26.485418, 32.165180>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.070641, 27.202896, 32.448872> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.793034, 26.940939, 32.568508>,  <37.626469, 26.783764, 32.640289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.793034, 26.940939, 32.568508>,  <38.070641, 27.202896, 32.448872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.793034, 26.940939, 32.568508> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154915, 0.269861, 0.950356,
		-0.703097, 0.705895, -0.085835,
		-0.694015, -0.654895, 0.299092,
		37.584827, 26.744471, 32.658237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.780655, 27.554964, 32.980431>,  <38.070641, 27.202896, 32.448872>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.780655, 27.554964, 32.980431> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.663651, 27.178244, 33.046700>,  <37.593449, 26.952211, 33.086460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.663651, 27.178244, 33.046700>,  <37.780655, 27.554964, 32.980431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.663651, 27.178244, 33.046700> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052871, 0.157052, 0.986174,
		-0.954800, 0.297225, 0.003855,
		-0.292510, -0.941803, 0.165668,
		37.575897, 26.895702, 33.096401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.247608, 27.500647, 33.475227>,  <37.780655, 27.554964, 32.980431>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.247608, 27.500647, 33.475227> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.418858, 27.139839, 33.497406>,  <37.521606, 26.923355, 33.510712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.418858, 27.139839, 33.497406>,  <37.247608, 27.500647, 33.475227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.418858, 27.139839, 33.497406> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198469, 0.153697, 0.967981,
		-0.881656, -0.403415, 0.244824,
		0.428127, -0.902016, 0.055442,
		37.547295, 26.869234, 33.514038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.958546, 27.248339, 34.014641>,  <37.247608, 27.500647, 33.475227>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.958546, 27.248339, 34.014641> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.275204, 27.008989, 33.965252>,  <37.465199, 26.865379, 33.935619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.275204, 27.008989, 33.965252>,  <36.958546, 27.248339, 34.014641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.275204, 27.008989, 33.965252> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165635, 0.015664, 0.986063,
		-0.588100, -0.801064, 0.111512,
		0.791646, -0.598374, -0.123472,
		37.512699, 26.829477, 33.928211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.136799, 27.130827, 34.086216>,  <36.958546, 27.248339, 34.014641>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.136799, 27.130827, 34.086216> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.829491, 27.355614, 34.208824>,  <35.645107, 27.490486, 34.282391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.829491, 27.355614, 34.208824>,  <36.136799, 27.130827, 34.086216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.829491, 27.355614, 34.208824> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413810, -0.070671, -0.907616,
		-0.488388, -0.824135, 0.286842,
		-0.768269, 0.561967, 0.306520,
		35.599010, 27.524204, 34.300781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.637253, 26.862204, 33.692684>,  <36.136799, 27.130827, 34.086216>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.637253, 26.862204, 33.692684> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.479610, 27.191298, 33.856533>,  <35.385025, 27.388754, 33.954842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.479610, 27.191298, 33.856533>,  <35.637253, 26.862204, 33.692684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.479610, 27.191298, 33.856533> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596746, 0.109893, -0.794870,
		-0.698982, -0.557699, 0.447655,
		-0.394104, 0.822737, 0.409618,
		35.361378, 27.438118, 33.979420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.827160, 26.851038, 33.780426>,  <35.637253, 26.862204, 33.692684>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.827160, 26.851038, 33.780426> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.937195, 27.234829, 33.756004>,  <35.003216, 27.465103, 33.741352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.937195, 27.234829, 33.756004>,  <34.827160, 26.851038, 33.780426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.937195, 27.234829, 33.756004> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520479, 0.095230, -0.848548,
		-0.808349, 0.265205, 0.525585,
		0.275090, 0.959478, -0.061054,
		35.019722, 27.522673, 33.737690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.215622, 27.226448, 33.479874>,  <34.827160, 26.851038, 33.780426>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.215622, 27.226448, 33.479874> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.502556, 27.498781, 33.420681>,  <34.674717, 27.662182, 33.385166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.502556, 27.498781, 33.420681>,  <34.215622, 27.226448, 33.479874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.502556, 27.498781, 33.420681> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348058, 0.166177, -0.922627,
		-0.603563, 0.713339, 0.356173,
		0.717334, 0.680832, -0.147985,
		34.717754, 27.703032, 33.376286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.871117, 27.892021, 33.289368>,  <34.215622, 27.226448, 33.479874>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.871117, 27.892021, 33.289368> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.243801, 27.858784, 33.147942>,  <34.467411, 27.838840, 33.063087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.243801, 27.858784, 33.147942>,  <33.871117, 27.892021, 33.289368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.243801, 27.858784, 33.147942> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339667, 0.145325, -0.929251,
		0.128597, 0.985888, 0.107177,
		0.931713, -0.083095, -0.353562,
		34.523315, 27.833855, 33.041874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.853695, 28.303438, 32.770531>,  <33.871117, 27.892021, 33.289368>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.853695, 28.303438, 32.770531> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.191818, 28.099380, 32.707020>,  <34.394691, 27.976946, 32.668915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.191818, 28.099380, 32.707020>,  <33.853695, 28.303438, 32.770531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.191818, 28.099380, 32.707020> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220660, -0.062694, -0.973334,
		0.486588, 0.857800, -0.165564,
		0.845306, -0.510146, -0.158776,
		34.445412, 27.946337, 32.659386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.966812, 28.527870, 32.101604>,  <33.853695, 28.303438, 32.770531>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.966812, 28.527870, 32.101604> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.147335, 28.172972, 32.139793>,  <34.255650, 27.960033, 32.162708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.147335, 28.172972, 32.139793>,  <33.966812, 28.527870, 32.101604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.147335, 28.172972, 32.139793> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048079, -0.131008, -0.990215,
		0.891071, 0.442303, -0.101783,
		0.451309, -0.887246, 0.095471,
		34.282726, 27.906797, 32.168434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.124065, 29.183939, 31.702326>,  <33.966812, 28.527870, 32.101604>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.124065, 29.183939, 31.702326> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.803856, 29.393826, 31.586504>,  <33.611732, 29.519758, 31.517012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.803856, 29.393826, 31.586504>,  <34.124065, 29.183939, 31.702326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.803856, 29.393826, 31.586504> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205213, 0.213945, 0.955047,
		0.563078, 0.823954, -0.063589,
		-0.800519, 0.524717, -0.289553,
		33.563702, 29.551241, 31.499638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.113995, 29.856129, 31.979786>,  <34.124065, 29.183939, 31.702326>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.113995, 29.856129, 31.979786> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.725937, 29.792925, 31.906189>,  <33.493103, 29.755003, 31.862030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.725937, 29.792925, 31.906189>,  <34.113995, 29.856129, 31.979786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.725937, 29.792925, 31.906189> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205321, 0.131296, 0.969848,
		-0.129089, 0.978669, -0.159819,
		-0.970144, -0.158011, -0.183992,
		33.434895, 29.745522, 31.850992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.909893, 30.305534, 32.373104>,  <34.113995, 29.856129, 31.979786>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.909893, 30.305534, 32.373104> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.596848, 30.067192, 32.301025>,  <33.409019, 29.924187, 32.257778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.596848, 30.067192, 32.301025>,  <33.909893, 30.305534, 32.373104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.596848, 30.067192, 32.301025> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303707, 0.112791, 0.946066,
		-0.543394, 0.795132, -0.269237,
		-0.782614, -0.595855, -0.180197,
		33.362064, 29.888435, 32.246967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.292267, 30.673626, 32.493595>,  <33.909893, 30.305534, 32.373104>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.292267, 30.673626, 32.493595> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.190887, 30.288054, 32.526096>,  <33.130058, 30.056711, 32.545597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.190887, 30.288054, 32.526096>,  <33.292267, 30.673626, 32.493595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.190887, 30.288054, 32.526096> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216528, 0.138395, 0.966417,
		-0.942803, 0.227347, -0.243794,
		-0.253452, -0.963930, 0.081252,
		33.114853, 29.998875, 32.550472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.831829, 30.702904, 32.994186>,  <33.292267, 30.673626, 32.493595>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.831829, 30.702904, 32.994186> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.890594, 30.307793, 32.973366>,  <32.925854, 30.070726, 32.960873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.890594, 30.307793, 32.973366>,  <32.831829, 30.702904, 32.994186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.890594, 30.307793, 32.973366> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096772, -0.066720, 0.993068,
		-0.984404, -0.140855, -0.105391,
		0.146911, -0.987779, -0.052049,
		32.934669, 30.011459, 32.957752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.284451, 30.419098, 33.333023>,  <32.831829, 30.702904, 32.994186>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.284451, 30.419098, 33.333023> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.573307, 30.142403, 33.334145>,  <32.746620, 29.976385, 33.334816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.573307, 30.142403, 33.334145>,  <32.284451, 30.419098, 33.333023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.573307, 30.142403, 33.334145> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194496, -0.199151, 0.960474,
		-0.663837, -0.694146, -0.278356,
		0.722144, -0.691737, 0.002805,
		32.789951, 29.934881, 33.334988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.092674, 29.849045, 33.667358>,  <32.284451, 30.419098, 33.333023>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.092674, 29.849045, 33.667358> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.487545, 29.791174, 33.694363>,  <32.724468, 29.756451, 33.710567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.487545, 29.791174, 33.694363>,  <32.092674, 29.849045, 33.667358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.487545, 29.791174, 33.694363> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112220, -0.327993, 0.937991,
		-0.113563, -0.933536, -0.340021,
		0.987173, -0.144679, 0.067513,
		32.783695, 29.747770, 33.714615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<36.079254, 30.403269, 27.557051> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.361000, 30.166763, 27.714161>,  <36.530048, 30.024860, 27.808426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.361000, 30.166763, 27.714161>,  <36.079254, 30.403269, 27.557051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.361000, 30.166763, 27.714161> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033464, 0.525058, 0.850408,
		-0.709044, -0.612146, 0.350048,
		0.704369, -0.591263, 0.392774,
		36.572311, 29.989384, 27.831993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.780682, 30.107565, 28.178528>,  <36.079254, 30.403269, 27.557051>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.780682, 30.107565, 28.178528> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.179241, 30.133127, 28.200819>,  <36.418377, 30.148464, 28.214193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.179241, 30.133127, 28.200819>,  <35.780682, 30.107565, 28.178528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.179241, 30.133127, 28.200819> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082217, 0.567406, 0.819324,
		0.020736, -0.820955, 0.570616,
		0.996399, 0.063904, 0.055730,
		36.478161, 30.152298, 28.217539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.925529, 29.943964, 28.863897>,  <35.780682, 30.107565, 28.178528>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.925529, 29.943964, 28.863897> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.269859, 30.115747, 28.754690>,  <36.476460, 30.218819, 28.689167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.269859, 30.115747, 28.754690>,  <35.925529, 29.943964, 28.863897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.269859, 30.115747, 28.754690> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078695, 0.417696, 0.905173,
		0.502775, -0.800682, 0.325768,
		0.860828, 0.429462, -0.273017,
		36.528107, 30.244585, 28.672785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.282700, 29.768223, 29.367826>,  <35.925529, 29.943964, 28.863897>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.282700, 29.768223, 29.367826> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.465813, 30.079945, 29.196655>,  <36.575680, 30.266977, 29.093952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.465813, 30.079945, 29.196655>,  <36.282700, 29.768223, 29.367826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.465813, 30.079945, 29.196655> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206556, 0.374927, 0.903750,
		0.864738, -0.502110, 0.010664,
		0.457780, 0.779305, -0.427927,
		36.603146, 30.313736, 29.068277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.829391, 29.882439, 29.805563>,  <36.282700, 29.768223, 29.367826>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.829391, 29.882439, 29.805563> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.774555, 30.232189, 29.619373>,  <36.741653, 30.442039, 29.507660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.774555, 30.232189, 29.619373>,  <36.829391, 29.882439, 29.805563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.774555, 30.232189, 29.619373> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092724, 0.456521, 0.884868,
		0.986208, 0.164472, 0.018489,
		-0.137096, 0.874378, -0.465476,
		36.733425, 30.494503, 29.479731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.204048, 30.247221, 30.164139>,  <36.829391, 29.882439, 29.805563>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.204048, 30.247221, 30.164139> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.986305, 30.513590, 29.960089>,  <36.855659, 30.673410, 29.837658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.986305, 30.513590, 29.960089>,  <37.204048, 30.247221, 30.164139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.986305, 30.513590, 29.960089> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027362, 0.621893, 0.782624,
		0.838410, 0.412066, -0.356750,
		-0.544353, 0.665921, -0.510126,
		36.822998, 30.713366, 29.807051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.552658, 30.871441, 30.198778>,  <37.204048, 30.247221, 30.164139>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.552658, 30.871441, 30.198778> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.183750, 30.999744, 30.112495>,  <36.962406, 31.076727, 30.060726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.183750, 30.999744, 30.112495>,  <37.552658, 30.871441, 30.198778>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.183750, 30.999744, 30.112495> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119487, 0.767280, 0.630083,
		0.367612, 0.555333, -0.745967,
		-0.922271, 0.320760, -0.215706,
		36.907070, 31.095972, 30.047783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.643658, 31.611410, 30.078203>,  <37.552658, 30.871441, 30.198778>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.643658, 31.611410, 30.078203> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.273682, 31.516205, 30.196756>,  <37.051697, 31.459082, 30.267889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.273682, 31.516205, 30.196756>,  <37.643658, 31.611410, 30.078203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.273682, 31.516205, 30.196756> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158681, 0.466758, 0.870033,
		-0.345418, 0.851755, -0.393953,
		-0.924936, -0.238012, 0.296384,
		36.996201, 31.444801, 30.285671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.322006, 32.232296, 30.308905>,  <37.643658, 31.611410, 30.078203>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.322006, 32.232296, 30.308905> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.067539, 31.970024, 30.471573>,  <36.914860, 31.812662, 30.569174>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.067539, 31.970024, 30.471573>,  <37.322006, 32.232296, 30.308905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.067539, 31.970024, 30.471573> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086946, 0.584649, 0.806614,
		-0.766638, 0.477781, -0.428942,
		-0.636166, -0.655676, 0.406673,
		36.876690, 31.773321, 30.593575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.796982, 32.669266, 30.433149>,  <37.322006, 32.232296, 30.308905>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.796982, 32.669266, 30.433149> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.778275, 32.350147, 30.673595>,  <36.767052, 32.158676, 30.817863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.778275, 32.350147, 30.673595>,  <36.796982, 32.669266, 30.433149>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.778275, 32.350147, 30.673595> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218413, 0.595378, 0.773189,
		-0.974735, -0.095134, -0.202091,
		-0.046764, -0.797793, 0.601115,
		36.764244, 32.110809, 30.853930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.255157, 32.819050, 30.875381>,  <36.796982, 32.669266, 30.433149>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.255157, 32.819050, 30.875381> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.435291, 32.511784, 31.057425>,  <36.543373, 32.327423, 31.166651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.435291, 32.511784, 31.057425>,  <36.255157, 32.819050, 30.875381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.435291, 32.511784, 31.057425> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312192, 0.342073, 0.886297,
		-0.836501, -0.541212, -0.085767,
		0.450336, -0.768164, 0.455107,
		36.570393, 32.281334, 31.193956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.803059, 32.618782, 31.417517>,  <36.255157, 32.819050, 30.875381>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.803059, 32.618782, 31.417517> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.170841, 32.477543, 31.486704>,  <36.391510, 32.392799, 31.528215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.170841, 32.477543, 31.486704>,  <35.803059, 32.618782, 31.417517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.170841, 32.477543, 31.486704> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006213, 0.426807, 0.904321,
		-0.393142, -0.832559, 0.390237,
		0.919457, -0.353102, 0.172969,
		36.446678, 32.371613, 31.538595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.060398, 32.682159, 31.645599>,  <35.803059, 32.618782, 31.417517>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.060398, 32.682159, 31.645599> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.792423, 32.978226, 31.622448>,  <34.631638, 33.155865, 31.608557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.792423, 32.978226, 31.622448>,  <35.060398, 32.682159, 31.645599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.792423, 32.978226, 31.622448> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270427, -0.315882, -0.909444,
		-0.691419, -0.593614, 0.411779,
		-0.669932, 0.740163, -0.057878,
		34.591442, 33.200275, 31.605085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.483883, 32.345028, 31.299671>,  <35.060398, 32.682159, 31.645599>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.483883, 32.345028, 31.299671> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.452133, 32.742718, 31.270760>,  <34.433083, 32.981331, 31.253412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.452133, 32.742718, 31.270760>,  <34.483883, 32.345028, 31.299671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.452133, 32.742718, 31.270760> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255733, -0.090389, -0.962513,
		-0.963484, -0.057911, 0.261429,
		-0.079370, 0.994221, -0.072279,
		34.428322, 33.040985, 31.249077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.823402, 32.516285, 31.063530>,  <34.483883, 32.345028, 31.299671>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.823402, 32.516285, 31.063530> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.069912, 32.804787, 30.937042>,  <34.217819, 32.977886, 30.861151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.069912, 32.804787, 30.937042>,  <33.823402, 32.516285, 31.063530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.069912, 32.804787, 30.937042> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327647, -0.130309, -0.935771,
		-0.716135, 0.680302, 0.156011,
		0.616277, 0.721255, -0.316218,
		34.254795, 33.021164, 30.842176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.396595, 33.033039, 30.787336>,  <33.823402, 32.516285, 31.063530>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.396595, 33.033039, 30.787336> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.766037, 33.096329, 30.647667>,  <33.987701, 33.134304, 30.563866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.766037, 33.096329, 30.647667>,  <33.396595, 33.033039, 30.787336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.766037, 33.096329, 30.647667> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353649, 0.000151, -0.935378,
		-0.147945, 0.987403, 0.056095,
		0.923604, 0.158223, -0.349172,
		34.043118, 33.143795, 30.542915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.278133, 33.390312, 30.194498>,  <33.396595, 33.033039, 30.787336>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.278133, 33.390312, 30.194498> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.654217, 33.273140, 30.124989>,  <33.879868, 33.202835, 30.083282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.654217, 33.273140, 30.124989>,  <33.278133, 33.390312, 30.194498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.654217, 33.273140, 30.124989> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214057, -0.111351, -0.970454,
		0.264927, 0.949627, -0.167398,
		0.940209, -0.292932, -0.173775,
		33.936279, 33.185261, 30.072857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.501671, 33.702103, 29.556625>,  <33.278133, 33.390312, 30.194498>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.501671, 33.702103, 29.556625> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.750095, 33.392521, 29.606077>,  <33.899151, 33.206772, 29.635748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.750095, 33.392521, 29.606077>,  <33.501671, 33.702103, 29.556625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.750095, 33.392521, 29.606077> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039774, -0.126412, -0.991180,
		0.782753, 0.620500, -0.047726,
		0.621060, -0.773951, 0.123629,
		33.936413, 33.160336, 29.643166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.000996, 33.796516, 29.093380>,  <33.501671, 33.702103, 29.556625>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.000996, 33.796516, 29.093380> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.035816, 33.404964, 29.167379>,  <34.056709, 33.170033, 29.211779>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.035816, 33.404964, 29.167379>,  <34.000996, 33.796516, 29.093380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.035816, 33.404964, 29.167379> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117070, -0.174363, -0.977697,
		0.989301, 0.106763, 0.099419,
		0.087047, -0.978876, 0.184997,
		34.061932, 33.111301, 29.222878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.486946, 33.524372, 28.620697>,  <34.000996, 33.796516, 29.093380>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.486946, 33.524372, 28.620697> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.282341, 33.195972, 28.722139>,  <34.159576, 32.998932, 28.783005>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.282341, 33.195972, 28.722139>,  <34.486946, 33.524372, 28.620697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.282341, 33.195972, 28.722139> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092815, -0.346202, -0.933557,
		0.854249, -0.453987, 0.253287,
		-0.511511, -0.820999, 0.253606,
		34.128887, 32.949673, 28.798222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.754189, 33.006184, 28.164646>,  <34.486946, 33.524372, 28.620697>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.754189, 33.006184, 28.164646> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.465485, 32.782257, 28.327461>,  <34.292263, 32.647903, 28.425150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.465485, 32.782257, 28.327461>,  <34.754189, 33.006184, 28.164646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.465485, 32.782257, 28.327461> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098446, -0.665128, -0.740212,
		0.685112, -0.494181, 0.535170,
		-0.721755, -0.559813, 0.407037,
		34.248959, 32.614311, 28.449572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.090462, 32.436226, 28.144323>,  <34.754189, 33.006184, 28.164646>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.090462, 32.436226, 28.144323> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.700340, 32.348515, 28.154890>,  <34.466267, 32.295887, 28.161230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.700340, 32.348515, 28.154890>,  <35.090462, 32.436226, 28.144323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.700340, 32.348515, 28.154890> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146198, -0.730609, -0.666961,
		0.165553, -0.646627, 0.744624,
		-0.975304, -0.219280, 0.026419,
		34.407749, 32.282730, 28.162815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.037506, 31.771402, 28.205681>,  <35.090462, 32.436226, 28.144323>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.037506, 31.771402, 28.205681> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.676506, 31.867096, 28.062429>,  <34.459904, 31.924511, 27.976479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.676506, 31.867096, 28.062429>,  <35.037506, 31.771402, 28.205681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.676506, 31.867096, 28.062429> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123888, -0.652184, -0.747869,
		-0.412479, -0.719322, 0.558960,
		-0.902504, 0.239232, -0.358128,
		34.405754, 31.938866, 27.954990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.807171, 31.112339, 28.167898>,  <35.037506, 31.771402, 28.205681>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.807171, 31.112339, 28.167898> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.587082, 31.359964, 27.943748>,  <34.455029, 31.508539, 27.809259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.587082, 31.359964, 27.943748>,  <34.807171, 31.112339, 28.167898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.587082, 31.359964, 27.943748> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050856, -0.644999, -0.762489,
		-0.833470, -0.448034, 0.323408,
		-0.550219, 0.619065, -0.560373,
		34.422016, 31.545683, 27.775637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.179401, 30.709728, 27.944643>,  <34.807171, 31.112339, 28.167898>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.179401, 30.709728, 27.944643> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.260670, 31.011702, 27.695229>,  <34.309429, 31.192886, 27.545580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.260670, 31.011702, 27.695229>,  <34.179401, 30.709728, 27.944643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.260670, 31.011702, 27.695229> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071102, -0.646511, -0.759584,
		-0.976559, 0.109989, -0.185028,
		0.203169, 0.754934, -0.623536,
		34.321621, 31.238182, 27.508167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.774952, 30.282749, 28.393436>,  <34.179401, 30.709728, 27.944643>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.774952, 30.282749, 28.393436> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.548939, 29.952757, 28.388588>,  <34.413330, 29.754761, 28.385679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.548939, 29.952757, 28.388588>,  <34.774952, 30.282749, 28.393436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.548939, 29.952757, 28.388588> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124975, 0.071054, 0.989612,
		-0.815551, 0.560675, -0.143250,
		-0.565030, -0.824982, -0.012122,
		34.379429, 29.705263, 28.384951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.322849, 30.486370, 28.873022>,  <34.774952, 30.282749, 28.393436>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.322849, 30.486370, 28.873022> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.239132, 30.096220, 28.845198>,  <34.188904, 29.862129, 28.828503>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.239132, 30.096220, 28.845198>,  <34.322849, 30.486370, 28.873022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.239132, 30.096220, 28.845198> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244654, -0.016642, 0.969468,
		-0.946753, 0.219920, -0.235147,
		-0.209292, -0.975376, -0.069560,
		34.176346, 29.803608, 28.824329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.572208, 30.369753, 29.065722>,  <34.322849, 30.486370, 28.873022>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.572208, 30.369753, 29.065722> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.771160, 30.029261, 29.132675>,  <33.890533, 29.824965, 29.172848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.771160, 30.029261, 29.132675>,  <33.572208, 30.369753, 29.065722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.771160, 30.029261, 29.132675> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448441, -0.087110, 0.889558,
		-0.742638, -0.517512, -0.425053,
		0.497383, -0.851231, 0.167382,
		33.920376, 29.773891, 29.182890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.104092, 30.028570, 29.468130>,  <33.572208, 30.369753, 29.065722>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.104092, 30.028570, 29.468130> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.438267, 29.820042, 29.537722>,  <33.638771, 29.694923, 29.579477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.438267, 29.820042, 29.537722>,  <33.104092, 30.028570, 29.468130>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.438267, 29.820042, 29.537722> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311575, -0.188499, 0.931337,
		-0.452733, -0.832280, -0.319910,
		0.835436, -0.521323, 0.173978,
		33.688896, 29.663645, 29.589914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.935570, 29.539846, 29.781818>,  <33.104092, 30.028570, 29.468130>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.935570, 29.539846, 29.781818> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.319221, 29.557467, 29.893621>,  <33.549412, 29.568039, 29.960703>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.319221, 29.557467, 29.893621>,  <32.935570, 29.539846, 29.781818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.319221, 29.557467, 29.893621> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274973, -0.087878, 0.957427,
		0.066736, -0.995157, -0.072175,
		0.959133, 0.044048, 0.279506,
		33.606960, 29.570681, 29.977472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.047119, 28.935061, 30.074278>,  <32.935570, 29.539846, 29.781818>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.047119, 28.935061, 30.074278> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.322453, 29.178381, 30.232349>,  <33.487652, 29.324373, 30.327192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.322453, 29.178381, 30.232349>,  <33.047119, 28.935061, 30.074278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.322453, 29.178381, 30.232349> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395901, -0.141452, 0.907333,
		0.607829, -0.781001, 0.143460,
		0.688336, 0.608299, 0.395178,
		33.528954, 29.360870, 30.350903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.246956, 28.587370, 30.768656>,  <33.047119, 28.935061, 30.074278>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.246956, 28.587370, 30.768656> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.389584, 28.961069, 30.766073>,  <33.475159, 29.185287, 30.764524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.389584, 28.961069, 30.766073>,  <33.246956, 28.587370, 30.768656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.389584, 28.961069, 30.766073> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220512, 0.090870, 0.971142,
		0.907873, -0.344855, 0.238414,
		0.356568, 0.934247, -0.006454,
		33.496555, 29.241343, 30.764137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.724636, 28.710936, 31.335655>,  <33.246956, 28.587370, 30.768656>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.724636, 28.710936, 31.335655> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.590313, 29.072908, 31.231098>,  <33.509720, 29.290092, 31.168364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.590313, 29.072908, 31.231098>,  <33.724636, 28.710936, 31.335655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.590313, 29.072908, 31.231098> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046241, 0.261337, 0.964139,
		0.940795, 0.335854, -0.045914,
		-0.335809, 0.904934, -0.261395,
		33.489571, 29.344389, 31.152679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.395298, 28.479208, 31.507233>,  <33.724636, 28.710936, 31.335655>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.395298, 28.479208, 31.507233> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.380222, 28.106007, 31.650387>,  <34.371178, 27.882086, 31.736280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.380222, 28.106007, 31.650387>,  <34.395298, 28.479208, 31.507233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.380222, 28.106007, 31.650387> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023429, -0.357217, -0.933727,
		0.999015, -0.043575, -0.008397,
		-0.037688, -0.933004, 0.357886,
		34.368916, 27.826105, 31.757753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.919487, 28.083567, 31.108875>,  <34.395298, 28.479208, 31.507233>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.919487, 28.083567, 31.108875> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.653515, 27.819294, 31.248228>,  <34.493931, 27.660730, 31.331841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.653515, 27.819294, 31.248228>,  <34.919487, 28.083567, 31.108875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.653515, 27.819294, 31.248228> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075661, -0.523616, -0.848588,
		0.743064, -0.537892, 0.398155,
		-0.664929, -0.660680, 0.348382,
		34.454037, 27.621090, 31.352743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.050999, 27.531763, 30.692858>,  <34.919487, 28.083567, 31.108875>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.050999, 27.531763, 30.692858> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.714668, 27.405869, 30.869015>,  <34.512871, 27.330332, 30.974709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.714668, 27.405869, 30.869015>,  <35.050999, 27.531763, 30.692858>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.714668, 27.405869, 30.869015> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080584, -0.731735, -0.676809,
		0.535268, -0.604569, 0.589902,
		-0.840830, -0.314738, 0.440392,
		34.462418, 27.311447, 31.001133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.071819, 26.795574, 30.655722>,  <35.050999, 27.531763, 30.692858>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.071819, 26.795574, 30.655722> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.685570, 26.881367, 30.714476>,  <34.453819, 26.932842, 30.749727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.685570, 26.881367, 30.714476>,  <35.071819, 26.795574, 30.655722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.685570, 26.881367, 30.714476> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254953, -0.671046, -0.696201,
		-0.050756, -0.709714, 0.702659,
		-0.965620, 0.214481, 0.146885,
		34.395885, 26.945711, 30.758541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.763714, 26.096220, 30.633127>,  <35.071819, 26.795574, 30.655722>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.763714, 26.096220, 30.633127> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.473885, 26.365271, 30.573032>,  <34.299988, 26.526701, 30.536976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.473885, 26.365271, 30.573032>,  <34.763714, 26.096220, 30.633127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.473885, 26.365271, 30.573032> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324060, -0.524887, -0.787070,
		-0.608260, -0.521603, 0.598289,
		-0.724572, 0.672625, -0.150238,
		34.256512, 26.567059, 30.527962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.022820, 25.816542, 30.594904>,  <34.763714, 26.096220, 30.633127>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.022820, 25.816542, 30.594904> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.035603, 26.152973, 30.378918>,  <34.043274, 26.354832, 30.249325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.035603, 26.152973, 30.378918>,  <34.022820, 25.816542, 30.594904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.035603, 26.152973, 30.378918> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271981, -0.512538, -0.814452,
		-0.961772, 0.172889, 0.212377,
		0.031959, 0.841079, -0.539967,
		34.045189, 26.405296, 30.216928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.411716, 25.731232, 30.144012>,  <34.022820, 25.816542, 30.594904>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.411716, 25.731232, 30.144012> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.613747, 26.033468, 29.977171>,  <33.734966, 26.214809, 29.877066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.613747, 26.033468, 29.977171>,  <33.411716, 25.731232, 30.144012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.613747, 26.033468, 29.977171> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242335, -0.339681, -0.908785,
		-0.828353, 0.560088, 0.011540,
		0.505080, 0.755591, -0.417105,
		33.765270, 26.260145, 29.852039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.991375, 25.912342, 29.582499>,  <33.411716, 25.731232, 30.144012>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.991375, 25.912342, 29.582499> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.342167, 26.083673, 29.495382>,  <33.552643, 26.186472, 29.443113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.342167, 26.083673, 29.495382>,  <32.991375, 25.912342, 29.582499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.342167, 26.083673, 29.495382> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109145, -0.263829, -0.958374,
		-0.467960, 0.864250, -0.184624,
		0.876984, 0.428330, -0.217790,
		33.605263, 26.212172, 29.430046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.797684, 26.228704, 28.950197>,  <32.991375, 25.912342, 29.582499>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.797684, 26.228704, 28.950197> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.191277, 26.166788, 28.985567>,  <33.427433, 26.129639, 29.006788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.191277, 26.166788, 28.985567>,  <32.797684, 26.228704, 28.950197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.191277, 26.166788, 28.985567> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018631, -0.404001, -0.914569,
		0.177292, 0.901567, -0.394646,
		0.983982, -0.154793, 0.088423,
		33.486469, 26.120350, 29.012094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.471046, 32.746487, 42.906216> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.815163, 32.563667, 42.815872>,  <38.021633, 32.453976, 42.761665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.815163, 32.563667, 42.815872>,  <37.471046, 32.746487, 42.906216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.815163, 32.563667, 42.815872> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435600, -0.428807, -0.791440,
		0.264879, 0.779249, -0.567988,
		0.860286, -0.457051, -0.225859,
		38.073250, 32.426552, 42.748116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.498909, 32.856152, 42.210342>,  <37.471046, 32.746487, 42.906216>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.498909, 32.856152, 42.210342> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.769043, 32.569092, 42.278339>,  <37.931122, 32.396854, 42.319138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.769043, 32.569092, 42.278339>,  <37.498909, 32.856152, 42.210342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.769043, 32.569092, 42.278339> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372125, -0.530576, -0.761586,
		0.636746, 0.451069, -0.625373,
		0.675336, -0.717654, 0.169988,
		37.971645, 32.353794, 42.329334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.706913, 32.663372, 41.616222>,  <37.498909, 32.856152, 42.210342>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.706913, 32.663372, 41.616222> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.806450, 32.348862, 41.842442>,  <37.866173, 32.160156, 41.978172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.806450, 32.348862, 41.842442>,  <37.706913, 32.663372, 41.616222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.806450, 32.348862, 41.842442> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297126, -0.617732, -0.728096,
		0.921841, 0.013147, -0.387345,
		0.248847, -0.786279, 0.565544,
		37.881104, 32.112976, 42.012104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.111237, 32.239643, 41.161900>,  <37.706913, 32.663372, 41.616222>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.111237, 32.239643, 41.161900> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.964771, 32.012577, 41.456837>,  <37.876892, 31.876337, 41.633801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.964771, 32.012577, 41.456837>,  <38.111237, 32.239643, 41.161900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.964771, 32.012577, 41.456837> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299452, -0.678343, -0.670955,
		0.881052, -0.466479, 0.078395,
		-0.366165, -0.567670, 0.737343,
		37.854923, 31.842276, 41.678040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.139778, 31.544413, 40.850834>,  <38.111237, 32.239643, 41.161900>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.139778, 31.544413, 40.850834> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.894230, 31.479099, 41.159767>,  <37.746902, 31.439911, 41.345127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.894230, 31.479099, 41.159767>,  <38.139778, 31.544413, 40.850834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.894230, 31.479099, 41.159767> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492170, -0.685774, -0.536174,
		0.617195, -0.709262, 0.340613,
		-0.613871, -0.163285, 0.772334,
		37.710068, 31.430115, 41.391468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.255119, 30.748058, 40.990211>,  <38.139778, 31.544413, 40.850834>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.255119, 30.748058, 40.990211> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.910221, 30.893793, 41.130943>,  <37.703281, 30.981234, 41.215382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.910221, 30.893793, 41.130943>,  <38.255119, 30.748058, 40.990211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.910221, 30.893793, 41.130943> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489800, -0.776644, -0.396131,
		0.128922, -0.513890, 0.848113,
		-0.862250, 0.364336, 0.351830,
		37.651546, 31.003094, 41.236492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.966064, 30.207920, 41.262527>,  <38.255119, 30.748058, 40.990211>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.966064, 30.207920, 41.262527> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.661057, 30.456160, 41.189411>,  <37.478050, 30.605103, 41.145542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.661057, 30.456160, 41.189411>,  <37.966064, 30.207920, 41.262527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.661057, 30.456160, 41.189411> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488314, -0.737431, -0.466632,
		-0.424389, -0.266558, 0.865356,
		-0.762524, 0.620599, -0.182793,
		37.432301, 30.642340, 41.134575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.405853, 29.866247, 41.566010>,  <37.966064, 30.207920, 41.262527>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.405853, 29.866247, 41.566010> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.268513, 30.132818, 41.301289>,  <37.186108, 30.292761, 41.142456>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.268513, 30.132818, 41.301289>,  <37.405853, 29.866247, 41.566010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.268513, 30.132818, 41.301289> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404637, -0.740853, -0.536102,
		-0.847572, 0.083717, 0.524035,
		-0.343352, 0.666429, -0.661802,
		37.165508, 30.332747, 41.102749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.856464, 29.440594, 41.220291>,  <37.405853, 29.866247, 41.566010>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.856464, 29.440594, 41.220291> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.865265, 29.784597, 41.016369>,  <36.870544, 29.990999, 40.894016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.865265, 29.784597, 41.016369>,  <36.856464, 29.440594, 41.220291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.865265, 29.784597, 41.016369> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493686, -0.434074, -0.753560,
		-0.869362, 0.268263, 0.415024,
		0.022001, 0.860009, -0.509805,
		36.871864, 30.042601, 40.863426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.097172, 29.642256, 40.960049>,  <36.856464, 29.440594, 41.220291>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.097172, 29.642256, 40.960049> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.382660, 29.803907, 40.731216>,  <36.553955, 29.900898, 40.593918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.382660, 29.803907, 40.731216>,  <36.097172, 29.642256, 40.960049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.382660, 29.803907, 40.731216> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365663, -0.481639, -0.796439,
		-0.597401, 0.777626, -0.195982,
		0.713724, 0.404130, -0.572081,
		36.596779, 29.925146, 40.559593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.693409, 29.928354, 40.400303>,  <36.097172, 29.642256, 40.960049>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.693409, 29.928354, 40.400303> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.068478, 29.845671, 40.288555>,  <36.293518, 29.796061, 40.221508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.068478, 29.845671, 40.288555>,  <35.693409, 29.928354, 40.400303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.068478, 29.845671, 40.288555> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345723, -0.473004, -0.810396,
		0.035374, 0.856468, -0.514986,
		0.937670, -0.206709, -0.279369,
		36.349777, 29.783657, 40.204746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.655224, 30.076649, 39.680832>,  <35.693409, 29.928354, 40.400303>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.655224, 30.076649, 39.680832> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.980457, 29.848127, 39.725567>,  <36.175598, 29.711016, 39.752407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.980457, 29.848127, 39.725567>,  <35.655224, 30.076649, 39.680832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.980457, 29.848127, 39.725567> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292461, -0.566980, -0.770065,
		0.503347, 0.593421, -0.628086,
		0.813085, -0.571301, 0.111835,
		36.224384, 29.676737, 39.759117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.473560, 30.654528, 39.442589>,  <35.655224, 30.076649, 39.680832>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.473560, 30.654528, 39.442589> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.089890, 30.764149, 39.414650>,  <34.859688, 30.829922, 39.397888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.089890, 30.764149, 39.414650>,  <35.473560, 30.654528, 39.442589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.089890, 30.764149, 39.414650> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068519, 0.464802, 0.882759,
		0.274387, 0.841935, -0.464605,
		-0.959175, 0.274052, -0.069847,
		34.802135, 30.846365, 39.393696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.462250, 31.321884, 39.698494>,  <35.473560, 30.654528, 39.442589>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.462250, 31.321884, 39.698494> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.080086, 31.204924, 39.714924>,  <34.850788, 31.134747, 39.724781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.080086, 31.204924, 39.714924>,  <35.462250, 31.321884, 39.698494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.080086, 31.204924, 39.714924> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143521, 0.581449, 0.800824,
		-0.258048, 0.759221, -0.597490,
		-0.955412, -0.292403, 0.041077,
		34.793461, 31.117203, 39.727245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.123074, 31.920843, 39.756161>,  <35.462250, 31.321884, 39.698494>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.123074, 31.920843, 39.756161> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.870243, 31.639132, 39.885448>,  <34.718544, 31.470104, 39.963020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.870243, 31.639132, 39.885448>,  <35.123074, 31.920843, 39.756161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.870243, 31.639132, 39.885448> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267036, 0.589522, 0.762336,
		-0.727440, 0.395546, -0.560691,
		-0.632079, -0.704278, 0.323217,
		34.680618, 31.427849, 39.982414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.589073, 32.346443, 39.942108>,  <35.123074, 31.920843, 39.756161>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.589073, 32.346443, 39.942108> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.534988, 31.993134, 40.121685>,  <34.502537, 31.781149, 40.229431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.534988, 31.993134, 40.121685>,  <34.589073, 32.346443, 39.942108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.534988, 31.993134, 40.121685> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277819, 0.468724, 0.838519,
		-0.951070, -0.011342, -0.308769,
		-0.135216, -0.883272, 0.448940,
		34.494423, 31.728151, 40.256367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.116989, 32.512394, 40.281567>,  <34.589073, 32.346443, 39.942108>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.116989, 32.512394, 40.281567> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.244640, 32.175289, 40.454960>,  <34.321232, 31.973026, 40.558998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.244640, 32.175289, 40.454960>,  <34.116989, 32.512394, 40.281567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.244640, 32.175289, 40.454960> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349821, 0.320349, 0.880342,
		-0.880786, -0.432581, -0.192585,
		0.319125, -0.842763, 0.433485,
		34.340378, 31.922461, 40.585007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.525791, 32.198345, 40.641476>,  <34.116989, 32.512394, 40.281567>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.525791, 32.198345, 40.641476> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.865810, 32.065037, 40.804615>,  <34.069824, 31.985052, 40.902500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.865810, 32.065037, 40.804615>,  <33.525791, 32.198345, 40.641476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.865810, 32.065037, 40.804615> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268826, 0.391369, 0.880093,
		-0.452930, -0.857765, 0.243091,
		0.850051, -0.333271, 0.407852,
		34.120827, 31.965055, 40.926971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.331448, 31.935495, 41.287014>,  <33.525791, 32.198345, 40.641476>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.331448, 31.935495, 41.287014> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.723701, 31.990967, 41.342339>,  <33.959053, 32.024250, 41.375534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.723701, 31.990967, 41.342339>,  <33.331448, 31.935495, 41.287014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.723701, 31.990967, 41.342339> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187546, 0.461261, 0.867217,
		0.056465, -0.876360, 0.478335,
		0.980631, 0.138677, 0.138312,
		34.017891, 32.032570, 41.383831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.472282, 31.739216, 41.895046>,  <33.331448, 31.935495, 41.287014>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.472282, 31.739216, 41.895046> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.776142, 31.981379, 41.800041>,  <33.958458, 32.126675, 41.743038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.776142, 31.981379, 41.800041>,  <33.472282, 31.739216, 41.895046>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.776142, 31.981379, 41.800041> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153542, 0.521860, 0.839099,
		0.631947, -0.600953, 0.489387,
		0.759650, 0.605407, -0.237516,
		34.004036, 32.163002, 41.728786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.719322, 31.935202, 42.493290>,  <33.472282, 31.739216, 41.895046>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.719322, 31.935202, 42.493290> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.864586, 32.218533, 42.251171>,  <33.951744, 32.388531, 42.105900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.864586, 32.218533, 42.251171>,  <33.719322, 31.935202, 42.493290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.864586, 32.218533, 42.251171> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089571, 0.673185, 0.734029,
		0.927410, -0.212354, 0.307921,
		0.363162, 0.708327, -0.605298,
		33.973534, 32.431030, 42.069580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.276669, 32.276424, 42.876385>,  <33.719322, 31.935202, 42.493290>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.276669, 32.276424, 42.876385> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.200657, 32.550678, 42.595303>,  <34.155052, 32.715233, 42.426655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.200657, 32.550678, 42.595303>,  <34.276669, 32.276424, 42.876385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.200657, 32.550678, 42.595303> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064315, 0.722899, 0.687953,
		0.979670, 0.085534, -0.181466,
		-0.190025, 0.685639, -0.702702,
		34.143650, 32.756371, 42.384491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.776981, 32.834213, 42.938774>,  <34.276669, 32.276424, 42.876385>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.776981, 32.834213, 42.938774> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.464142, 32.991844, 42.745682>,  <34.276440, 33.086422, 42.629826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.464142, 32.991844, 42.745682>,  <34.776981, 32.834213, 42.938774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.464142, 32.991844, 42.745682> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128274, 0.656258, 0.743553,
		0.609810, 0.643453, -0.462709,
		-0.782098, 0.394073, -0.482731,
		34.229511, 33.110065, 42.600861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.809082, 33.587254, 42.945026>,  <34.776981, 32.834213, 42.938774>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.809082, 33.587254, 42.945026> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.421791, 33.546009, 42.853901>,  <34.189415, 33.521263, 42.799225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.421791, 33.546009, 42.853901>,  <34.809082, 33.587254, 42.945026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.421791, 33.546009, 42.853901> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235520, 0.682169, 0.692225,
		0.084026, 0.723887, -0.684783,
		-0.968230, -0.103116, -0.227810,
		34.131321, 33.515076, 42.785557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.480793, 34.246223, 42.748138>,  <34.809082, 33.587254, 42.945026>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.480793, 34.246223, 42.748138> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.206501, 33.997143, 42.898880>,  <34.041927, 33.847694, 42.989326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.206501, 33.997143, 42.898880>,  <34.480793, 34.246223, 42.748138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.206501, 33.997143, 42.898880> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312830, 0.719641, 0.619882,
		-0.657201, 0.307180, -0.688278,
		-0.685729, -0.622702, 0.376854,
		34.000782, 33.810333, 43.011936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.815590, 34.523621, 42.754261>,  <34.480793, 34.246223, 42.748138>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.815590, 34.523621, 42.754261> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.848438, 34.303146, 43.086391>,  <33.868149, 34.170860, 43.285671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.848438, 34.303146, 43.086391>,  <33.815590, 34.523621, 42.754261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.848438, 34.303146, 43.086391> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307271, 0.778554, 0.547210,
		-0.948072, -0.300075, -0.105425,
		0.082125, -0.551189, 0.830329,
		33.873077, 34.137791, 43.335491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.631744, 34.553745, 42.008987>,  <33.815590, 34.523621, 42.754261>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.631744, 34.553745, 42.008987> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.403877, 34.669121, 42.316826>,  <33.267159, 34.738346, 42.501530>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.403877, 34.669121, 42.316826>,  <33.631744, 34.553745, 42.008987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.403877, 34.669121, 42.316826> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230682, 0.954867, -0.187122,
		-0.788839, 0.070935, -0.610492,
		-0.569665, 0.288439, 0.769600,
		33.232979, 34.755653, 42.547707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.527359, 35.252449, 42.068405>,  <33.631744, 34.553745, 42.008987>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.527359, 35.252449, 42.068405> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.903793, 35.150040, 41.980030>,  <34.129654, 35.088596, 41.927006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.903793, 35.150040, 41.980030>,  <33.527359, 35.252449, 42.068405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.903793, 35.150040, 41.980030> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085798, 0.451190, -0.888294,
		0.327106, 0.854916, 0.402641,
		0.941085, -0.256020, -0.220937,
		34.186119, 35.073235, 41.913750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.890453, 35.789024, 41.770931>,  <33.527359, 35.252449, 42.068405>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.890453, 35.789024, 41.770931> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.061768, 35.452484, 41.639046>,  <34.164555, 35.250561, 41.559914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.061768, 35.452484, 41.639046>,  <33.890453, 35.789024, 41.770931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.061768, 35.452484, 41.639046> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123309, 0.307043, -0.943673,
		0.895192, 0.444816, 0.027755,
		0.428283, -0.841346, -0.329713,
		34.190254, 35.200081, 41.540131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.505688, 35.958904, 41.379719>,  <33.890453, 35.789024, 41.770931>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.505688, 35.958904, 41.379719> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.434620, 35.587269, 41.249966>,  <34.391979, 35.364288, 41.172112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.434620, 35.587269, 41.249966>,  <34.505688, 35.958904, 41.379719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.434620, 35.587269, 41.249966> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067592, 0.340373, -0.937858,
		0.981767, -0.144700, -0.123272,
		-0.177667, -0.929090, -0.324386,
		34.381321, 35.308540, 41.152649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.868587, 36.013241, 40.816429>,  <34.505688, 35.958904, 41.379719>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.868587, 36.013241, 40.816429> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.629303, 35.695614, 40.773335>,  <34.485733, 35.505039, 40.747478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.629303, 35.695614, 40.773335>,  <34.868587, 36.013241, 40.816429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.629303, 35.695614, 40.773335> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096171, 0.204617, -0.974106,
		0.795547, -0.572360, -0.198770,
		-0.598211, -0.794063, -0.107738,
		34.449841, 35.457394, 40.741013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.988354, 35.810150, 40.131668>,  <34.868587, 36.013241, 40.816429>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.988354, 35.810150, 40.131668> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.635880, 35.655251, 40.240143>,  <34.424393, 35.562309, 40.305229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.635880, 35.655251, 40.240143>,  <34.988354, 35.810150, 40.131668>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.635880, 35.655251, 40.240143> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228628, -0.153020, -0.961413,
		0.413804, -0.909188, 0.046303,
		-0.881190, -0.387250, 0.271186,
		34.371521, 35.539074, 40.321499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.931313, 35.097511, 39.813152>,  <34.988354, 35.810150, 40.131668>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.931313, 35.097511, 39.813152> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.571854, 35.256191, 39.888050>,  <34.356178, 35.351398, 39.932987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.571854, 35.256191, 39.888050>,  <34.931313, 35.097511, 39.813152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.571854, 35.256191, 39.888050> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304358, -0.256464, -0.917383,
		-0.315907, -0.881393, 0.351211,
		-0.898648, 0.396702, 0.187240,
		34.302258, 35.375202, 39.944221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.456902, 34.617714, 39.512863>,  <34.931313, 35.097511, 39.813152>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.456902, 34.617714, 39.512863> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.216164, 34.934349, 39.555141>,  <34.071720, 35.124329, 39.580509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.216164, 34.934349, 39.555141>,  <34.456902, 34.617714, 39.512863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.216164, 34.934349, 39.555141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319543, -0.117396, -0.940271,
		-0.731898, -0.599674, 0.323600,
		-0.601845, 0.791587, 0.105700,
		34.035610, 35.171825, 39.586853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.879677, 34.401932, 39.126938>,  <34.456902, 34.617714, 39.512863>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.879677, 34.401932, 39.126938> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.846245, 34.797443, 39.176453>,  <33.826187, 35.034752, 39.206161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.846245, 34.797443, 39.176453>,  <33.879677, 34.401932, 39.126938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.846245, 34.797443, 39.176453> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323686, 0.090548, -0.941822,
		-0.942466, -0.118781, 0.312487,
		-0.083575, 0.988783, 0.123786,
		33.821171, 35.094078, 39.213589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.244045, 34.480042, 38.749996>,  <33.879677, 34.401932, 39.126938>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.244045, 34.480042, 38.749996> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.419113, 34.833931, 38.814125>,  <33.524155, 35.046265, 38.852600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.419113, 34.833931, 38.814125>,  <33.244045, 34.480042, 38.749996>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.419113, 34.833931, 38.814125> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065377, 0.209146, -0.975697,
		-0.896757, 0.416550, 0.149377,
		0.437668, 0.884728, 0.160320,
		33.550415, 35.099350, 38.862221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.932228, 34.894115, 38.319820>,  <33.244045, 34.480042, 38.749996>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.932228, 34.894115, 38.319820> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.294968, 35.054745, 38.370991>,  <33.512611, 35.151123, 38.401691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.294968, 35.054745, 38.370991>,  <32.932228, 34.894115, 38.319820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.294968, 35.054745, 38.370991> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015440, 0.271667, -0.962268,
		-0.421173, 0.874606, 0.240161,
		0.906849, 0.401573, 0.127922,
		33.567024, 35.175217, 38.409367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.890919, 35.587521, 38.001919>,  <32.932228, 34.894115, 38.319820>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.890919, 35.587521, 38.001919> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.267700, 35.454205, 38.018166>,  <33.493767, 35.374214, 38.027912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.267700, 35.454205, 38.018166>,  <32.890919, 35.587521, 38.001919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.267700, 35.454205, 38.018166> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124590, 0.234639, -0.964065,
		0.311780, 0.913162, 0.262543,
		0.941950, -0.333286, 0.040615,
		33.550285, 35.354218, 38.030350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.097260, 35.834965, 37.357735>,  <32.890919, 35.587521, 38.001919>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.097260, 35.834965, 37.357735> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.389606, 35.598251, 37.493755>,  <33.565014, 35.456223, 37.575367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.389606, 35.598251, 37.493755>,  <33.097260, 35.834965, 37.357735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.389606, 35.598251, 37.493755> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361453, -0.087033, -0.928320,
		0.578957, 0.801387, 0.150291,
		0.730863, -0.591780, 0.340052,
		33.608864, 35.420715, 37.595772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.801907, 36.062836, 37.161041>,  <33.097260, 35.834965, 37.357735>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.801907, 36.062836, 37.161041> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.809235, 35.666676, 37.215839>,  <33.813633, 35.428978, 37.248718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.809235, 35.666676, 37.215839>,  <33.801907, 36.062836, 37.161041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.809235, 35.666676, 37.215839> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346719, -0.122220, -0.929972,
		0.937790, 0.064535, 0.341153,
		0.018320, -0.990403, 0.136992,
		33.814732, 35.369556, 37.256939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.211502, 35.851505, 36.600136>,  <33.801907, 36.062836, 37.161041>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.211502, 35.851505, 36.600136> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.088615, 35.497089, 36.739021>,  <34.014881, 35.284439, 36.822353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.088615, 35.497089, 36.739021>,  <34.211502, 35.851505, 36.600136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.088615, 35.497089, 36.739021> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349899, -0.444470, -0.824632,
		0.884978, -0.131856, 0.446573,
		-0.307221, -0.886036, 0.347210,
		33.996449, 35.231277, 36.843185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.719994, 35.408760, 36.363129>,  <34.211502, 35.851505, 36.600136>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.719994, 35.408760, 36.363129> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.417698, 35.159370, 36.443256>,  <34.236320, 35.009735, 36.491333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.417698, 35.159370, 36.443256>,  <34.719994, 35.408760, 36.363129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.417698, 35.159370, 36.443256> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376707, -0.664113, -0.645791,
		0.535673, -0.412589, 0.736766,
		-0.755742, -0.623478, 0.200323,
		34.190975, 34.972328, 36.503353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.977699, 34.761475, 36.357693>,  <34.719994, 35.408760, 36.363129>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.977699, 34.761475, 36.357693> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.589302, 34.692516, 36.291420>,  <34.356262, 34.651142, 36.251656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.589302, 34.692516, 36.291420>,  <34.977699, 34.761475, 36.357693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.589302, 34.692516, 36.291420> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238538, -0.650630, -0.720958,
		0.016495, -0.739567, 0.672881,
		-0.970993, -0.172400, -0.165683,
		34.298004, 34.640797, 36.241714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.984093, 34.004238, 36.150120>,  <34.977699, 34.761475, 36.357693>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.984093, 34.004238, 36.150120> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.629742, 34.156902, 36.044632>,  <34.417130, 34.248501, 35.981339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.629742, 34.156902, 36.044632>,  <34.984093, 34.004238, 36.150120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.629742, 34.156902, 36.044632> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011323, -0.586097, -0.810162,
		-0.463773, -0.714721, 0.523534,
		-0.885882, 0.381660, -0.263723,
		34.363976, 34.271400, 35.965515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.671177, 33.485245, 35.780235>,  <34.984093, 34.004238, 36.150120>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.671177, 33.485245, 35.780235> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.455784, 33.807335, 35.680923>,  <34.326550, 34.000591, 35.621334>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.455784, 33.807335, 35.680923>,  <34.671177, 33.485245, 35.780235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.455784, 33.807335, 35.680923> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205950, -0.411481, -0.887845,
		-0.817083, -0.426952, 0.387411,
		-0.538480, 0.805230, -0.248283,
		34.294239, 34.048904, 35.606438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.941170, 33.269238, 35.549118>,  <34.671177, 33.485245, 35.780235>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.941170, 33.269238, 35.549118> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.052624, 33.620277, 35.393078>,  <34.119495, 33.830902, 35.299454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.052624, 33.620277, 35.393078>,  <33.941170, 33.269238, 35.549118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.052624, 33.620277, 35.393078> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040990, -0.394945, -0.917790,
		-0.959521, 0.271720, -0.074074,
		0.278637, 0.877603, -0.390096,
		34.136215, 33.883556, 35.276051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.460358, 33.354740, 35.043118>,  <33.941170, 33.269238, 35.549118>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.460358, 33.354740, 35.043118> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.727791, 33.624886, 34.918617>,  <33.888252, 33.786972, 34.843918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.727791, 33.624886, 34.918617>,  <33.460358, 33.354740, 35.043118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.727791, 33.624886, 34.918617> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224404, -0.215811, -0.950299,
		-0.708969, 0.705202, 0.007266,
		0.668585, 0.675363, -0.311254,
		33.928368, 33.827496, 34.825241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.184887, 33.657280, 34.407013>,  <33.460358, 33.354740, 35.043118>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.184887, 33.657280, 34.407013> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.576473, 33.737480, 34.391884>,  <33.811424, 33.785599, 34.382809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.576473, 33.737480, 34.391884>,  <33.184887, 33.657280, 34.407013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.576473, 33.737480, 34.391884> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030067, -0.041578, -0.998683,
		-0.201810, 0.978811, -0.034675,
		0.978963, 0.200502, -0.037820,
		33.870163, 33.797630, 34.380539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.287041, 34.072945, 33.820881>,  <33.184887, 33.657280, 34.407013>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.287041, 34.072945, 33.820881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.654068, 33.935337, 33.900593>,  <33.874287, 33.852772, 33.948421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.654068, 33.935337, 33.900593>,  <33.287041, 34.072945, 33.820881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.654068, 33.935337, 33.900593> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229747, 0.049744, -0.971978,
		0.324464, 0.937645, 0.124681,
		0.917573, -0.344017, 0.199281,
		33.929340, 33.832130, 33.960377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.766586, 34.621029, 33.373966>,  <33.287041, 34.072945, 33.820881>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.766586, 34.621029, 33.373966> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.973755, 34.289181, 33.457386>,  <34.098057, 34.090073, 33.507439>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.973755, 34.289181, 33.457386>,  <33.766586, 34.621029, 33.373966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.973755, 34.289181, 33.457386> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506520, 0.100961, -0.856297,
		0.689342, 0.549131, 0.472507,
		0.517924, -0.829616, 0.208549,
		34.129131, 34.040295, 33.519951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.447384, 34.664959, 33.067249>,  <33.766586, 34.621029, 33.373966>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.447384, 34.664959, 33.067249> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.422070, 34.268112, 33.110519>,  <34.406883, 34.030003, 33.136482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.422070, 34.268112, 33.110519>,  <34.447384, 34.664959, 33.067249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.422070, 34.268112, 33.110519> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358226, -0.123751, -0.925397,
		0.931488, -0.019811, 0.363232,
		-0.063283, -0.992116, 0.108176,
		34.403084, 33.970478, 33.142971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.097012, 34.366348, 32.906639>,  <34.447384, 34.664959, 33.067249>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.097012, 34.366348, 32.906639> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.834343, 34.068901, 32.856350>,  <34.676743, 33.890430, 32.826176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.834343, 34.068901, 32.856350>,  <35.097012, 34.366348, 32.906639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.834343, 34.068901, 32.856350> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382916, -0.185126, -0.905043,
		0.649733, -0.642462, 0.406312,
		-0.656675, -0.743620, -0.125727,
		34.637341, 33.845814, 32.818630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.449257, 33.842136, 32.425232>,  <35.097012, 34.366348, 32.906639>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.449257, 33.842136, 32.425232> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.059166, 33.754166, 32.415665>,  <34.825111, 33.701382, 32.409924>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.059166, 33.754166, 32.415665>,  <35.449257, 33.842136, 32.425232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.059166, 33.754166, 32.415665> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072908, -0.217418, -0.973352,
		0.208865, -0.950979, 0.228065,
		-0.975223, -0.219927, -0.023923,
		34.766598, 33.688187, 32.408489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.309006, 33.107517, 32.190071>,  <35.449257, 33.842136, 32.425232>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.309006, 33.107517, 32.190071> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.968964, 33.302021, 32.109203>,  <34.764938, 33.418724, 32.060684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.968964, 33.302021, 32.109203>,  <35.309006, 33.107517, 32.190071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.968964, 33.302021, 32.109203> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090199, -0.243776, -0.965628,
		-0.518826, -0.839124, 0.163376,
		-0.850108, 0.486256, -0.202165,
		34.713932, 33.447899, 32.048553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.822472, 32.511341, 32.289051>,  <35.309006, 33.107517, 32.190071>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.822472, 32.511341, 32.289051> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.201897, 32.492985, 32.163750>,  <36.429550, 32.481972, 32.088570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.201897, 32.492985, 32.163750>,  <35.822472, 32.511341, 32.289051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.201897, 32.492985, 32.163750> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312539, 0.293655, 0.903375,
		0.050534, -0.954809, 0.292892,
		0.948560, -0.045889, -0.313255,
		36.486465, 32.479218, 32.069775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.254868, 32.152660, 32.823811>,  <35.822472, 32.511341, 32.289051>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.254868, 32.152660, 32.823811> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.506145, 32.368797, 32.599884>,  <36.656914, 32.498482, 32.465527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.506145, 32.368797, 32.599884>,  <36.254868, 32.152660, 32.823811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.506145, 32.368797, 32.599884> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418884, 0.371454, 0.828588,
		0.655669, -0.755016, 0.007005,
		0.628199, 0.540345, -0.559815,
		36.694607, 32.530899, 32.431938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.900188, 32.144699, 33.204777>,  <36.254868, 32.152660, 32.823811>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.900188, 32.144699, 33.204777> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.921585, 32.472038, 32.975883>,  <36.934425, 32.668442, 32.838547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.921585, 32.472038, 32.975883>,  <36.900188, 32.144699, 33.204777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.921585, 32.472038, 32.975883> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152250, 0.559668, 0.814611,
		0.986893, -0.130700, -0.094654,
		0.053495, 0.818345, -0.572232,
		36.937634, 32.717541, 32.804214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.616119, 32.467178, 33.221809>,  <36.900188, 32.144699, 33.204777>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.616119, 32.467178, 33.221809> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.370037, 32.753773, 33.090252>,  <37.222389, 32.925732, 33.011318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.370037, 32.753773, 33.090252>,  <37.616119, 32.467178, 33.221809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.370037, 32.753773, 33.090252> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207033, 0.549369, 0.809525,
		0.760700, 0.429929, -0.486309,
		-0.615202, 0.716487, -0.328896,
		37.185478, 32.968719, 32.991585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.985146, 33.179287, 33.293102>,  <37.616119, 32.467178, 33.221809>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.985146, 33.179287, 33.293102> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.601585, 33.283958, 33.249222>,  <37.371449, 33.346760, 33.222893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.601585, 33.283958, 33.249222>,  <37.985146, 33.179287, 33.293102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.601585, 33.283958, 33.249222> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121694, 0.728539, 0.674108,
		0.256319, 0.633053, -0.730441,
		-0.958901, 0.261677, -0.109699,
		37.313915, 33.362461, 33.216312>
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
