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
	<24.187080, 35.078011, 35.338215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.325214, 35.070831, 34.962891>,  <24.408094, 35.066525, 34.737698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.325214, 35.070831, 34.962891>,  <24.187080, 35.078011, 35.338215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.325214, 35.070831, 34.962891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377767, -0.917897, -0.121480,
		-0.859090, 0.396413, -0.323762,
		0.345336, -0.017944, -0.938308,
		24.428816, 35.065449, 34.681396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.234085, 34.447147, 35.610413>,  <24.187080, 35.078011, 35.338215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.234085, 34.447147, 35.610413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.456211, 34.116634, 35.572704>,  <24.589487, 33.918327, 35.550079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.456211, 34.116634, 35.572704>,  <24.234085, 34.447147, 35.610413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.456211, 34.116634, 35.572704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777267, 0.555974, -0.294531,
		0.295775, 0.090287, 0.950981,
		0.555313, -0.826281, -0.094266,
		24.622805, 33.868752, 35.544426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.876938, 34.534569, 35.923260>,  <24.234085, 34.447147, 35.610413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.876938, 34.534569, 35.923260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.912384, 34.281982, 35.615128>,  <24.933651, 34.130432, 35.430248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.912384, 34.281982, 35.615128>,  <24.876938, 34.534569, 35.923260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.912384, 34.281982, 35.615128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740855, 0.558723, -0.372778,
		0.665794, -0.537666, 0.517333,
		0.088616, -0.631462, -0.770327,
		24.938969, 34.092545, 35.384029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.642942, 34.362617, 35.705158>,  <24.876938, 34.534569, 35.923260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.642942, 34.362617, 35.705158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.397818, 34.351471, 35.389263>,  <25.250742, 34.344784, 35.199726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.397818, 34.351471, 35.389263>,  <25.642942, 34.362617, 35.705158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.397818, 34.351471, 35.389263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539325, 0.715689, -0.443754,
		0.577573, -0.697863, -0.423553,
		-0.612812, -0.027868, -0.789737,
		25.213974, 34.343109, 35.152344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.047211, 34.301170, 35.107162>,  <25.642942, 34.362617, 35.705158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.047211, 34.301170, 35.107162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.698170, 34.464157, 34.999439>,  <25.488745, 34.561951, 34.934803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.698170, 34.464157, 34.999439>,  <26.047211, 34.301170, 35.107162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.698170, 34.464157, 34.999439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459845, 0.499511, -0.734187,
		-0.164636, -0.764497, -0.623249,
		-0.872604, 0.407471, -0.269312,
		25.436388, 34.586399, 34.918644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.055843, 34.225269, 34.331310>,  <26.047211, 34.301170, 35.107162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.055843, 34.225269, 34.331310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.827614, 34.536102, 34.437580>,  <25.690676, 34.722603, 34.501343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.827614, 34.536102, 34.437580>,  <26.055843, 34.225269, 34.331310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.827614, 34.536102, 34.437580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449104, 0.566090, -0.691265,
		-0.687569, -0.275102, -0.671988,
		-0.570575, 0.777085, 0.265676,
		25.656441, 34.769226, 34.517284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.815733, 34.524940, 33.701378>,  <26.055843, 34.225269, 34.331310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.815733, 34.524940, 33.701378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.744282, 34.808071, 33.974751>,  <25.701412, 34.977947, 34.138775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.744282, 34.808071, 33.974751>,  <25.815733, 34.524940, 33.701378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.744282, 34.808071, 33.974751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338940, 0.696354, -0.632622,
		-0.923695, 0.118639, -0.364297,
		-0.178626, 0.707825, 0.683430,
		25.690693, 35.020420, 34.179779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.329374, 34.990082, 33.461487>,  <25.815733, 34.524940, 33.701378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.329374, 34.990082, 33.461487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.574308, 35.180393, 33.714054>,  <25.721268, 35.294579, 33.865593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.574308, 35.180393, 33.714054>,  <25.329374, 34.990082, 33.461487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.574308, 35.180393, 33.714054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094047, 0.749148, -0.655692,
		-0.784986, 0.460885, 0.413983,
		0.612334, 0.475775, 0.631416,
		25.758009, 35.323124, 33.903481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.049026, 35.701298, 33.520767>,  <25.329374, 34.990082, 33.461487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.049026, 35.701298, 33.520767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.430014, 35.758190, 33.628525>,  <25.658607, 35.792324, 33.693180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.430014, 35.758190, 33.628525>,  <25.049026, 35.701298, 33.520767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.430014, 35.758190, 33.628525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132305, 0.603422, -0.786369,
		-0.274401, 0.784635, 0.555924,
		0.952470, 0.142229, 0.269391,
		25.715755, 35.800858, 33.709343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.190077, 36.493969, 33.496487>,  <25.049026, 35.701298, 33.520767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.190077, 36.493969, 33.496487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.533155, 36.294941, 33.444679>,  <25.739002, 36.175522, 33.413593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.533155, 36.294941, 33.444679>,  <25.190077, 36.493969, 33.496487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.533155, 36.294941, 33.444679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179873, 0.526374, -0.831009,
		0.481665, 0.689456, 0.540970,
		0.857697, -0.497574, -0.129522,
		25.790464, 36.145668, 33.405823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.639555, 36.925358, 33.211754>,  <25.190077, 36.493969, 33.496487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.639555, 36.925358, 33.211754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.841534, 36.586918, 33.143459>,  <25.962721, 36.383854, 33.102482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.841534, 36.586918, 33.143459>,  <25.639555, 36.925358, 33.211754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.841534, 36.586918, 33.143459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416616, 0.412142, -0.810290,
		0.755951, 0.338021, 0.560606,
		0.504945, -0.846097, -0.170734,
		25.993017, 36.333088, 33.092239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.312494, 37.206158, 33.036198>,  <25.639555, 36.925358, 33.211754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.312494, 37.206158, 33.036198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.212034, 36.848984, 32.886749>,  <26.151758, 36.634682, 32.797081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.212034, 36.848984, 32.886749>,  <26.312494, 37.206158, 33.036198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.212034, 36.848984, 32.886749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284822, 0.300731, -0.910185,
		0.925095, -0.335010, 0.178798,
		-0.251151, -0.892933, -0.373622,
		26.136688, 36.581104, 32.774662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.803099, 37.115944, 32.540455>,  <26.312494, 37.206158, 33.036198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.803099, 37.115944, 32.540455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.552383, 36.831989, 32.411961>,  <26.401955, 36.661617, 32.334862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.552383, 36.831989, 32.411961>,  <26.803099, 37.115944, 32.540455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.552383, 36.831989, 32.411961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315130, 0.146105, -0.937735,
		0.712623, -0.688992, 0.132131,
		-0.626787, -0.709890, -0.321240,
		26.364347, 36.619022, 32.315590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.130976, 36.816643, 31.940912>,  <26.803099, 37.115944, 32.540455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.130976, 36.816643, 31.940912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.749851, 36.698170, 31.914282>,  <26.521177, 36.627087, 31.898304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.749851, 36.698170, 31.914282>,  <27.130976, 36.816643, 31.940912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.749851, 36.698170, 31.914282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060704, 0.028987, -0.997735,
		0.297437, -0.954693, -0.009640,
		-0.952810, -0.296178, -0.066575,
		26.464008, 36.609318, 31.894310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.044462, 36.262333, 31.453999>,  <27.130976, 36.816643, 31.940912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.044462, 36.262333, 31.453999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.683584, 36.434361, 31.440802>,  <26.467058, 36.537579, 31.432884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.683584, 36.434361, 31.440802>,  <27.044462, 36.262333, 31.453999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.683584, 36.434361, 31.440802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070650, 0.071886, -0.994908,
		-0.425507, -0.899929, -0.095239,
		-0.902193, 0.430069, -0.032992,
		26.412926, 36.563381, 31.430904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.837229, 35.913151, 30.848040>,  <27.044462, 36.262333, 31.453999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.837229, 35.913151, 30.848040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.613022, 36.232124, 30.937408>,  <26.478497, 36.423508, 30.991030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.613022, 36.232124, 30.937408>,  <26.837229, 35.913151, 30.848040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.613022, 36.232124, 30.937408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032417, 0.290707, -0.956263,
		-0.827507, -0.528761, -0.188797,
		-0.560519, 0.797434, 0.223422,
		26.444866, 36.471355, 31.004435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.342117, 35.867718, 30.382664>,  <26.837229, 35.913151, 30.848040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.342117, 35.867718, 30.382664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.331970, 36.247623, 30.507441>,  <26.325882, 36.475567, 30.582308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.331970, 36.247623, 30.507441>,  <26.342117, 35.867718, 30.382664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.331970, 36.247623, 30.507441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122552, 0.312645, -0.941931,
		-0.992138, 0.014336, -0.124326,
		-0.025366, 0.949762, 0.311944,
		26.324360, 36.532551, 30.601025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.083315, 36.200882, 29.746208>,  <26.342117, 35.867718, 30.382664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.083315, 36.200882, 29.746208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.221922, 36.498272, 29.975002>,  <26.305086, 36.676708, 30.112278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.221922, 36.498272, 29.975002>,  <26.083315, 36.200882, 29.746208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.221922, 36.498272, 29.975002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218460, 0.529036, -0.819998,
		-0.912250, 0.409100, 0.020900,
		0.346518, 0.743477, 0.571985,
		26.325878, 36.721313, 30.146597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.725111, 36.699024, 29.326971>,  <26.083315, 36.200882, 29.746208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.725111, 36.699024, 29.326971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.016148, 36.858746, 29.550100>,  <26.190769, 36.954578, 29.683977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.016148, 36.858746, 29.550100>,  <25.725111, 36.699024, 29.326971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.016148, 36.858746, 29.550100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237868, 0.615845, -0.751101,
		-0.643449, 0.679184, 0.353104,
		0.727593, 0.399304, 0.557821,
		26.234426, 36.978539, 29.717447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.667635, 37.453625, 29.348459>,  <25.725111, 36.699024, 29.326971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.667635, 37.453625, 29.348459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.053289, 37.377663, 29.422626>,  <26.284681, 37.332085, 29.467127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.053289, 37.377663, 29.422626>,  <25.667635, 37.453625, 29.348459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.053289, 37.377663, 29.422626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265372, 0.677634, -0.685850,
		0.004601, 0.710457, 0.703726,
		0.964135, -0.189904, 0.185418,
		26.342529, 37.320690, 29.478252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.950357, 38.027523, 29.170132>,  <25.667635, 37.453625, 29.348459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.950357, 38.027523, 29.170132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.274130, 37.798290, 29.221359>,  <26.468393, 37.660751, 29.252096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.274130, 37.798290, 29.221359>,  <25.950357, 38.027523, 29.170132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.274130, 37.798290, 29.221359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488549, 0.536210, -0.688330,
		0.325797, 0.619723, 0.714002,
		0.809430, -0.573081, 0.128069,
		26.516958, 37.626366, 29.259779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.527323, 38.473721, 29.328243>,  <25.950357, 38.027523, 29.170132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.527323, 38.473721, 29.328243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.677589, 38.142315, 29.162136>,  <26.767750, 37.943474, 29.062471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.677589, 38.142315, 29.162136>,  <26.527323, 38.473721, 29.328243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.677589, 38.142315, 29.162136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539918, 0.559846, -0.628538,
		0.753236, 0.011910, 0.657643,
		0.375665, -0.828511, -0.415266,
		26.790289, 37.893761, 29.037556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.181416, 38.491234, 29.493904>,  <26.527323, 38.473721, 29.328243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.181416, 38.491234, 29.493904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.156475, 38.273628, 29.159201>,  <27.141510, 38.143066, 28.958380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.156475, 38.273628, 29.159201>,  <27.181416, 38.491234, 29.493904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.156475, 38.273628, 29.159201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643715, 0.618783, -0.450264,
		0.762721, -0.566708, 0.311607,
		-0.062351, -0.544012, -0.836757,
		27.137770, 38.110424, 28.908173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.929342, 38.354080, 29.209105>,  <27.181416, 38.491234, 29.493904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.929342, 38.354080, 29.209105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.696966, 38.274006, 28.893528>,  <27.557541, 38.225960, 28.704182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.696966, 38.274006, 28.893528>,  <27.929342, 38.354080, 29.209105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.696966, 38.274006, 28.893528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579068, 0.579516, -0.573447,
		0.571998, -0.789993, -0.220749,
		-0.580946, -0.200182, -0.788941,
		27.522684, 38.213951, 28.656845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.393824, 38.058125, 28.605028>,  <27.929342, 38.354080, 29.209105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.393824, 38.058125, 28.605028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.056650, 38.210266, 28.452824>,  <27.854345, 38.301552, 28.361500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.056650, 38.210266, 28.452824>,  <28.393824, 38.058125, 28.605028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.056650, 38.210266, 28.452824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535540, 0.660943, -0.525691,
		0.051549, -0.646904, -0.760828,
		-0.842935, 0.380355, -0.380514,
		27.803770, 38.324371, 28.338669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.099161, 38.026203, 28.615156>,  <28.393824, 38.058125, 28.605028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.099161, 38.026203, 28.615156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.336185, 38.257710, 28.391048>,  <29.478401, 38.396614, 28.256584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.336185, 38.257710, 28.391048>,  <29.099161, 38.026203, 28.615156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.336185, 38.257710, 28.391048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804558, -0.391176, 0.446842,
		0.039451, -0.715552, -0.697444,
		0.592563, 0.578763, -0.560271,
		29.513954, 38.431339, 28.222967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.584635, 37.627731, 28.446110>,  <29.099161, 38.026203, 28.615156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.584635, 37.627731, 28.446110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.744543, 37.990185, 28.390812>,  <29.840488, 38.207657, 28.357634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.744543, 37.990185, 28.390812>,  <29.584635, 37.627731, 28.446110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.744543, 37.990185, 28.390812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852870, -0.312455, 0.418311,
		0.335849, -0.285134, -0.897722,
		0.399772, 0.906130, -0.138244,
		29.864475, 38.262024, 28.349339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.278296, 37.679970, 28.178371>,  <29.584635, 37.627731, 28.446110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.278296, 37.679970, 28.178371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.249075, 38.008320, 28.404940>,  <30.231543, 38.205330, 28.540880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.249075, 38.008320, 28.404940>,  <30.278296, 37.679970, 28.178371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.249075, 38.008320, 28.404940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849031, -0.246794, 0.467160,
		0.523268, 0.515036, -0.678917,
		-0.073052, 0.820872, 0.566421,
		30.227160, 38.254581, 28.574865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.987970, 37.906849, 28.293560>,  <30.278296, 37.679970, 28.178371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.987970, 37.906849, 28.293560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.798412, 38.091484, 28.593523>,  <30.684677, 38.202267, 28.773500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.798412, 38.091484, 28.593523>,  <30.987970, 37.906849, 28.293560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.798412, 38.091484, 28.593523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777827, -0.179796, 0.602211,
		0.412804, 0.868683, -0.273831,
		-0.473897, 0.461589, 0.749905,
		30.656242, 38.229961, 28.818495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.512234, 38.151791, 28.644592>,  <30.987970, 37.906849, 28.293560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.512234, 38.151791, 28.644592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.203653, 38.178726, 28.897678>,  <31.018505, 38.194885, 29.049530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.203653, 38.178726, 28.897678>,  <31.512234, 38.151791, 28.644592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.203653, 38.178726, 28.897678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582056, -0.327027, 0.744490,
		0.257044, 0.942613, 0.213093,
		-0.771453, 0.067335, 0.632714,
		30.972218, 38.198925, 29.087492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.581667, 38.583641, 29.178877>,  <31.512234, 38.151791, 28.644592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.581667, 38.583641, 29.178877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.346109, 38.284115, 29.300520>,  <31.204775, 38.104401, 29.373507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.346109, 38.284115, 29.300520>,  <31.581667, 38.583641, 29.178877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.346109, 38.284115, 29.300520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680045, -0.255765, 0.687112,
		-0.436738, 0.611444, 0.659845,
		-0.588896, -0.748813, 0.304107,
		31.169441, 38.059471, 29.391752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.360775, 38.525471, 29.378492>,  <31.581667, 38.583641, 29.178877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.360775, 38.525471, 29.378492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.654152, 38.540733, 29.649963>,  <32.830177, 38.549889, 29.812845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.654152, 38.540733, 29.649963>,  <32.360775, 38.525471, 29.378492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.654152, 38.540733, 29.649963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158503, 0.980500, 0.116174,
		-0.661009, -0.192780, 0.725192,
		0.733447, 0.038153, 0.678675,
		32.874187, 38.552177, 29.853565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.595940, 38.974251, 29.848280>,  <32.360775, 38.525471, 29.378492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.595940, 38.974251, 29.848280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.586288, 39.372501, 29.812185>,  <32.580498, 39.611450, 29.790527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.586288, 39.372501, 29.812185>,  <32.595940, 38.974251, 29.848280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.586288, 39.372501, 29.812185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.971028, -0.001876, 0.238958,
		0.237744, 0.093390, 0.966828,
		-0.024130, 0.995628, -0.090238,
		32.579048, 39.671188, 29.785114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.313587, 39.296928, 30.517714>,  <32.595940, 38.974251, 29.848280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.313587, 39.296928, 30.517714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.240311, 39.497025, 30.179199>,  <32.196346, 39.617081, 29.976089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.240311, 39.497025, 30.179199>,  <32.313587, 39.296928, 30.517714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.240311, 39.497025, 30.179199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.982786, -0.114157, 0.145255,
		-0.023947, 0.858329, 0.512540,
		-0.183187, 0.500239, -0.846288,
		32.185356, 39.647095, 29.925312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.460796, 40.051952, 30.395014>,  <32.313587, 39.296928, 30.517714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.460796, 40.051952, 30.395014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.216476, 40.299824, 30.592161>,  <32.069885, 40.448547, 30.710449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.216476, 40.299824, 30.592161>,  <32.460796, 40.051952, 30.395014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.216476, 40.299824, 30.592161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238580, -0.449508, 0.860827,
		0.754985, 0.643382, 0.126716,
		-0.610801, 0.619679, 0.492870,
		32.033237, 40.485729, 30.740023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.832062, 40.189823, 30.944090>,  <32.460796, 40.051952, 30.395014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.832062, 40.189823, 30.944090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.443542, 40.218826, 31.034710>,  <32.210430, 40.236229, 31.089083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.443542, 40.218826, 31.034710>,  <32.832062, 40.189823, 30.944090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.443542, 40.218826, 31.034710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167761, -0.466396, 0.868522,
		0.168637, 0.881599, 0.440845,
		-0.971297, 0.072508, 0.226550,
		32.152153, 40.240578, 31.102674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.742096, 40.478085, 31.654438>,  <32.832062, 40.189823, 30.944090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.742096, 40.478085, 31.654438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.413216, 40.267384, 31.568167>,  <32.215889, 40.140965, 31.516403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.413216, 40.267384, 31.568167>,  <32.742096, 40.478085, 31.654438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.413216, 40.267384, 31.568167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009075, -0.366740, 0.930279,
		-0.569127, 0.766832, 0.296754,
		-0.822200, -0.526754, -0.215681,
		32.166557, 40.109356, 31.503462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.350510, 40.444706, 32.254097>,  <32.742096, 40.478085, 31.654438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.350510, 40.444706, 32.254097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.192043, 40.138378, 32.051487>,  <32.096962, 39.954582, 31.929920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.192043, 40.138378, 32.051487>,  <32.350510, 40.444706, 32.254097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.192043, 40.138378, 32.051487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269596, -0.430328, 0.861473,
		-0.877707, 0.477845, -0.035981,
		-0.396167, -0.765821, -0.506527,
		32.073193, 39.908630, 31.899529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.653969, 40.311436, 32.569550>,  <32.350510, 40.444706, 32.254097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.653969, 40.311436, 32.569550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.742971, 39.996155, 32.340034>,  <31.796373, 39.806988, 32.202328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.742971, 39.996155, 32.340034>,  <31.653969, 40.311436, 32.569550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.742971, 39.996155, 32.340034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567762, -0.583200, 0.580968,
		-0.792551, 0.196505, -0.577277,
		0.222505, -0.788203, -0.573784,
		31.809723, 39.759693, 32.167900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.937067, 39.970940, 32.368046>,  <31.653969, 40.311436, 32.569550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.937067, 39.970940, 32.368046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.222172, 39.692898, 32.330521>,  <31.393234, 39.526073, 32.308006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.222172, 39.692898, 32.330521>,  <30.937067, 39.970940, 32.368046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.222172, 39.692898, 32.330521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559617, -0.644201, 0.521377,
		-0.422847, -0.319117, -0.848154,
		0.712762, -0.695103, -0.093815,
		31.436001, 39.484367, 32.302376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.574516, 39.416965, 32.022175>,  <30.937067, 39.970940, 32.368046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.574516, 39.416965, 32.022175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.892485, 39.285187, 32.225964>,  <31.083265, 39.206120, 32.348236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.892485, 39.285187, 32.225964>,  <30.574516, 39.416965, 32.022175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.892485, 39.285187, 32.225964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579270, -0.661811, 0.475869,
		0.180398, -0.673401, -0.716930,
		0.794923, -0.329450, 0.509470,
		31.130962, 39.186352, 32.378803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.790020, 38.675247, 31.815783>,  <30.574516, 39.416965, 32.022175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.790020, 38.675247, 31.815783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.911955, 38.765381, 32.185928>,  <30.985115, 38.819462, 32.408016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.911955, 38.765381, 32.185928>,  <30.790020, 38.675247, 31.815783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.911955, 38.765381, 32.185928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593380, -0.715054, 0.369592,
		0.744966, -0.661759, -0.084269,
		0.304838, 0.225329, 0.925365,
		31.003407, 38.832981, 32.463539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.681656, 38.086830, 32.171608>,  <30.790020, 38.675247, 31.815783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.681656, 38.086830, 32.171608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.761536, 38.342270, 32.468880>,  <30.809464, 38.495533, 32.647243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.761536, 38.342270, 32.468880>,  <30.681656, 38.086830, 32.171608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.761536, 38.342270, 32.468880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645250, -0.485086, 0.590207,
		0.737410, -0.597399, 0.315185,
		0.199697, 0.638597, 0.743178,
		30.821445, 38.533848, 32.691833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.746172, 37.651306, 32.739952>,  <30.681656, 38.086830, 32.171608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.746172, 37.651306, 32.739952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.668255, 37.995544, 32.928177>,  <30.621504, 38.202087, 33.041111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.668255, 37.995544, 32.928177>,  <30.746172, 37.651306, 32.739952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.668255, 37.995544, 32.928177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473008, -0.502698, 0.723573,
		0.859255, -0.081631, 0.504992,
		-0.194793, 0.860599, 0.470558,
		30.609818, 38.253723, 33.069344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.841051, 37.409611, 33.352367>,  <30.746172, 37.651306, 32.739952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.841051, 37.409611, 33.352367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.619858, 37.742851, 33.357254>,  <30.487141, 37.942795, 33.360188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.619858, 37.742851, 33.357254>,  <30.841051, 37.409611, 33.352367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.619858, 37.742851, 33.357254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655663, -0.444165, 0.610593,
		0.514114, 0.329636, 0.791850,
		-0.552986, 0.833101, 0.012221,
		30.453962, 37.992783, 33.360920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.601534, 37.439880, 34.066349>,  <30.841051, 37.409611, 33.352367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.601534, 37.439880, 34.066349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.353384, 37.699581, 33.890343>,  <30.204494, 37.855400, 33.784740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.353384, 37.699581, 33.890343>,  <30.601534, 37.439880, 34.066349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.353384, 37.699581, 33.890343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709147, -0.224681, 0.668303,
		0.335031, 0.726633, 0.599798,
		-0.620374, 0.649248, -0.440015,
		30.167273, 37.894356, 33.758339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.307568, 37.835770, 34.643703>,  <30.601534, 37.439880, 34.066349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.307568, 37.835770, 34.643703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.048248, 37.919407, 34.350857>,  <29.892656, 37.969589, 34.175148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.048248, 37.919407, 34.350857>,  <30.307568, 37.835770, 34.643703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.048248, 37.919407, 34.350857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758169, -0.265586, 0.595520,
		-0.069921, 0.941140, 0.330707,
		-0.648299, 0.209092, -0.732113,
		29.853758, 37.982136, 34.131222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.815365, 38.251850, 34.892132>,  <30.307568, 37.835770, 34.643703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.815365, 38.251850, 34.892132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.647554, 38.052971, 34.588345>,  <29.546867, 37.933643, 34.406071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.647554, 38.052971, 34.588345>,  <29.815365, 38.251850, 34.892132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.647554, 38.052971, 34.588345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771873, -0.244909, 0.586712,
		-0.477712, 0.832355, -0.281028,
		-0.419526, -0.497197, -0.759469,
		29.521696, 37.903812, 34.360504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.161497, 38.445427, 34.931389>,  <29.815365, 38.251850, 34.892132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.161497, 38.445427, 34.931389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.150902, 38.116665, 34.703789>,  <29.144545, 37.919407, 34.567230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.150902, 38.116665, 34.703789>,  <29.161497, 38.445427, 34.931389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.150902, 38.116665, 34.703789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679019, -0.402943, 0.613653,
		-0.733643, 0.402618, -0.547418,
		-0.026490, -0.821910, -0.569001,
		29.142956, 37.870090, 34.533089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.476416, 38.385857, 34.786190>,  <29.161497, 38.445427, 34.931389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.476416, 38.385857, 34.786190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.609846, 38.015739, 34.714016>,  <28.689903, 37.793667, 34.670712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.609846, 38.015739, 34.714016>,  <28.476416, 38.385857, 34.786190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.609846, 38.015739, 34.714016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750639, -0.376488, 0.542952,
		-0.570323, -0.045673, -0.820150,
		0.333574, -0.925295, -0.180436,
		28.709919, 37.738152, 34.659885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.891663, 37.988007, 34.444946>,  <28.476416, 38.385857, 34.786190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.891663, 37.988007, 34.444946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.148550, 37.713303, 34.581131>,  <28.302683, 37.548481, 34.662842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.148550, 37.713303, 34.581131>,  <27.891663, 37.988007, 34.444946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.148550, 37.713303, 34.581131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752377, -0.479849, 0.451303,
		-0.146568, -0.545990, -0.824871,
		0.642220, -0.686760, 0.340460,
		28.341217, 37.507275, 34.683270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.615313, 37.342289, 34.258686>,  <27.891663, 37.988007, 34.444946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.615313, 37.342289, 34.258686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.859037, 37.264500, 34.566170>,  <28.005272, 37.217827, 34.750660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.859037, 37.264500, 34.566170>,  <27.615313, 37.342289, 34.258686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.859037, 37.264500, 34.566170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757195, -0.430455, 0.491287,
		0.235356, -0.881414, -0.409533,
		0.609313, -0.194469, 0.768713,
		28.041832, 37.206158, 34.796783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.521482, 36.612762, 34.291473>,  <27.615313, 37.342289, 34.258686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.521482, 36.612762, 34.291473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.711016, 36.753639, 34.614323>,  <27.824736, 36.838165, 34.808033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.711016, 36.753639, 34.614323>,  <27.521482, 36.612762, 34.291473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.711016, 36.753639, 34.614323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691920, -0.418056, 0.588623,
		0.544731, -0.837370, 0.045602,
		0.473831, 0.352194, 0.807121,
		27.853165, 36.859299, 34.856461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.569307, 36.046947, 34.774296>,  <27.521482, 36.612762, 34.291473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.569307, 36.046947, 34.774296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.607483, 36.371014, 35.005650>,  <27.630388, 36.565453, 35.144463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.607483, 36.371014, 35.005650>,  <27.569307, 36.046947, 34.774296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.607483, 36.371014, 35.005650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509714, -0.459309, 0.727480,
		0.855034, -0.364238, 0.369116,
		0.095437, 0.810164, 0.578382,
		27.636114, 36.614063, 35.179165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.550932, 35.758755, 35.462929>,  <27.569307, 36.046947, 34.774296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.550932, 35.758755, 35.462929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.507650, 36.156006, 35.480728>,  <27.481682, 36.394356, 35.491409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.507650, 36.156006, 35.480728>,  <27.550932, 35.758755, 35.462929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.507650, 36.156006, 35.480728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579008, -0.099344, 0.809247,
		0.808110, 0.061800, 0.585781,
		-0.108205, 0.993132, 0.044498,
		27.475189, 36.453945, 35.494076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.608271, 35.993362, 36.219551>,  <27.550932, 35.758755, 35.462929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.608271, 35.993362, 36.219551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.389444, 36.268856, 36.029240>,  <27.258148, 36.434151, 35.915054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.389444, 36.268856, 36.029240>,  <27.608271, 35.993362, 36.219551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.389444, 36.268856, 36.029240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675667, -0.027788, 0.736683,
		0.494157, 0.724482, 0.480556,
		-0.547068, 0.688733, -0.475777,
		27.225325, 36.475475, 35.886505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.523277, 36.486427, 36.788513>,  <27.608271, 35.993362, 36.219551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.523277, 36.486427, 36.788513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.234629, 36.540695, 36.516968>,  <27.061440, 36.573257, 36.354038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.234629, 36.540695, 36.516968>,  <27.523277, 36.486427, 36.788513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.234629, 36.540695, 36.516968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669077, 0.115124, 0.734222,
		0.177766, 0.984043, 0.007698,
		-0.721619, 0.135670, -0.678866,
		27.018143, 36.581398, 36.313309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.783895, 36.908413, 37.317936>,  <27.523277, 36.486427, 36.788513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.783895, 36.908413, 37.317936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.784929, 36.930542, 36.918549>,  <27.785549, 36.943817, 36.678917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.784929, 36.930542, 36.918549>,  <27.783895, 36.908413, 37.317936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.784929, 36.930542, 36.918549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936710, 0.349428, 0.021787,
		0.350097, -0.935328, -0.050916,
		0.002586, 0.055321, -0.998465,
		27.785706, 36.947140, 36.619007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.403696, 36.563282, 37.085403>,  <27.783895, 36.908413, 37.317936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.403696, 36.563282, 37.085403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.303123, 36.853970, 36.829693>,  <28.242781, 37.028381, 36.676270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.303123, 36.853970, 36.829693>,  <28.403696, 36.563282, 37.085403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.303123, 36.853970, 36.829693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931915, 0.360135, 0.042866,
		0.261376, -0.584969, -0.767785,
		-0.251431, 0.726715, -0.639271,
		28.227694, 37.071983, 36.637913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.917877, 36.612907, 36.580318>,  <28.403696, 36.563282, 37.085403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.917877, 36.612907, 36.580318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.727924, 36.958721, 36.646130>,  <28.613953, 37.166210, 36.685616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.727924, 36.958721, 36.646130>,  <28.917877, 36.612907, 36.580318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.727924, 36.958721, 36.646130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877014, 0.480416, 0.006931,
		-0.073050, 0.147585, -0.986348,
		-0.474880, 0.864534, 0.164528,
		28.585461, 37.218082, 36.695488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.273161, 37.120827, 36.206257>,  <28.917877, 36.612907, 36.580318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.273161, 37.120827, 36.206257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.089394, 37.378960, 36.450382>,  <28.979134, 37.533840, 36.596855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.089394, 37.378960, 36.450382>,  <29.273161, 37.120827, 36.206257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.089394, 37.378960, 36.450382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882785, 0.407647, 0.233482,
		-0.098117, 0.646039, -0.756972,
		-0.459416, 0.645335, 0.610311,
		28.951569, 37.572559, 36.633476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.574240, 37.878311, 36.077084>,  <29.273161, 37.120827, 36.206257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.574240, 37.878311, 36.077084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.452181, 37.793266, 36.448391>,  <29.378946, 37.742241, 36.671177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.452181, 37.793266, 36.448391>,  <29.574240, 37.878311, 36.077084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.452181, 37.793266, 36.448391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.771677, 0.515986, 0.371852,
		-0.558034, 0.829792, 0.006617,
		-0.305145, -0.212612, 0.928269,
		29.360638, 37.729481, 36.726871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.714931, 38.484692, 36.501099>,  <29.574240, 37.878311, 36.077084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.714931, 38.484692, 36.501099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.672264, 38.213055, 36.791603>,  <29.646664, 38.050072, 36.965908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.672264, 38.213055, 36.791603>,  <29.714931, 38.484692, 36.501099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.672264, 38.213055, 36.791603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677595, 0.484909, 0.552928,
		-0.727659, 0.551093, 0.408423,
		-0.106667, -0.679088, 0.726266,
		29.640265, 38.009327, 37.009483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.601818, 38.795486, 37.080711>,  <29.714931, 38.484692, 36.501099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.601818, 38.795486, 37.080711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.768909, 38.448383, 37.188412>,  <29.869165, 38.240120, 37.253033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.768909, 38.448383, 37.188412>,  <29.601818, 38.795486, 37.080711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.768909, 38.448383, 37.188412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723455, 0.496954, 0.479217,
		-0.549649, -0.005395, 0.835378,
		0.417730, -0.867760, 0.269247,
		29.894228, 38.188057, 37.269184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.617098, 38.700386, 37.821156>,  <29.601818, 38.795486, 37.080711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.617098, 38.700386, 37.821156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.918318, 38.493496, 37.658482>,  <30.099049, 38.369362, 37.560879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.918318, 38.493496, 37.658482>,  <29.617098, 38.700386, 37.821156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.918318, 38.493496, 37.658482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652063, 0.504067, 0.566331,
		-0.087926, -0.691659, 0.716852,
		0.753049, -0.517228, -0.406684,
		30.144232, 38.338329, 37.536476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.042856, 38.501068, 38.335854>,  <29.617098, 38.700386, 37.821156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.042856, 38.501068, 38.335854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.290604, 38.456947, 38.024929>,  <30.439253, 38.430477, 37.838375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.290604, 38.456947, 38.024929>,  <30.042856, 38.501068, 38.335854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.290604, 38.456947, 38.024929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783762, 0.144631, 0.603986,
		0.045804, -0.983319, 0.176029,
		0.619370, -0.110300, -0.777313,
		30.476414, 38.423859, 37.791737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.486252, 38.031891, 38.566643>,  <30.042856, 38.501068, 38.335854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.486252, 38.031891, 38.566643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.694199, 38.192726, 38.265163>,  <30.818966, 38.289227, 38.084274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.694199, 38.192726, 38.265163>,  <30.486252, 38.031891, 38.566643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.694199, 38.192726, 38.265163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839355, -0.076403, 0.538188,
		0.158812, -0.912409, -0.377211,
		0.519868, 0.402084, -0.753702,
		30.850159, 38.313351, 38.039051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.065012, 37.568378, 38.336498>,  <30.486252, 38.031891, 38.566643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.065012, 37.568378, 38.336498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.143862, 37.947704, 38.237022>,  <31.191172, 38.175301, 38.177338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.143862, 37.947704, 38.237022>,  <31.065012, 37.568378, 38.336498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.143862, 37.947704, 38.237022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929062, -0.099704, 0.356234,
		0.313026, -0.301271, -0.900695,
		0.197126, 0.948312, -0.248689,
		31.202999, 38.232197, 38.162415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.753174, 37.504295, 38.037640>,  <31.065012, 37.568378, 38.336498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.753174, 37.504295, 38.037640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.687269, 37.887352, 38.132111>,  <31.647726, 38.117184, 38.188793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.687269, 37.887352, 38.132111>,  <31.753174, 37.504295, 38.037640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.687269, 37.887352, 38.132111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939455, 0.079420, 0.333342,
		0.300464, 0.276803, -0.912744,
		-0.164760, 0.957639, 0.236181,
		31.637840, 38.174644, 38.202965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.382206, 37.785755, 38.005779>,  <31.753174, 37.504295, 38.037640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.382206, 37.785755, 38.005779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.171051, 38.026787, 38.245193>,  <32.044357, 38.171406, 38.388840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.171051, 38.026787, 38.245193>,  <32.382206, 37.785755, 38.005779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.171051, 38.026787, 38.245193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796466, 0.106509, 0.595230,
		0.294922, 0.790923, -0.536155,
		-0.527886, 0.602575, 0.598531,
		32.012684, 38.207558, 38.424751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.794247, 38.278919, 38.118343>,  <32.382206, 37.785755, 38.005779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.794247, 38.278919, 38.118343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.527462, 38.317669, 38.413849>,  <32.367390, 38.340919, 38.591152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.527462, 38.317669, 38.413849>,  <32.794247, 38.278919, 38.118343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.527462, 38.317669, 38.413849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744162, 0.136139, 0.653980,
		-0.037220, 0.985942, -0.162891,
		-0.666962, 0.096877, 0.738767,
		32.327374, 38.346733, 38.635479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.165573, 38.567108, 38.565342>,  <32.794247, 38.278919, 38.118343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.165573, 38.567108, 38.565342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.847748, 38.520500, 38.803703>,  <32.657055, 38.492535, 38.946720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.847748, 38.520500, 38.803703>,  <33.165573, 38.567108, 38.565342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.847748, 38.520500, 38.803703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580283, 0.143175, 0.801731,
		-0.178738, 0.982814, -0.046145,
		-0.794559, -0.116522, 0.595901,
		32.609379, 38.485542, 38.982475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.192345, 39.069641, 39.056221>,  <33.165573, 38.567108, 38.565342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.192345, 39.069641, 39.056221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.967533, 38.781406, 39.218639>,  <32.832645, 38.608463, 39.316090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.967533, 38.781406, 39.218639>,  <33.192345, 39.069641, 39.056221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.967533, 38.781406, 39.218639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658142, -0.092269, 0.747219,
		-0.500972, 0.687196, 0.526107,
		-0.562029, -0.720589, 0.406048,
		32.798923, 38.565231, 39.340454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.134026, 39.249088, 39.787422>,  <33.192345, 39.069641, 39.056221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.134026, 39.249088, 39.787422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.017071, 38.867249, 39.764626>,  <32.946896, 38.638145, 39.750946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.017071, 38.867249, 39.764626>,  <33.134026, 39.249088, 39.787422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.017071, 38.867249, 39.764626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499319, -0.203227, 0.842247,
		-0.815590, 0.217808, 0.536071,
		-0.292392, -0.954599, -0.056994,
		32.929352, 38.580868, 39.747528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.704163, 39.152580, 40.406338>,  <33.134026, 39.249088, 39.787422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.704163, 39.152580, 40.406338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.872425, 38.816826, 40.268654>,  <32.973381, 38.615372, 40.186043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.872425, 38.816826, 40.268654>,  <32.704163, 39.152580, 40.406338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.872425, 38.816826, 40.268654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467156, -0.124829, 0.875318,
		-0.777699, -0.529003, 0.339616,
		0.420652, -0.839388, -0.344207,
		32.998619, 38.565010, 40.165390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.562458, 38.634644, 40.961029>,  <32.704163, 39.152580, 40.406338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.562458, 38.634644, 40.961029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.871483, 38.509136, 40.740234>,  <33.056900, 38.433834, 40.607758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.871483, 38.509136, 40.740234>,  <32.562458, 38.634644, 40.961029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.871483, 38.509136, 40.740234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496276, -0.243871, 0.833209,
		-0.396047, -0.917648, -0.032692,
		0.772565, -0.313765, -0.551991,
		33.103252, 38.415009, 40.574638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.687138, 38.015877, 41.204361>,  <32.562458, 38.634644, 40.961029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.687138, 38.015877, 41.204361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.028015, 38.119831, 41.022713>,  <33.232540, 38.182205, 40.913723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.028015, 38.119831, 41.022713>,  <32.687138, 38.015877, 41.204361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.028015, 38.119831, 41.022713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522089, -0.365068, 0.770810,
		0.034536, -0.893971, -0.446792,
		0.852192, 0.259886, -0.454125,
		33.283672, 38.197796, 40.886475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.117371, 37.470932, 41.268417>,  <32.687138, 38.015877, 41.204361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.117371, 37.470932, 41.268417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.365139, 37.780155, 41.213734>,  <33.513802, 37.965691, 41.180923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.365139, 37.780155, 41.213734>,  <33.117371, 37.470932, 41.268417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.365139, 37.780155, 41.213734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493042, -0.247566, 0.834039,
		0.610921, -0.584025, -0.534500,
		0.619424, 0.773063, -0.136706,
		33.550964, 38.012074, 41.172722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.804523, 37.184761, 41.236614>,  <33.117371, 37.470932, 41.268417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.804523, 37.184761, 41.236614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.818161, 37.570576, 41.341309>,  <33.826344, 37.802067, 41.404125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.818161, 37.570576, 41.341309>,  <33.804523, 37.184761, 41.236614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.818161, 37.570576, 41.341309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485261, -0.244917, 0.839367,
		0.873705, 0.098395, -0.476402,
		0.034089, 0.964538, 0.261732,
		33.828388, 37.859936, 41.419827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.455215, 37.245129, 41.456055>,  <33.804523, 37.184761, 41.236614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.455215, 37.245129, 41.456055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.287258, 37.575882, 41.605701>,  <34.186485, 37.774334, 41.695488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.287258, 37.575882, 41.605701>,  <34.455215, 37.245129, 41.456055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.287258, 37.575882, 41.605701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394951, -0.204659, 0.895616,
		0.817133, 0.523817, -0.240643,
		-0.419890, 0.826880, 0.374115,
		34.161293, 37.823944, 41.717937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.940006, 37.499695, 41.804062>,  <34.455215, 37.245129, 41.456055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.940006, 37.499695, 41.804062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.611958, 37.668690, 41.958416>,  <34.415127, 37.770088, 42.051029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.611958, 37.668690, 41.958416>,  <34.940006, 37.499695, 41.804062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.611958, 37.668690, 41.958416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329597, -0.202455, 0.922159,
		0.467724, 0.883469, 0.026787,
		-0.820122, 0.422487, 0.385882,
		34.365921, 37.795437, 42.074181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.103794, 38.080357, 42.313225>,  <34.940006, 37.499695, 41.804062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.103794, 38.080357, 42.313225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.734127, 37.972000, 42.420952>,  <34.512325, 37.906986, 42.485588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.734127, 37.972000, 42.420952>,  <35.103794, 38.080357, 42.313225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.734127, 37.972000, 42.420952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304589, -0.097106, 0.947521,
		-0.230521, 0.957700, 0.172252,
		-0.924167, -0.270890, 0.269320,
		34.456879, 37.890732, 42.501747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.966946, 38.381058, 43.027618>,  <35.103794, 38.080357, 42.313225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.966946, 38.381058, 43.027618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.668247, 38.116615, 42.998451>,  <34.489029, 37.957951, 42.980953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.668247, 38.116615, 42.998451>,  <34.966946, 38.381058, 43.027618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.668247, 38.116615, 42.998451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206102, -0.334234, 0.919679,
		-0.632375, 0.671735, 0.385842,
		-0.746742, -0.661105, -0.072915,
		34.444225, 37.918285, 42.976578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.547337, 38.496002, 43.661327>,  <34.966946, 38.381058, 43.027618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.547337, 38.496002, 43.661327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.509048, 38.131042, 43.502144>,  <34.486076, 37.912067, 43.406635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.509048, 38.131042, 43.502144>,  <34.547337, 38.496002, 43.661327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.509048, 38.131042, 43.502144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150257, -0.408456, 0.900326,
		-0.984002, 0.026381, 0.176191,
		-0.095718, -0.912397, -0.397958,
		34.480331, 37.857323, 43.382755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.984600, 38.223827, 43.984661>,  <34.547337, 38.496002, 43.661327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.984600, 38.223827, 43.984661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.174538, 37.896004, 43.856384>,  <34.288502, 37.699310, 43.779419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.174538, 37.896004, 43.856384>,  <33.984600, 38.223827, 43.984661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.174538, 37.896004, 43.856384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042074, -0.385122, 0.921906,
		-0.879064, -0.424268, -0.217355,
		0.474844, -0.819559, -0.320696,
		34.316990, 37.650135, 43.760174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.640465, 37.638752, 44.277153>,  <33.984600, 38.223827, 43.984661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.640465, 37.638752, 44.277153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.995129, 37.483292, 44.176922>,  <34.207928, 37.390015, 44.116783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.995129, 37.483292, 44.176922>,  <33.640465, 37.638752, 44.277153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.995129, 37.483292, 44.176922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137252, -0.296286, 0.945186,
		-0.441589, -0.872449, -0.209362,
		0.886657, -0.388648, -0.250582,
		34.261127, 37.366699, 44.101746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.662487, 37.123642, 44.779797>,  <33.640465, 37.638752, 44.277153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.662487, 37.123642, 44.779797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.032513, 37.103043, 44.629280>,  <34.254528, 37.090683, 44.538971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.032513, 37.103043, 44.629280>,  <33.662487, 37.123642, 44.779797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.032513, 37.103043, 44.629280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316096, -0.444867, 0.837960,
		-0.210556, -0.894115, -0.395253,
		0.925067, -0.051499, -0.376295,
		34.310032, 37.087593, 44.516392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.921844, 36.475849, 44.887196>,  <33.662487, 37.123642, 44.779797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.921844, 36.475849, 44.887196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.267609, 36.665020, 44.818913>,  <34.475067, 36.778522, 44.777943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.267609, 36.665020, 44.818913>,  <33.921844, 36.475849, 44.887196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.267609, 36.665020, 44.818913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293906, -0.199800, 0.934719,
		0.407943, -0.858151, -0.311704,
		0.864408, 0.472924, -0.170709,
		34.526932, 36.806896, 44.767700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.556839, 35.977905, 44.869869>,  <33.921844, 36.475849, 44.887196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.556839, 35.977905, 44.869869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.636105, 36.354153, 44.980118>,  <34.683662, 36.579903, 45.046268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.636105, 36.354153, 44.980118>,  <34.556839, 35.977905, 44.869869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.636105, 36.354153, 44.980118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133924, -0.304542, 0.943037,
		0.970977, -0.149960, -0.186320,
		0.198160, 0.940620, 0.275620,
		34.695553, 36.636337, 45.062805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.165733, 35.935661, 45.247925>,  <34.556839, 35.977905, 44.869869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.165733, 35.935661, 45.247925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.004265, 36.284065, 45.359921>,  <34.907383, 36.493107, 45.427116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.004265, 36.284065, 45.359921>,  <35.165733, 35.935661, 45.247925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.004265, 36.284065, 45.359921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279426, -0.174034, 0.944263,
		0.871190, 0.459405, -0.173131,
		-0.403669, 0.871010, 0.279987,
		34.883163, 36.545368, 45.443916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.735794, 36.303448, 45.635365>,  <35.165733, 35.935661, 45.247925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.735794, 36.303448, 45.635365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.401516, 36.501007, 45.731426>,  <35.200947, 36.619541, 45.789062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.401516, 36.501007, 45.731426>,  <35.735794, 36.303448, 45.635365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.401516, 36.501007, 45.731426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320131, 0.082793, 0.943749,
		0.446233, 0.865569, -0.227302,
		-0.835699, 0.493899, 0.240150,
		35.150806, 36.649178, 45.803471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.020260, 36.658257, 46.176243>,  <35.735794, 36.303448, 45.635365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.020260, 36.658257, 46.176243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.620953, 36.661640, 46.199501>,  <35.381367, 36.663670, 46.213455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.620953, 36.661640, 46.199501>,  <36.020260, 36.658257, 46.176243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.620953, 36.661640, 46.199501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058674, 0.196287, 0.978789,
		-0.003137, 0.980510, -0.196444,
		-0.998272, 0.008456, 0.058146,
		35.321472, 36.664177, 46.216946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.813000, 37.250477, 46.551479>,  <36.020260, 36.658257, 46.176243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.813000, 37.250477, 46.551479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.518665, 36.984100, 46.600578>,  <35.342064, 36.824276, 46.630039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.518665, 36.984100, 46.600578>,  <35.813000, 37.250477, 46.551479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.518665, 36.984100, 46.600578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070774, 0.104649, 0.991988,
		-0.673449, 0.738630, -0.029873,
		-0.735838, -0.665938, 0.122752,
		35.297913, 36.784317, 46.637405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.451481, 37.460392, 47.080757>,  <35.813000, 37.250477, 46.551479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.451481, 37.460392, 47.080757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.378376, 37.067520, 47.063271>,  <35.334511, 36.831795, 47.052780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.378376, 37.067520, 47.063271>,  <35.451481, 37.460392, 47.080757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.378376, 37.067520, 47.063271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159097, -0.073423, 0.984529,
		-0.970198, 0.172983, 0.169682,
		-0.182765, -0.982184, -0.043714,
		35.323547, 36.772865, 47.050156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.869869, 37.320114, 47.556084>,  <35.451481, 37.460392, 47.080757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.869869, 37.320114, 47.556084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.075687, 36.980309, 47.509483>,  <35.199181, 36.776424, 47.481522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.075687, 36.980309, 47.509483>,  <34.869869, 37.320114, 47.556084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.075687, 36.980309, 47.509483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149469, -0.044928, 0.987745,
		-0.844334, -0.525656, 0.103857,
		0.514548, -0.849511, -0.116504,
		35.230053, 36.725456, 47.474533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.620476, 36.839142, 48.077835>,  <34.869869, 37.320114, 47.556084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.620476, 36.839142, 48.077835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.988979, 36.700119, 48.007988>,  <35.210079, 36.616703, 47.966080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.988979, 36.700119, 48.007988>,  <34.620476, 36.839142, 48.077835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.988979, 36.700119, 48.007988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178221, -0.021848, 0.983748,
		-0.345729, -0.937402, 0.041815,
		0.921254, -0.347562, -0.174619,
		35.265354, 36.595852, 47.955601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.737839, 36.355186, 48.581165>,  <34.620476, 36.839142, 48.077835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.737839, 36.355186, 48.581165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.108982, 36.425770, 48.449745>,  <35.331669, 36.468121, 48.370892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.108982, 36.425770, 48.449745>,  <34.737839, 36.355186, 48.581165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.108982, 36.425770, 48.449745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365570, -0.256076, 0.894865,
		0.073772, -0.950414, -0.302109,
		0.927856, 0.176458, -0.328551,
		35.387341, 36.478706, 48.351181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.100163, 35.780125, 48.880283>,  <34.737839, 36.355186, 48.581165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.100163, 35.780125, 48.880283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.383102, 36.038467, 48.765377>,  <35.552868, 36.193474, 48.696434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.383102, 36.038467, 48.765377>,  <35.100163, 35.780125, 48.880283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.383102, 36.038467, 48.765377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584496, -0.305887, 0.751530,
		0.397513, -0.699499, -0.593872,
		0.707352, 0.645859, -0.287261,
		35.595306, 36.232224, 48.679199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.695568, 35.372662, 48.873585>,  <35.100163, 35.780125, 48.880283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.695568, 35.372662, 48.873585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.818623, 35.751503, 48.910130>,  <35.892456, 35.978809, 48.932056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.818623, 35.751503, 48.910130>,  <35.695568, 35.372662, 48.873585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.818623, 35.751503, 48.910130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568399, -0.259926, 0.780616,
		0.763073, -0.188221, -0.618298,
		0.307640, 0.947107, 0.091358,
		35.910915, 36.035637, 48.937538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.368996, 35.330654, 48.903118>,  <35.695568, 35.372662, 48.873585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.368996, 35.330654, 48.903118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.266285, 35.678558, 49.071682>,  <36.204659, 35.887302, 49.172821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.266285, 35.678558, 49.071682>,  <36.368996, 35.330654, 48.903118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.266285, 35.678558, 49.071682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488654, -0.259353, 0.833039,
		0.833837, 0.419826, -0.358417,
		-0.256775, 0.869760, 0.421407,
		36.189251, 35.939487, 49.198105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.984230, 35.679916, 49.135796>,  <36.368996, 35.330654, 48.903118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.984230, 35.679916, 49.135796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.680862, 35.815918, 49.358219>,  <36.498840, 35.897518, 49.491673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.680862, 35.815918, 49.358219>,  <36.984230, 35.679916, 49.135796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.680862, 35.815918, 49.358219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375825, -0.468901, 0.799304,
		0.532501, 0.815188, 0.227842,
		-0.758419, 0.340001, 0.556058,
		36.453339, 35.917919, 49.525036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.202160, 35.687698, 49.818096>,  <36.984230, 35.679916, 49.135796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.202160, 35.687698, 49.818096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.811199, 35.724884, 49.894035>,  <36.576622, 35.747196, 49.939598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.811199, 35.724884, 49.894035>,  <37.202160, 35.687698, 49.818096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.811199, 35.724884, 49.894035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134953, -0.416833, 0.898909,
		0.162703, 0.904216, 0.394867,
		-0.977402, 0.092967, 0.189847,
		36.517979, 35.752773, 49.950989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.166786, 35.922886, 50.527771>,  <37.202160, 35.687698, 49.818096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.166786, 35.922886, 50.527771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.799656, 35.778313, 50.462097>,  <36.579376, 35.691566, 50.422691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.799656, 35.778313, 50.462097>,  <37.166786, 35.922886, 50.527771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.799656, 35.778313, 50.462097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056074, -0.527482, 0.847714,
		-0.393001, 0.768848, 0.504405,
		-0.917827, -0.361436, -0.164189,
		36.524307, 35.669884, 50.412842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.816151, 35.919506, 51.215340>,  <37.166786, 35.922886, 50.527771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.816151, 35.919506, 51.215340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.584290, 35.668026, 51.007977>,  <36.445171, 35.517139, 50.883560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.584290, 35.668026, 51.007977>,  <36.816151, 35.919506, 51.215340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.584290, 35.668026, 51.007977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158666, -0.536928, 0.828573,
		-0.799268, 0.562537, 0.211479,
		-0.579652, -0.628698, -0.518404,
		36.410393, 35.479416, 50.852455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.152718, 35.768719, 51.622494>,  <36.816151, 35.919506, 51.215340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.152718, 35.768719, 51.622494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.202118, 35.449886, 51.386051>,  <36.231758, 35.258587, 51.244186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.202118, 35.449886, 51.386051>,  <36.152718, 35.768719, 51.622494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.202118, 35.449886, 51.386051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073539, -0.601383, 0.795569,
		-0.989615, -0.054788, -0.132890,
		0.123506, -0.797080, -0.591108,
		36.239170, 35.210762, 51.208717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.612431, 35.309494, 51.787563>,  <36.152718, 35.768719, 51.622494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.612431, 35.309494, 51.787563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.936001, 35.132858, 51.632320>,  <36.130142, 35.026875, 51.539173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.936001, 35.132858, 51.632320>,  <35.612431, 35.309494, 51.787563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.936001, 35.132858, 51.632320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111154, -0.763129, 0.636615,
		-0.577301, -0.471838, -0.666403,
		0.808931, -0.441592, -0.388109,
		36.178680, 35.000381, 51.515888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.534744, 34.647289, 51.406597>,  <35.612431, 35.309494, 51.787563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.534744, 34.647289, 51.406597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.875301, 34.693329, 51.611298>,  <36.079636, 34.720951, 51.734119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.875301, 34.693329, 51.611298>,  <35.534744, 34.647289, 51.406597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.875301, 34.693329, 51.611298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340930, -0.620017, 0.706644,
		0.398625, -0.776100, -0.488637,
		0.851390, 0.115095, 0.511750,
		36.130718, 34.727856, 51.764824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.626556, 33.995781, 51.745750>,  <35.534744, 34.647289, 51.406597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.626556, 33.995781, 51.745750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.869789, 34.241856, 51.946461>,  <36.015728, 34.389500, 52.066887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.869789, 34.241856, 51.946461>,  <35.626556, 33.995781, 51.745750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.869789, 34.241856, 51.946461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178305, -0.510072, 0.841447,
		0.773592, -0.601137, -0.200474,
		0.608081, 0.615192, 0.501773,
		36.052212, 34.426414, 52.096992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.144836, 33.567219, 52.175041>,  <35.626556, 33.995781, 51.745750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.144836, 33.567219, 52.175041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.035839, 33.922329, 52.323418>,  <35.970440, 34.135395, 52.412445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.035839, 33.922329, 52.323418>,  <36.144836, 33.567219, 52.175041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.035839, 33.922329, 52.323418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375472, -0.453084, 0.808539,
		0.885870, 0.081047, 0.456799,
		-0.272498, 0.887776, 0.370942,
		35.954090, 34.188663, 52.434700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.490692, 33.734489, 52.822033>,  <36.144836, 33.567219, 52.175041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.490692, 33.734489, 52.822033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.110550, 33.857014, 52.800140>,  <35.882465, 33.930527, 52.787006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.110550, 33.857014, 52.800140>,  <36.490692, 33.734489, 52.822033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.110550, 33.857014, 52.800140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195072, -0.449474, 0.871734,
		0.242422, 0.839134, 0.486914,
		-0.950357, 0.306311, -0.054729,
		35.825443, 33.948906, 52.783722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.282932, 33.752869, 53.465698>,  <36.490692, 33.734489, 52.822033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.282932, 33.752869, 53.465698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.917046, 33.734802, 53.305073>,  <35.697514, 33.723961, 53.208698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.917046, 33.734802, 53.305073>,  <36.282932, 33.752869, 53.465698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.917046, 33.734802, 53.305073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294337, -0.606397, 0.738680,
		-0.276869, 0.793878, 0.541388,
		-0.914718, -0.045167, -0.401560,
		35.642632, 33.721252, 53.184605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.793777, 33.112766, 53.349030>,  <36.282932, 33.752869, 53.465698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.793777, 33.112766, 53.349030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.888996, 32.756786, 53.193424>,  <36.946125, 32.543198, 53.100063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.888996, 32.756786, 53.193424>,  <36.793777, 33.112766, 53.349030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.888996, 32.756786, 53.193424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570323, 0.196121, -0.797664,
		0.786173, 0.411739, -0.460873,
		0.238043, -0.889948, -0.389009,
		36.960407, 32.489803, 53.076721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.019104, 33.166897, 52.571819>,  <36.793777, 33.112766, 53.349030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.019104, 33.166897, 52.571819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.872162, 32.809093, 52.673729>,  <36.783997, 32.594410, 52.734875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.872162, 32.809093, 52.673729>,  <37.019104, 33.166897, 52.571819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.872162, 32.809093, 52.673729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664734, 0.060919, -0.744592,
		0.650523, -0.442883, -0.616989,
		-0.367353, -0.894508, 0.254770,
		36.761955, 32.540741, 52.750160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.104774, 32.593498, 52.031109>,  <37.019104, 33.166897, 52.571819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.104774, 32.593498, 52.031109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.791550, 32.537182, 52.273430>,  <36.603615, 32.503391, 52.418823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.791550, 32.537182, 52.273430>,  <37.104774, 32.593498, 52.031109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.791550, 32.537182, 52.273430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608241, -0.030017, -0.793184,
		0.129861, -0.989584, -0.062132,
		-0.783057, -0.140795, 0.605804,
		36.556633, 32.494942, 52.455170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.509197, 32.228394, 51.756260>,  <37.104774, 32.593498, 52.031109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.509197, 32.228394, 51.756260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.281048, 32.447632, 52.000969>,  <36.144157, 32.579174, 52.147793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.281048, 32.447632, 52.000969>,  <36.509197, 32.228394, 51.756260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.281048, 32.447632, 52.000969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703626, 0.058230, -0.708180,
		-0.423773, -0.834387, 0.352441,
		-0.570373, 0.548094, 0.611773,
		36.109936, 32.612061, 52.184502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.918190, 31.878071, 51.447639>,  <36.509197, 32.228394, 51.756260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.918190, 31.878071, 51.447639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.812893, 32.217903, 51.630470>,  <35.749714, 32.421803, 51.740170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.812893, 32.217903, 51.630470>,  <35.918190, 31.878071, 51.447639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.812893, 32.217903, 51.630470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528412, 0.269423, -0.805103,
		-0.807146, -0.453462, 0.378005,
		-0.263240, 0.849579, 0.457078,
		35.733921, 32.472778, 51.767593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.106281, 31.981634, 51.499054>,  <35.918190, 31.878071, 51.447639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.106281, 31.981634, 51.499054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.300453, 32.328850, 51.457344>,  <35.416954, 32.537178, 51.432320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.300453, 32.328850, 51.457344>,  <35.106281, 31.981634, 51.499054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.300453, 32.328850, 51.457344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544140, 0.206617, -0.813155,
		-0.684304, 0.451466, 0.572631,
		0.485427, 0.868037, -0.104272,
		35.446083, 32.589260, 51.426064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.572697, 32.525284, 51.523857>,  <35.106281, 31.981634, 51.499054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.572697, 32.525284, 51.523857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.906296, 32.649105, 51.341152>,  <35.106453, 32.723400, 51.231529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.906296, 32.649105, 51.341152>,  <34.572697, 32.525284, 51.523857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.906296, 32.649105, 51.341152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522147, 0.175166, -0.834673,
		-0.178368, 0.934608, 0.307721,
		0.833995, 0.309555, -0.456759,
		35.156494, 32.741970, 51.204124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.406460, 33.201748, 51.215755>,  <34.572697, 32.525284, 51.523857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.406460, 33.201748, 51.215755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.719936, 33.046211, 51.021999>,  <34.908020, 32.952888, 50.905746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.719936, 33.046211, 51.021999>,  <34.406460, 33.201748, 51.215755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.719936, 33.046211, 51.021999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493894, 0.082842, -0.865567,
		0.376700, 0.917571, -0.127126,
		0.783688, -0.388845, -0.484389,
		34.955044, 32.929558, 50.876682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.316196, 33.530396, 50.656654>,  <34.406460, 33.201748, 51.215755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.316196, 33.530396, 50.656654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.580647, 33.248142, 50.554676>,  <34.739315, 33.078793, 50.493488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.580647, 33.248142, 50.554676>,  <34.316196, 33.530396, 50.656654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.580647, 33.248142, 50.554676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422027, -0.068799, -0.903969,
		0.620326, 0.705234, -0.343279,
		0.661126, -0.705629, -0.254950,
		34.778984, 33.036453, 50.478191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.638664, 33.775230, 50.120975>,  <34.316196, 33.530396, 50.656654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.638664, 33.775230, 50.120975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.733982, 33.388348, 50.085827>,  <34.791172, 33.156216, 50.064739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.733982, 33.388348, 50.085827>,  <34.638664, 33.775230, 50.120975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.733982, 33.388348, 50.085827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414882, -0.019577, -0.909665,
		0.878117, 0.253223, -0.405943,
		0.238295, -0.967210, -0.087867,
		34.805470, 33.098186, 50.059467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.155506, 33.595547, 49.492004>,  <34.638664, 33.775230, 50.120975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.155506, 33.595547, 49.492004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.950157, 33.262314, 49.574390>,  <34.826950, 33.062374, 49.623821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.950157, 33.262314, 49.574390>,  <35.155506, 33.595547, 49.492004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.950157, 33.262314, 49.574390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289785, -0.057621, -0.955356,
		0.807761, -0.550135, -0.211835,
		-0.513368, -0.833086, 0.205965,
		34.796146, 33.012386, 49.636181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.280949, 33.266533, 48.923786>,  <35.155506, 33.595547, 49.492004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.280949, 33.266533, 48.923786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.965542, 33.060593, 49.058350>,  <34.776299, 32.937031, 49.139088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.965542, 33.060593, 49.058350>,  <35.280949, 33.266533, 48.923786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.965542, 33.060593, 49.058350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189770, -0.316631, -0.929372,
		0.585003, -0.796666, 0.151967,
		-0.788517, -0.514847, 0.336413,
		34.728989, 32.906139, 49.159275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.335587, 32.594555, 48.667198>,  <35.280949, 33.266533, 48.923786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.335587, 32.594555, 48.667198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.942760, 32.630733, 48.733372>,  <34.707066, 32.652439, 48.773075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.942760, 32.630733, 48.733372>,  <35.335587, 32.594555, 48.667198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.942760, 32.630733, 48.733372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175642, -0.119830, -0.977134,
		-0.068549, -0.988666, 0.133566,
		-0.982064, 0.090442, 0.165437,
		34.648140, 32.657867, 48.783001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.915062, 32.078594, 48.278133>,  <35.335587, 32.594555, 48.667198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.915062, 32.078594, 48.278133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.626316, 32.336674, 48.378242>,  <34.453068, 32.491520, 48.438309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.626316, 32.336674, 48.378242>,  <34.915062, 32.078594, 48.278133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.626316, 32.336674, 48.378242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318548, 0.011271, -0.947840,
		-0.614365, -0.763932, 0.197390,
		-0.721860, 0.645198, 0.250274,
		34.409760, 32.530231, 48.453323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.327881, 31.850836, 47.910030>,  <34.915062, 32.078594, 48.278133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.327881, 31.850836, 47.910030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.248543, 32.234482, 47.990788>,  <34.200939, 32.464668, 48.039242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.248543, 32.234482, 47.990788>,  <34.327881, 31.850836, 47.910030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.248543, 32.234482, 47.990788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344326, 0.124667, -0.930537,
		-0.917659, -0.254088, 0.305519,
		-0.198350, 0.959113, 0.201890,
		34.189037, 32.522217, 48.051353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.652874, 31.941683, 47.601822>,  <34.327881, 31.850836, 47.910030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.652874, 31.941683, 47.601822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.813427, 32.304459, 47.652969>,  <33.909760, 32.522125, 47.683659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.813427, 32.304459, 47.652969>,  <33.652874, 31.941683, 47.601822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.813427, 32.304459, 47.652969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414570, 0.304391, -0.857600,
		-0.816713, 0.291218, 0.498168,
		0.401386, 0.906939, 0.127870,
		33.933842, 32.576542, 47.691330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.117661, 32.368198, 47.554131>,  <33.652874, 31.941683, 47.601822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.117661, 32.368198, 47.554131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.424095, 32.612568, 47.474243>,  <33.607956, 32.759190, 47.426311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.424095, 32.612568, 47.474243>,  <33.117661, 32.368198, 47.554131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.424095, 32.612568, 47.474243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509337, 0.387506, -0.768385,
		-0.392029, 0.690374, 0.608027,
		0.766087, 0.610920, -0.199719,
		33.653923, 32.795845, 47.414326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.837402, 32.992817, 47.356350>,  <33.117661, 32.368198, 47.554131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.837402, 32.992817, 47.356350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.209206, 33.052540, 47.221458>,  <33.432289, 33.088375, 47.140522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.209206, 33.052540, 47.221458>,  <32.837402, 32.992817, 47.356350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.209206, 33.052540, 47.221458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367680, 0.303829, -0.878920,
		-0.028772, 0.940954, 0.337309,
		0.929507, 0.149310, -0.337229,
		33.488056, 33.097332, 47.120289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.906612, 33.608315, 47.182209>,  <32.837402, 32.992817, 47.356350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.906612, 33.608315, 47.182209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.188698, 33.424297, 46.966415>,  <33.357948, 33.313889, 46.836941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.188698, 33.424297, 46.966415>,  <32.906612, 33.608315, 47.182209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.188698, 33.424297, 46.966415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376830, 0.401336, -0.834822,
		0.600566, 0.792019, 0.109670,
		0.705209, -0.460039, -0.539485,
		33.400261, 33.286285, 46.804569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.916470, 34.085747, 46.633789>,  <32.906612, 33.608315, 47.182209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.916470, 34.085747, 46.633789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.116737, 33.767925, 46.496380>,  <33.236897, 33.577232, 46.413933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.116737, 33.767925, 46.496380>,  <32.916470, 34.085747, 46.633789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.116737, 33.767925, 46.496380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246790, 0.249356, -0.936438,
		0.829714, 0.553624, -0.071244,
		0.500669, -0.794558, -0.343523,
		33.266937, 33.529556, 46.393322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.340889, 34.345612, 45.973511>,  <32.916470, 34.085747, 46.633789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.340889, 34.345612, 45.973511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.261375, 33.955147, 45.938679>,  <33.213665, 33.720867, 45.917778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.261375, 33.955147, 45.938679>,  <33.340889, 34.345612, 45.973511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.261375, 33.955147, 45.938679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473608, 0.173476, -0.863483,
		0.858009, -0.130405, -0.496804,
		-0.198786, -0.976166, -0.087083,
		33.201740, 33.662296, 45.912552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.546803, 34.261971, 45.264328>,  <33.340889, 34.345612, 45.973511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.546803, 34.261971, 45.264328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.338158, 33.935173, 45.362667>,  <33.212971, 33.739094, 45.421673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.338158, 33.935173, 45.362667>,  <33.546803, 34.261971, 45.264328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.338158, 33.935173, 45.362667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331543, -0.071415, -0.940733,
		0.786133, -0.572204, -0.233619,
		-0.521607, -0.816997, 0.245852,
		33.181675, 33.690075, 45.436424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.648556, 33.831417, 44.747116>,  <33.546803, 34.261971, 45.264328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.648556, 33.831417, 44.747116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.301445, 33.714024, 44.907528>,  <33.093178, 33.643589, 45.003777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.301445, 33.714024, 44.907528>,  <33.648556, 33.831417, 44.747116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.301445, 33.714024, 44.907528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404711, -0.050939, -0.913025,
		0.288384, -0.954607, -0.074572,
		-0.867781, -0.293482, 0.401030,
		33.041111, 33.625980, 45.027836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.428913, 33.402180, 44.147640>,  <33.648556, 33.831417, 44.747116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.428913, 33.402180, 44.147640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.123821, 33.443287, 44.403042>,  <32.940765, 33.467953, 44.556282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.123821, 33.443287, 44.403042>,  <33.428913, 33.402180, 44.147640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.123821, 33.443287, 44.403042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642369, -0.006053, -0.766371,
		-0.074896, -0.994687, 0.070634,
		-0.762727, 0.102771, 0.638503,
		32.895004, 33.474117, 44.594593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.001293, 32.770088, 44.155380>,  <33.428913, 33.402180, 44.147640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.001293, 32.770088, 44.155380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.798409, 33.106163, 44.232136>,  <32.676678, 33.307808, 44.278187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.798409, 33.106163, 44.232136>,  <33.001293, 32.770088, 44.155380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.798409, 33.106163, 44.232136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512055, -0.114710, -0.851259,
		-0.693206, -0.530025, 0.488405,
		-0.507213, 0.840188, 0.191884,
		32.646244, 33.358219, 44.289700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.204021, 32.729973, 43.801918>,  <33.001293, 32.770088, 44.155380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.204021, 32.729973, 43.801918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.251186, 33.116894, 43.891743>,  <32.279484, 33.349045, 43.945637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.251186, 33.116894, 43.891743>,  <32.204021, 32.729973, 43.801918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.251186, 33.116894, 43.891743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456178, 0.253628, -0.852980,
		-0.882042, -0.001865, 0.471167,
		0.117910, 0.967300, 0.224561,
		32.286560, 33.407085, 43.959110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.534496, 33.034340, 43.616016>,  <32.204021, 32.729973, 43.801918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.534496, 33.034340, 43.616016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.815306, 33.318600, 43.597481>,  <31.983791, 33.489155, 43.586361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.815306, 33.318600, 43.597481>,  <31.534496, 33.034340, 43.616016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.815306, 33.318600, 43.597481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413128, 0.353391, -0.839309,
		-0.580078, 0.608355, 0.541676,
		0.702022, 0.710647, -0.046334,
		32.025913, 33.531796, 43.583580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.130638, 33.681873, 43.460949>,  <31.534496, 33.034340, 43.616016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.130638, 33.681873, 43.460949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.495550, 33.803642, 43.351353>,  <31.714497, 33.876701, 43.285595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.495550, 33.803642, 43.351353>,  <31.130638, 33.681873, 43.460949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.495550, 33.803642, 43.351353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403468, 0.552980, -0.728990,
		-0.070407, 0.775591, 0.627297,
		0.912281, 0.304421, -0.273992,
		31.769234, 33.894970, 43.269154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.058924, 34.347294, 43.364796>,  <31.130638, 33.681873, 43.460949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.058924, 34.347294, 43.364796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.390020, 34.255787, 43.159855>,  <31.588678, 34.200882, 43.036888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.390020, 34.255787, 43.159855>,  <31.058924, 34.347294, 43.364796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.390020, 34.255787, 43.159855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338008, 0.525550, -0.780736,
		0.447877, 0.819428, 0.357693,
		0.827742, -0.228771, -0.512355,
		31.638344, 34.187157, 43.006149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.380239, 34.917564, 43.005619>,  <31.058924, 34.347294, 43.364796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.380239, 34.917564, 43.005619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.565468, 34.619522, 42.813622>,  <31.676605, 34.440697, 42.698425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.565468, 34.619522, 42.813622>,  <31.380239, 34.917564, 43.005619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.565468, 34.619522, 42.813622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175012, 0.454024, -0.873632,
		0.868872, 0.488556, 0.079843,
		0.463069, -0.745101, -0.479991,
		31.704388, 34.395992, 42.669624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.800137, 35.254768, 42.576427>,  <31.380239, 34.917564, 43.005619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.800137, 35.254768, 42.576427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.767763, 34.885944, 42.425034>,  <31.748339, 34.664650, 42.334198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.767763, 34.885944, 42.425034>,  <31.800137, 35.254768, 42.576427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.767763, 34.885944, 42.425034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077711, 0.384410, -0.919886,
		0.993685, -0.045038, -0.102767,
		-0.080934, -0.922063, -0.378482,
		31.743483, 34.609325, 42.311489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.306103, 35.161198, 42.033520>,  <31.800137, 35.254768, 42.576427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.306103, 35.161198, 42.033520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.033028, 34.884876, 41.938251>,  <31.869183, 34.719082, 41.881088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.033028, 34.884876, 41.938251>,  <32.306103, 35.161198, 42.033520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.033028, 34.884876, 41.938251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218584, 0.504088, -0.835534,
		0.697253, -0.518346, -0.495133,
		-0.682686, -0.690806, -0.238174,
		31.828222, 34.677635, 41.866798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.354309, 35.143871, 41.311653>,  <32.306103, 35.161198, 42.033520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.354309, 35.143871, 41.311653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.004852, 34.969315, 41.397732>,  <31.795177, 34.864578, 41.449379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.004852, 34.969315, 41.397732>,  <32.354309, 35.143871, 41.311653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.004852, 34.969315, 41.397732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371909, 0.313739, -0.873643,
		0.313739, -0.843284, -0.436395,
		0.873643, 0.436395, -0.215193,
		31.742760, 34.838398, 41.462288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.173374, 34.800854, 40.661518>,  <32.354309, 35.143871, 41.311653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.173374, 34.800854, 40.661518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.850887, 34.848911, 40.893238>,  <31.657396, 34.877747, 41.032269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.850887, 34.848911, 40.893238>,  <32.173374, 34.800854, 40.661518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.850887, 34.848911, 40.893238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545305, 0.228897, -0.806380,
		-0.229484, -0.966008, -0.119023,
		-0.806213, 0.120147, 0.579297,
		31.609024, 34.884956, 41.067028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.639215, 34.560261, 40.259102>,  <32.173374, 34.800854, 40.661518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.639215, 34.560261, 40.259102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.417606, 34.762390, 40.523743>,  <31.284641, 34.883667, 40.682526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.417606, 34.762390, 40.523743>,  <31.639215, 34.560261, 40.259102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.417606, 34.762390, 40.523743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578379, 0.337965, -0.742467,
		-0.598780, -0.793997, 0.105027,
		-0.554022, 0.505320, 0.661598,
		31.251400, 34.913986, 40.722221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.956301, 34.339951, 40.258282>,  <31.639215, 34.560261, 40.259102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.956301, 34.339951, 40.258282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.946432, 34.712074, 40.404663>,  <30.940512, 34.935349, 40.492493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.946432, 34.712074, 40.404663>,  <30.956301, 34.339951, 40.258282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.946432, 34.712074, 40.404663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648884, 0.263574, -0.713778,
		-0.760488, -0.255073, 0.597157,
		-0.024670, 0.930305, 0.365957,
		30.939032, 34.991165, 40.514450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.332447, 34.474934, 40.202549>,  <30.956301, 34.339951, 40.258282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.332447, 34.474934, 40.202549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.507126, 34.833157, 40.236671>,  <30.611933, 35.048088, 40.257145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.507126, 34.833157, 40.236671>,  <30.332447, 34.474934, 40.202549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.507126, 34.833157, 40.236671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623271, 0.369574, -0.689165,
		-0.648712, 0.247787, 0.719565,
		0.436698, 0.895554, 0.085309,
		30.638136, 35.101822, 40.262264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.856348, 34.830868, 39.999924>,  <30.332447, 34.474934, 40.202549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.856348, 34.830868, 39.999924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.151108, 35.098835, 39.963737>,  <30.327965, 35.259617, 39.942024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.151108, 35.098835, 39.963737>,  <29.856348, 34.830868, 39.999924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.151108, 35.098835, 39.963737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465773, 0.406175, -0.786179,
		-0.489931, 0.621473, 0.611342,
		0.736901, 0.669920, -0.090468,
		30.372177, 35.299812, 39.936596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.581703, 35.511772, 39.810299>,  <29.856348, 34.830868, 39.999924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.581703, 35.511772, 39.810299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.964825, 35.566525, 39.709206>,  <30.194698, 35.599377, 39.648548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.964825, 35.566525, 39.709206>,  <29.581703, 35.511772, 39.810299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.964825, 35.566525, 39.709206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287325, 0.433215, -0.854265,
		-0.007443, 0.890836, 0.454264,
		0.957804, 0.136880, -0.252735,
		30.252167, 35.607590, 39.633385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.758499, 36.245548, 39.758015>,  <29.581703, 35.511772, 39.810299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.758499, 36.245548, 39.758015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.020376, 36.043991, 39.532639>,  <30.177504, 35.923058, 39.397411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.020376, 36.043991, 39.532639>,  <29.758499, 36.245548, 39.758015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.020376, 36.043991, 39.532639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360948, 0.446529, -0.818736,
		0.664148, 0.739396, 0.110461,
		0.654694, -0.503891, -0.563444,
		30.216784, 35.892822, 39.363605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.946140, 36.738712, 39.252880>,  <29.758499, 36.245548, 39.758015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.946140, 36.738712, 39.252880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.069998, 36.390030, 39.100960>,  <30.144312, 36.180820, 39.009808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.069998, 36.390030, 39.100960>,  <29.946140, 36.738712, 39.252880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.069998, 36.390030, 39.100960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241645, 0.314175, -0.918097,
		0.919635, 0.376060, -0.113361,
		0.309645, -0.871707, -0.379799,
		30.162891, 36.128517, 38.987019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.487408, 36.878532, 38.692627>,  <29.946140, 36.738712, 39.252880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.487408, 36.878532, 38.692627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.304688, 36.533085, 38.607304>,  <30.195055, 36.325817, 38.556110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.304688, 36.533085, 38.607304>,  <30.487408, 36.878532, 38.692627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.304688, 36.533085, 38.607304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219198, 0.341675, -0.913899,
		0.862140, -0.370712, -0.345380,
		-0.456801, -0.863615, -0.213312,
		30.167646, 36.274002, 38.543308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.838554, 36.650108, 38.090195>,  <30.487408, 36.878532, 38.692627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.838554, 36.650108, 38.090195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.469879, 36.500885, 38.132755>,  <30.248674, 36.411350, 38.158291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.469879, 36.500885, 38.132755>,  <30.838554, 36.650108, 38.090195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.469879, 36.500885, 38.132755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281216, 0.453585, -0.845682,
		0.267224, -0.809377, -0.522973,
		-0.921688, -0.373055, 0.106401,
		30.193373, 36.388969, 38.164677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.498549, 36.649406, 37.689339>,  <30.838554, 36.650108, 38.090195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.498549, 36.649406, 37.689339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.834328, 36.497990, 37.533371>,  <32.035797, 36.407139, 37.439793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.834328, 36.497990, 37.533371>,  <31.498549, 36.649406, 37.689339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.834328, 36.497990, 37.533371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089963, -0.804394, 0.587245,
		-0.535941, -0.457884, -0.709302,
		0.839448, -0.378540, -0.389915,
		32.086163, 36.384426, 37.416397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.667685, 36.086674, 38.090015>,  <31.498549, 36.649406, 37.689339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.667685, 36.086674, 38.090015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.949471, 35.985912, 37.824604>,  <32.118542, 35.925453, 37.665356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.949471, 35.985912, 37.824604>,  <31.667685, 36.086674, 38.090015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.949471, 35.985912, 37.824604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220068, -0.811288, 0.541647,
		-0.674757, -0.527594, -0.516089,
		0.704466, -0.251906, -0.663529,
		32.160809, 35.910339, 37.625546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.493637, 35.442665, 37.835106>,  <31.667685, 36.086674, 38.090015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.493637, 35.442665, 37.835106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.882441, 35.497780, 37.758987>,  <32.115723, 35.530849, 37.713318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.882441, 35.497780, 37.758987>,  <31.493637, 35.442665, 37.835106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.882441, 35.497780, 37.758987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229941, -0.724080, 0.650258,
		-0.048193, -0.675814, -0.735495,
		0.972011, 0.137782, -0.190293,
		32.174046, 35.539116, 37.701900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.743063, 34.769424, 37.634224>,  <31.493637, 35.442665, 37.835106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.743063, 34.769424, 37.634224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.062355, 34.965160, 37.774727>,  <32.253929, 35.082600, 37.859028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.062355, 34.965160, 37.774727>,  <31.743063, 34.769424, 37.634224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.062355, 34.965160, 37.774727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156593, -0.731667, 0.663432,
		0.581641, -0.474568, -0.660665,
		0.798230, 0.489335, 0.351254,
		32.301823, 35.111961, 37.880104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.245472, 34.284267, 37.634102>,  <31.743063, 34.769424, 37.634224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.245472, 34.284267, 37.634102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.357533, 34.563175, 37.898018>,  <32.424770, 34.730518, 38.056370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.357533, 34.563175, 37.898018>,  <32.245472, 34.284267, 37.634102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.357533, 34.563175, 37.898018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386161, -0.711111, 0.587537,
		0.878860, 0.090187, -0.468479,
		0.280152, 0.697271, 0.659794,
		32.441578, 34.772358, 38.095955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.805466, 33.993580, 37.869041>,  <32.245472, 34.284267, 37.634102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.805466, 33.993580, 37.869041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.736679, 34.291237, 38.127243>,  <32.695408, 34.469830, 38.282166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.736679, 34.291237, 38.127243>,  <32.805466, 33.993580, 37.869041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.736679, 34.291237, 38.127243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495838, -0.500826, 0.709449,
		0.851217, 0.442072, -0.282846,
		-0.171971, 0.744141, 0.645508,
		32.685089, 34.514481, 38.320896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.404915, 34.013134, 38.232487>,  <32.805466, 33.993580, 37.869041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.404915, 34.013134, 38.232487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.164547, 34.202496, 38.490105>,  <33.020329, 34.316113, 38.644676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.164547, 34.202496, 38.490105>,  <33.404915, 34.013134, 38.232487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.164547, 34.202496, 38.490105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487546, -0.421415, 0.764662,
		0.633402, 0.773498, 0.022429,
		-0.600916, 0.473403, 0.644041,
		32.984272, 34.344517, 38.683315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.838840, 34.383366, 38.691795>,  <33.404915, 34.013134, 38.232487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.838840, 34.383366, 38.691795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.486275, 34.305866, 38.864105>,  <33.274734, 34.259369, 38.967491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.486275, 34.305866, 38.864105>,  <33.838840, 34.383366, 38.691795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.486275, 34.305866, 38.864105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471502, -0.415205, 0.778004,
		0.028127, 0.888857, 0.457320,
		-0.881416, -0.193744, 0.430776,
		33.221851, 34.247742, 38.993340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.907513, 34.688541, 39.313457>,  <33.838840, 34.383366, 38.691795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.907513, 34.688541, 39.313457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.602978, 34.431622, 39.348846>,  <33.420258, 34.277470, 39.370079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.602978, 34.431622, 39.348846>,  <33.907513, 34.688541, 39.313457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.602978, 34.431622, 39.348846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429596, -0.397532, 0.810812,
		-0.485610, 0.655306, 0.578582,
		-0.761334, -0.642295, 0.088471,
		33.374577, 34.238934, 39.375389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.804714, 34.715885, 40.017570>,  <33.907513, 34.688541, 39.313457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.804714, 34.715885, 40.017570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.636494, 34.384174, 39.870361>,  <33.535561, 34.185150, 39.782036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.636494, 34.384174, 39.870361>,  <33.804714, 34.715885, 40.017570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.636494, 34.384174, 39.870361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385929, -0.530623, 0.754651,
		-0.821096, 0.175335, 0.543193,
		-0.420548, -0.829275, -0.368026,
		33.510330, 34.135391, 39.759953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.634632, 34.315788, 40.619888>,  <33.804714, 34.715885, 40.017570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.634632, 34.315788, 40.619888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.642227, 34.048164, 40.322701>,  <33.646782, 33.887589, 40.144390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.642227, 34.048164, 40.322701>,  <33.634632, 34.315788, 40.619888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.642227, 34.048164, 40.322701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258974, -0.714450, 0.649996,
		-0.965698, -0.204748, 0.159706,
		0.018983, -0.669059, -0.742966,
		33.647923, 33.847446, 40.099812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.236351, 33.826065, 41.067707>,  <33.634632, 34.315788, 40.619888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.236351, 33.826065, 41.067707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.443409, 33.675632, 40.760303>,  <33.567642, 33.585373, 40.575859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.443409, 33.675632, 40.760303>,  <33.236351, 33.826065, 41.067707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.443409, 33.675632, 40.760303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555631, -0.535281, 0.636198,
		-0.650630, -0.756333, -0.068125,
		0.517643, -0.376078, -0.768512,
		33.598701, 33.562809, 40.529751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.213280, 33.130295, 41.183079>,  <33.236351, 33.826065, 41.067707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.213280, 33.130295, 41.183079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.524166, 33.172867, 40.935013>,  <33.710697, 33.198410, 40.786175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.524166, 33.172867, 40.935013>,  <33.213280, 33.130295, 41.183079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.524166, 33.172867, 40.935013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578141, -0.509803, 0.637066,
		-0.248358, -0.853682, -0.457761,
		0.777220, 0.106430, -0.620163,
		33.757332, 33.204796, 40.748962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.610317, 32.471497, 41.103439>,  <33.213280, 33.130295, 41.183079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.610317, 32.471497, 41.103439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.863323, 32.768360, 41.014786>,  <34.015129, 32.946480, 40.961594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.863323, 32.768360, 41.014786>,  <33.610317, 32.471497, 41.103439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.863323, 32.768360, 41.014786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604593, -0.294225, 0.740202,
		0.484136, -0.602191, -0.634806,
		0.632519, 0.742158, -0.221635,
		34.053078, 32.991009, 40.948296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.347454, 32.221642, 41.019009>,  <33.610317, 32.471497, 41.103439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.347454, 32.221642, 41.019009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.384449, 32.611485, 41.100586>,  <34.406647, 32.845390, 41.149532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.384449, 32.611485, 41.100586>,  <34.347454, 32.221642, 41.019009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.384449, 32.611485, 41.100586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809458, -0.192871, 0.554598,
		0.579848, 0.113793, -0.806738,
		0.092487, 0.974603, 0.203947,
		34.412193, 32.903866, 41.161770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.031319, 32.334095, 41.093552>,  <34.347454, 32.221642, 41.019009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.031319, 32.334095, 41.093552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.952160, 32.694328, 41.248363>,  <34.904663, 32.910469, 41.341251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.952160, 32.694328, 41.248363>,  <35.031319, 32.334095, 41.093552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.952160, 32.694328, 41.248363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692982, -0.150706, 0.705028,
		0.693261, 0.407728, -0.594261,
		-0.197901, 0.900581, 0.387026,
		34.892788, 32.964504, 41.364471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.604431, 32.554729, 41.266624>,  <35.031319, 32.334095, 41.093552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.604431, 32.554729, 41.266624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.349251, 32.777576, 41.479279>,  <35.196140, 32.911285, 41.606869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.349251, 32.777576, 41.479279>,  <35.604431, 32.554729, 41.266624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.349251, 32.777576, 41.479279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443171, -0.298975, 0.845112,
		0.629773, 0.774746, -0.056167,
		-0.637954, 0.557120, 0.531631,
		35.157864, 32.944714, 41.638767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.024982, 32.968273, 41.812744>,  <35.604431, 32.554729, 41.266624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.024982, 32.968273, 41.812744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.652630, 32.950756, 41.957817>,  <35.429218, 32.940247, 42.044861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.652630, 32.950756, 41.957817>,  <36.024982, 32.968273, 41.812744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.652630, 32.950756, 41.957817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363839, -0.200305, 0.909670,
		0.032813, 0.978754, 0.202393,
		-0.930884, -0.043790, 0.362682,
		35.373363, 32.937618, 42.066620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.050758, 33.288872, 42.446060>,  <36.024982, 32.968273, 41.812744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.050758, 33.288872, 42.446060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.690441, 33.118073, 42.477669>,  <35.474251, 33.015594, 42.496635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.690441, 33.118073, 42.477669>,  <36.050758, 33.288872, 42.446060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.690441, 33.118073, 42.477669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219176, -0.289966, 0.931602,
		-0.374878, 0.856501, 0.354787,
		-0.900794, -0.426997, 0.079022,
		35.420204, 32.989975, 42.501377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.864143, 33.466095, 43.097088>,  <36.050758, 33.288872, 42.446060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.864143, 33.466095, 43.097088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.658550, 33.135426, 43.005501>,  <35.535194, 32.937023, 42.950546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.658550, 33.135426, 43.005501>,  <35.864143, 33.466095, 43.097088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.658550, 33.135426, 43.005501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137270, -0.342754, 0.929342,
		-0.846748, 0.446232, 0.289647,
		-0.513979, -0.826678, -0.228972,
		35.504356, 32.887421, 42.936810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.282135, 33.278610, 43.644039>,  <35.864143, 33.466095, 43.097088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.282135, 33.278610, 43.644039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.352848, 32.919231, 43.483273>,  <35.395275, 32.703602, 43.386814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.352848, 32.919231, 43.483273>,  <35.282135, 33.278610, 43.644039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.352848, 32.919231, 43.483273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207487, -0.365152, 0.907531,
		-0.962132, -0.243825, 0.121866,
		0.176779, -0.898451, -0.401914,
		35.405880, 32.649696, 43.362698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.894703, 32.780647, 44.074505>,  <35.282135, 33.278610, 43.644039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.894703, 32.780647, 44.074505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.193199, 32.586102, 43.892704>,  <35.372299, 32.469376, 43.783623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.193199, 32.586102, 43.892704>,  <34.894703, 32.780647, 44.074505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.193199, 32.586102, 43.892704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262384, -0.412578, 0.872315,
		-0.611779, -0.770214, -0.180270,
		0.746245, -0.486364, -0.454498,
		35.417072, 32.440193, 43.756355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.869991, 32.041481, 44.276581>,  <34.894703, 32.780647, 44.074505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.869991, 32.041481, 44.276581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.231007, 32.191708, 44.192326>,  <35.447617, 32.281845, 44.141773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.231007, 32.191708, 44.192326>,  <34.869991, 32.041481, 44.276581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.231007, 32.191708, 44.192326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333116, -0.299013, 0.894218,
		0.272856, -0.877235, -0.394979,
		0.902543, 0.375566, -0.210634,
		35.501770, 32.304379, 44.129135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.280437, 31.597332, 44.606064>,  <34.869991, 32.041481, 44.276581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.280437, 31.597332, 44.606064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.517830, 31.911177, 44.534321>,  <35.660263, 32.099483, 44.491276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.517830, 31.911177, 44.534321>,  <35.280437, 31.597332, 44.606064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.517830, 31.911177, 44.534321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123054, 0.131774, 0.983612,
		0.795389, -0.605822, -0.018345,
		0.593477, 0.784611, -0.179360,
		35.695873, 32.146561, 44.480515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.765846, 31.527018, 45.240837>,  <35.280437, 31.597332, 44.606064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.765846, 31.527018, 45.240837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.799072, 31.898989, 45.097546>,  <35.819008, 32.122173, 45.011570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.799072, 31.898989, 45.097546>,  <35.765846, 31.527018, 45.240837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.799072, 31.898989, 45.097546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305673, 0.318370, 0.897332,
		0.948506, -0.184040, -0.257808,
		0.083067, 0.929930, -0.358232,
		35.823994, 32.177967, 44.990074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.500908, 31.753668, 45.390137>,  <35.765846, 31.527018, 45.240837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.500908, 31.753668, 45.390137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.281582, 32.086357, 45.355293>,  <36.149986, 32.285973, 45.334385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.281582, 32.086357, 45.355293>,  <36.500908, 31.753668, 45.390137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.281582, 32.086357, 45.355293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431115, 0.370387, 0.822772,
		0.716584, 0.413581, -0.561656,
		-0.548313, 0.831724, -0.087112,
		36.117088, 32.335873, 45.329159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.968704, 32.289150, 45.545750>,  <36.500908, 31.753668, 45.390137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.968704, 32.289150, 45.545750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.593483, 32.415764, 45.602131>,  <36.368351, 32.491730, 45.635960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.593483, 32.415764, 45.602131>,  <36.968704, 32.289150, 45.545750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.593483, 32.415764, 45.602131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233518, 0.276977, 0.932069,
		0.255988, 0.907244, -0.333735,
		-0.938051, 0.316532, 0.140954,
		36.312069, 32.510723, 45.644417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.958305, 33.001308, 45.702034>,  <36.968704, 32.289150, 45.545750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.958305, 33.001308, 45.702034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.618477, 32.874104, 45.870369>,  <36.414581, 32.797779, 45.971371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.618477, 32.874104, 45.870369>,  <36.958305, 33.001308, 45.702034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.618477, 32.874104, 45.870369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239936, 0.477522, 0.845224,
		-0.469749, 0.819049, -0.329385,
		-0.849568, -0.318011, 0.420835,
		36.363605, 32.778702, 45.996620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.679962, 33.627773, 45.987980>,  <36.958305, 33.001308, 45.702034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.679962, 33.627773, 45.987980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.525009, 33.308750, 46.172947>,  <36.432037, 33.117336, 46.283928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.525009, 33.308750, 46.172947>,  <36.679962, 33.627773, 45.987980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.525009, 33.308750, 46.172947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292258, 0.369467, 0.882088,
		-0.874366, 0.476853, 0.089967,
		-0.387387, -0.797562, 0.462413,
		36.408794, 33.069481, 46.311672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.457230, 33.946812, 46.586487>,  <36.679962, 33.627773, 45.987980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.457230, 33.946812, 46.586487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.446758, 33.555347, 46.668018>,  <36.440475, 33.320469, 46.716938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.446758, 33.555347, 46.668018>,  <36.457230, 33.946812, 46.586487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.446758, 33.555347, 46.668018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288603, 0.187812, 0.938847,
		-0.957091, 0.083406, 0.277526,
		-0.026183, -0.978657, 0.203825,
		36.438904, 33.261749, 46.729164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.160275, 33.885395, 47.236839>,  <36.457230, 33.946812, 46.586487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.160275, 33.885395, 47.236839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.373146, 33.553589, 47.169079>,  <36.500870, 33.354504, 47.128422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.373146, 33.553589, 47.169079>,  <36.160275, 33.885395, 47.236839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.373146, 33.553589, 47.169079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487018, 0.136269, 0.862696,
		-0.692535, -0.541606, 0.476507,
		0.532174, -0.829514, -0.169401,
		36.532799, 33.304733, 47.118259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.087025, 33.517567, 47.906460>,  <36.160275, 33.885395, 47.236839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.087025, 33.517567, 47.906460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.414051, 33.396107, 47.710754>,  <36.610268, 33.323231, 47.593330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.414051, 33.396107, 47.710754>,  <36.087025, 33.517567, 47.906460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.414051, 33.396107, 47.710754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491007, -0.076277, 0.867810,
		-0.300832, -0.949725, 0.086733,
		0.817565, -0.303651, -0.489268,
		36.659321, 33.305012, 47.563972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.476894, 33.103210, 48.395687>,  <36.087025, 33.517567, 47.906460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.476894, 33.103210, 48.395687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.763195, 33.120861, 48.116905>,  <36.934975, 33.131451, 47.949635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.763195, 33.120861, 48.116905>,  <36.476894, 33.103210, 48.395687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.763195, 33.120861, 48.116905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681590, 0.173203, 0.710940,
		0.152079, -0.983898, 0.093901,
		0.715756, 0.044117, -0.696955,
		36.977921, 33.134098, 47.907818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.025383, 32.578152, 48.596939>,  <36.476894, 33.103210, 48.395687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.025383, 32.578152, 48.596939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.196754, 32.858902, 48.369320>,  <37.299580, 33.027351, 48.232750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.196754, 32.858902, 48.369320>,  <37.025383, 32.578152, 48.596939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.196754, 32.858902, 48.369320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673960, 0.171250, 0.718645,
		0.601850, -0.691407, -0.399667,
		0.428433, 0.701876, -0.569048,
		37.325283, 33.069466, 48.198605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.779171, 32.487934, 48.565830>,  <37.025383, 32.578152, 48.596939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.779171, 32.487934, 48.565830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.722851, 32.876617, 48.489983>,  <37.689060, 33.109829, 48.444473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.722851, 32.876617, 48.489983>,  <37.779171, 32.487934, 48.565830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.722851, 32.876617, 48.489983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732756, 0.231075, 0.640056,
		0.665765, -0.048821, -0.744563,
		-0.140802, 0.971710, -0.189616,
		37.680611, 33.168129, 48.433098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469662, 32.879005, 48.379993>,  <37.779171, 32.487934, 48.565830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.469662, 32.879005, 48.379993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.219437, 33.169361, 48.494362>,  <38.069302, 33.343575, 48.562984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.219437, 33.169361, 48.494362>,  <38.469662, 32.879005, 48.379993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.219437, 33.169361, 48.494362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681457, 0.329954, 0.653259,
		0.379853, 0.603499, -0.701071,
		-0.625562, 0.725892, 0.285924,
		38.031769, 33.387127, 48.580139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.922752, 33.386978, 48.413929>,  <38.469662, 32.879005, 48.379993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.922752, 33.386978, 48.413929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.596558, 33.526615, 48.598587>,  <38.400841, 33.610397, 48.709381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.596558, 33.526615, 48.598587>,  <38.922752, 33.386978, 48.413929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.596558, 33.526615, 48.598587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566005, 0.647627, 0.510114,
		-0.120896, 0.677284, -0.725720,
		-0.815489, 0.349091, 0.461642,
		38.351910, 33.631344, 48.737080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.050186, 34.096924, 48.387245>,  <38.922752, 33.386978, 48.413929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.050186, 34.096924, 48.387245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.757950, 34.062168, 48.658150>,  <38.582607, 34.041313, 48.820694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.757950, 34.062168, 48.658150>,  <39.050186, 34.096924, 48.387245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.757950, 34.062168, 48.658150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303616, 0.847079, 0.436206,
		-0.611598, 0.524316, -0.592487,
		-0.730593, -0.086894, 0.677262,
		38.538773, 34.036098, 48.861328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.702423, 34.732235, 48.422832>,  <39.050186, 34.096924, 48.387245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.702423, 34.732235, 48.422832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.646030, 34.587708, 48.791523>,  <38.612194, 34.500992, 49.012737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.646030, 34.587708, 48.791523>,  <38.702423, 34.732235, 48.422832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.646030, 34.587708, 48.791523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404070, 0.828943, 0.386756,
		-0.903799, 0.426964, 0.029138,
		-0.140977, -0.361323, 0.921722,
		38.603737, 34.479309, 49.068039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.365562, 35.305904, 48.833286>,  <38.702423, 34.732235, 48.422832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.365562, 35.305904, 48.833286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.612255, 35.051800, 49.019226>,  <38.760269, 34.899338, 49.130791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.612255, 35.051800, 49.019226>,  <38.365562, 35.305904, 48.833286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.612255, 35.051800, 49.019226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493035, 0.772088, 0.400995,
		-0.613642, -0.018117, 0.789376,
		0.616733, -0.635258, 0.464853,
		38.797276, 34.861221, 49.158684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.755043, 35.935883, 48.816132>,  <38.365562, 35.305904, 48.833286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.755043, 35.935883, 48.816132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.141705, 35.957790, 48.716072>,  <39.373703, 35.970936, 48.656036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.141705, 35.957790, 48.716072>,  <38.755043, 35.935883, 48.816132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.141705, 35.957790, 48.716072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247746, 0.447205, -0.859436,
		0.064796, 0.892753, 0.445863,
		0.966656, 0.054773, -0.250153,
		39.431702, 35.974220, 48.641026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.840485, 36.612106, 48.495609>,  <38.755043, 35.935883, 48.816132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.840485, 36.612106, 48.495609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.118092, 36.354149, 48.367573>,  <39.284657, 36.199375, 48.290752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.118092, 36.354149, 48.367573>,  <38.840485, 36.612106, 48.495609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.118092, 36.354149, 48.367573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374393, 0.056485, -0.925548,
		0.614959, 0.762184, -0.202241,
		0.694014, -0.644892, -0.320092,
		39.326294, 36.160683, 48.271545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.058788, 36.902683, 47.940567>,  <38.840485, 36.612106, 48.495609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.058788, 36.902683, 47.940567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.211323, 36.535229, 47.899208>,  <39.302845, 36.314754, 47.874393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.211323, 36.535229, 47.899208>,  <39.058788, 36.902683, 47.940567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.211323, 36.535229, 47.899208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122407, 0.060687, -0.990623,
		0.916296, 0.390418, -0.089306,
		0.381338, -0.918635, -0.103397,
		39.325726, 36.259640, 47.868191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.626549, 36.936363, 47.531628>,  <39.058788, 36.902683, 47.940567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.626549, 36.936363, 47.531628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.475460, 36.566639, 47.509785>,  <39.384808, 36.344807, 47.496681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.475460, 36.566639, 47.509785>,  <39.626549, 36.936363, 47.531628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.475460, 36.566639, 47.509785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151293, 0.119793, -0.981203,
		0.913475, -0.362361, -0.185089,
		-0.377722, -0.924307, -0.054605,
		39.362144, 36.289349, 47.493404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.950783, 36.625381, 46.982376>,  <39.626549, 36.936363, 47.531628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.950783, 36.625381, 46.982376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.617142, 36.412632, 47.040867>,  <39.416958, 36.284981, 47.075962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.617142, 36.412632, 47.040867>,  <39.950783, 36.625381, 46.982376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.617142, 36.412632, 47.040867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180327, 0.012402, -0.983528,
		0.521304, -0.846730, -0.106257,
		-0.834101, -0.531878, 0.146223,
		39.366913, 36.253067, 47.084732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.019901, 36.063190, 46.420712>,  <39.950783, 36.625381, 46.982376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.019901, 36.063190, 46.420712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.636234, 36.076275, 46.533092>,  <39.406036, 36.084126, 46.600521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.636234, 36.076275, 46.533092>,  <40.019901, 36.063190, 46.420712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.636234, 36.076275, 46.533092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276687, 0.097723, -0.955979,
		-0.058724, -0.994676, -0.084682,
		-0.959164, 0.032709, 0.280952,
		39.348484, 36.086086, 46.617378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.614799, 35.707752, 45.845367>,  <40.019901, 36.063190, 46.420712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.614799, 35.707752, 45.845367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.348988, 35.927753, 46.047714>,  <39.189499, 36.059753, 46.169121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.348988, 35.927753, 46.047714>,  <39.614799, 35.707752, 45.845367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.348988, 35.927753, 46.047714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545075, 0.106313, -0.831620,
		-0.511171, -0.828370, 0.229143,
		-0.664528, 0.550000, 0.505868,
		39.149628, 36.092754, 46.199474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.961128, 35.409634, 45.787796>,  <39.614799, 35.707752, 45.845367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.961128, 35.409634, 45.787796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.847359, 35.782459, 45.877556>,  <38.779095, 36.006157, 45.931412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.847359, 35.782459, 45.877556>,  <38.961128, 35.409634, 45.787796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.847359, 35.782459, 45.877556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716706, -0.051270, -0.695489,
		-0.636737, -0.358641, 0.682600,
		-0.284427, 0.932066, 0.224395,
		38.762032, 36.062080, 45.944874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.146835, 35.414341, 45.730728>,  <38.961128, 35.409634, 45.787796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.146835, 35.414341, 45.730728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.292053, 35.784920, 45.690945>,  <38.379185, 36.007267, 45.667072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.292053, 35.784920, 45.690945>,  <38.146835, 35.414341, 45.730728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.292053, 35.784920, 45.690945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636532, 0.168639, -0.752587,
		-0.680459, 0.336535, 0.650937,
		0.363046, 0.926448, -0.099463,
		38.400967, 36.062855, 45.661106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.578476, 35.860966, 45.708057>,  <38.146835, 35.414341, 45.730728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.578476, 35.860966, 45.708057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.875118, 36.066040, 45.535004>,  <38.053104, 36.189083, 45.431171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.875118, 36.066040, 45.535004>,  <37.578476, 35.860966, 45.708057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.875118, 36.066040, 45.535004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594781, 0.204251, -0.777507,
		-0.310250, 0.833928, 0.456409,
		0.741607, 0.512685, -0.432635,
		38.097599, 36.219845, 45.405212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.334435, 36.548561, 45.781403>,  <37.578476, 35.860966, 45.708057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.334435, 36.548561, 45.781403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.596748, 36.482357, 45.486771>,  <37.754135, 36.442635, 45.309990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.596748, 36.482357, 45.486771>,  <37.334435, 36.548561, 45.781403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.596748, 36.482357, 45.486771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696810, 0.242762, -0.674924,
		0.290522, 0.955862, 0.043869,
		0.655784, -0.165512, -0.736582,
		37.793484, 36.432705, 45.265797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.232944, 37.038242, 45.266006>,  <37.334435, 36.548561, 45.781403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.232944, 37.038242, 45.266006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.427193, 36.746567, 45.073151>,  <37.543743, 36.571564, 44.957436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.427193, 36.746567, 45.073151>,  <37.232944, 37.038242, 45.266006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.427193, 36.746567, 45.073151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688942, 0.020248, -0.724534,
		0.538082, 0.684018, -0.492533,
		0.485621, -0.729185, -0.482143,
		37.572880, 36.527813, 44.928509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.433254, 37.305302, 44.657867>,  <37.232944, 37.038242, 45.266006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.433254, 37.305302, 44.657867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.439064, 36.910622, 44.593098>,  <37.442551, 36.673813, 44.554234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.439064, 36.910622, 44.593098>,  <37.433254, 37.305302, 44.657867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.439064, 36.910622, 44.593098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538225, 0.128764, -0.832907,
		0.842676, 0.099254, -0.529193,
		0.014529, -0.986696, -0.161927,
		37.443424, 36.614613, 44.544521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.510361, 37.227036, 43.906765>,  <37.433254, 37.305302, 44.657867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.510361, 37.227036, 43.906765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.388573, 36.873085, 44.047783>,  <37.315498, 36.660713, 44.132393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.388573, 36.873085, 44.047783>,  <37.510361, 37.227036, 43.906765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.388573, 36.873085, 44.047783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367575, -0.232297, -0.900515,
		0.878741, -0.403766, -0.254532,
		-0.304470, -0.884879, 0.352544,
		37.297230, 36.607620, 44.153545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.718033, 36.658997, 43.377808>,  <37.510361, 37.227036, 43.906765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.718033, 36.658997, 43.377808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.437878, 36.472477, 43.593964>,  <37.269783, 36.360565, 43.723656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.437878, 36.472477, 43.593964>,  <37.718033, 36.658997, 43.377808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.437878, 36.472477, 43.593964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309235, -0.484114, -0.818540,
		0.643297, -0.740402, 0.194870,
		-0.700388, -0.466303, 0.540388,
		37.227760, 36.332584, 43.756081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.683895, 36.030838, 43.255989>,  <37.718033, 36.658997, 43.377808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.683895, 36.030838, 43.255989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.310043, 36.054016, 43.396339>,  <37.085732, 36.067924, 43.480549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.310043, 36.054016, 43.396339>,  <37.683895, 36.030838, 43.255989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.310043, 36.054016, 43.396339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325632, -0.536049, -0.778855,
		0.142954, -0.842195, 0.519876,
		-0.934627, 0.057947, 0.350876,
		37.029655, 36.071400, 43.501602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.526527, 35.412167, 43.193741>,  <37.683895, 36.030838, 43.255989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.526527, 35.412167, 43.193741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.172195, 35.596134, 43.218311>,  <36.959595, 35.706516, 43.233055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.172195, 35.596134, 43.218311>,  <37.526527, 35.412167, 43.193741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.172195, 35.596134, 43.218311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312746, -0.494016, -0.811257,
		-0.342763, -0.737851, 0.581454,
		-0.885835, 0.459917, 0.061430,
		36.906445, 35.734108, 43.236740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.030499, 34.889221, 43.027195>,  <37.526527, 35.412167, 43.193741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.030499, 34.889221, 43.027195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.811329, 35.222939, 43.002769>,  <36.679829, 35.423168, 42.988113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.811329, 35.222939, 43.002769>,  <37.030499, 34.889221, 43.027195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.811329, 35.222939, 43.002769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462602, -0.363016, -0.808838,
		-0.696978, -0.414933, 0.584853,
		-0.547924, 0.834297, -0.061065,
		36.646950, 35.473228, 42.984451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.339302, 34.669441, 42.776630>,  <37.030499, 34.889221, 43.027195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.339302, 34.669441, 42.776630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.299221, 35.058052, 42.690758>,  <36.275173, 35.291218, 42.639233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.299221, 35.058052, 42.690758>,  <36.339302, 34.669441, 42.776630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.299221, 35.058052, 42.690758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558368, -0.233501, -0.796054,
		-0.823519, 0.040104, 0.565869,
		-0.100205, 0.971529, -0.214685,
		36.269161, 35.349510, 42.626350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.645546, 34.758217, 42.555092>,  <36.339302, 34.669441, 42.776630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.645546, 34.758217, 42.555092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.884697, 35.042400, 42.406609>,  <36.028187, 35.212910, 42.317516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.884697, 35.042400, 42.406609>,  <35.645546, 34.758217, 42.555092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.884697, 35.042400, 42.406609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262088, -0.264385, -0.928122,
		-0.757531, 0.652193, 0.028132,
		0.597877, 0.710454, -0.371212,
		36.064060, 35.255535, 42.295246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.234047, 34.785698, 41.934696>,  <35.645546, 34.758217, 42.555092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.234047, 34.785698, 41.934696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.581921, 34.978485, 41.892086>,  <35.790646, 35.094158, 41.866520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.581921, 34.978485, 41.892086>,  <35.234047, 34.785698, 41.934696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.581921, 34.978485, 41.892086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023708, -0.174771, -0.984324,
		-0.493033, 0.858579, -0.140570,
		0.869688, 0.481971, -0.106523,
		35.842827, 35.123077, 41.860130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.100246, 35.316822, 41.484669>,  <35.234047, 34.785698, 41.934696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.100246, 35.316822, 41.484669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.495331, 35.256046, 41.470036>,  <35.732384, 35.219582, 41.461258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.495331, 35.256046, 41.470036>,  <35.100246, 35.316822, 41.484669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.495331, 35.256046, 41.470036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063800, -0.178358, -0.981895,
		0.142661, 0.972164, -0.185860,
		0.987713, -0.151936, -0.036579,
		35.791645, 35.210464, 41.459061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.469273, 35.779381, 40.942265>,  <35.100246, 35.316822, 41.484669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.469273, 35.779381, 40.942265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.685543, 35.443169, 40.956009>,  <35.815308, 35.241444, 40.964256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.685543, 35.443169, 40.956009>,  <35.469273, 35.779381, 40.942265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.685543, 35.443169, 40.956009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195553, -0.165310, -0.966660,
		0.818183, 0.515935, -0.253747,
		0.540680, -0.840526, 0.034361,
		35.847748, 35.191010, 40.966316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.738720, 35.676060, 40.197735>,  <35.469273, 35.779381, 40.942265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.738720, 35.676060, 40.197735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.815514, 35.313133, 40.347355>,  <35.861591, 35.095375, 40.437126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.815514, 35.313133, 40.347355>,  <35.738720, 35.676060, 40.197735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.815514, 35.313133, 40.347355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065424, -0.392125, -0.917583,
		0.979215, 0.151690, -0.134642,
		0.191985, -0.907319, 0.374050,
		35.873108, 35.040939, 40.459572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.362061, 35.532341, 39.784641>,  <35.738720, 35.676060, 40.197735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.362061, 35.532341, 39.784641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.219021, 35.196655, 39.948517>,  <36.133198, 34.995243, 40.046841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.219021, 35.196655, 39.948517>,  <36.362061, 35.532341, 39.784641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.219021, 35.196655, 39.948517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080934, -0.464892, -0.881661,
		0.930362, -0.282122, 0.234165,
		-0.357598, -0.839216, 0.409684,
		36.111740, 34.944889, 40.071423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.886028, 35.021511, 39.820072>,  <36.362061, 35.532341, 39.784641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.886028, 35.021511, 39.820072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.550442, 34.805004, 39.842609>,  <36.349091, 34.675102, 39.856133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.550442, 34.805004, 39.842609>,  <36.886028, 35.021511, 39.820072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.550442, 34.805004, 39.842609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283294, -0.522796, -0.804008,
		0.464637, -0.658571, 0.591943,
		-0.838962, -0.541266, 0.056341,
		36.298752, 34.642624, 39.859512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.126293, 34.398788, 39.563370>,  <36.886028, 35.021511, 39.820072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.126293, 34.398788, 39.563370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.728130, 34.419159, 39.530964>,  <36.489231, 34.431381, 39.511520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.728130, 34.419159, 39.530964>,  <37.126293, 34.398788, 39.563370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.728130, 34.419159, 39.530964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068280, -0.215173, -0.974186,
		-0.067043, -0.975247, 0.210708,
		-0.995411, 0.050926, -0.081015,
		36.429508, 34.434437, 39.506660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.925968, 33.642303, 39.248489>,  <37.126293, 34.398788, 39.563370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.925968, 33.642303, 39.248489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.645279, 33.914059, 39.162682>,  <36.476864, 34.077110, 39.111198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.645279, 33.914059, 39.162682>,  <36.925968, 33.642303, 39.248489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.645279, 33.914059, 39.162682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073496, -0.230466, -0.970301,
		-0.708647, -0.696650, 0.111792,
		-0.701725, 0.679385, -0.214520,
		36.434761, 34.117874, 39.098324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.504360, 33.323303, 38.924911>,  <36.925968, 33.642303, 39.248489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.504360, 33.323303, 38.924911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.432579, 33.693905, 38.792622>,  <36.389511, 33.916267, 38.713249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.432579, 33.693905, 38.792622>,  <36.504360, 33.323303, 38.924911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.432579, 33.693905, 38.792622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030116, -0.330852, -0.943202,
		-0.983305, -0.179222, 0.031471,
		-0.179455, 0.926507, -0.330726,
		36.378742, 33.971859, 38.693405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.035469, 33.234581, 38.435623>,  <36.504360, 33.323303, 38.924911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.035469, 33.234581, 38.435623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.211842, 33.589043, 38.378605>,  <36.317665, 33.801720, 38.344395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.211842, 33.589043, 38.378605>,  <36.035469, 33.234581, 38.435623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.211842, 33.589043, 38.378605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117271, -0.214337, -0.969694,
		-0.889848, 0.410850, -0.198427,
		0.440929, 0.886150, -0.142546,
		36.344120, 33.854889, 38.335842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.762344, 33.406036, 37.831470>,  <36.035469, 33.234581, 38.435623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.762344, 33.406036, 37.831470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.090721, 33.629524, 37.878613>,  <36.287746, 33.763618, 37.906898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.090721, 33.629524, 37.878613>,  <35.762344, 33.406036, 37.831470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.090721, 33.629524, 37.878613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277169, -0.209448, -0.937715,
		-0.499236, 0.802473, -0.326805,
		0.820939, 0.558721, 0.117857,
		36.337002, 33.797142, 37.913971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.921597, 33.697365, 37.175156>,  <35.762344, 33.406036, 37.831470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.921597, 33.697365, 37.175156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.258987, 33.789085, 37.369461>,  <36.461422, 33.844120, 37.486042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.258987, 33.789085, 37.369461>,  <35.921597, 33.697365, 37.175156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.258987, 33.789085, 37.369461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477307, 0.094895, -0.873598,
		-0.246416, 0.968718, -0.029407,
		0.843479, 0.229305, 0.485759,
		36.512032, 33.857876, 37.515190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.339157, 34.250885, 36.762871>,  <35.921597, 33.697365, 37.175156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.339157, 34.250885, 36.762871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.608505, 34.058514, 36.987469>,  <36.770115, 33.943089, 37.122227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.608505, 34.058514, 36.987469>,  <36.339157, 34.250885, 36.762871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.608505, 34.058514, 36.987469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666195, 0.065424, -0.742902,
		0.320549, 0.874314, 0.364448,
		0.673374, -0.480930, 0.561492,
		36.810516, 33.914234, 37.155918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.083897, 34.628914, 36.598850>,  <36.339157, 34.250885, 36.762871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.083897, 34.628914, 36.598850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.160606, 34.280708, 36.780151>,  <37.206631, 34.071785, 36.888931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.160606, 34.280708, 36.780151>,  <37.083897, 34.628914, 36.598850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.160606, 34.280708, 36.780151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.862644, -0.070737, -0.500842,
		0.468050, 0.487039, 0.737375,
		0.191770, -0.870511, 0.453250,
		37.218136, 34.019554, 36.916126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.858387, 34.640244, 36.811871>,  <37.083897, 34.628914, 36.598850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.858387, 34.640244, 36.811871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.781124, 34.248001, 36.825100>,  <37.734768, 34.012653, 36.833038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.781124, 34.248001, 36.825100>,  <37.858387, 34.640244, 36.811871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.781124, 34.248001, 36.825100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871268, -0.186924, -0.453818,
		0.451201, -0.058844, 0.890480,
		-0.193157, -0.980610, 0.033071,
		37.723175, 33.953819, 36.835022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.480263, 34.281982, 36.765400>,  <37.858387, 34.640244, 36.811871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.480263, 34.281982, 36.765400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.261501, 33.963001, 36.663441>,  <38.130245, 33.771614, 36.602264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.261501, 33.963001, 36.663441>,  <38.480263, 34.281982, 36.765400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.261501, 33.963001, 36.663441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739270, -0.317110, -0.594072,
		0.392914, -0.513334, 0.762959,
		-0.546899, -0.797452, -0.254895,
		38.097431, 33.723766, 36.586971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.753109, 33.596756, 37.070312>,  <38.480263, 34.281982, 36.765400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.753109, 33.596756, 37.070312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.529957, 33.509048, 36.750141>,  <38.396065, 33.456425, 36.558037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.529957, 33.509048, 36.750141>,  <38.753109, 33.596756, 37.070312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.529957, 33.509048, 36.750141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785774, -0.449927, -0.424412,
		-0.267073, -0.865728, 0.423305,
		-0.557882, -0.219272, -0.800430,
		38.362591, 33.443268, 36.510014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.051304, 33.064842, 36.848919>,  <38.753109, 33.596756, 37.070312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.051304, 33.064842, 36.848919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.805847, 33.133583, 36.540657>,  <38.658573, 33.174828, 36.355701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.805847, 33.133583, 36.540657>,  <39.051304, 33.064842, 36.848919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.805847, 33.133583, 36.540657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687152, -0.364533, -0.628441,
		-0.388932, -0.915194, 0.105600,
		-0.613640, 0.171858, -0.770656,
		38.621754, 33.185139, 36.309460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.120834, 32.382607, 36.432823>,  <39.051304, 33.064842, 36.848919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.120834, 32.382607, 36.432823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.001381, 32.700371, 36.221268>,  <38.929710, 32.891029, 36.094334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.001381, 32.700371, 36.221268>,  <39.120834, 32.382607, 36.432823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.001381, 32.700371, 36.221268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723936, -0.172546, -0.667941,
		-0.621880, -0.582351, -0.523578,
		-0.298635, 0.794415, -0.528887,
		38.911789, 32.938694, 36.062603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.964138, 32.153156, 35.746082>,  <39.120834, 32.382607, 36.432823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.964138, 32.153156, 35.746082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.081837, 32.535442, 35.748482>,  <39.152454, 32.764812, 35.749924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.081837, 32.535442, 35.748482>,  <38.964138, 32.153156, 35.746082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.081837, 32.535442, 35.748482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791919, -0.240293, -0.561358,
		-0.535054, 0.169930, -0.827551,
		0.294246, 0.955711, 0.006001,
		39.170109, 32.822155, 35.750282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.207539, 32.310158, 35.029007>,  <38.964138, 32.153156, 35.746082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.207539, 32.310158, 35.029007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.402905, 32.516773, 35.310329>,  <39.520126, 32.640743, 35.479122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.402905, 32.516773, 35.310329>,  <39.207539, 32.310158, 35.029007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.402905, 32.516773, 35.310329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867594, -0.373748, -0.328014,
		0.093429, 0.770393, -0.630687,
		0.488417, 0.516535, 0.703307,
		39.549431, 32.671734, 35.521320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.751122, 32.748100, 34.788620>,  <39.207539, 32.310158, 35.029007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.751122, 32.748100, 34.788620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.801235, 32.589069, 35.152210>,  <39.831303, 32.493652, 35.370365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.801235, 32.589069, 35.152210>,  <39.751122, 32.748100, 34.788620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.801235, 32.589069, 35.152210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658360, -0.652087, -0.375958,
		0.742204, 0.645534, 0.180053,
		0.125284, -0.397577, 0.908975,
		39.838821, 32.469795, 35.424904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.338299, 32.391460, 34.752953>,  <39.751122, 32.748100, 34.788620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.338299, 32.391460, 34.752953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.203377, 32.239174, 35.097343>,  <40.122425, 32.147804, 35.303978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.203377, 32.239174, 35.097343>,  <40.338299, 32.391460, 34.752953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.203377, 32.239174, 35.097343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587367, -0.799832, -0.123565,
		0.735681, 0.464031, 0.493405,
		-0.337303, -0.380714, 0.860978,
		40.102184, 32.124958, 35.355637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.877106, 32.269917, 35.260082>,  <40.338299, 32.391460, 34.752953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.877106, 32.269917, 35.260082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.564079, 32.022972, 35.292202>,  <40.376263, 31.874804, 35.311474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.564079, 32.022972, 35.292202>,  <40.877106, 32.269917, 35.260082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.564079, 32.022972, 35.292202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596442, -0.780439, -0.187545,
		0.178451, -0.098875, 0.978968,
		-0.782568, -0.617365, 0.080297,
		40.329308, 31.837763, 35.316292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.413849, 32.804028, 35.241386>,  <40.877106, 32.269917, 35.260082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.413849, 32.804028, 35.241386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.708218, 32.752151, 35.507198>,  <41.884838, 32.721027, 35.666687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.708218, 32.752151, 35.507198>,  <41.413849, 32.804028, 35.241386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.708218, 32.752151, 35.507198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304235, -0.940159, 0.153434,
		0.604869, -0.315090, -0.731336,
		0.735917, -0.129690, 0.664534,
		41.928993, 32.713245, 35.706558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.614902, 32.136181, 35.221226>,  <41.413849, 32.804028, 35.241386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.614902, 32.136181, 35.221226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.687725, 32.237713, 35.601212>,  <41.731419, 32.298630, 35.829201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.687725, 32.237713, 35.601212>,  <41.614902, 32.136181, 35.221226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.687725, 32.237713, 35.601212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416803, -0.855096, 0.308360,
		0.890579, -0.452086, -0.049881,
		0.182058, 0.253828, 0.949961,
		41.742344, 32.313862, 35.886200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.309643, 32.286587, 35.002350>,  <41.614902, 32.136181, 35.221226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.309643, 32.286587, 35.002350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.675045, 32.412365, 35.105606>,  <42.894287, 32.487831, 35.167561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.675045, 32.412365, 35.105606>,  <42.309643, 32.286587, 35.002350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.675045, 32.412365, 35.105606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094151, -0.780684, 0.617793,
		0.395788, -0.540052, -0.742763,
		0.913503, 0.314447, 0.258138,
		42.949097, 32.506699, 35.183048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.684738, 31.667604, 35.100677>,  <42.309643, 32.286587, 35.002350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.684738, 31.667604, 35.100677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.881104, 31.962334, 35.286625>,  <42.998920, 32.139172, 35.398193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.881104, 31.962334, 35.286625>,  <42.684738, 31.667604, 35.100677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.881104, 31.962334, 35.286625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241572, -0.627788, 0.739950,
		0.837048, -0.250950, -0.486183,
		0.490911, 0.736822, 0.464866,
		43.028378, 32.183380, 35.426086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.385777, 31.405260, 35.403618>,  <42.684738, 31.667604, 35.100677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.385777, 31.405260, 35.403618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.283119, 31.727839, 35.616703>,  <43.221527, 31.921385, 35.744553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.283119, 31.727839, 35.616703>,  <43.385777, 31.405260, 35.403618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.283119, 31.727839, 35.616703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347206, -0.437453, 0.829508,
		0.901989, 0.397846, -0.167735,
		-0.256640, 0.806445, 0.532712,
		43.206127, 31.969772, 35.776516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.912605, 31.519817, 35.918919>,  <43.385777, 31.405260, 35.403618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.912605, 31.519817, 35.918919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.599651, 31.726889, 36.057419>,  <43.411880, 31.851131, 36.140518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.599651, 31.726889, 36.057419>,  <43.912605, 31.519817, 35.918919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.599651, 31.726889, 36.057419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239987, -0.262440, 0.934629,
		0.574706, 0.814332, 0.081093,
		-0.782380, 0.517676, 0.346255,
		43.364937, 31.882191, 36.161297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.150311, 31.723970, 36.507500>,  <43.912605, 31.519817, 35.918919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.150311, 31.723970, 36.507500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.759098, 31.786329, 36.562862>,  <43.524372, 31.823746, 36.596081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.759098, 31.786329, 36.562862>,  <44.150311, 31.723970, 36.507500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.759098, 31.786329, 36.562862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106937, -0.194726, 0.975011,
		0.178953, 0.968389, 0.173776,
		-0.978029, 0.155898, 0.138403,
		43.465691, 31.833099, 36.604382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.053555, 32.008949, 37.196114>,  <44.150311, 31.723970, 36.507500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.053555, 32.008949, 37.196114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.675354, 31.889473, 37.144238>,  <43.448433, 31.817787, 37.113113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.675354, 31.889473, 37.144238>,  <44.053555, 32.008949, 37.196114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.675354, 31.889473, 37.144238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011107, -0.368450, 0.929581,
		-0.325441, 0.880357, 0.345051,
		-0.945497, -0.298691, -0.129687,
		43.391705, 31.799866, 37.105331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.752132, 32.210793, 37.779663>,  <44.053555, 32.008949, 37.196114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.752132, 32.210793, 37.779663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.527214, 31.909355, 37.643478>,  <43.392265, 31.728491, 37.561768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.527214, 31.909355, 37.643478>,  <43.752132, 32.210793, 37.779663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.527214, 31.909355, 37.643478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238197, -0.541869, 0.806003,
		-0.791888, 0.372113, 0.484195,
		-0.562294, -0.753598, -0.340463,
		43.358524, 31.683275, 37.541340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.407154, 31.897045, 38.378288>,  <43.752132, 32.210793, 37.779663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.407154, 31.897045, 38.378288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.409916, 31.609608, 38.100132>,  <43.411575, 31.437145, 37.933239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.409916, 31.609608, 38.100132>,  <43.407154, 31.897045, 38.378288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.409916, 31.609608, 38.100132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198595, -0.680572, 0.705253,
		-0.980057, -0.142975, 0.138007,
		0.006909, -0.718596, -0.695394,
		43.411987, 31.394030, 37.891514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.852573, 31.450237, 38.585979>,  <43.407154, 31.897045, 38.378288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.852573, 31.450237, 38.585979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.068325, 31.228909, 38.332081>,  <43.197777, 31.096111, 38.179741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.068325, 31.228909, 38.332081>,  <42.852573, 31.450237, 38.585979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.068325, 31.228909, 38.332081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152682, -0.677043, 0.719931,
		-0.828106, -0.485230, -0.280700,
		0.539378, -0.553321, -0.634749,
		43.230137, 31.062912, 38.141655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.548939, 30.806946, 38.713993>,  <42.852573, 31.450237, 38.585979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.548939, 30.806946, 38.713993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.910339, 30.752794, 38.551338>,  <43.127182, 30.720303, 38.453747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.910339, 30.752794, 38.551338>,  <42.548939, 30.806946, 38.713993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.910339, 30.752794, 38.551338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159249, -0.774817, 0.611799,
		-0.397891, -0.617519, -0.678493,
		0.903505, -0.135380, -0.406633,
		43.181393, 30.712181, 38.429348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.550606, 30.044931, 38.588169>,  <42.548939, 30.806946, 38.713993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.550606, 30.044931, 38.588169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.920742, 30.196388, 38.580368>,  <43.142822, 30.287262, 38.575687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.920742, 30.196388, 38.580368>,  <42.550606, 30.044931, 38.588169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.920742, 30.196388, 38.580368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282796, -0.655021, 0.700696,
		0.252539, -0.653895, -0.713193,
		0.925338, 0.378641, -0.019501,
		43.198345, 30.309980, 38.574516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.968395, 29.478273, 38.588936>,  <42.550606, 30.044931, 38.588169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.968395, 29.478273, 38.588936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.219704, 29.767647, 38.703419>,  <43.370491, 29.941271, 38.772110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.219704, 29.767647, 38.703419>,  <42.968395, 29.478273, 38.588936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.219704, 29.767647, 38.703419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332114, -0.582071, 0.742222,
		0.703543, -0.371264, -0.605962,
		0.628273, 0.723434, 0.286210,
		43.408184, 29.984676, 38.789280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.614086, 29.166998, 38.707623>,  <42.968395, 29.478273, 38.588936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.614086, 29.166998, 38.707623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.629593, 29.512360, 38.908829>,  <43.638897, 29.719576, 39.029552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.629593, 29.512360, 38.908829>,  <43.614086, 29.166998, 38.707623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.629593, 29.512360, 38.908829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639722, -0.408160, 0.651277,
		0.767628, 0.296544, -0.568163,
		0.038769, 0.863405, 0.503020,
		43.641224, 29.771381, 39.059734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.327930, 29.229980, 39.000217>,  <43.614086, 29.166998, 38.707623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.327930, 29.229980, 39.000217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.110748, 29.480303, 39.224205>,  <43.980438, 29.630497, 39.358597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.110748, 29.480303, 39.224205>,  <44.327930, 29.229980, 39.000217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.110748, 29.480303, 39.224205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490306, -0.305113, 0.816398,
		0.681762, 0.717823, -0.141174,
		-0.542956, 0.625808, 0.559968,
		43.947861, 29.668045, 39.392197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.805984, 29.621784, 39.417679>,  <44.327930, 29.229980, 39.000217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.805984, 29.621784, 39.417679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.474346, 29.681885, 39.633091>,  <44.275364, 29.717945, 39.762341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.474346, 29.681885, 39.633091>,  <44.805984, 29.621784, 39.417679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.474346, 29.681885, 39.633091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480749, -0.300162, 0.823883,
		0.285437, 0.941981, 0.176631,
		-0.829100, 0.150251, 0.538533,
		44.225616, 29.726959, 39.794651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.065338, 29.904654, 40.162457>,  <44.805984, 29.621784, 39.417679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.065338, 29.904654, 40.162457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.703407, 29.737896, 40.197086>,  <44.486248, 29.637842, 40.217865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.703407, 29.737896, 40.197086>,  <45.065338, 29.904654, 40.162457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.703407, 29.737896, 40.197086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244705, -0.342755, 0.906994,
		-0.348445, 0.841855, 0.412148,
		-0.904824, -0.416892, 0.086575,
		44.431961, 29.612829, 40.223061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.942127, 29.793993, 40.862083>,  <45.065338, 29.904654, 40.162457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.942127, 29.793993, 40.862083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.654640, 29.555168, 40.719555>,  <44.482147, 29.411873, 40.634037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.654640, 29.555168, 40.719555>,  <44.942127, 29.793993, 40.862083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.654640, 29.555168, 40.719555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148241, -0.632266, 0.760437,
		-0.679317, 0.493718, 0.542929,
		-0.718716, -0.597062, -0.356320,
		44.439026, 29.376049, 40.612659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.495186, 29.697834, 41.386349>,  <44.942127, 29.793993, 40.862083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.495186, 29.697834, 41.386349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.506374, 29.384378, 41.138115>,  <44.513088, 29.196306, 40.989174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.506374, 29.384378, 41.138115>,  <44.495186, 29.697834, 41.386349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.506374, 29.384378, 41.138115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306261, -0.584258, 0.751563,
		-0.951537, -0.211081, 0.223658,
		0.027967, -0.783638, -0.620588,
		44.514763, 29.149286, 40.951939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.180168, 29.186100, 41.799999>,  <44.495186, 29.697834, 41.386349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.180168, 29.186100, 41.799999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.347126, 28.991379, 41.493065>,  <44.447300, 28.874546, 41.308903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.347126, 28.991379, 41.493065>,  <44.180168, 29.186100, 41.799999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.347126, 28.991379, 41.493065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347588, -0.694672, 0.629773,
		-0.839623, -0.529579, -0.120743,
		0.417392, -0.486803, -0.767338,
		44.472343, 28.845339, 41.262863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.928173, 28.527830, 41.869469>,  <44.180168, 29.186100, 41.799999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.928173, 28.527830, 41.869469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.243595, 28.461779, 41.632519>,  <44.432850, 28.422148, 41.490349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.243595, 28.461779, 41.632519>,  <43.928173, 28.527830, 41.869469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.243595, 28.461779, 41.632519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314411, -0.719602, 0.619127,
		-0.528512, -0.674467, -0.515529,
		0.788556, -0.165128, -0.592378,
		44.480164, 28.412241, 41.454803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.869511, 27.856684, 41.660786>,  <43.928173, 28.527830, 41.869469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.869511, 27.856684, 41.660786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.253857, 27.963783, 41.632366>,  <44.484463, 28.028044, 41.615314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.253857, 27.963783, 41.632366>,  <43.869511, 27.856684, 41.660786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.253857, 27.963783, 41.632366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270896, -0.854597, 0.443034,
		0.057907, -0.444942, -0.893685,
		0.960865, 0.267751, -0.071046,
		44.542118, 28.044109, 41.611053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.276356, 27.243999, 41.277969>,  <43.869511, 27.856684, 41.660786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.276356, 27.243999, 41.277969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.483315, 27.435738, 41.561527>,  <44.607491, 27.550781, 41.731663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.483315, 27.435738, 41.561527>,  <44.276356, 27.243999, 41.277969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.483315, 27.435738, 41.561527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122594, -0.861366, 0.492971,
		0.846922, -0.168153, -0.504429,
		0.517392, 0.479347, 0.708895,
		44.638531, 27.579542, 41.774197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.211990, 26.540407, 41.755749>,  <44.276356, 27.243999, 41.277969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.211990, 26.540407, 41.755749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.366329, 26.220221, 41.939213>,  <44.458931, 26.028109, 42.049294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.366329, 26.220221, 41.939213>,  <44.211990, 26.540407, 41.755749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.366329, 26.220221, 41.939213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793612, 0.034479, -0.607447,
		0.470428, 0.598382, 0.648565,
		0.385847, -0.800469, 0.458663,
		44.482082, 25.980080, 42.076813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.307922, 26.073627, 41.198643>,  <44.211990, 26.540407, 41.755749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.307922, 26.073627, 41.198643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.909523, 26.106524, 41.212685>,  <43.670483, 26.126261, 41.221107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.909523, 26.106524, 41.212685>,  <44.307922, 26.073627, 41.198643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.909523, 26.106524, 41.212685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089397, -0.924597, -0.370309,
		0.002002, -0.371964, 0.928245,
		-0.995994, 0.082241, 0.035103,
		43.610725, 26.131195, 41.223217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.705715, 25.816242, 40.684120>,  <44.307922, 26.073627, 41.198643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.705715, 25.816242, 40.684120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.908367, 25.535917, 40.483250>,  <45.029957, 25.367722, 40.362728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.908367, 25.535917, 40.483250>,  <44.705715, 25.816242, 40.684120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.908367, 25.535917, 40.483250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851095, 0.499561, 0.161479,
		0.137703, -0.509213, 0.849553,
		0.506631, -0.700815, -0.502179,
		45.060356, 25.325672, 40.332596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.308247, 25.618277, 41.081017>,  <44.705715, 25.816242, 40.684120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.308247, 25.618277, 41.081017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.358685, 25.579544, 40.686104>,  <45.388947, 25.556305, 40.449158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.358685, 25.579544, 40.686104>,  <45.308247, 25.618277, 41.081017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.358685, 25.579544, 40.686104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778680, 0.626268, 0.038027,
		0.614621, -0.773571, 0.154366,
		0.126092, -0.096829, -0.987282,
		45.396511, 25.550495, 40.389919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.936680, 25.672176, 40.988735>,  <45.308247, 25.618277, 41.081017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.936680, 25.672176, 40.988735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.824715, 25.759752, 40.614845>,  <45.757538, 25.812298, 40.390511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.824715, 25.759752, 40.614845>,  <45.936680, 25.672176, 40.988735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.824715, 25.759752, 40.614845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791436, 0.603731, -0.095591,
		0.543396, -0.766534, -0.342265,
		-0.279910, 0.218938, -0.934728,
		45.740742, 25.825434, 40.334427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.528664, 25.789379, 40.636627>,  <45.936680, 25.672176, 40.988735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.528664, 25.789379, 40.636627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.254860, 25.914492, 40.373226>,  <46.090580, 25.989559, 40.215187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.254860, 25.914492, 40.373226>,  <46.528664, 25.789379, 40.636627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.254860, 25.914492, 40.373226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534518, 0.829566, -0.161588,
		0.495725, -0.462587, -0.735030,
		-0.684505, 0.312783, -0.658498,
		46.049507, 26.008327, 40.175678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.468616, 26.367472, 40.809418>,  <46.528664, 25.789379, 40.636627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.468616, 26.367472, 40.809418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.815556, 26.379658, 40.610710>,  <47.023720, 26.386971, 40.491486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.815556, 26.379658, 40.610710>,  <46.468616, 26.367472, 40.809418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.815556, 26.379658, 40.610710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259162, 0.879776, -0.398534,
		0.424903, 0.474412, 0.770968,
		0.867348, 0.030467, -0.496769,
		47.075760, 26.388798, 40.461678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.771339, 27.036915, 40.751461>,  <46.468616, 26.367472, 40.809418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.771339, 27.036915, 40.751461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.938068, 26.858606, 40.434589>,  <47.038105, 26.751621, 40.244469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.938068, 26.858606, 40.434589>,  <46.771339, 27.036915, 40.751461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.938068, 26.858606, 40.434589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089633, 0.847090, -0.523836,
		0.904557, 0.289353, 0.313132,
		0.416825, -0.445772, -0.792177,
		47.063114, 26.724874, 40.196938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.239822, 26.914597, 40.187416>,  <46.771339, 27.036915, 40.751461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.239822, 26.914597, 40.187416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.199688, 26.747644, 39.826145>,  <46.175606, 26.647472, 39.609383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.199688, 26.747644, 39.826145>,  <46.239822, 26.914597, 40.187416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.199688, 26.747644, 39.826145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420790, 0.804776, -0.418655,
		0.901592, -0.422054, 0.094880,
		-0.100337, -0.417380, -0.903176,
		46.169586, 26.622431, 39.555191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.882820, 27.088610, 39.777100>,  <46.239822, 26.914597, 40.187416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.882820, 27.088610, 39.777100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.582691, 27.015656, 39.522930>,  <46.402615, 26.971884, 39.370430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.582691, 27.015656, 39.522930>,  <46.882820, 27.088610, 39.777100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.582691, 27.015656, 39.522930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246150, 0.814996, -0.524587,
		0.613541, -0.550016, -0.566612,
		-0.750318, -0.182384, -0.635420,
		46.357597, 26.960939, 39.332306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.203793, 26.868191, 39.107136>,  <46.882820, 27.088610, 39.777100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.203793, 26.868191, 39.107136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.836411, 27.022692, 39.073071>,  <46.615982, 27.115393, 39.052631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.836411, 27.022692, 39.073071>,  <47.203793, 26.868191, 39.107136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.836411, 27.022692, 39.073071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368554, 0.757574, -0.538747,
		-0.143573, -0.526203, -0.838151,
		-0.918452, 0.386254, -0.085167,
		46.560875, 27.138567, 39.047520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.204296, 27.106369, 38.348068>,  <47.203793, 26.868191, 39.107136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.204296, 27.106369, 38.348068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.890099, 27.287745, 38.516544>,  <46.701580, 27.396570, 38.617630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.890099, 27.287745, 38.516544>,  <47.204296, 27.106369, 38.348068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.890099, 27.287745, 38.516544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208412, 0.834628, -0.509863,
		-0.582726, -0.312712, -0.750094,
		-0.785490, 0.453439, 0.421186,
		46.654453, 27.423777, 38.642899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.986225, 27.488916, 37.818371>,  <47.204296, 27.106369, 38.348068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.986225, 27.488916, 37.818371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.797272, 27.653416, 38.130199>,  <46.683899, 27.752115, 38.317295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.797272, 27.653416, 38.130199>,  <46.986225, 27.488916, 37.818371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.797272, 27.653416, 38.130199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088494, 0.902135, -0.422281,
		-0.876938, -0.130492, -0.462548,
		-0.472385, 0.411247, 0.779569,
		46.655556, 27.776791, 38.364071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.402248, 27.839716, 37.534519>,  <46.986225, 27.488916, 37.818371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.402248, 27.839716, 37.534519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.462101, 28.006748, 37.893013>,  <46.498013, 28.106968, 38.108109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.462101, 28.006748, 37.893013>,  <46.402248, 27.839716, 37.534519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.462101, 28.006748, 37.893013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005850, 0.906049, -0.423132,
		-0.988725, 0.068557, 0.133130,
		0.149631, 0.417582, 0.896234,
		46.506989, 28.132023, 38.161884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.826775, 28.263659, 37.683239>,  <46.402248, 27.839716, 37.534519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.826775, 28.263659, 37.683239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.143795, 28.390316, 37.891697>,  <46.334007, 28.466311, 38.016773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.143795, 28.390316, 37.891697>,  <45.826775, 28.263659, 37.683239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.143795, 28.390316, 37.891697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053257, 0.887296, -0.458115,
		-0.607471, 0.335327, 0.720094,
		0.792554, 0.316642, 0.521148,
		46.381561, 28.485308, 38.048042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.656502, 28.971506, 37.915218>,  <45.826775, 28.263659, 37.683239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.656502, 28.971506, 37.915218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.055538, 28.944881, 37.923019>,  <46.294960, 28.928907, 37.927700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.055538, 28.944881, 37.923019>,  <45.656502, 28.971506, 37.915218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.055538, 28.944881, 37.923019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068026, 0.884057, -0.462402,
		0.013537, 0.462615, 0.886456,
		0.997592, -0.066562, 0.019503,
		46.354816, 28.924913, 37.928871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.867004, 29.624292, 38.074684>,  <45.656502, 28.971506, 37.915218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.867004, 29.624292, 38.074684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.203518, 29.487387, 37.907303>,  <46.405426, 29.405243, 37.806873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.203518, 29.487387, 37.907303>,  <45.867004, 29.624292, 38.074684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.203518, 29.487387, 37.907303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209897, 0.920130, -0.330611,
		0.498187, 0.190304, 0.845928,
		0.841281, -0.342264, -0.418452,
		46.455902, 29.384708, 37.781769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.413925, 30.091831, 38.274422>,  <45.867004, 29.624292, 38.074684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.413925, 30.091831, 38.274422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.546272, 29.899048, 37.949894>,  <46.625679, 29.783379, 37.755177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.546272, 29.899048, 37.949894>,  <46.413925, 30.091831, 38.274422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.546272, 29.899048, 37.949894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412272, 0.847183, -0.335132,
		0.848859, -0.223603, 0.479000,
		0.330864, -0.481958, -0.811323,
		46.645531, 29.754461, 37.706497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.054771, 30.390354, 38.225044>,  <46.413925, 30.091831, 38.274422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.054771, 30.390354, 38.225044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.928669, 30.232357, 37.879883>,  <46.853008, 30.137560, 37.672787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.928669, 30.232357, 37.879883>,  <47.054771, 30.390354, 38.225044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.928669, 30.232357, 37.879883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066980, 0.897738, -0.435409,
		0.946641, -0.195061, -0.256558,
		-0.315253, -0.394992, -0.862900,
		46.834091, 30.113859, 37.621014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.551308, 30.419180, 37.690746>,  <47.054771, 30.390354, 38.225044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.551308, 30.419180, 37.690746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.207096, 30.394939, 37.488430>,  <47.000568, 30.380396, 37.367039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.207096, 30.394939, 37.488430>,  <47.551308, 30.419180, 37.690746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.207096, 30.394939, 37.488430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090416, 0.958963, -0.268728,
		0.501321, -0.276979, -0.819732,
		-0.860524, -0.060602, -0.505792,
		46.948940, 30.376759, 37.336693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.736687, 30.857367, 36.979973>,  <47.551308, 30.419180, 37.690746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.736687, 30.857367, 36.979973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.340317, 30.804613, 36.969608>,  <47.102493, 30.772961, 36.963390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.340317, 30.804613, 36.969608>,  <47.736687, 30.857367, 36.979973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.340317, 30.804613, 36.969608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106335, 0.887169, -0.449024,
		0.082207, -0.442195, -0.893144,
		-0.990926, -0.131885, -0.025910,
		47.043037, 30.765047, 36.961834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.508316, 31.028704, 36.294159>,  <47.736687, 30.857367, 36.979973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.508316, 31.028704, 36.294159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.163712, 31.041998, 36.496819>,  <46.956947, 31.049974, 36.618412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.163712, 31.041998, 36.496819>,  <47.508316, 31.028704, 36.294159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.163712, 31.041998, 36.496819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227040, 0.867318, -0.442959,
		-0.454143, -0.496644, -0.739661,
		-0.861515, 0.033234, 0.506644,
		46.905258, 31.051968, 36.648811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.951015, 31.178282, 35.823517>,  <47.508316, 31.028704, 36.294159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.951015, 31.178282, 35.823517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.812752, 31.275362, 36.186089>,  <46.729794, 31.333611, 36.403633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.812752, 31.275362, 36.186089>,  <46.951015, 31.178282, 35.823517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.812752, 31.275362, 36.186089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441868, 0.810073, -0.385401,
		-0.827813, -0.533740, -0.172766,
		-0.345657, 0.242700, 0.906432,
		46.709053, 31.348171, 36.458019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.279770, 31.214836, 35.742676>,  <46.951015, 31.178282, 35.823517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.279770, 31.214836, 35.742676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.329456, 31.424034, 36.079971>,  <46.359268, 31.549553, 36.282349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.329456, 31.424034, 36.079971>,  <46.279770, 31.214836, 35.742676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.329456, 31.424034, 36.079971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454443, 0.785437, -0.420202,
		-0.882072, -0.331005, 0.335238,
		0.124219, 0.522995, 0.843236,
		46.366722, 31.580933, 36.332943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.607082, 31.498011, 35.987503>,  <46.279770, 31.214836, 35.742676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.607082, 31.498011, 35.987503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.902279, 31.727999, 36.128799>,  <46.079395, 31.865992, 36.213577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.902279, 31.727999, 36.128799>,  <45.607082, 31.498011, 35.987503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.902279, 31.727999, 36.128799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486353, 0.816070, -0.312235,
		-0.467796, 0.058625, 0.881890,
		0.737988, 0.574972, 0.353242,
		46.123676, 31.900490, 36.234772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.227695, 32.058147, 36.446690>,  <45.607082, 31.498011, 35.987503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.227695, 32.058147, 36.446690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.580639, 32.214451, 36.341812>,  <45.792404, 32.308235, 36.278885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.580639, 32.214451, 36.341812>,  <45.227695, 32.058147, 36.446690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.580639, 32.214451, 36.341812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469622, 0.766635, -0.437866,
		0.029902, 0.509486, 0.859959,
		0.882361, 0.390763, -0.262190,
		45.845348, 32.331680, 36.263157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.014271, 32.809425, 36.439480>,  <45.227695, 32.058147, 36.446690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.014271, 32.809425, 36.439480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.366894, 32.779106, 36.253098>,  <45.578468, 32.760914, 36.141270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.366894, 32.779106, 36.253098>,  <45.014271, 32.809425, 36.439480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.366894, 32.779106, 36.253098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162449, 0.878034, -0.450185,
		0.443248, 0.472557, 0.761723,
		0.881557, -0.075802, -0.465953,
		45.631359, 32.756367, 36.113312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.447166, 33.314369, 36.691990>,  <45.014271, 32.809425, 36.439480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.447166, 33.314369, 36.691990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.581322, 33.213398, 36.328938>,  <45.661816, 33.152817, 36.111107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.581322, 33.213398, 36.328938>,  <45.447166, 33.314369, 36.691990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.581322, 33.213398, 36.328938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075420, 0.967536, -0.241216,
		0.939056, 0.012448, 0.343538,
		0.335388, -0.252425, -0.907632,
		45.681938, 33.137669, 36.056648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.926937, 33.929005, 36.404640>,  <45.447166, 33.314369, 36.691990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.926937, 33.929005, 36.404640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.844189, 33.713223, 36.078156>,  <45.794540, 33.583755, 35.882267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.844189, 33.713223, 36.078156>,  <45.926937, 33.929005, 36.404640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.844189, 33.713223, 36.078156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016738, 0.832181, -0.554251,
		0.978226, -0.128319, -0.163122,
		-0.206868, -0.539452, -0.816209,
		45.782127, 33.551388, 35.833294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.307850, 34.217072, 35.829132>,  <45.926937, 33.929005, 36.404640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.307850, 34.217072, 35.829132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.034950, 33.986526, 35.649200>,  <45.871212, 33.848198, 35.541241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.034950, 33.986526, 35.649200>,  <46.307850, 34.217072, 35.829132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.034950, 33.986526, 35.649200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137945, 0.705684, -0.694969,
		0.717998, -0.412082, -0.560952,
		-0.682239, -0.576367, -0.449835,
		45.830276, 33.813618, 35.514252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.492920, 34.041107, 35.085320>,  <46.307850, 34.217072, 35.829132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.492920, 34.041107, 35.085320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.099152, 34.063713, 35.151924>,  <45.862892, 34.077274, 35.191887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.099152, 34.063713, 35.151924>,  <46.492920, 34.041107, 35.085320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.099152, 34.063713, 35.151924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103058, 0.581856, -0.806736,
		-0.142480, -0.811326, -0.566965,
		-0.984418, 0.056513, 0.166516,
		45.803825, 34.080666, 35.201878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.015514, 34.044807, 35.741348>,  <46.492920, 34.041107, 35.085320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.015514, 34.044807, 35.741348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.141552, 34.424213, 35.754208>,  <47.217175, 34.651855, 35.761925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.141552, 34.424213, 35.754208>,  <47.015514, 34.044807, 35.741348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.141552, 34.424213, 35.754208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890373, -0.307168, 0.335983,
		0.328559, -0.077243, -0.941319,
		0.315096, 0.948515, 0.032148,
		47.236080, 34.708767, 35.763851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.711205, 34.258411, 35.389740>,  <47.015514, 34.044807, 35.741348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.711205, 34.258411, 35.389740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.663445, 34.511292, 35.695961>,  <47.634789, 34.663021, 35.879692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.663445, 34.511292, 35.695961>,  <47.711205, 34.258411, 35.389740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.663445, 34.511292, 35.695961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919442, -0.220564, 0.325543,
		0.374661, 0.742748, -0.554937,
		-0.119397, 0.632200, 0.765550,
		47.627625, 34.700951, 35.925625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.432468, 34.922073, 35.002468>,  <47.711205, 34.258411, 35.389740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.432468, 34.922073, 35.002468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.816750, 34.997211, 35.084206>,  <48.047318, 35.042294, 35.133247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.816750, 34.997211, 35.084206>,  <47.432468, 34.922073, 35.002468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.816750, 34.997211, 35.084206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137052, 0.319165, -0.937737,
		-0.241367, 0.928896, 0.280880,
		0.960707, 0.187844, 0.204343,
		48.104961, 35.053566, 35.145508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.689697, 39.034641, 43.698376> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.323818, 39.030579, 43.859982>,  <37.104290, 39.028141, 43.956947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.323818, 39.030579, 43.859982>,  <37.689697, 39.034641, 43.698376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.323818, 39.030579, 43.859982> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403977, 0.051690, -0.913307,
		-0.011612, -0.998612, -0.051382,
		-0.914695, -0.010152, 0.404017,
		37.049408, 39.027531, 43.981186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.259441, 38.447758, 43.421326>,  <37.689697, 39.034641, 43.698376>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.259441, 38.447758, 43.421326> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.014359, 38.737793, 43.547073>,  <36.867310, 38.911816, 43.622524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.014359, 38.737793, 43.547073>,  <37.259441, 38.447758, 43.421326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.014359, 38.737793, 43.547073> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371048, 0.087292, -0.924502,
		-0.697791, -0.683098, 0.215559,
		-0.612709, 0.725091, 0.314374,
		36.830547, 38.955322, 43.641384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.721279, 38.320347, 43.012787>,  <37.259441, 38.447758, 43.421326>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.721279, 38.320347, 43.012787> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.638432, 38.686283, 43.151443>,  <36.588722, 38.905846, 43.234638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.638432, 38.686283, 43.151443>,  <36.721279, 38.320347, 43.012787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.638432, 38.686283, 43.151443> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438200, 0.230043, -0.868942,
		-0.874690, -0.331875, 0.353238,
		-0.207120, 0.914844, 0.346644,
		36.576294, 38.960735, 43.255436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.960011, 38.459251, 42.815109>,  <36.721279, 38.320347, 43.012787>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.960011, 38.459251, 42.815109> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.143642, 38.808796, 42.879131>,  <36.253822, 39.018520, 42.917545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.143642, 38.808796, 42.879131>,  <35.960011, 38.459251, 42.815109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.143642, 38.808796, 42.879131> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429289, 0.375934, -0.821209,
		-0.777790, 0.308292, 0.547721,
		0.459079, 0.873859, 0.160051,
		36.281364, 39.070953, 42.927147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.399902, 39.010494, 42.838921>,  <35.960011, 38.459251, 42.815109>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.399902, 39.010494, 42.838921> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.757439, 39.134495, 42.709343>,  <35.971962, 39.208897, 42.631596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.757439, 39.134495, 42.709343>,  <35.399902, 39.010494, 42.838921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.757439, 39.134495, 42.709343> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438567, 0.454143, -0.775508,
		-0.093293, 0.835255, 0.541891,
		0.893843, 0.310005, -0.323947,
		36.025593, 39.227497, 42.612160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.242508, 39.608604, 42.490421>,  <35.399902, 39.010494, 42.838921>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.242508, 39.608604, 42.490421> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.610065, 39.542461, 42.347153>,  <35.830601, 39.502773, 42.261192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.610065, 39.542461, 42.347153>,  <35.242508, 39.608604, 42.490421>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.610065, 39.542461, 42.347153> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297171, 0.307003, -0.904123,
		0.259466, 0.937233, 0.232963,
		0.918895, -0.165360, -0.358175,
		35.885735, 39.492855, 42.239700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.361336, 40.188530, 42.014782>,  <35.242508, 39.608604, 42.490421>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.361336, 40.188530, 42.014782> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.649815, 39.928673, 41.918583>,  <35.822903, 39.772758, 41.860863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.649815, 39.928673, 41.918583>,  <35.361336, 40.188530, 42.014782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.649815, 39.928673, 41.918583> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265454, 0.061495, -0.962160,
		0.639847, 0.757750, -0.128099,
		0.721200, -0.649640, -0.240495,
		35.866173, 39.733780, 41.846436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.783310, 40.510040, 41.362392>,  <35.361336, 40.188530, 42.014782>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.783310, 40.510040, 41.362392> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.864574, 40.118389, 41.364983>,  <35.913334, 39.883400, 41.366535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.864574, 40.118389, 41.364983>,  <35.783310, 40.510040, 41.362392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.864574, 40.118389, 41.364983> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097230, -0.026754, -0.994902,
		0.974307, 0.201492, -0.100635,
		0.203158, -0.979125, 0.006475,
		35.925522, 39.824654, 41.366924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.185829, 40.403530, 40.750874>,  <35.783310, 40.510040, 41.362392>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.185829, 40.403530, 40.750874> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.046497, 40.042061, 40.850498>,  <35.962898, 39.825180, 40.910275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.046497, 40.042061, 40.850498>,  <36.185829, 40.403530, 40.750874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.046497, 40.042061, 40.850498> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002751, -0.264720, -0.964321,
		0.937368, -0.336587, 0.089724,
		-0.348329, -0.903677, 0.249066,
		35.941998, 39.770958, 40.925217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.764931, 39.814190, 40.631268>,  <36.185829, 40.403530, 40.750874>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.764931, 39.814190, 40.631268> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.397346, 39.657646, 40.611843>,  <36.176796, 39.563721, 40.600189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.397346, 39.657646, 40.611843>,  <36.764931, 39.814190, 40.631268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.397346, 39.657646, 40.611843> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258504, -0.504808, -0.823617,
		0.297813, -0.769422, 0.565064,
		-0.918958, -0.391355, -0.048561,
		36.121658, 39.540241, 40.597275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.845356, 39.176064, 40.431053>,  <36.764931, 39.814190, 40.631268>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.845356, 39.176064, 40.431053> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.451294, 39.190693, 40.363956>,  <36.214859, 39.199471, 40.323700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.451294, 39.190693, 40.363956>,  <36.845356, 39.176064, 40.431053>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.451294, 39.190693, 40.363956> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106291, -0.637343, -0.763214,
		-0.134819, -0.769712, 0.623993,
		-0.985153, 0.036571, -0.167740,
		36.155746, 39.201664, 40.313633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.812813, 38.574860, 40.188076>,  <36.845356, 39.176064, 40.431053>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.812813, 38.574860, 40.188076> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.451263, 38.724453, 40.104980>,  <36.234333, 38.814209, 40.055122>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.451263, 38.724453, 40.104980>,  <36.812813, 38.574860, 40.188076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.451263, 38.724453, 40.104980> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156007, -0.740291, -0.653935,
		-0.398345, -0.558665, 0.727471,
		-0.903871, 0.373982, -0.207736,
		36.180103, 38.836647, 40.042660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.324287, 38.029099, 40.236874>,  <36.812813, 38.574860, 40.188076>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.324287, 38.029099, 40.236874> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.177578, 38.306499, 39.988831>,  <36.089554, 38.472942, 39.840004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.177578, 38.306499, 39.988831>,  <36.324287, 38.029099, 40.236874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.177578, 38.306499, 39.988831> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240347, -0.714562, -0.656989,
		-0.898729, -0.091923, 0.428762,
		-0.366769, 0.693506, -0.620104,
		36.067547, 38.514553, 39.802799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.705963, 37.694225, 40.038673>,  <36.324287, 38.029099, 40.236874>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.705963, 37.694225, 40.038673> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.758251, 37.992607, 39.777454>,  <35.789623, 38.171635, 39.620724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.758251, 37.992607, 39.777454>,  <35.705963, 37.694225, 40.038673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.758251, 37.992607, 39.777454> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389805, -0.566977, -0.725665,
		-0.911573, 0.349417, 0.216662,
		0.130717, 0.745952, -0.653045,
		35.797466, 38.216393, 39.581539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.119766, 37.620274, 39.601238>,  <35.705963, 37.694225, 40.038673>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.119766, 37.620274, 39.601238> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.368595, 37.851303, 39.389790>,  <35.517891, 37.989922, 39.262920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.368595, 37.851303, 39.389790>,  <35.119766, 37.620274, 39.601238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.368595, 37.851303, 39.389790> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350669, -0.398125, -0.847660,
		-0.700043, 0.712673, -0.045125,
		0.622070, 0.577575, -0.528617,
		35.555218, 38.024574, 39.231205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.804142, 37.896065, 39.041706>,  <35.119766, 37.620274, 39.601238>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.804142, 37.896065, 39.041706> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.191826, 37.923759, 38.947193>,  <35.424438, 37.940376, 38.890484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.191826, 37.923759, 38.947193>,  <34.804142, 37.896065, 39.041706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.191826, 37.923759, 38.947193> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143126, -0.622441, -0.769469,
		-0.200349, 0.779598, -0.593369,
		0.969214, 0.069236, -0.236286,
		35.482590, 37.944530, 38.876308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.785980, 38.103241, 38.309235>,  <34.804142, 37.896065, 39.041706>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.785980, 38.103241, 38.309235> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.155540, 37.967575, 38.380074>,  <35.377277, 37.886173, 38.422577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.155540, 37.967575, 38.380074>,  <34.785980, 38.103241, 38.309235>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.155540, 37.967575, 38.380074> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046795, -0.559550, -0.827475,
		0.379749, 0.756221, -0.532842,
		0.923905, -0.339167, 0.177101,
		35.432713, 37.865826, 38.433205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.287552, 38.263294, 37.725460>,  <34.785980, 38.103241, 38.309235>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.287552, 38.263294, 37.725460> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.441833, 37.943943, 37.910427>,  <35.534401, 37.752331, 38.021408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.441833, 37.943943, 37.910427>,  <35.287552, 38.263294, 37.725460>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.441833, 37.943943, 37.910427> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073300, -0.526127, -0.847241,
		0.919707, 0.292888, -0.261450,
		0.385703, -0.798377, 0.462414,
		35.557545, 37.704430, 38.049152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.765167, 38.056702, 37.290810>,  <35.287552, 38.263294, 37.725460>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.765167, 38.056702, 37.290810> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.709064, 37.743954, 37.533794>,  <35.675404, 37.556305, 37.679585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.709064, 37.743954, 37.533794>,  <35.765167, 38.056702, 37.290810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.709064, 37.743954, 37.533794> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101829, -0.598878, -0.794340,
		0.984865, -0.173269, 0.004380,
		-0.140257, -0.781872, 0.607458,
		35.666988, 37.509392, 37.716030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.113525, 37.570541, 36.975571>,  <35.765167, 38.056702, 37.290810>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.113525, 37.570541, 36.975571> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.872211, 37.359112, 37.214455>,  <35.727425, 37.232254, 37.357784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.872211, 37.359112, 37.214455>,  <36.113525, 37.570541, 36.975571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.872211, 37.359112, 37.214455> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264429, -0.573896, -0.775061,
		0.752413, -0.625501, 0.206452,
		-0.603284, -0.528575, 0.597208,
		35.691227, 37.200539, 37.393616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.337383, 36.909641, 36.937740>,  <36.113525, 37.570541, 36.975571>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.337383, 36.909641, 36.937740> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.947681, 36.877186, 37.021877>,  <35.713860, 36.857712, 37.072357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.947681, 36.877186, 37.021877>,  <36.337383, 36.909641, 36.937740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.947681, 36.877186, 37.021877> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100239, -0.679795, -0.726519,
		0.201937, -0.728900, 0.654161,
		-0.974255, -0.081139, 0.210340,
		35.655403, 36.852844, 37.084980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.221996, 36.173180, 37.046677>,  <36.337383, 36.909641, 36.937740>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.221996, 36.173180, 37.046677> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.855129, 36.311047, 36.966667>,  <35.635010, 36.393768, 36.918663>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.855129, 36.311047, 36.966667>,  <36.221996, 36.173180, 37.046677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.855129, 36.311047, 36.966667> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144927, -0.756059, -0.638257,
		-0.371214, -0.556400, 0.743384,
		-0.917167, 0.344666, -0.200023,
		35.579979, 36.414448, 36.906662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.421074, 35.740818, 36.418644>,  <36.221996, 36.173180, 37.046677>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.421074, 35.740818, 36.418644> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.805573, 35.723995, 36.309654>,  <37.036270, 35.713902, 36.244263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.805573, 35.723995, 36.309654>,  <36.421074, 35.740818, 36.418644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.805573, 35.723995, 36.309654> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262162, 0.445297, 0.856144,
		0.085322, -0.894395, 0.439065,
		0.961245, -0.042058, -0.272470,
		37.093945, 35.711376, 36.227913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.891560, 35.458996, 37.023983>,  <36.421074, 35.740818, 36.418644>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.891560, 35.458996, 37.023983> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.142536, 35.679424, 36.803932>,  <37.293121, 35.811680, 36.671902>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.142536, 35.679424, 36.803932>,  <36.891560, 35.458996, 37.023983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.142536, 35.679424, 36.803932> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301376, 0.479572, 0.824125,
		0.717976, -0.682885, 0.134824,
		0.627441, 0.551070, -0.550127,
		37.330769, 35.844746, 36.638893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.601368, 35.486305, 37.297516>,  <36.891560, 35.458996, 37.023983>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.601368, 35.486305, 37.297516> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.566082, 35.804348, 37.057507>,  <37.544910, 35.995174, 36.913502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.566082, 35.804348, 37.057507>,  <37.601368, 35.486305, 37.297516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.566082, 35.804348, 37.057507> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456099, 0.567755, 0.685294,
		0.885546, -0.213219, -0.412729,
		-0.088212, 0.795105, -0.600022,
		37.539619, 36.042881, 36.877499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.189014, 35.797504, 37.438160>,  <37.601368, 35.486305, 37.297516>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.189014, 35.797504, 37.438160> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.986362, 36.097527, 37.268108>,  <37.864769, 36.277542, 37.166077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.986362, 36.097527, 37.268108>,  <38.189014, 35.797504, 37.438160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.986362, 36.097527, 37.268108> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484827, 0.655600, 0.578905,
		0.712927, 0.087179, -0.695798,
		-0.506634, 0.750059, -0.425128,
		37.834373, 36.322544, 37.140572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.704250, 36.215691, 37.394791>,  <38.189014, 35.797504, 37.438160>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.704250, 36.215691, 37.394791> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.359684, 36.415531, 37.358215>,  <38.152943, 36.535435, 37.336269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.359684, 36.415531, 37.358215>,  <38.704250, 36.215691, 37.394791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.359684, 36.415531, 37.358215> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311875, 0.662399, 0.681148,
		0.400868, 0.558236, -0.726414,
		-0.861417, 0.499600, -0.091435,
		38.101257, 36.565411, 37.330784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.919830, 36.911564, 37.361919>,  <38.704250, 36.215691, 37.394791>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.919830, 36.911564, 37.361919> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.530693, 36.949406, 37.446411>,  <38.297211, 36.972111, 37.497105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.530693, 36.949406, 37.446411>,  <38.919830, 36.911564, 37.361919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.530693, 36.949406, 37.446411> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197377, 0.815740, 0.543700,
		-0.120870, 0.570629, -0.812264,
		-0.972848, 0.094605, 0.211227,
		38.238838, 36.977787, 37.509781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.766808, 37.546257, 37.339149>,  <38.919830, 36.911564, 37.361919>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.766808, 37.546257, 37.339149> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.455322, 37.435783, 37.564480>,  <38.268433, 37.369499, 37.699677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.455322, 37.435783, 37.564480>,  <38.766808, 37.546257, 37.339149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.455322, 37.435783, 37.564480> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311550, 0.609131, 0.729312,
		-0.544562, 0.743426, -0.388292,
		-0.778710, -0.276183, 0.563324,
		38.221710, 37.352928, 37.733479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.375748, 38.115116, 37.645760>,  <38.766808, 37.546257, 37.339149>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.375748, 38.115116, 37.645760> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.274734, 37.820972, 37.897308>,  <38.214127, 37.644485, 38.048237>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.274734, 37.820972, 37.897308>,  <38.375748, 38.115116, 37.645760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.274734, 37.820972, 37.897308> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130855, 0.618008, 0.775205,
		-0.958699, 0.278056, -0.059843,
		-0.252534, -0.735358, 0.628869,
		38.198975, 37.600365, 38.085968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.023464, 38.482510, 38.182034>,  <38.375748, 38.115116, 37.645760>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.023464, 38.482510, 38.182034> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.101322, 38.133564, 38.361404>,  <38.148037, 37.924194, 38.469028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.101322, 38.133564, 38.361404>,  <38.023464, 38.482510, 38.182034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.101322, 38.133564, 38.361404> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165888, 0.479867, 0.861515,
		-0.966744, -0.093301, 0.238119,
		0.194645, -0.872366, 0.448431,
		38.159718, 37.871853, 38.495934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.657562, 38.531441, 38.833496>,  <38.023464, 38.482510, 38.182034>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.657562, 38.531441, 38.833496> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.931293, 38.242435, 38.872845>,  <38.095531, 38.069035, 38.896454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.931293, 38.242435, 38.872845>,  <37.657562, 38.531441, 38.833496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.931293, 38.242435, 38.872845> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087838, 0.215610, 0.972521,
		-0.723866, -0.656880, 0.211011,
		0.684326, -0.722510, 0.098374,
		38.136593, 38.025684, 38.902355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.617340, 38.274204, 39.465046>,  <37.657562, 38.531441, 38.833496>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.617340, 38.274204, 39.465046> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.974255, 38.099159, 39.420650>,  <38.188404, 37.994133, 39.394012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.974255, 38.099159, 39.420650>,  <37.617340, 38.274204, 39.465046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.974255, 38.099159, 39.420650> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221024, 0.209055, 0.952599,
		-0.393668, -0.874522, 0.283260,
		0.892286, -0.437615, -0.110992,
		38.241940, 37.967876, 39.387352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.719746, 37.869526, 39.998402>,  <37.617340, 38.274204, 39.465046>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.719746, 37.869526, 39.998402> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.094528, 37.928226, 39.871548>,  <38.319397, 37.963448, 39.795433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.094528, 37.928226, 39.871548>,  <37.719746, 37.869526, 39.998402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.094528, 37.928226, 39.871548> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317326, 0.022763, 0.948043,
		0.146351, -0.988911, -0.025242,
		0.936955, 0.146757, -0.317138,
		38.375614, 37.972252, 39.776405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.175613, 37.390774, 40.432087>,  <37.719746, 37.869526, 39.998402>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.175613, 37.390774, 40.432087> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.409828, 37.681381, 40.288242>,  <38.550358, 37.855743, 40.201935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.409828, 37.681381, 40.288242>,  <38.175613, 37.390774, 40.432087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.409828, 37.681381, 40.288242> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365866, 0.159017, 0.916982,
		0.723386, -0.668497, -0.172697,
		0.585538, 0.726516, -0.359611,
		38.585491, 37.899338, 40.180359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.762016, 37.269417, 40.655384>,  <38.175613, 37.390774, 40.432087>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.762016, 37.269417, 40.655384> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.787594, 37.657330, 40.561203>,  <38.802940, 37.890076, 40.504692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.787594, 37.657330, 40.561203>,  <38.762016, 37.269417, 40.655384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.787594, 37.657330, 40.561203> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312068, 0.204675, 0.927751,
		0.947905, -0.132807, -0.289548,
		0.063948, 0.969779, -0.235457,
		38.806778, 37.948261, 40.490566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.430973, 37.503574, 40.851013>,  <38.762016, 37.269417, 40.655384>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.430973, 37.503574, 40.851013> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.205395, 37.833656, 40.838390>,  <39.070045, 38.031704, 40.830818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.205395, 37.833656, 40.838390>,  <39.430973, 37.503574, 40.851013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.205395, 37.833656, 40.838390> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202131, 0.174988, 0.963599,
		0.800690, 0.537042, -0.265484,
		-0.563949, 0.825206, -0.031558,
		39.036209, 38.081219, 40.828922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.751400, 37.862396, 41.280041>,  <39.430973, 37.503574, 40.851013>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.751400, 37.862396, 41.280041> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.403683, 38.055134, 41.235931>,  <39.195053, 38.170776, 41.209465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.403683, 38.055134, 41.235931>,  <39.751400, 37.862396, 41.280041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.403683, 38.055134, 41.235931> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025162, 0.265929, 0.963664,
		0.493662, 0.834929, -0.243294,
		-0.869289, 0.481847, -0.110270,
		39.142895, 38.199688, 41.202850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.868019, 38.642654, 41.514153>,  <39.751400, 37.862396, 41.280041>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.868019, 38.642654, 41.514153> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.480297, 38.545483, 41.529255>,  <39.247662, 38.487179, 41.538315>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.480297, 38.545483, 41.529255>,  <39.868019, 38.642654, 41.514153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.480297, 38.545483, 41.529255> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026909, 0.257487, 0.965907,
		-0.244370, 0.935246, -0.256122,
		-0.969309, -0.242931, 0.037755,
		39.189503, 38.472603, 41.540581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.654819, 39.177647, 41.814861>,  <39.868019, 38.642654, 41.514153>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.654819, 39.177647, 41.814861> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.362156, 38.911629, 41.874718>,  <39.186558, 38.752018, 41.910633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.362156, 38.911629, 41.874718>,  <39.654819, 39.177647, 41.814861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.362156, 38.911629, 41.874718> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013105, 0.233203, 0.972340,
		-0.681547, 0.709458, -0.179340,
		-0.731657, -0.665045, 0.149641,
		39.142658, 38.712116, 41.919609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.005424, 39.441616, 42.202698> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.985512, 39.045002, 42.250664>,  <38.973564, 38.807034, 42.279442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.985512, 39.045002, 42.250664>,  <39.005424, 39.441616, 42.202698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.985512, 39.045002, 42.250664> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049727, 0.117450, 0.991833,
		-0.997522, 0.055334, 0.043459,
		-0.049778, -0.991536, 0.119911,
		38.970577, 38.747540, 42.286636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.682419, 39.431347, 42.831379>,  <39.005424, 39.441616, 42.202698>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.682419, 39.431347, 42.831379> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.832314, 39.063622, 42.783321>,  <38.922249, 38.842987, 42.754486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.832314, 39.063622, 42.783321>,  <38.682419, 39.431347, 42.831379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.832314, 39.063622, 42.783321> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066330, -0.102667, 0.992502,
		-0.924755, -0.379897, 0.022505,
		0.374738, -0.919314, -0.120141,
		38.944736, 38.787827, 42.747280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.273174, 38.982430, 43.237530>,  <38.682419, 39.431347, 42.831379>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.273174, 38.982430, 43.237530> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.621227, 38.792503, 43.184734>,  <38.830059, 38.678547, 43.153057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.621227, 38.792503, 43.184734>,  <38.273174, 38.982430, 43.237530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.621227, 38.792503, 43.184734> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148149, -0.003406, 0.988959,
		-0.470020, -0.880080, 0.067380,
		0.870134, -0.474813, -0.131984,
		38.882267, 38.650059, 43.145138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.193180, 38.375103, 43.790367>,  <38.273174, 38.982430, 43.237530>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.193180, 38.375103, 43.790367> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.573750, 38.415211, 43.673927>,  <38.802090, 38.439278, 43.604065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.573750, 38.415211, 43.673927>,  <38.193180, 38.375103, 43.790367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.573750, 38.415211, 43.673927> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301213, -0.107436, 0.947485,
		0.063735, -0.989142, -0.132421,
		0.951425, 0.100275, -0.291095,
		38.859177, 38.445293, 43.586597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.578465, 37.820492, 44.101700>,  <38.193180, 38.375103, 43.790367>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.578465, 37.820492, 44.101700> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.796059, 38.150303, 44.039429>,  <38.926617, 38.348190, 44.002068>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.796059, 38.150303, 44.039429>,  <38.578465, 37.820492, 44.101700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.796059, 38.150303, 44.039429> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227056, 0.033959, 0.973290,
		0.807789, -0.564804, -0.168740,
		0.543988, 0.824526, -0.155673,
		38.959255, 38.397659, 43.992725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.266823, 37.581844, 44.377918>,  <38.578465, 37.820492, 44.101700>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.266823, 37.581844, 44.377918> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.263416, 37.981499, 44.361679>,  <39.261372, 38.221291, 44.351936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.263416, 37.981499, 44.361679>,  <39.266823, 37.581844, 44.377918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.263416, 37.981499, 44.361679> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246019, 0.041447, 0.968379,
		0.969228, -0.001737, -0.246160,
		-0.008521, 0.999139, -0.040599,
		39.260860, 38.281242, 44.349499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.845886, 37.753384, 44.688999>,  <39.266823, 37.581844, 44.377918>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.845886, 37.753384, 44.688999> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.657562, 38.106277, 44.689735>,  <39.544567, 38.318012, 44.690178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.657562, 38.106277, 44.689735>,  <39.845886, 37.753384, 44.688999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.657562, 38.106277, 44.689735> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434732, 0.230180, 0.870647,
		0.767691, 0.410706, -0.491906,
		-0.470806, 0.882235, 0.001840,
		39.516319, 38.370949, 44.690289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.227253, 37.980247, 45.141266>,  <39.845886, 37.753384, 44.688999>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.227253, 37.980247, 45.141266> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.945419, 38.261280, 45.101383>,  <39.776318, 38.429901, 45.077454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.945419, 38.261280, 45.101383>,  <40.227253, 37.980247, 45.141266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.945419, 38.261280, 45.101383> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269635, 0.395036, 0.878205,
		0.656397, 0.591885, -0.467776,
		-0.704585, 0.702580, -0.099708,
		39.734043, 38.472054, 45.071472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.525272, 38.674465, 45.167534>,  <40.227253, 37.980247, 45.141266>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.525272, 38.674465, 45.167534> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.142673, 38.697620, 45.281914>,  <39.913113, 38.711514, 45.350540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.142673, 38.697620, 45.281914>,  <40.525272, 38.674465, 45.167534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.142673, 38.697620, 45.281914> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288475, 0.334018, 0.897337,
		-0.043565, 0.940787, -0.336186,
		-0.956496, 0.057889, 0.285945,
		39.855724, 38.714989, 45.367699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.360874, 39.365898, 45.471642>,  <40.525272, 38.674465, 45.167534>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.360874, 39.365898, 45.471642> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.085098, 39.114002, 45.614807>,  <39.919632, 38.962864, 45.700706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.085098, 39.114002, 45.614807>,  <40.360874, 39.365898, 45.471642>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.085098, 39.114002, 45.614807> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197654, 0.311807, 0.929359,
		-0.696852, 0.711482, -0.090502,
		-0.689441, -0.629738, 0.357911,
		39.878265, 38.925079, 45.722179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.022903, 39.691807, 45.959244>,  <40.360874, 39.365898, 45.471642>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.022903, 39.691807, 45.959244> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.955280, 39.309528, 46.055630>,  <39.914707, 39.080162, 46.113461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.955280, 39.309528, 46.055630>,  <40.022903, 39.691807, 45.959244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.955280, 39.309528, 46.055630> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212060, 0.203492, 0.955836,
		-0.962524, 0.212687, 0.168264,
		-0.169054, -0.955696, 0.240968,
		39.904564, 39.022820, 46.127922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.702484, 39.868393, 46.615990>,  <40.022903, 39.691807, 45.959244>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.702484, 39.868393, 46.615990> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.775280, 39.475101, 46.620865>,  <39.818958, 39.239128, 46.623791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.775280, 39.475101, 46.620865>,  <39.702484, 39.868393, 46.615990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.775280, 39.475101, 46.620865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031237, 0.018170, 0.999347,
		-0.982804, -0.181490, 0.034019,
		0.181989, -0.983225, 0.012188,
		39.829876, 39.180134, 46.624523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.355652, 39.612659, 47.222595>,  <39.702484, 39.868393, 46.615990>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.355652, 39.612659, 47.222595> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.632706, 39.341991, 47.122704>,  <39.798939, 39.179588, 47.062767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.632706, 39.341991, 47.122704>,  <39.355652, 39.612659, 47.222595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.632706, 39.341991, 47.122704> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237671, -0.112782, 0.964776,
		-0.681002, -0.727596, 0.082708,
		0.692639, -0.676672, -0.249733,
		39.840496, 39.138988, 47.047783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.328480, 38.846855, 47.567837>,  <39.355652, 39.612659, 47.222595>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.328480, 38.846855, 47.567837> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.709442, 38.927113, 47.476048>,  <39.938019, 38.975266, 47.420975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.709442, 38.927113, 47.476048>,  <39.328480, 38.846855, 47.567837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.709442, 38.927113, 47.476048> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259426, -0.138269, 0.955814,
		0.160046, -0.969858, -0.183741,
		0.952409, 0.200641, -0.229477,
		39.995167, 38.987305, 47.407204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.652134, 38.393768, 48.104038>,  <39.328480, 38.846855, 47.567837>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.652134, 38.393768, 48.104038> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.950077, 38.600983, 47.935837>,  <40.128845, 38.725311, 47.834915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.950077, 38.600983, 47.935837>,  <39.652134, 38.393768, 48.104038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.950077, 38.600983, 47.935837> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537092, -0.091600, 0.838535,
		0.395872, -0.850441, -0.346461,
		0.744861, 0.518034, -0.420503,
		40.173534, 38.756393, 47.809685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.277657, 38.062233, 48.219746>,  <39.652134, 38.393768, 48.104038>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.277657, 38.062233, 48.219746> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.397903, 38.436272, 48.144672>,  <40.470051, 38.660694, 48.099628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.397903, 38.436272, 48.144672>,  <40.277657, 38.062233, 48.219746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.397903, 38.436272, 48.144672> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548790, -0.008646, 0.835915,
		0.780038, -0.354290, -0.515771,
		0.300616, 0.935096, -0.187687,
		40.488087, 38.716801, 48.088367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.905533, 38.123535, 48.560211>,  <40.277657, 38.062233, 48.219746>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.905533, 38.123535, 48.560211> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.793419, 38.499928, 48.484329>,  <40.726151, 38.725765, 48.438801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.793419, 38.499928, 48.484329>,  <40.905533, 38.123535, 48.560211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.793419, 38.499928, 48.484329> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319841, 0.277879, 0.905806,
		0.905064, 0.193214, -0.378852,
		-0.280289, 0.940984, -0.189700,
		40.709332, 38.782223, 48.427418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.483093, 38.622967, 48.671043>,  <40.905533, 38.123535, 48.560211>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.483093, 38.622967, 48.671043> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.122757, 38.788387, 48.723904>,  <40.906555, 38.887642, 48.755619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.122757, 38.788387, 48.723904>,  <41.483093, 38.622967, 48.671043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.122757, 38.788387, 48.723904> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246832, 0.237459, 0.939514,
		0.357161, 0.878969, -0.315991,
		-0.900839, 0.413554, 0.132147,
		40.852505, 38.912453, 48.763546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.629292, 39.171360, 49.150841>,  <41.483093, 38.622967, 48.671043>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.629292, 39.171360, 49.150841> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.232025, 39.124832, 49.154572>,  <40.993664, 39.096916, 49.156811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.232025, 39.124832, 49.154572>,  <41.629292, 39.171360, 49.150841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.232025, 39.124832, 49.154572> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000703, 0.073928, 0.997263,
		-0.116694, 0.990456, -0.073341,
		-0.993168, -0.116323, 0.009323,
		40.934074, 39.089935, 49.157368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.338665, 39.717525, 49.575104>,  <41.629292, 39.171360, 49.150841>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.338665, 39.717525, 49.575104> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.041637, 39.450867, 49.549259>,  <40.863422, 39.290871, 49.533752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.041637, 39.450867, 49.549259>,  <41.338665, 39.717525, 49.575104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.041637, 39.450867, 49.549259> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274460, 0.214873, 0.937284,
		-0.610954, 0.713731, -0.342526,
		-0.742568, -0.666647, -0.064614,
		40.818867, 39.250874, 49.529877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.760227, 40.031357, 49.898304>,  <41.338665, 39.717525, 49.575104>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.760227, 40.031357, 49.898304> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.688473, 39.638687, 49.924057>,  <40.645420, 39.403088, 49.939510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.688473, 39.638687, 49.924057>,  <40.760227, 40.031357, 49.898304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.688473, 39.638687, 49.924057> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334630, 0.122431, 0.934363,
		-0.925118, 0.146066, -0.350459,
		-0.179386, -0.981670, 0.064385,
		40.634659, 39.344185, 49.943371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.452797, 39.920940, 50.478893>,  <40.760227, 40.031357, 49.898304>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.452797, 39.920940, 50.478893> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.458878, 39.526394, 50.413342>,  <40.462528, 39.289665, 50.374008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.458878, 39.526394, 50.413342>,  <40.452797, 39.920940, 50.478893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.458878, 39.526394, 50.413342> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416654, -0.155242, 0.895712,
		-0.908938, 0.054664, -0.413332,
		0.015204, -0.986363, -0.163881,
		40.463440, 39.230484, 50.364178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.820450, 39.601448, 50.694893>,  <40.452797, 39.920940, 50.478893>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.820450, 39.601448, 50.694893> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.111389, 39.327271, 50.708332>,  <40.285954, 39.162762, 50.716396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.111389, 39.327271, 50.708332>,  <39.820450, 39.601448, 50.694893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.111389, 39.327271, 50.708332> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269590, -0.240368, 0.932494,
		-0.631100, -0.687303, -0.359621,
		0.727347, -0.685447, 0.033593,
		40.329594, 39.121635, 50.718410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.539299, 38.985035, 50.957630>,  <39.820450, 39.601448, 50.694893>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.539299, 38.985035, 50.957630> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.925549, 39.014717, 51.057285>,  <40.157299, 39.032528, 51.117077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.925549, 39.014717, 51.057285>,  <39.539299, 38.985035, 50.957630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.925549, 39.014717, 51.057285> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242294, -0.090266, 0.965995,
		0.094172, -0.993149, -0.069183,
		0.965622, 0.074207, 0.249134,
		40.215237, 39.036980, 51.132027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.094479, 38.343422, 51.178192>,  <39.539299, 38.985035, 50.957630>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.094479, 38.343422, 51.178192> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.763367, 38.375710, 51.400276>,  <38.564697, 38.395081, 51.533527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.763367, 38.375710, 51.400276>,  <39.094479, 38.343422, 51.178192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.763367, 38.375710, 51.400276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560310, -0.169685, -0.810716,
		0.028773, -0.982187, 0.185688,
		-0.827783, 0.080716, 0.555211,
		38.515030, 38.399925, 51.566841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.706699, 37.748135, 50.979046>,  <39.094479, 38.343422, 51.178192>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.706699, 37.748135, 50.979046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.437973, 37.982708, 51.160046>,  <38.276737, 38.123451, 51.268646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.437973, 37.982708, 51.160046>,  <38.706699, 37.748135, 50.979046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.437973, 37.982708, 51.160046> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589421, -0.053259, -0.806069,
		-0.448606, -0.808244, 0.381437,
		-0.671815, 0.586435, 0.452503,
		38.236427, 38.158638, 51.295795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.118137, 37.438679, 50.871529>,  <38.706699, 37.748135, 50.979046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.118137, 37.438679, 50.871529> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.985966, 37.802601, 50.971985>,  <37.906662, 38.020954, 51.032257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.985966, 37.802601, 50.971985>,  <38.118137, 37.438679, 50.871529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.985966, 37.802601, 50.971985> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601741, 0.001928, -0.798689,
		-0.727136, -0.415028, 0.546831,
		-0.330424, 0.909806, 0.251141,
		37.886837, 38.075542, 51.047329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.425922, 37.410831, 50.754421>,  <38.118137, 37.438679, 50.871529>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.425922, 37.410831, 50.754421> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.510052, 37.801731, 50.743431>,  <37.560528, 38.036270, 50.736835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.510052, 37.801731, 50.743431>,  <37.425922, 37.410831, 50.754421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.510052, 37.801731, 50.743431> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332154, 0.044995, -0.942151,
		-0.919477, 0.207283, 0.334060,
		0.210323, 0.977246, -0.027478,
		37.573147, 38.094906, 50.735188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.725239, 37.805988, 50.642826>,  <37.425922, 37.410831, 50.754421>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.725239, 37.805988, 50.642826> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.014305, 38.051910, 50.516479>,  <37.187744, 38.199463, 50.440670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.014305, 38.051910, 50.516479>,  <36.725239, 37.805988, 50.642826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.014305, 38.051910, 50.516479> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481509, 0.119929, -0.868197,
		-0.495890, 0.779507, 0.382703,
		0.722663, 0.614805, -0.315868,
		37.231106, 38.236351, 50.421719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.320751, 38.242176, 50.232758>,  <36.725239, 37.805988, 50.642826>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.320751, 38.242176, 50.232758> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.695698, 38.313885, 50.113289>,  <36.920666, 38.356911, 50.041607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.695698, 38.313885, 50.113289>,  <36.320751, 38.242176, 50.232758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.695698, 38.313885, 50.113289> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316806, 0.082234, -0.944919,
		-0.144839, 0.980356, 0.133879,
		0.937367, 0.179274, -0.298672,
		36.976906, 38.367668, 50.023689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.354099, 38.882053, 49.901676>,  <36.320751, 38.242176, 50.232758>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.354099, 38.882053, 49.901676> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.696079, 38.719471, 49.772766>,  <36.901268, 38.621922, 49.695419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.696079, 38.719471, 49.772766>,  <36.354099, 38.882053, 49.901676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.696079, 38.719471, 49.772766> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207961, 0.300603, -0.930801,
		0.475204, 0.862806, 0.172474,
		0.854947, -0.406452, -0.322278,
		36.952564, 38.597534, 49.676083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.777283, 39.419636, 49.417137>,  <36.354099, 38.882053, 49.901676>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.777283, 39.419636, 49.417137> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.903854, 39.049435, 49.333893>,  <36.979797, 38.827312, 49.283947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.903854, 39.049435, 49.333893>,  <36.777283, 39.419636, 49.417137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.903854, 39.049435, 49.333893> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195832, 0.150928, -0.968953,
		0.928183, 0.347357, -0.133487,
		0.316426, -0.925507, -0.208113,
		36.998783, 38.771782, 49.271458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.010788, 39.561646, 48.761284>,  <36.777283, 39.419636, 49.417137>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.010788, 39.561646, 48.761284> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.018623, 39.162487, 48.786011>,  <37.023323, 38.922993, 48.800846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.018623, 39.162487, 48.786011>,  <37.010788, 39.561646, 48.761284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.018623, 39.162487, 48.786011> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095533, -0.063412, -0.993405,
		0.995234, 0.013551, -0.096574,
		0.019586, -0.997895, 0.061815,
		37.024498, 38.863117, 48.804554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.595112, 39.300968, 48.447025>,  <37.010788, 39.561646, 48.761284>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.595112, 39.300968, 48.447025> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.318871, 39.012081, 48.431652>,  <37.153126, 38.838749, 48.422428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.318871, 39.012081, 48.431652>,  <37.595112, 39.300968, 48.447025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.318871, 39.012081, 48.431652> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153527, -0.094456, -0.983620,
		0.706755, -0.685188, 0.176111,
		-0.690599, -0.722216, -0.038437,
		37.111691, 38.795418, 48.420120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.916603, 38.813911, 48.066841>,  <37.595112, 39.300968, 48.447025>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.916603, 38.813911, 48.066841> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.529034, 38.717312, 48.045406>,  <37.296494, 38.659351, 48.032547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.529034, 38.717312, 48.045406>,  <37.916603, 38.813911, 48.066841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.529034, 38.717312, 48.045406> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098448, -0.177734, -0.979142,
		0.226943, -0.953984, 0.195985,
		-0.968919, -0.241504, -0.053583,
		37.238358, 38.644859, 48.029331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.874386, 38.212742, 47.640423>,  <37.916603, 38.813911, 48.066841>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.874386, 38.212742, 47.640423> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.504936, 38.365692, 47.629726>,  <37.283268, 38.457462, 47.623310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.504936, 38.365692, 47.629726>,  <37.874386, 38.212742, 47.640423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.504936, 38.365692, 47.629726> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001238, -0.066779, -0.997767,
		-0.383310, -0.921590, 0.061205,
		-0.923619, 0.382378, -0.026738,
		37.227852, 38.480404, 47.621704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.564644, 37.934258, 47.032104>,  <37.874386, 38.212742, 47.640423>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.564644, 37.934258, 47.032104> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.343822, 38.251938, 47.133678>,  <37.211330, 38.442547, 47.194622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.343822, 38.251938, 47.133678>,  <37.564644, 37.934258, 47.032104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.343822, 38.251938, 47.133678> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108424, 0.233591, -0.966271,
		-0.826727, -0.560970, -0.042845,
		-0.552057, 0.794197, 0.253939,
		37.178207, 38.490196, 47.209862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.938602, 37.844349, 46.770744>,  <37.564644, 37.934258, 47.032104>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.938602, 37.844349, 46.770744> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.012451, 38.234947, 46.815247>,  <37.056763, 38.469307, 46.841949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.012451, 38.234947, 46.815247>,  <36.938602, 37.844349, 46.770744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.012451, 38.234947, 46.815247> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210325, 0.149839, -0.966081,
		-0.960040, 0.154962, 0.233045,
		0.184625, 0.976491, 0.111259,
		37.067841, 38.527893, 46.848625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.640793, 38.081268, 46.185368>,  <36.938602, 37.844349, 46.770744>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.640793, 38.081268, 46.185368> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.855217, 38.402985, 46.287945>,  <36.983871, 38.596012, 46.349491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.855217, 38.402985, 46.287945>,  <36.640793, 38.081268, 46.185368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.855217, 38.402985, 46.287945> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113904, 0.232088, -0.966002,
		-0.836462, 0.547042, 0.032801,
		0.536057, 0.804288, 0.256444,
		37.016033, 38.644272, 46.364880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.313328, 38.713394, 45.915340>,  <36.640793, 38.081268, 46.185368>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.313328, 38.713394, 45.915340> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.698444, 38.806561, 45.970161>,  <36.929516, 38.862461, 46.003056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.698444, 38.806561, 45.970161>,  <36.313328, 38.713394, 45.915340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.698444, 38.806561, 45.970161> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001347, 0.502996, -0.864288,
		-0.270241, 0.832314, 0.483966,
		0.962792, 0.232914, 0.137051,
		36.987282, 38.876434, 46.011276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.456505, 39.514641, 45.770336>,  <36.313328, 38.713394, 45.915340>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.456505, 39.514641, 45.770336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.768505, 39.275352, 45.696865>,  <36.955704, 39.131779, 45.652782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.768505, 39.275352, 45.696865>,  <36.456505, 39.514641, 45.770336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.768505, 39.275352, 45.696865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017390, 0.314122, -0.949223,
		0.625543, 0.737196, 0.255417,
		0.779996, -0.598221, -0.183677,
		37.002502, 39.095886, 45.641762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.948593, 39.954811, 45.465149>,  <36.456505, 39.514641, 45.770336>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.948593, 39.954811, 45.465149> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.059620, 39.586304, 45.356174>,  <37.126236, 39.365200, 45.290791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.059620, 39.586304, 45.356174>,  <36.948593, 39.954811, 45.465149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.059620, 39.586304, 45.356174> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026725, 0.290874, -0.956388,
		0.960335, 0.258181, 0.105358,
		0.277567, -0.921268, -0.272436,
		37.142891, 39.309921, 45.274445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.428375, 40.003544, 44.873024>,  <36.948593, 39.954811, 45.465149>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.428375, 40.003544, 44.873024> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.270096, 39.636456, 44.859135>,  <37.175129, 39.416203, 44.850803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.270096, 39.636456, 44.859135>,  <37.428375, 40.003544, 44.873024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.270096, 39.636456, 44.859135> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262729, 0.149344, -0.953242,
		0.879999, -0.368073, -0.300208,
		-0.395697, -0.917725, -0.034719,
		37.151386, 39.361137, 44.848721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.666035, 39.668766, 44.230198>,  <37.428375, 40.003544, 44.873024>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.666035, 39.668766, 44.230198> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.366371, 39.424274, 44.332310>,  <37.186573, 39.277580, 44.393578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.366371, 39.424274, 44.332310>,  <37.666035, 39.668766, 44.230198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.366371, 39.424274, 44.332310> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303163, -0.026264, -0.952577,
		0.588949, -0.791017, -0.165626,
		-0.749154, -0.611230, 0.255275,
		37.141624, 39.240906, 44.408894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<45.791164, 28.285688, 41.418400> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.403458, 28.210974, 41.482445>,  <45.170834, 28.166145, 41.520874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.403458, 28.210974, 41.482445>,  <45.791164, 28.285688, 41.418400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.403458, 28.210974, 41.482445> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245974, 0.723097, -0.645467,
		0.004785, -0.665012, -0.746817,
		-0.969265, -0.186786, 0.160115,
		45.112679, 28.154938, 41.530479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.547321, 28.424953, 40.730606>,  <45.791164, 28.285688, 41.418400>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.547321, 28.424953, 40.730606> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.225121, 28.396383, 40.965916>,  <45.031799, 28.379240, 41.107101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.225121, 28.396383, 40.965916>,  <45.547321, 28.424953, 40.730606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.225121, 28.396383, 40.965916> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486345, 0.646870, -0.587390,
		-0.338583, -0.759248, -0.555792,
		-0.805500, -0.071427, 0.588276,
		44.983471, 28.374956, 41.142399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.992306, 28.090881, 40.322872>,  <45.547321, 28.424953, 40.730606>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.992306, 28.090881, 40.322872> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.834400, 28.333231, 40.599155>,  <44.739655, 28.478642, 40.764927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.834400, 28.333231, 40.599155>,  <44.992306, 28.090881, 40.322872>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.834400, 28.333231, 40.599155> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512138, 0.479037, -0.712909,
		-0.762806, -0.635171, 0.121183,
		-0.394768, 0.605873, 0.690707,
		44.715969, 28.514994, 40.806366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.320812, 28.187140, 40.089558>,  <44.992306, 28.090881, 40.322872>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.320812, 28.187140, 40.089558> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.418701, 28.486181, 40.336521>,  <44.477436, 28.665607, 40.484699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.418701, 28.486181, 40.336521>,  <44.320812, 28.187140, 40.089558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.418701, 28.486181, 40.336521> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407028, 0.657161, -0.634403,
		-0.880022, -0.096052, 0.465118,
		0.244721, 0.747605, 0.617412,
		44.492119, 28.710463, 40.521744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.638004, 28.558590, 40.099049>,  <44.320812, 28.187140, 40.089558>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.638004, 28.558590, 40.099049> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.893917, 28.811306, 40.274097>,  <44.047466, 28.962936, 40.379128>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.893917, 28.811306, 40.274097>,  <43.638004, 28.558590, 40.099049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.893917, 28.811306, 40.274097> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231722, 0.701485, -0.673961,
		-0.732788, 0.329784, 0.595200,
		0.639786, 0.631792, 0.437622,
		44.085854, 29.000843, 40.405384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.205750, 29.139936, 40.219440>,  <43.638004, 28.558590, 40.099049>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.205750, 29.139936, 40.219440> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.573475, 29.296661, 40.234081>,  <43.794109, 29.390696, 40.242867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.573475, 29.296661, 40.234081>,  <43.205750, 29.139936, 40.219440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.573475, 29.296661, 40.234081> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316408, 0.791279, -0.523224,
		-0.233972, 0.469426, 0.851408,
		0.919316, 0.391813, 0.036607,
		43.849270, 29.414206, 40.245064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.041275, 29.891256, 40.340801>,  <43.205750, 29.139936, 40.219440>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.041275, 29.891256, 40.340801> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.402885, 29.825045, 40.183147>,  <43.619850, 29.785316, 40.088554>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.402885, 29.825045, 40.183147>,  <43.041275, 29.891256, 40.340801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.402885, 29.825045, 40.183147> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208020, 0.635118, -0.743877,
		0.373455, 0.754470, 0.539728,
		0.904024, -0.165531, -0.394133,
		43.674091, 29.775385, 40.064907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.290726, 30.510756, 40.238205>,  <43.041275, 29.891256, 40.340801>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.290726, 30.510756, 40.238205> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.488972, 30.278593, 39.979748>,  <43.607918, 30.139296, 39.824673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.488972, 30.278593, 39.979748>,  <43.290726, 30.510756, 40.238205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.488972, 30.278593, 39.979748> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229599, 0.629919, -0.741948,
		0.837647, 0.516071, 0.178935,
		0.495612, -0.580408, -0.646139,
		43.637657, 30.104471, 39.785908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.659275, 30.860016, 39.735535>,  <43.290726, 30.510756, 40.238205>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.659275, 30.860016, 39.735535> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.690556, 30.527946, 39.514736>,  <43.709324, 30.328705, 39.382256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.690556, 30.527946, 39.514736>,  <43.659275, 30.860016, 39.735535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.690556, 30.527946, 39.514736> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278903, 0.513363, -0.811585,
		0.957129, 0.217423, -0.191391,
		0.078205, -0.830172, -0.551995,
		43.714016, 30.278894, 39.349136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.190517, 30.937016, 39.208115>,  <43.659275, 30.860016, 39.735535>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.190517, 30.937016, 39.208115> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.916908, 30.676735, 39.076237>,  <43.752743, 30.520567, 38.997108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.916908, 30.676735, 39.076237>,  <44.190517, 30.937016, 39.208115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.916908, 30.676735, 39.076237> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104346, 0.534607, -0.838634,
		0.721959, -0.539243, -0.433581,
		-0.684023, -0.650702, -0.329697,
		43.711700, 30.481525, 38.977329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.334911, 30.915934, 38.537991>,  <44.190517, 30.937016, 39.208115>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.334911, 30.915934, 38.537991> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.982857, 30.726496, 38.551025>,  <43.771622, 30.612833, 38.558846>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.982857, 30.726496, 38.551025>,  <44.334911, 30.915934, 38.537991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.982857, 30.726496, 38.551025> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246683, 0.397645, -0.883756,
		0.405580, -0.785870, -0.466811,
		-0.880143, -0.473588, 0.032584,
		43.718815, 30.584417, 38.560802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.325424, 30.625738, 37.884865>,  <44.334911, 30.915934, 38.537991>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.325424, 30.625738, 37.884865> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.960228, 30.636089, 38.047726>,  <43.741108, 30.642300, 38.145443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.960228, 30.636089, 38.047726>,  <44.325424, 30.625738, 37.884865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.960228, 30.636089, 38.047726> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371811, 0.357998, -0.856501,
		-0.167926, -0.933363, -0.317228,
		-0.912993, 0.025880, 0.407152,
		43.686329, 30.643854, 38.169872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.973274, 30.379377, 37.326168>,  <44.325424, 30.625738, 37.884865>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.973274, 30.379377, 37.326168> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.732033, 30.596302, 37.560150>,  <43.587288, 30.726456, 37.700539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.732033, 30.596302, 37.560150>,  <43.973274, 30.379377, 37.326168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.732033, 30.596302, 37.560150> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350283, 0.478783, -0.805027,
		-0.716640, -0.690411, -0.098791,
		-0.603099, 0.542310, 0.584954,
		43.551102, 30.758995, 37.735638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.232990, 30.418388, 37.033539>,  <43.973274, 30.379377, 37.326168>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.232990, 30.418388, 37.033539> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.278458, 30.723234, 37.288494>,  <43.305737, 30.906141, 37.441467>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.278458, 30.723234, 37.288494>,  <43.232990, 30.418388, 37.033539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.278458, 30.723234, 37.288494> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287699, 0.639304, -0.713105,
		-0.950952, -0.102318, 0.291927,
		0.113666, 0.762116, 0.637384,
		43.312557, 30.951870, 37.479710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.641827, 30.707706, 37.107491>,  <43.232990, 30.418388, 37.033539>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.641827, 30.707706, 37.107491> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.857906, 31.012491, 37.250378>,  <42.987553, 31.195362, 37.336109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.857906, 31.012491, 37.250378>,  <42.641827, 30.707706, 37.107491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.857906, 31.012491, 37.250378> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394965, 0.604384, -0.691897,
		-0.743096, 0.232671, 0.627434,
		0.540195, 0.761960, 0.357219,
		43.019966, 31.241079, 37.357544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.250061, 31.210285, 36.931423>,  <42.641827, 30.707706, 37.107491>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.250061, 31.210285, 36.931423> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.582512, 31.418734, 37.009045>,  <42.781982, 31.543802, 37.055618>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.582512, 31.418734, 37.009045>,  <42.250061, 31.210285, 36.931423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.582512, 31.418734, 37.009045> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190316, 0.594461, -0.781278,
		-0.522495, 0.612413, 0.593252,
		0.831131, 0.521119, 0.194051,
		42.831852, 31.575069, 37.067261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.204319, 31.925518, 36.717926>,  <42.250061, 31.210285, 36.931423>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.204319, 31.925518, 36.717926> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.597328, 31.855373, 36.692959>,  <42.833134, 31.813286, 36.677979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.597328, 31.855373, 36.692959>,  <42.204319, 31.925518, 36.717926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.597328, 31.855373, 36.692959> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041589, 0.533665, -0.844673,
		0.181435, 0.827314, 0.531632,
		0.982523, -0.175363, -0.062418,
		42.892086, 31.802765, 36.674232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.440681, 32.715740, 36.601658>,  <42.204319, 31.925518, 36.717926>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.440681, 32.715740, 36.601658> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.721718, 32.463333, 36.470093>,  <42.890339, 32.311890, 36.391155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.721718, 32.463333, 36.470093>,  <42.440681, 32.715740, 36.601658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.721718, 32.463333, 36.470093> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142348, 0.577508, -0.803879,
		0.697209, 0.517980, 0.495577,
		0.702593, -0.631016, -0.328911,
		42.932495, 32.274029, 36.371418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.038952, 33.093948, 36.396870>,  <42.440681, 32.715740, 36.601658>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.038952, 33.093948, 36.396870> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.052822, 32.745003, 36.201820>,  <43.061142, 32.535633, 36.084793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.052822, 32.745003, 36.201820>,  <43.038952, 33.093948, 36.396870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.052822, 32.745003, 36.201820> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095447, 0.488574, -0.867286,
		0.994830, -0.016471, 0.100205,
		0.034673, -0.872367, -0.487620,
		43.063225, 32.483292, 36.055534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.705570, 33.072086, 36.154694>,  <43.038952, 33.093948, 36.396870>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.705570, 33.072086, 36.154694> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.491592, 32.826824, 35.922188>,  <43.363205, 32.679668, 35.782684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.491592, 32.826824, 35.922188>,  <43.705570, 33.072086, 36.154694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.491592, 32.826824, 35.922188> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096891, 0.638920, -0.763147,
		0.839310, -0.464564, -0.282380,
		-0.534949, -0.613157, -0.581264,
		43.331108, 32.642876, 35.747810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.139385, 32.949078, 35.461407>,  <43.705570, 33.072086, 36.154694>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.139385, 32.949078, 35.461407> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.765968, 32.818470, 35.402233>,  <43.541916, 32.740105, 35.366730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.765968, 32.818470, 35.402233>,  <44.139385, 32.949078, 35.461407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.765968, 32.818470, 35.402233> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087147, 0.607031, -0.789886,
		0.347708, -0.724501, -0.595145,
		-0.933544, -0.326514, -0.147931,
		43.485905, 32.720516, 35.357853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.821701, 33.149399, 35.004692>,  <44.139385, 32.949078, 35.461407>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.821701, 33.149399, 35.004692> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.147621, 33.350754, 35.119728>,  <45.343174, 33.471565, 35.188751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.147621, 33.350754, 35.119728>,  <44.821701, 33.149399, 35.004692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.147621, 33.350754, 35.119728> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346521, -0.820570, 0.454519,
		0.464788, -0.270684, -0.843032,
		0.814798, 0.503383, 0.287593,
		45.392059, 33.501770, 35.206005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.480671, 32.739292, 34.889862>,  <44.821701, 33.149399, 35.004692>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.480671, 32.739292, 34.889862> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.559177, 33.003494, 35.179749>,  <45.606281, 33.162014, 35.353680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.559177, 33.003494, 35.179749>,  <45.480671, 32.739292, 34.889862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.559177, 33.003494, 35.179749> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456909, -0.715553, 0.528410,
		0.867590, 0.227419, -0.442231,
		0.196269, 0.660503, 0.724717,
		45.618057, 33.201645, 35.397163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.225067, 32.740196, 34.918884>,  <45.480671, 32.739292, 34.889862>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.225067, 32.740196, 34.918884> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.051384, 32.857517, 35.259575>,  <45.947174, 32.927910, 35.463989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.051384, 32.857517, 35.259575>,  <46.225067, 32.740196, 34.918884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.051384, 32.857517, 35.259575> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514679, -0.695210, 0.501786,
		0.739303, 0.656245, 0.150910,
		-0.434209, 0.293301, 0.851726,
		45.921120, 32.945507, 35.515091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.772907, 32.705708, 35.484425>,  <46.225067, 32.740196, 34.918884>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.772907, 32.705708, 35.484425> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.429825, 32.724957, 35.689178>,  <46.223976, 32.736504, 35.812031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.429825, 32.724957, 35.689178>,  <46.772907, 32.705708, 35.484425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.429825, 32.724957, 35.689178> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361950, -0.650585, 0.667631,
		0.365152, 0.757907, 0.540593,
		-0.857704, 0.048119, 0.511888,
		46.172512, 32.739391, 35.842743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.042351, 32.823639, 36.208946>,  <46.772907, 32.705708, 35.484425>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.042351, 32.823639, 36.208946> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.671299, 32.674278, 36.212326>,  <46.448669, 32.584660, 36.214352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.671299, 32.674278, 36.212326>,  <47.042351, 32.823639, 36.208946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.671299, 32.674278, 36.212326> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273907, -0.664728, 0.695062,
		-0.253924, 0.647075, 0.718900,
		-0.927630, -0.373405, 0.008448,
		46.393009, 32.562256, 36.214859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.984962, 32.623619, 36.894196>,  <47.042351, 32.823639, 36.208946>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.984962, 32.623619, 36.894196> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.728409, 32.403347, 36.680515>,  <46.574474, 32.271183, 36.552307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.728409, 32.403347, 36.680515>,  <46.984962, 32.623619, 36.894196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.728409, 32.403347, 36.680515> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297687, -0.820361, 0.488253,
		-0.707111, 0.154133, 0.690099,
		-0.641386, -0.550682, -0.534203,
		46.535992, 32.238144, 36.520256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.760921, 32.218510, 37.356464>,  <46.984962, 32.623619, 36.894196>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.760921, 32.218510, 37.356464> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.616528, 32.016003, 37.043186>,  <46.529892, 31.894499, 36.855221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.616528, 32.016003, 37.043186>,  <46.760921, 32.218510, 37.356464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.616528, 32.016003, 37.043186> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099475, -0.855930, 0.507433,
		-0.927252, 0.105266, 0.359337,
		-0.360982, -0.506263, -0.783192,
		46.508232, 31.864124, 36.808228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.287125, 31.690918, 37.646206>,  <46.760921, 32.218510, 37.356464>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.287125, 31.690918, 37.646206> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.404243, 31.581198, 37.279812>,  <46.474514, 31.515366, 37.059975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.404243, 31.581198, 37.279812>,  <46.287125, 31.690918, 37.646206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.404243, 31.581198, 37.279812> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202954, -0.918313, 0.339870,
		-0.934388, -0.285416, -0.213208,
		0.292795, -0.274299, -0.915987,
		46.492081, 31.498909, 37.005016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.831947, 31.121429, 37.405186>,  <46.287125, 31.690918, 37.646206>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.831947, 31.121429, 37.405186> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.151325, 31.089743, 37.166454>,  <46.342953, 31.070730, 37.023216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.151325, 31.089743, 37.166454>,  <45.831947, 31.121429, 37.405186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.151325, 31.089743, 37.166454> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082918, -0.967391, 0.239330,
		-0.596330, -0.240580, -0.765841,
		0.798446, -0.079218, -0.596833,
		46.390858, 31.065977, 36.987404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.706112, 30.532448, 36.988148>,  <45.831947, 31.121429, 37.405186>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.706112, 30.532448, 36.988148> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.098225, 30.609890, 36.972313>,  <46.333492, 30.656355, 36.962814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.098225, 30.609890, 36.972313>,  <45.706112, 30.532448, 36.988148>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.098225, 30.609890, 36.972313> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196817, -0.974488, 0.107871,
		-0.017690, -0.113535, -0.993377,
		0.980281, 0.193606, -0.039584,
		46.392307, 30.667973, 36.960438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.967724, 30.100325, 36.525917>,  <45.706112, 30.532448, 36.988148>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.967724, 30.100325, 36.525917> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.275829, 30.195765, 36.762482>,  <46.460693, 30.253029, 36.904419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.275829, 30.195765, 36.762482>,  <45.967724, 30.100325, 36.525917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.275829, 30.195765, 36.762482> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162031, -0.970161, 0.180369,
		0.616799, -0.043105, -0.785940,
		0.770263, 0.238598, 0.591410,
		46.506908, 30.267344, 36.939903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.534687, 29.559063, 36.458069>,  <45.967724, 30.100325, 36.525917>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.534687, 29.559063, 36.458069> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.612778, 29.728756, 36.811771>,  <46.659630, 29.830572, 37.023994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.612778, 29.728756, 36.811771>,  <46.534687, 29.559063, 36.458069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.612778, 29.728756, 36.811771> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323888, -0.878912, 0.350158,
		0.925734, 0.218043, -0.308987,
		0.195223, 0.424230, 0.884260,
		46.671345, 29.856026, 37.077049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.112637, 29.134499, 36.642723>,  <46.534687, 29.559063, 36.458069>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.112637, 29.134499, 36.642723> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.974396, 29.316935, 36.970757>,  <46.891449, 29.426397, 37.167576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.974396, 29.316935, 36.970757>,  <47.112637, 29.134499, 36.642723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.974396, 29.316935, 36.970757> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147945, -0.836522, 0.527582,
		0.926644, 0.303663, 0.221630,
		-0.345605, 0.456092, 0.820084,
		46.870716, 29.453762, 37.216782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.533611, 28.894493, 37.307159>,  <47.112637, 29.134499, 36.642723>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.533611, 28.894493, 37.307159> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.193634, 29.043087, 37.456608>,  <46.989647, 29.132242, 37.546276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.193634, 29.043087, 37.456608>,  <47.533611, 28.894493, 37.307159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.193634, 29.043087, 37.456608> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031071, -0.672555, 0.739395,
		0.525953, 0.640054, 0.560093,
		-0.849946, 0.371484, 0.373619,
		46.938652, 29.154531, 37.568695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.633438, 28.812494, 37.978073>,  <47.533611, 28.894493, 37.307159>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.633438, 28.812494, 37.978073> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.235916, 28.849619, 37.953644>,  <46.997402, 28.871895, 37.938988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.235916, 28.849619, 37.953644>,  <47.633438, 28.812494, 37.978073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.235916, 28.849619, 37.953644> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109823, -0.737308, 0.666571,
		0.016836, 0.669151, 0.742936,
		-0.993809, 0.092814, -0.061074,
		46.937775, 28.877462, 37.935322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.404694, 28.848482, 38.750607>,  <47.633438, 28.812494, 37.978073>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.404694, 28.848482, 38.750607> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.094212, 28.722715, 38.532013>,  <46.907921, 28.647255, 38.400856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.094212, 28.722715, 38.532013>,  <47.404694, 28.848482, 38.750607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.094212, 28.722715, 38.532013> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210235, -0.688093, 0.694499,
		-0.594395, 0.653965, 0.468001,
		-0.776206, -0.314417, -0.546485,
		46.861351, 28.628389, 38.368069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.805153, 28.711674, 39.262371>,  <47.404694, 28.848482, 38.750607>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.805153, 28.711674, 39.262371> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.712715, 28.518644, 38.924442>,  <46.657253, 28.402826, 38.721687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.712715, 28.518644, 38.924442>,  <46.805153, 28.711674, 39.262371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.712715, 28.518644, 38.924442> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261430, -0.805589, 0.531677,
		-0.937149, 0.343729, 0.060009,
		-0.231096, -0.482573, -0.844819,
		46.643387, 28.373873, 38.670998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.143127, 28.464077, 39.349949>,  <46.805153, 28.711674, 39.262371>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.143127, 28.464077, 39.349949> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.299057, 28.248821, 39.051033>,  <46.392616, 28.119667, 38.871685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.299057, 28.248821, 39.051033>,  <46.143127, 28.464077, 39.349949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.299057, 28.248821, 39.051033> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370465, -0.834570, 0.407737,
		-0.843084, 0.117898, -0.524699,
		0.389827, -0.538139, -0.747289,
		46.416004, 28.087379, 38.826847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.640659, 28.060772, 39.055271>,  <46.143127, 28.464077, 39.349949>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.640659, 28.060772, 39.055271> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.961845, 27.851587, 38.940895>,  <46.154556, 27.726076, 38.872269>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.961845, 27.851587, 38.940895>,  <45.640659, 28.060772, 39.055271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.961845, 27.851587, 38.940895> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496568, -0.852297, 0.164349,
		-0.329655, 0.010024, -0.944048,
		0.802962, -0.522963, -0.285941,
		46.202732, 27.694698, 38.855114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.329819, 27.447237, 38.707382>,  <45.640659, 28.060772, 39.055271>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.329819, 27.447237, 38.707382> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.711678, 27.368382, 38.796631>,  <45.940792, 27.321068, 38.850182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.711678, 27.368382, 38.796631>,  <45.329819, 27.447237, 38.707382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.711678, 27.368382, 38.796631> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267561, -0.896764, 0.352456,
		0.130605, -0.396170, -0.908841,
		0.954648, -0.197137, 0.223122,
		45.998074, 27.309240, 38.863567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.532074, 26.786505, 38.343472>,  <45.329819, 27.447237, 38.707382>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.532074, 26.786505, 38.343472> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.737381, 26.856829, 38.679482>,  <45.860565, 26.899023, 38.881088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.737381, 26.856829, 38.679482>,  <45.532074, 26.786505, 38.343472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.737381, 26.856829, 38.679482> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341576, -0.856082, 0.387878,
		0.787326, -0.486019, -0.379346,
		0.513268, 0.175811, 0.840028,
		45.891361, 26.909573, 38.931488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.527878, 38.309055, 39.230053> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.177773, 38.221622, 39.402630>,  <38.967709, 38.169163, 39.506176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.177773, 38.221622, 39.402630>,  <39.527878, 38.309055, 39.230053>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.177773, 38.221622, 39.402630> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258874, -0.541779, -0.799662,
		0.408535, -0.811602, 0.417614,
		-0.875262, -0.218581, 0.431438,
		38.915195, 38.156048, 39.532063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.478188, 37.538708, 39.197994>,  <39.527878, 38.309055, 39.230053>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.478188, 37.538708, 39.197994> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.110317, 37.685635, 39.253525>,  <38.889595, 37.773792, 39.286842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.110317, 37.685635, 39.253525>,  <39.478188, 37.538708, 39.197994>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.110317, 37.685635, 39.253525> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347517, -0.596728, -0.723290,
		-0.182832, -0.713439, 0.676445,
		-0.919676, 0.367316, 0.138831,
		38.834415, 37.795830, 39.295174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.023643, 37.056942, 39.131157>,  <39.478188, 37.538708, 39.197994>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.023643, 37.056942, 39.131157> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.756073, 37.343742, 39.052723>,  <38.595531, 37.515823, 39.005661>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.756073, 37.343742, 39.052723>,  <39.023643, 37.056942, 39.131157>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.756073, 37.343742, 39.052723> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491176, -0.624353, -0.607395,
		-0.557925, -0.309993, 0.769820,
		-0.668928, 0.716999, -0.196081,
		38.555393, 37.558842, 38.993896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.481903, 36.682171, 39.009617>,  <39.023643, 37.056942, 39.131157>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.481903, 36.682171, 39.009617> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.376442, 37.039658, 38.864429>,  <38.313164, 37.254150, 38.777317>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.376442, 37.039658, 38.864429>,  <38.481903, 36.682171, 39.009617>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.376442, 37.039658, 38.864429> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426453, -0.445510, -0.787184,
		-0.865230, -0.052757, 0.498592,
		-0.263657, 0.893721, -0.362970,
		38.297344, 37.307774, 38.755539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.817810, 36.480835, 38.670155>,  <38.481903, 36.682171, 39.009617>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.817810, 36.480835, 38.670155> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.936977, 36.832096, 38.520443>,  <38.008480, 37.042854, 38.430614>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.936977, 36.832096, 38.520443>,  <37.817810, 36.480835, 38.670155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.936977, 36.832096, 38.520443> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598516, -0.133608, -0.789891,
		-0.743654, 0.459337, 0.485786,
		0.297921, 0.878156, -0.374278,
		38.026352, 37.095543, 38.408161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.306458, 36.932919, 38.529011>,  <37.817810, 36.480835, 38.670155>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.306458, 36.932919, 38.529011> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.602837, 37.016460, 38.273705>,  <37.780663, 37.066586, 38.120522>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.602837, 37.016460, 38.273705>,  <37.306458, 36.932919, 38.529011>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.602837, 37.016460, 38.273705> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522224, -0.418370, -0.743134,
		-0.422235, 0.883939, -0.200922,
		0.740945, 0.208852, -0.638265,
		37.825119, 37.079117, 38.082226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.004742, 36.922615, 37.899437>,  <37.306458, 36.932919, 38.529011>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.004742, 36.922615, 37.899437> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.379433, 36.962444, 37.765194>,  <37.604248, 36.986343, 37.684650>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.379433, 36.962444, 37.765194>,  <37.004742, 36.922615, 37.899437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.379433, 36.962444, 37.765194> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272801, -0.393135, -0.878080,
		-0.219375, 0.914073, -0.341095,
		0.936726, 0.099578, -0.335603,
		37.660450, 36.992317, 37.664513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.001434, 37.279396, 37.303295>,  <37.004742, 36.922615, 37.899437>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.001434, 37.279396, 37.303295> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.333698, 37.056816, 37.295650>,  <37.533058, 36.923267, 37.291065>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.333698, 37.056816, 37.295650>,  <37.001434, 37.279396, 37.303295>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.333698, 37.056816, 37.295650> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237501, -0.323079, -0.916086,
		0.503586, 0.765493, -0.400526,
		0.830659, -0.556454, -0.019107,
		37.582897, 36.889881, 37.289917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.079430, 37.147457, 36.544838>,  <37.001434, 37.279396, 37.303295>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.079430, 37.147457, 36.544838> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.344227, 36.904232, 36.720119>,  <37.503105, 36.758297, 36.825287>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.344227, 36.904232, 36.720119>,  <37.079430, 37.147457, 36.544838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.344227, 36.904232, 36.720119> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110462, -0.657419, -0.745385,
		0.741323, 0.445037, -0.502377,
		0.661996, -0.608064, 0.438200,
		37.542824, 36.721813, 36.851578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.671154, 37.043961, 36.102737>,  <37.079430, 37.147457, 36.544838>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.671154, 37.043961, 36.102737> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.620316, 36.725693, 36.339638>,  <37.589813, 36.534733, 36.481777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.620316, 36.725693, 36.339638>,  <37.671154, 37.043961, 36.102737>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.620316, 36.725693, 36.339638> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158578, -0.573111, -0.803988,
		0.979132, -0.196104, -0.053333,
		-0.127100, -0.795668, 0.592248,
		37.582184, 36.486992, 36.517311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.154449, 36.485519, 35.861732>,  <37.671154, 37.043961, 36.102737>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.154449, 36.485519, 35.861732> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.892399, 36.311127, 36.108547>,  <37.735168, 36.206490, 36.256634>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.892399, 36.311127, 36.108547>,  <38.154449, 36.485519, 35.861732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.892399, 36.311127, 36.108547> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154312, -0.722267, -0.674179,
		0.739594, -0.536888, 0.405898,
		-0.655125, -0.435984, 0.617032,
		37.695862, 36.180332, 36.293655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.334713, 35.792133, 35.822315>,  <38.154449, 36.485519, 35.861732>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.334713, 35.792133, 35.822315> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.956089, 35.791744, 35.951324>,  <37.728916, 35.791512, 36.028728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.956089, 35.791744, 35.951324>,  <38.334713, 35.792133, 35.822315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.956089, 35.791744, 35.951324> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229893, -0.699343, -0.676807,
		0.226211, -0.714785, 0.661748,
		-0.946561, -0.000970, 0.322524,
		37.672119, 35.791454, 36.048080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.098034, 35.158066, 35.694851>,  <38.334713, 35.792133, 35.822315>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.098034, 35.158066, 35.694851> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.785557, 35.407692, 35.701553>,  <37.598068, 35.557468, 35.705574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.785557, 35.407692, 35.701553>,  <38.098034, 35.158066, 35.694851>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.785557, 35.407692, 35.701553> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429273, -0.517479, -0.740230,
		-0.453275, -0.585460, 0.672145,
		-0.781196, 0.624061, 0.016762,
		37.551197, 35.594910, 35.706581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.740925, 34.772934, 35.438736>,  <38.098034, 35.158066, 35.694851>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.740925, 34.772934, 35.438736> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.938114, 34.806004, 35.785179>,  <39.056427, 34.825844, 35.993046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.938114, 34.806004, 35.785179>,  <38.740925, 34.772934, 35.438736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.938114, 34.806004, 35.785179> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270559, -0.931553, 0.242914,
		0.826907, -0.354083, -0.436863,
		0.492972, 0.082670, 0.866108,
		39.086006, 34.830803, 36.045013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.523788, 34.077599, 35.456444>,  <38.740925, 34.772934, 35.438736>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.523788, 34.077599, 35.456444> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.642876, 33.728634, 35.611496>,  <38.714329, 33.519257, 35.704529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.642876, 33.728634, 35.611496>,  <38.523788, 34.077599, 35.456444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.642876, 33.728634, 35.611496> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.889817, -0.106503, 0.443714,
		-0.345818, -0.477024, -0.807997,
		0.297716, -0.872414, 0.387633,
		38.732189, 33.466911, 35.727787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.976040, 33.646572, 35.337563>,  <38.523788, 34.077599, 35.456444>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.976040, 33.646572, 35.337563> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.174473, 33.498131, 35.651550>,  <38.293533, 33.409065, 35.839943>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.174473, 33.498131, 35.651550>,  <37.976040, 33.646572, 35.337563>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.174473, 33.498131, 35.651550> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858094, -0.071510, 0.508489,
		-0.132570, -0.925833, -0.353918,
		0.496085, -0.371105, 0.784972,
		38.323299, 33.386799, 35.887043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.636349, 32.972549, 35.546566>,  <37.976040, 33.646572, 35.337563>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.636349, 32.972549, 35.546566> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.850403, 33.140789, 35.839615>,  <37.978836, 33.241734, 36.015442>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.850403, 33.140789, 35.839615>,  <37.636349, 32.972549, 35.546566>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.850403, 33.140789, 35.839615> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841507, 0.189271, 0.506006,
		0.074161, -0.887285, 0.455221,
		0.535132, 0.420597, 0.732620,
		38.010941, 33.266968, 36.059402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.378536, 32.638435, 36.232796>,  <37.636349, 32.972549, 35.546566>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.378536, 32.638435, 36.232796> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.579781, 32.970181, 36.329983>,  <37.700527, 33.169228, 36.388294>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.579781, 32.970181, 36.329983>,  <37.378536, 32.638435, 36.232796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.579781, 32.970181, 36.329983> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666449, 0.193340, 0.720046,
		0.550203, -0.524193, 0.649999,
		0.503113, 0.829362, 0.242971,
		37.730713, 33.218990, 36.402874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.408833, 32.711124, 36.916622>,  <37.378536, 32.638435, 36.232796>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.408833, 32.711124, 36.916622> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.499058, 33.097755, 36.867886>,  <37.553192, 33.329735, 36.838646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.499058, 33.097755, 36.867886>,  <37.408833, 32.711124, 36.916622>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.499058, 33.097755, 36.867886> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658061, 0.243383, 0.712545,
		0.718386, -0.080545, 0.690967,
		0.225562, 0.966580, -0.121840,
		37.566727, 33.387730, 36.831333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.650528, 32.927891, 37.488144>,  <37.408833, 32.711124, 36.916622>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.650528, 32.927891, 37.488144> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.486881, 33.242374, 37.302891>,  <37.388695, 33.431065, 37.191738>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.486881, 33.242374, 37.302891>,  <37.650528, 32.927891, 37.488144>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.486881, 33.242374, 37.302891> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520417, 0.215874, 0.826175,
		0.749528, 0.579024, 0.320841,
		-0.409114, 0.786213, -0.463137,
		37.364147, 33.478237, 37.163948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.685268, 33.453636, 37.982304>,  <37.650528, 32.927891, 37.488144>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.685268, 33.453636, 37.982304> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.412033, 33.586113, 37.721931>,  <37.248093, 33.665600, 37.565708>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.412033, 33.586113, 37.721931>,  <37.685268, 33.453636, 37.982304>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.412033, 33.586113, 37.721931> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584087, 0.287324, 0.759136,
		0.438443, 0.898755, -0.002826,
		-0.683089, 0.331188, -0.650926,
		37.207108, 33.685471, 37.526653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.634918, 34.097118, 38.094971>,  <37.685268, 33.453636, 37.982304>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.634918, 34.097118, 38.094971> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.284454, 34.002007, 37.927258>,  <37.074177, 33.944939, 37.826630>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.284454, 34.002007, 37.927258>,  <37.634918, 34.097118, 38.094971>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.284454, 34.002007, 37.927258> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478315, 0.536528, 0.695236,
		0.059643, 0.809690, -0.583820,
		-0.876161, -0.237784, -0.419286,
		37.021606, 33.930672, 37.801472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.253799, 34.692745, 38.041348>,  <37.634918, 34.097118, 38.094971>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.253799, 34.692745, 38.041348> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.971172, 34.411755, 38.007225>,  <36.801594, 34.243160, 37.986752>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.971172, 34.411755, 38.007225>,  <37.253799, 34.692745, 38.041348>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.971172, 34.411755, 38.007225> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607324, 0.540111, 0.582612,
		-0.363199, 0.463466, -0.808261,
		-0.706572, -0.702480, -0.085307,
		36.759201, 34.201012, 37.981632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.751904, 35.073177, 38.152924>,  <37.253799, 34.692745, 38.041348>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.751904, 35.073177, 38.152924> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.632812, 34.695312, 38.208027>,  <36.561359, 34.468594, 38.241089>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.632812, 34.695312, 38.208027>,  <36.751904, 35.073177, 38.152924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.632812, 34.695312, 38.208027> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506972, 0.278725, 0.815654,
		-0.808911, 0.173005, -0.561900,
		-0.297728, -0.944659, 0.137755,
		36.543495, 34.411915, 38.249352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.070122, 35.186657, 38.303402>,  <36.751904, 35.073177, 38.152924>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.070122, 35.186657, 38.303402> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.152431, 34.813213, 38.420727>,  <36.201817, 34.589146, 38.491119>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.152431, 34.813213, 38.420727>,  <36.070122, 35.186657, 38.303402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.152431, 34.813213, 38.420727> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421276, 0.186016, 0.887651,
		-0.883280, -0.306220, -0.355029,
		0.205776, -0.933610, 0.293308,
		36.214165, 34.533131, 38.508720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.452499, 34.878929, 38.825359>,  <36.070122, 35.186657, 38.303402>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.452499, 34.878929, 38.825359> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.773563, 34.655350, 38.908611>,  <35.966202, 34.521202, 38.958561>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.773563, 34.655350, 38.908611>,  <35.452499, 34.878929, 38.825359>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.773563, 34.655350, 38.908611> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262299, -0.017405, 0.964830,
		-0.535668, -0.829019, -0.160581,
		0.802657, -0.558949, 0.208128,
		36.014362, 34.487663, 38.971050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.177513, 34.305260, 39.157688>,  <35.452499, 34.878929, 38.825359>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.177513, 34.305260, 39.157688> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.558212, 34.337418, 39.276157>,  <35.786633, 34.356712, 39.347240>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.558212, 34.337418, 39.276157>,  <35.177513, 34.305260, 39.157688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.558212, 34.337418, 39.276157> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298845, 0.023206, 0.954019,
		0.069823, -0.996493, 0.046111,
		0.951744, 0.080392, 0.296177,
		35.843735, 34.361534, 39.365009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.195904, 33.986252, 39.799599>,  <35.177513, 34.305260, 39.157688>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.195904, 33.986252, 39.799599> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.528278, 34.207298, 39.825382>,  <35.727703, 34.339928, 39.840851>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.528278, 34.207298, 39.825382>,  <35.195904, 33.986252, 39.799599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.528278, 34.207298, 39.825382> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251190, 0.269258, 0.929733,
		0.496429, -0.788743, 0.362549,
		0.830940, 0.552615, 0.064457,
		35.777561, 34.373081, 39.844719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.738552, 33.468899, 39.912285>,  <35.195904, 33.986252, 39.799599>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.738552, 33.468899, 39.912285> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.437401, 33.363110, 40.153358>,  <34.256710, 33.299637, 40.298000>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.437401, 33.363110, 40.153358>,  <34.738552, 33.468899, 39.912285>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.437401, 33.363110, 40.153358> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656863, 0.244533, -0.713256,
		0.041264, -0.932875, -0.357829,
		-0.752880, -0.264476, 0.602681,
		34.211536, 33.283768, 40.334164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.306656, 33.059464, 39.493851>,  <34.738552, 33.468899, 39.912285>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.306656, 33.059464, 39.493851> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.075722, 33.204018, 39.786724>,  <33.937160, 33.290749, 39.962448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.075722, 33.204018, 39.786724>,  <34.306656, 33.059464, 39.493851>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.075722, 33.204018, 39.786724> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554632, 0.484519, -0.676480,
		-0.599223, -0.796646, -0.079295,
		-0.577335, 0.361383, 0.732180,
		33.902523, 33.312431, 40.006378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.653805, 32.965836, 39.185524>,  <34.306656, 33.059464, 39.493851>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.653805, 32.965836, 39.185524> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.625866, 33.236732, 39.478497>,  <33.609100, 33.399269, 39.654282>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.625866, 33.236732, 39.478497>,  <33.653805, 32.965836, 39.185524>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.625866, 33.236732, 39.478497> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530971, 0.596338, -0.602040,
		-0.844507, -0.430955, 0.317942,
		-0.069851, 0.677244, 0.732435,
		33.604912, 33.439907, 39.698227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.949528, 33.082180, 39.286640>,  <33.653805, 32.965836, 39.185524>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.949528, 33.082180, 39.286640> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.123505, 33.408867, 39.438324>,  <33.227890, 33.604877, 39.529335>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.123505, 33.408867, 39.438324>,  <32.949528, 33.082180, 39.286640>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.123505, 33.408867, 39.438324> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631948, 0.576858, -0.517568,
		-0.641455, -0.014526, 0.767023,
		0.434945, 0.816715, 0.379208,
		33.253986, 33.653881, 39.552086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.378616, 33.396099, 39.377594>,  <32.949528, 33.082180, 39.286640>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.378616, 33.396099, 39.377594> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.674278, 33.664169, 39.404484>,  <32.851673, 33.825012, 39.420616>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.674278, 33.664169, 39.404484>,  <32.378616, 33.396099, 39.377594>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.674278, 33.664169, 39.404484> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534513, 0.644381, -0.546872,
		-0.409818, 0.368289, 0.834513,
		0.739151, 0.670177, 0.067223,
		32.896023, 33.865223, 39.424652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.020134, 34.104584, 39.571999>,  <32.378616, 33.396099, 39.377594>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.020134, 34.104584, 39.571999> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.383896, 34.160900, 39.415459>,  <32.602154, 34.194691, 39.321533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.383896, 34.160900, 39.415459>,  <32.020134, 34.104584, 39.571999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.383896, 34.160900, 39.415459> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342605, 0.787057, -0.512993,
		0.235790, 0.600599, 0.763992,
		0.909409, 0.140789, -0.391348,
		32.656719, 34.203136, 39.298054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.172791, 34.851707, 39.510273>,  <32.020134, 34.104584, 39.571999>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.172791, 34.851707, 39.510273> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.435715, 34.705254, 39.246792>,  <32.593468, 34.617382, 39.088703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.435715, 34.705254, 39.246792>,  <32.172791, 34.851707, 39.510273>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.435715, 34.705254, 39.246792> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249129, 0.719345, -0.648443,
		0.711253, 0.590329, 0.381616,
		0.657308, -0.366135, -0.658704,
		32.632908, 34.595413, 39.049179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.575043, 35.437160, 39.197536>,  <32.172791, 34.851707, 39.510273>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.575043, 35.437160, 39.197536> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.574116, 35.139278, 38.930580>,  <32.573559, 34.960548, 38.770405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.574116, 35.139278, 38.930580>,  <32.575043, 35.437160, 39.197536>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.574116, 35.139278, 38.930580> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408322, 0.609925, -0.679165,
		0.912835, 0.270936, -0.305492,
		-0.002317, -0.744704, -0.667390,
		32.573421, 34.915867, 38.730362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.926060, 35.845600, 38.674110>,  <32.575043, 35.437160, 39.197536>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.926060, 35.845600, 38.674110> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.782291, 35.514858, 38.501076>,  <32.696030, 35.316414, 38.397255>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.782291, 35.514858, 38.501076>,  <32.926060, 35.845600, 38.674110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.782291, 35.514858, 38.501076> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153114, 0.509538, -0.846716,
		0.920529, -0.238091, -0.309740,
		-0.359419, -0.826852, -0.432589,
		32.674465, 35.266804, 38.371300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.372078, 35.720112, 38.127434>,  <32.926060, 35.845600, 38.674110>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.372078, 35.720112, 38.127434> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.034637, 35.522102, 38.044209>,  <32.832172, 35.403297, 37.994274>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.034637, 35.522102, 38.044209>,  <33.372078, 35.720112, 38.127434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.034637, 35.522102, 38.044209> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199259, 0.648397, -0.734764,
		0.498637, -0.578385, -0.645624,
		-0.843598, -0.495027, -0.208066,
		32.781559, 35.373592, 37.981789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.415592, 35.641006, 37.420616>,  <33.372078, 35.720112, 38.127434>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.415592, 35.641006, 37.420616> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.027397, 35.583416, 37.498005>,  <32.794479, 35.548862, 37.544437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.027397, 35.583416, 37.498005>,  <33.415592, 35.641006, 37.420616>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.027397, 35.583416, 37.498005> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239156, 0.471116, -0.849031,
		0.031094, -0.870241, -0.491644,
		-0.970483, -0.143980, 0.193475,
		32.736252, 35.540222, 37.556046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.125477, 35.606556, 36.781788>,  <33.415592, 35.641006, 37.420616>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.125477, 35.606556, 36.781788> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.830704, 35.702209, 37.034691>,  <32.653839, 35.759602, 37.186432>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.830704, 35.702209, 37.034691>,  <33.125477, 35.606556, 36.781788>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.830704, 35.702209, 37.034691> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370496, 0.639445, -0.673678,
		-0.565392, -0.730703, -0.382629,
		-0.736929, 0.239130, 0.632259,
		32.609627, 35.773949, 37.224369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.289650, 31.749605, 43.047810> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.021626, 31.951982, 43.265079>,  <35.860809, 32.073410, 43.395439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.021626, 31.951982, 43.265079>,  <36.289650, 31.749605, 43.047810>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.021626, 31.951982, 43.265079> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429253, 0.332883, -0.839602,
		-0.605603, -0.795745, -0.005876,
		-0.670065, 0.505943, 0.543171,
		35.820606, 32.103767, 43.428032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.704845, 31.555393, 42.789005>,  <36.289650, 31.749605, 43.047810>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.704845, 31.555393, 42.789005> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.613480, 31.900373, 42.969673>,  <35.558662, 32.107361, 43.078075>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.613480, 31.900373, 42.969673>,  <35.704845, 31.555393, 42.789005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.613480, 31.900373, 42.969673> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486817, 0.300594, -0.820154,
		-0.843112, -0.407214, 0.351197,
		-0.228410, 0.862450, 0.451673,
		35.544956, 32.159107, 43.105175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.915806, 31.759335, 42.749619>,  <35.704845, 31.555393, 42.789005>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.915806, 31.759335, 42.749619> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.099236, 32.113327, 42.781914>,  <35.209293, 32.325722, 42.801292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.099236, 32.113327, 42.781914>,  <34.915806, 31.759335, 42.749619>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.099236, 32.113327, 42.781914> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425076, 0.298235, -0.854615,
		-0.780397, 0.357585, 0.512947,
		0.458576, 0.884980, 0.080741,
		35.236809, 32.378822, 42.806137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.383083, 32.358727, 42.849167>,  <34.915806, 31.759335, 42.749619>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.383083, 32.358727, 42.849167> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.718403, 32.538685, 42.725979>,  <34.919594, 32.646660, 42.652065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.718403, 32.538685, 42.725979>,  <34.383083, 32.358727, 42.849167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.718403, 32.538685, 42.725979> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502686, 0.419103, -0.756081,
		-0.211091, 0.788634, 0.577492,
		0.838300, 0.449899, -0.307966,
		34.969894, 32.673656, 42.633591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.098072, 32.941261, 42.394829>,  <34.383083, 32.358727, 42.849167>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.098072, 32.941261, 42.394829> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.489651, 32.959221, 42.315182>,  <34.724598, 32.969997, 42.267395>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.489651, 32.959221, 42.315182>,  <34.098072, 32.941261, 42.394829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.489651, 32.959221, 42.315182> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201522, 0.367661, -0.907862,
		0.032449, 0.928875, 0.368968,
		0.978946, 0.044896, -0.199119,
		34.783333, 32.972691, 42.255447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.343395, 33.613354, 42.418411>,  <34.098072, 32.941261, 42.394829>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.343395, 33.613354, 42.418411> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.595139, 33.421844, 42.173565>,  <34.746185, 33.306938, 42.026657>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.595139, 33.421844, 42.173565>,  <34.343395, 33.613354, 42.418411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.595139, 33.421844, 42.173565> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447904, 0.420200, -0.789186,
		0.635054, 0.770848, 0.050009,
		0.629356, -0.478776, -0.612115,
		34.783947, 33.278214, 41.989929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.653564, 34.156055, 41.967987>,  <34.343395, 33.613354, 42.418411>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.653564, 34.156055, 41.967987> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.659378, 33.789738, 41.807438>,  <34.662865, 33.569946, 41.711109>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.659378, 33.789738, 41.807438>,  <34.653564, 34.156055, 41.967987>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.659378, 33.789738, 41.807438> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537440, 0.331348, -0.775478,
		0.843177, 0.226984, -0.487372,
		0.014531, -0.915799, -0.401375,
		34.663738, 33.514999, 41.687027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.625648, 34.180721, 41.236080>,  <34.653564, 34.156055, 41.967987>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.625648, 34.180721, 41.236080> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.542404, 33.789810, 41.219982>,  <34.492458, 33.555264, 41.210323>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.542404, 33.789810, 41.219982>,  <34.625648, 34.180721, 41.236080>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.542404, 33.789810, 41.219982> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528577, 0.146988, -0.836063,
		0.822981, -0.152719, -0.547156,
		-0.208108, -0.977278, -0.040244,
		34.479973, 33.496628, 41.207909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.903652, 33.943272, 40.692711>,  <34.625648, 34.180721, 41.236080>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.903652, 33.943272, 40.692711> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.613060, 33.683556, 40.782734>,  <34.438705, 33.527725, 40.836746>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.613060, 33.683556, 40.782734>,  <34.903652, 33.943272, 40.692711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.613060, 33.683556, 40.782734> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464598, 0.222766, -0.857044,
		0.506334, -0.727186, -0.463493,
		-0.726481, -0.649288, 0.225055,
		34.395115, 33.488770, 40.850250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.612282, 33.852535, 40.552498>,  <34.903652, 33.943272, 40.692711>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.612282, 33.852535, 40.552498> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.775097, 34.188484, 40.408863>,  <35.872787, 34.390053, 40.322681>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.775097, 34.188484, 40.408863>,  <35.612282, 33.852535, 40.552498>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.775097, 34.188484, 40.408863> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188188, 0.307579, 0.932727,
		0.893815, -0.447230, -0.032858,
		0.407037, 0.839869, -0.359082,
		35.897209, 34.440445, 40.301140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.192940, 33.824100, 40.938511>,  <35.612282, 33.852535, 40.552498>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.192940, 33.824100, 40.938511> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.131382, 34.186150, 40.779980>,  <36.094448, 34.403378, 40.684860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.131382, 34.186150, 40.779980>,  <36.192940, 33.824100, 40.938511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.131382, 34.186150, 40.779980> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226677, 0.422750, 0.877439,
		0.961734, 0.045198, -0.270230,
		-0.153898, 0.905118, -0.396328,
		36.085213, 34.457684, 40.661079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.726093, 34.245071, 41.108246>,  <36.192940, 33.824100, 40.938511>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.726093, 34.245071, 41.108246> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.455528, 34.533272, 41.047138>,  <36.293190, 34.706192, 41.010471>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.455528, 34.533272, 41.047138>,  <36.726093, 34.245071, 41.108246>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.455528, 34.533272, 41.047138> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233147, 0.406220, 0.883531,
		0.698647, 0.562014, -0.442756,
		-0.676413, 0.720504, -0.152773,
		36.252605, 34.749424, 41.001305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.052368, 34.855133, 41.514191>,  <36.726093, 34.245071, 41.108246>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.052368, 34.855133, 41.514191> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.678410, 34.989769, 41.469143>,  <36.454037, 35.070549, 41.442112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.678410, 34.989769, 41.469143>,  <37.052368, 34.855133, 41.514191>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.678410, 34.989769, 41.469143> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055612, 0.452300, 0.890131,
		0.350547, 0.825913, -0.441570,
		-0.934893, 0.336589, -0.112621,
		36.397942, 35.090744, 41.435356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.046890, 35.559326, 41.543541>,  <37.052368, 34.855133, 41.514191>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.046890, 35.559326, 41.543541> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.673386, 35.459225, 41.645885>,  <36.449284, 35.399162, 41.707291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.673386, 35.459225, 41.645885>,  <37.046890, 35.559326, 41.543541>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.673386, 35.459225, 41.645885> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048253, 0.620339, 0.782848,
		-0.354629, 0.743339, -0.567173,
		-0.933761, -0.250253, 0.255859,
		36.393257, 35.384148, 41.722645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.757408, 36.199627, 41.724213>,  <37.046890, 35.559326, 41.543541>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.757408, 36.199627, 41.724213> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.556641, 35.909233, 41.912266>,  <36.436180, 35.734997, 42.025097>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.556641, 35.909233, 41.912266>,  <36.757408, 36.199627, 41.724213>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.556641, 35.909233, 41.912266> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047743, 0.565986, 0.823031,
		-0.863595, 0.390651, -0.318741,
		-0.501921, -0.725983, 0.470131,
		36.406063, 35.691437, 42.053307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.608105, 36.562202, 42.277748>,  <36.757408, 36.199627, 41.724213>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.608105, 36.562202, 42.277748> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.462059, 36.205051, 42.383163>,  <36.374432, 35.990761, 42.446411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.462059, 36.205051, 42.383163>,  <36.608105, 36.562202, 42.277748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.462059, 36.205051, 42.383163> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018323, 0.289921, 0.956875,
		-0.930782, 0.344541, -0.122215,
		-0.365115, -0.892882, 0.263540,
		36.352524, 35.937187, 42.462227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.109207, 36.634354, 42.718708>,  <36.608105, 36.562202, 42.277748>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.109207, 36.634354, 42.718708> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.241138, 36.266712, 42.804935>,  <36.320297, 36.046127, 42.856670>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.241138, 36.266712, 42.804935>,  <36.109207, 36.634354, 42.718708>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.241138, 36.266712, 42.804935> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082597, 0.255564, 0.963257,
		-0.940420, -0.299906, 0.160208,
		0.329830, -0.919099, 0.215566,
		36.340088, 35.990982, 42.869606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.716427, 36.273697, 43.361828>,  <36.109207, 36.634354, 42.718708>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.716427, 36.273697, 43.361828> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.085281, 36.126797, 43.313179>,  <36.306595, 36.038658, 43.283989>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.085281, 36.126797, 43.313179>,  <35.716427, 36.273697, 43.361828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.085281, 36.126797, 43.313179> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197371, 0.176220, 0.964360,
		-0.332729, -0.913277, 0.234983,
		0.922136, -0.367249, -0.121621,
		36.361923, 36.016621, 43.276691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.842670, 36.109028, 44.044495>,  <35.716427, 36.273697, 43.361828>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.842670, 36.109028, 44.044495> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.198196, 36.090935, 43.862083>,  <36.411510, 36.080078, 43.752636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.198196, 36.090935, 43.862083>,  <35.842670, 36.109028, 44.044495>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.198196, 36.090935, 43.862083> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444566, 0.326643, 0.834066,
		0.111230, -0.944065, 0.310435,
		0.888813, -0.045236, -0.456032,
		36.464840, 36.077366, 43.725273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.232574, 35.789139, 44.477226>,  <35.842670, 36.109028, 44.044495>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.232574, 35.789139, 44.477226> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.518166, 35.967007, 44.260891>,  <36.689522, 36.073727, 44.131092>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.518166, 35.967007, 44.260891>,  <36.232574, 35.789139, 44.477226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.518166, 35.967007, 44.260891> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500552, 0.215938, 0.838342,
		0.489575, -0.869274, -0.068407,
		0.713977, 0.444673, -0.540835,
		36.732361, 36.100407, 44.098640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.795559, 35.417110, 44.612030>,  <36.232574, 35.789139, 44.477226>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.795559, 35.417110, 44.612030> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.926693, 35.774643, 44.489655>,  <37.005371, 35.989162, 44.416229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.926693, 35.774643, 44.489655>,  <36.795559, 35.417110, 44.612030>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.926693, 35.774643, 44.489655> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603566, 0.050973, 0.795682,
		0.726797, -0.445504, -0.522774,
		0.327832, 0.893828, -0.305938,
		37.025043, 36.042789, 44.397873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.656624, 35.365242, 44.539005>,  <36.795559, 35.417110, 44.612030>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.656624, 35.365242, 44.539005> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.554108, 35.751881, 44.538410>,  <37.492599, 35.983864, 44.538052>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.554108, 35.751881, 44.538410>,  <37.656624, 35.365242, 44.539005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.554108, 35.751881, 44.538410> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749337, 0.199654, 0.631373,
		0.610582, 0.160699, -0.775478,
		-0.256288, 0.966599, -0.001488,
		37.477222, 36.041859, 44.537964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.309978, 35.697311, 44.305130>,  <37.656624, 35.365242, 44.539005>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.309978, 35.697311, 44.305130> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.059311, 35.938725, 44.502323>,  <37.908909, 36.083572, 44.620640>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.059311, 35.938725, 44.502323>,  <38.309978, 35.697311, 44.305130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.059311, 35.938725, 44.502323> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734581, 0.246316, 0.632234,
		0.260147, 0.758335, -0.597705,
		-0.626669, 0.603537, 0.492980,
		37.871311, 36.119785, 44.650219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.017849, 37.288391, 46.094444> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.369400, 37.114796, 46.015217>,  <34.580330, 37.010639, 45.967682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.369400, 37.114796, 46.015217>,  <34.017849, 37.288391, 46.094444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.369400, 37.114796, 46.015217> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148228, 0.146213, -0.978085,
		0.453436, 0.888976, 0.064174,
		0.878877, -0.433986, -0.198069,
		34.633064, 36.984600, 45.955795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.471924, 37.752697, 45.791386>,  <34.017849, 37.288391, 46.094444>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.471924, 37.752697, 45.791386> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.600964, 37.387840, 45.690254>,  <34.678387, 37.168926, 45.629574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.600964, 37.387840, 45.690254>,  <34.471924, 37.752697, 45.791386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.600964, 37.387840, 45.690254> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139645, 0.218325, -0.965833,
		0.936176, 0.346888, -0.056943,
		0.322604, -0.912142, -0.252832,
		34.697746, 37.114197, 45.614403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.926060, 37.874428, 45.290066>,  <34.471924, 37.752697, 45.791386>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.926060, 37.874428, 45.290066> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.853806, 37.484943, 45.234554>,  <34.810452, 37.251251, 45.201248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.853806, 37.484943, 45.234554>,  <34.926060, 37.874428, 45.290066>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.853806, 37.484943, 45.234554> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007048, 0.139813, -0.990153,
		0.983525, -0.179836, -0.018393,
		-0.180637, -0.973710, -0.138777,
		34.799614, 37.192829, 45.192921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.398830, 37.696800, 44.849792>,  <34.926060, 37.874428, 45.290066>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.398830, 37.696800, 44.849792> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.130882, 37.401794, 44.815514>,  <34.970112, 37.224792, 44.794945>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.130882, 37.401794, 44.815514>,  <35.398830, 37.696800, 44.849792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.130882, 37.401794, 44.815514> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011866, 0.104776, -0.994425,
		0.742382, -0.667154, -0.061435,
		-0.669872, -0.737515, -0.085700,
		34.929920, 37.180542, 44.789803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.595257, 37.326809, 44.218010>,  <35.398830, 37.696800, 44.849792>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.595257, 37.326809, 44.218010> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.206291, 37.258354, 44.281418>,  <34.972912, 37.217281, 44.319462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.206291, 37.258354, 44.281418>,  <35.595257, 37.326809, 44.218010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.206291, 37.258354, 44.281418> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166651, 0.034125, -0.985425,
		0.163229, -0.984657, -0.061703,
		-0.972411, -0.171133, 0.158524,
		34.914566, 37.207016, 44.328976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.418083, 36.836662, 43.757030>,  <35.595257, 37.326809, 44.218010>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.418083, 36.836662, 43.757030> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.075981, 37.010799, 43.869469>,  <34.870720, 37.115280, 43.936932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.075981, 37.010799, 43.869469>,  <35.418083, 36.836662, 43.757030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.075981, 37.010799, 43.869469> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200773, 0.221693, -0.954223,
		-0.477728, -0.872543, -0.102200,
		-0.855258, 0.435341, 0.281092,
		34.819405, 37.141403, 43.953796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.881630, 36.602161, 43.279602>,  <35.418083, 36.836662, 43.757030>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.881630, 36.602161, 43.279602> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.722771, 36.934074, 43.436436>,  <34.627457, 37.133224, 43.530537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.722771, 36.934074, 43.436436>,  <34.881630, 36.602161, 43.279602>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.722771, 36.934074, 43.436436> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300369, 0.286167, -0.909883,
		-0.867209, -0.479128, 0.135591,
		-0.397149, 0.829786, 0.392082,
		34.603626, 37.183010, 43.554062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.265091, 36.633152, 43.046059>,  <34.881630, 36.602161, 43.279602>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.265091, 36.633152, 43.046059> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.338081, 37.017666, 43.128654>,  <34.381874, 37.248375, 43.178211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.338081, 37.017666, 43.128654>,  <34.265091, 36.633152, 43.046059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.338081, 37.017666, 43.128654> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411123, 0.265376, -0.872097,
		-0.893129, 0.074245, 0.443630,
		0.182477, 0.961282, 0.206491,
		34.392826, 37.306049, 43.190601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.568108, 37.015877, 42.735775>,  <34.265091, 36.633152, 43.046059>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.568108, 37.015877, 42.735775> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.838982, 37.294178, 42.831562>,  <34.001507, 37.461159, 42.889034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.838982, 37.294178, 42.831562>,  <33.568108, 37.015877, 42.735775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.838982, 37.294178, 42.831562> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235257, 0.513089, -0.825466,
		-0.697191, 0.502655, 0.511137,
		0.677184, 0.695756, 0.239468,
		34.042137, 37.502907, 42.903404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.232891, 37.674923, 42.679298>,  <33.568108, 37.015877, 42.735775>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.232891, 37.674923, 42.679298> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.627094, 37.730789, 42.640804>,  <33.863617, 37.764309, 42.617710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.627094, 37.730789, 42.640804>,  <33.232891, 37.674923, 42.679298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.627094, 37.730789, 42.640804> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160858, 0.589752, -0.791402,
		-0.053779, 0.795416, 0.603674,
		0.985511, 0.139666, -0.096233,
		33.922749, 37.772690, 42.611935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.282696, 38.305397, 42.487923>,  <33.232891, 37.674923, 42.679298>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.282696, 38.305397, 42.487923> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.639751, 38.168713, 42.370319>,  <33.853985, 38.086704, 42.299759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.639751, 38.168713, 42.370319>,  <33.282696, 38.305397, 42.487923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.639751, 38.168713, 42.370319> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069943, 0.539323, -0.839190,
		0.445322, 0.769653, 0.457518,
		0.892635, -0.341709, -0.294004,
		33.907543, 38.066200, 42.282120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.503502, 38.933212, 42.142845>,  <33.282696, 38.305397, 42.487923>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.503502, 38.933212, 42.142845> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.691593, 38.596737, 42.036049>,  <33.804447, 38.394852, 41.971973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.691593, 38.596737, 42.036049>,  <33.503502, 38.933212, 42.142845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.691593, 38.596737, 42.036049> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057091, 0.272893, -0.960349,
		0.880695, 0.466828, 0.080299,
		0.470231, -0.841190, -0.266987,
		33.832661, 38.344379, 41.955952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.945267, 39.078312, 41.667889>,  <33.503502, 38.933212, 42.142845>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.945267, 39.078312, 41.667889> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.912098, 38.686817, 41.592834>,  <33.892197, 38.451920, 41.547802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.912098, 38.686817, 41.592834>,  <33.945267, 39.078312, 41.667889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.912098, 38.686817, 41.592834> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062982, 0.193051, -0.979165,
		0.994564, -0.069378, -0.077651,
		-0.082923, -0.978733, -0.187632,
		33.887222, 38.393196, 41.536545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.272114, 39.080910, 41.061970>,  <33.945267, 39.078312, 41.667889>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.272114, 39.080910, 41.061970> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.058525, 38.743469, 41.084652>,  <33.930370, 38.541004, 41.098259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.058525, 38.743469, 41.084652>,  <34.272114, 39.080910, 41.061970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.058525, 38.743469, 41.084652> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314194, 0.135719, -0.939608,
		0.784955, -0.519541, -0.337524,
		-0.533973, -0.843598, 0.056703,
		33.898335, 38.490391, 41.101662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.880165, 38.900402, 40.777729>,  <34.272114, 39.080910, 41.061970>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.880165, 38.900402, 40.777729> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.228378, 39.086082, 40.712376>,  <35.437305, 39.197491, 40.673164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.228378, 39.086082, 40.712376>,  <34.880165, 38.900402, 40.777729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.228378, 39.086082, 40.712376> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012800, 0.353253, 0.935440,
		0.491948, -0.812238, 0.313459,
		0.870530, 0.464200, -0.163385,
		35.489536, 39.225342, 40.663361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.364193, 38.657524, 41.327080>,  <34.880165, 38.900402, 40.777729>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.364193, 38.657524, 41.327080> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.546890, 38.981064, 41.178947>,  <35.656509, 39.175186, 41.090069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.546890, 38.981064, 41.178947>,  <35.364193, 38.657524, 41.327080>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.546890, 38.981064, 41.178947> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383495, 0.196602, 0.902374,
		0.802693, -0.554176, -0.220393,
		0.456745, 0.808849, -0.370335,
		35.683914, 39.223717, 41.067848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.071014, 38.520222, 41.386517>,  <35.364193, 38.657524, 41.327080>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.071014, 38.520222, 41.386517> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.039368, 38.918877, 41.377899>,  <36.020382, 39.158070, 41.372726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.039368, 38.918877, 41.377899>,  <36.071014, 38.520222, 41.386517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.039368, 38.918877, 41.377899> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488595, 0.057606, 0.870607,
		0.868917, 0.058350, -0.491507,
		-0.079114, 0.996633, -0.021546,
		36.015633, 39.217865, 41.371437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.670513, 38.754963, 41.558094>,  <36.071014, 38.520222, 41.386517>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.670513, 38.754963, 41.558094> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.422344, 39.061066, 41.626751>,  <36.273445, 39.244728, 41.667946>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.422344, 39.061066, 41.626751>,  <36.670513, 38.754963, 41.558094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.422344, 39.061066, 41.626751> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349089, 0.073484, 0.934204,
		0.702294, 0.639515, -0.312734,
		-0.620419, 0.765258, 0.171640,
		36.236217, 39.290642, 41.678242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.118889, 39.350292, 41.867031>,  <36.670513, 38.754963, 41.558094>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.118889, 39.350292, 41.867031> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.732014, 39.367210, 41.967232>,  <36.499889, 39.377361, 42.027351>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.732014, 39.367210, 41.967232>,  <37.118889, 39.350292, 41.867031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.732014, 39.367210, 41.967232> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248220, -0.052703, 0.967269,
		0.054111, 0.997714, 0.040476,
		-0.967191, 0.042293, 0.250504,
		36.441856, 39.379898, 42.042381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.097672, 39.884846, 42.341011>,  <37.118889, 39.350292, 41.867031>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.097672, 39.884846, 42.341011> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.776051, 39.660835, 42.420883>,  <36.583076, 39.526428, 42.468807>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.776051, 39.660835, 42.420883>,  <37.097672, 39.884846, 42.341011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.776051, 39.660835, 42.420883> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249429, -0.012855, 0.968308,
		-0.539711, 0.828375, 0.150023,
		-0.804051, -0.560026, 0.199683,
		36.534836, 39.492828, 42.480789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.908459, 40.195045, 43.101963>,  <37.097672, 39.884846, 42.341011>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.908459, 40.195045, 43.101963> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.717434, 39.846302, 43.058502>,  <36.602821, 39.637058, 43.032425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.717434, 39.846302, 43.058502>,  <36.908459, 40.195045, 43.101963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.717434, 39.846302, 43.058502> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189378, -0.222904, 0.956269,
		-0.857947, 0.436098, 0.271561,
		-0.477559, -0.871856, -0.108652,
		36.574165, 39.584743, 43.025906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.380760, 40.198357, 43.600025>,  <36.908459, 40.195045, 43.101963>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.380760, 40.198357, 43.600025> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.451401, 39.814388, 43.512978>,  <36.493786, 39.584007, 43.460751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.451401, 39.814388, 43.512978>,  <36.380760, 40.198357, 43.600025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.451401, 39.814388, 43.512978> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218859, -0.177264, 0.959520,
		-0.959642, -0.217081, 0.178783,
		0.176602, -0.959924, -0.217620,
		36.504383, 39.526413, 43.447693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.949348, 39.814110, 44.112621>,  <36.380760, 40.198357, 43.600025>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.949348, 39.814110, 44.112621> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.219887, 39.565704, 43.954182>,  <36.382210, 39.416660, 43.859116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.219887, 39.565704, 43.954182>,  <35.949348, 39.814110, 44.112621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.219887, 39.565704, 43.954182> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302389, -0.256254, 0.918093,
		-0.671654, -0.740724, 0.014473,
		0.676344, -0.621017, -0.396101,
		36.422791, 39.379398, 43.835350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.852787, 39.142254, 44.467159>,  <35.949348, 39.814110, 44.112621>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.852787, 39.142254, 44.467159> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.224152, 39.101372, 44.324272>,  <36.446972, 39.076843, 44.238541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.224152, 39.101372, 44.324272>,  <35.852787, 39.142254, 44.467159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.224152, 39.101372, 44.324272> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325933, -0.237515, 0.915071,
		-0.178370, -0.965992, -0.187200,
		0.928414, -0.102206, -0.357214,
		36.502674, 39.070709, 44.217110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.154922, 38.476707, 44.650421>,  <35.852787, 39.142254, 44.467159>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.154922, 38.476707, 44.650421> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.467228, 38.717358, 44.582935>,  <36.654610, 38.861748, 44.542446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.467228, 38.717358, 44.582935>,  <36.154922, 38.476707, 44.650421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.467228, 38.717358, 44.582935> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436402, -0.331815, 0.836333,
		0.447176, -0.726601, -0.521618,
		0.780760, 0.601623, -0.168710,
		36.701458, 38.897846, 44.532322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.843151, 38.099789, 44.707458>,  <36.154922, 38.476707, 44.650421>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.843151, 38.099789, 44.707458> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.928974, 38.484108, 44.777695>,  <36.980469, 38.714699, 44.819836>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.928974, 38.484108, 44.777695>,  <36.843151, 38.099789, 44.707458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.928974, 38.484108, 44.777695> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559664, -0.268273, 0.784095,
		0.800464, -0.069960, -0.595284,
		0.214554, 0.960799, 0.175589,
		36.993340, 38.772346, 44.830372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.525692, 38.079109, 44.968159>,  <36.843151, 38.099789, 44.707458>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.525692, 38.079109, 44.968159> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.401989, 38.449303, 45.055645>,  <37.327766, 38.671421, 45.108135>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.401989, 38.449303, 45.055645>,  <37.525692, 38.079109, 44.968159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.401989, 38.449303, 45.055645> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384452, -0.088685, 0.918875,
		0.869802, 0.368255, -0.328378,
		-0.309258, 0.925485, 0.218715,
		37.309212, 38.726948, 45.121258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.128098, 38.517731, 45.373974>,  <37.525692, 38.079109, 44.968159>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.128098, 38.517731, 45.373974> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.771469, 38.667046, 45.476543>,  <37.557491, 38.756634, 45.538086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.771469, 38.667046, 45.476543>,  <38.128098, 38.517731, 45.373974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.771469, 38.667046, 45.476543> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253501, -0.057834, 0.965605,
		0.375282, 0.925910, -0.043066,
		-0.891572, 0.373291, 0.256423,
		37.503998, 38.779034, 45.553471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.578167, 39.149246, 45.137283>,  <38.128098, 38.517731, 45.373974>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.578167, 39.149246, 45.137283> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.933567, 38.967648, 45.110607>,  <39.146809, 38.858688, 45.094601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.933567, 38.967648, 45.110607>,  <38.578167, 39.149246, 45.137283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.933567, 38.967648, 45.110607> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139334, -0.128460, -0.981878,
		0.437205, 0.881693, -0.177395,
		0.888503, -0.453999, -0.066686,
		39.200119, 38.831448, 45.090603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.842545, 39.474888, 44.607559>,  <38.578167, 39.149246, 45.137283>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.842545, 39.474888, 44.607559> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.058136, 39.138519, 44.626965>,  <39.187492, 38.936699, 44.638607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.058136, 39.138519, 44.626965>,  <38.842545, 39.474888, 44.607559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.058136, 39.138519, 44.626965> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103007, 0.008636, -0.994643,
		0.835996, 0.541091, 0.091275,
		0.538981, -0.840920, 0.048516,
		39.219830, 38.886242, 44.641518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.285046, 39.557850, 44.146542>,  <38.842545, 39.474888, 44.607559>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.285046, 39.557850, 44.146542> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.292164, 39.164745, 44.220150>,  <39.296436, 38.928883, 44.264313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.292164, 39.164745, 44.220150>,  <39.285046, 39.557850, 44.146542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.292164, 39.164745, 44.220150> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095692, -0.181527, -0.978719,
		0.995252, 0.035026, 0.090812,
		0.017796, -0.982762, 0.184017,
		39.297504, 38.869915, 44.275356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.907459, 39.286499, 43.896996>,  <39.285046, 39.557850, 44.146542>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.907459, 39.286499, 43.896996> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.626385, 39.002495, 43.915359>,  <39.457741, 38.832092, 43.926376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.626385, 39.002495, 43.915359>,  <39.907459, 39.286499, 43.896996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.626385, 39.002495, 43.915359> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117580, -0.179524, -0.976702,
		0.701713, -0.680921, 0.209633,
		-0.702690, -0.710013, 0.045911,
		39.415577, 38.789490, 43.929134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.136044, 38.708546, 43.465851>,  <39.907459, 39.286499, 43.896996>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.136044, 38.708546, 43.465851> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.749397, 38.610165, 43.494564>,  <39.517410, 38.551136, 43.511791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.749397, 38.610165, 43.494564>,  <40.136044, 38.708546, 43.465851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.749397, 38.610165, 43.494564> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005711, -0.300771, -0.953679,
		0.256153, -0.921435, 0.292136,
		-0.966619, -0.245957, 0.071781,
		39.459412, 38.536377, 43.516098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.018379, 38.065712, 43.038895>,  <40.136044, 38.708546, 43.465851>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.018379, 38.065712, 43.038895> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.669579, 38.259506, 43.066837>,  <39.460297, 38.375782, 43.083603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.669579, 38.259506, 43.066837>,  <40.018379, 38.065712, 43.038895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.669579, 38.259506, 43.066837> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139375, -0.108932, -0.984230,
		-0.469237, -0.867989, 0.162515,
		-0.872004, 0.484488, 0.069861,
		39.407978, 38.404854, 43.087795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.525414, 37.669930, 42.738991>,  <40.018379, 38.065712, 43.038895>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.525414, 37.669930, 42.738991> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.327251, 38.016670, 42.716560>,  <39.208355, 38.224716, 42.703102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.327251, 38.016670, 42.716560>,  <39.525414, 37.669930, 42.738991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.327251, 38.016670, 42.716560> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394629, -0.282100, -0.874464,
		-0.773850, -0.411082, 0.481838,
		-0.495403, 0.866851, -0.056078,
		39.178631, 38.276726, 42.699738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.829269, 37.487808, 42.560650>,  <39.525414, 37.669930, 42.738991>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.829269, 37.487808, 42.560650> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.873787, 37.873451, 42.464230>,  <38.900497, 38.104839, 42.406376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.873787, 37.873451, 42.464230>,  <38.829269, 37.487808, 42.560650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.873787, 37.873451, 42.464230> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316188, -0.195599, -0.928313,
		-0.942146, 0.179532, 0.283071,
		0.111294, 0.964110, -0.241049,
		38.907173, 38.162685, 42.391914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.269249, 37.761330, 42.147980>,  <38.829269, 37.487808, 42.560650>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.269249, 37.761330, 42.147980> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.535744, 38.053486, 42.087776>,  <38.695641, 38.228779, 42.051655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.535744, 38.053486, 42.087776>,  <38.269249, 37.761330, 42.147980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.535744, 38.053486, 42.087776> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221997, 0.001578, -0.975046,
		-0.711929, 0.683025, 0.163197,
		0.666238, 0.730393, -0.150506,
		38.735615, 38.272602, 42.042625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.902374, 38.262680, 41.750835>,  <38.269249, 37.761330, 42.147980>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.902374, 38.262680, 41.750835> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.293293, 38.307392, 41.678844>,  <38.527843, 38.334221, 41.635651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.293293, 38.307392, 41.678844>,  <37.902374, 38.262680, 41.750835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.293293, 38.307392, 41.678844> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182368, 0.011426, -0.983164,
		-0.107842, 0.993667, 0.031552,
		0.977298, 0.111780, -0.179981,
		38.586483, 38.340927, 41.624851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.955257, 38.762100, 41.264320>,  <37.902374, 38.262680, 41.750835>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.955257, 38.762100, 41.264320> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.313976, 38.589603, 41.224762>,  <38.529209, 38.486103, 41.201027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.313976, 38.589603, 41.224762>,  <37.955257, 38.762100, 41.264320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.313976, 38.589603, 41.224762> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056336, 0.110396, -0.992290,
		0.438838, 0.895455, 0.074708,
		0.896798, -0.431246, -0.098893,
		38.583015, 38.460228, 41.195095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.331108, 39.144386, 40.702206>,  <37.955257, 38.762100, 41.264320>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.331108, 39.144386, 40.702206> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.553997, 38.814137, 40.737652>,  <38.687729, 38.615986, 40.758919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.553997, 38.814137, 40.737652>,  <38.331108, 39.144386, 40.702206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.553997, 38.814137, 40.737652> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054665, -0.070016, -0.996047,
		0.828561, 0.559865, 0.006118,
		0.557223, -0.825621, 0.088618,
		38.721165, 38.566452, 40.764236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.850857, 39.199055, 40.135345>,  <38.331108, 39.144386, 40.702206>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.850857, 39.199055, 40.135345> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.836536, 38.818031, 40.256245>,  <38.827942, 38.589417, 40.328785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.836536, 38.818031, 40.256245>,  <38.850857, 39.199055, 40.135345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.836536, 38.818031, 40.256245> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103323, -0.304345, -0.946942,
		0.994003, -0.002676, 0.109318,
		-0.035804, -0.952558, 0.302243,
		38.825794, 38.532265, 40.346916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.315365, 38.881630, 39.683670>,  <38.850857, 39.199055, 40.135345>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.315365, 38.881630, 39.683670> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.086201, 38.583954, 39.821045>,  <38.948704, 38.405346, 39.903469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.086201, 38.583954, 39.821045>,  <39.315365, 38.881630, 39.683670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.086201, 38.583954, 39.821045> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070390, -0.372799, -0.925238,
		0.816590, -0.554253, 0.161196,
		-0.572909, -0.744194, 0.343438,
		38.914330, 38.360695, 39.924076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<26.625628, 38.657829, 27.787390> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.983503, 38.545715, 27.926512>,  <27.198229, 38.478447, 28.009985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.983503, 38.545715, 27.926512>,  <26.625628, 38.657829, 27.787390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.983503, 38.545715, 27.926512> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402322, -0.843941, 0.354825,
		0.194077, -0.457389, -0.867830,
		0.894691, -0.280284, 0.347807,
		27.251911, 38.461632, 28.030853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.861528, 37.862217, 27.641790>,  <26.625628, 38.657829, 27.787390>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.861528, 37.862217, 27.641790> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.061213, 37.981323, 27.967276>,  <27.181023, 38.052788, 28.162567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.061213, 37.981323, 27.967276>,  <26.861528, 37.862217, 27.641790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.061213, 37.981323, 27.967276> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344737, -0.793322, 0.501793,
		0.794951, -0.531017, -0.293383,
		0.499208, 0.297761, 0.813713,
		27.210976, 38.070652, 28.211390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.298563, 37.273506, 27.932594>,  <26.861528, 37.862217, 27.641790>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.298563, 37.273506, 27.932594> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.194557, 37.533180, 28.218519>,  <27.132153, 37.688984, 28.390074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.194557, 37.533180, 28.218519>,  <27.298563, 37.273506, 27.932594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.194557, 37.533180, 28.218519> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431385, -0.740388, 0.515492,
		0.863886, -0.174322, 0.472560,
		-0.260016, 0.649182, 0.714811,
		27.116552, 37.727936, 28.432962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.216122, 36.814678, 28.528311>,  <27.298563, 37.273506, 27.932594>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.216122, 36.814678, 28.528311> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.100153, 37.166832, 28.678440>,  <27.030573, 37.378124, 28.768518>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.100153, 37.166832, 28.678440>,  <27.216122, 36.814678, 28.528311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.100153, 37.166832, 28.678440> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416078, -0.469112, 0.778982,
		0.861873, 0.069679, 0.502314,
		-0.289920, 0.880386, 0.375323,
		27.013176, 37.430946, 28.791037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.465342, 36.771069, 29.107744>,  <27.216122, 36.814678, 28.528311>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.465342, 36.771069, 29.107744> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.182800, 37.048492, 29.164368>,  <27.013275, 37.214947, 29.198341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.182800, 37.048492, 29.164368>,  <27.465342, 36.771069, 29.107744>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.182800, 37.048492, 29.164368> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258655, -0.439046, 0.860428,
		0.658908, 0.571152, 0.489515,
		-0.706355, 0.693559, 0.141559,
		26.970894, 37.256561, 29.206835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.497379, 37.051422, 29.897131>,  <27.465342, 36.771069, 29.107744>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.497379, 37.051422, 29.897131> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.133209, 37.151897, 29.765657>,  <26.914707, 37.212181, 29.686773>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.133209, 37.151897, 29.765657>,  <27.497379, 37.051422, 29.897131>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.133209, 37.151897, 29.765657> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393380, -0.279882, 0.875739,
		0.127980, 0.926592, 0.353623,
		-0.910425, 0.251185, -0.328684,
		26.860083, 37.227253, 29.667053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.235254, 37.544708, 30.298548>,  <27.497379, 37.051422, 29.897131>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.235254, 37.544708, 30.298548> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.911230, 37.378803, 30.132767>,  <26.716816, 37.279259, 30.033298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.911230, 37.378803, 30.132767>,  <27.235254, 37.544708, 30.298548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.911230, 37.378803, 30.132767> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352878, -0.219646, 0.909523,
		-0.468272, 0.883021, 0.031564,
		-0.810061, -0.414766, -0.414453,
		26.668211, 37.254372, 30.008430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.681379, 37.832378, 30.694996>,  <27.235254, 37.544708, 30.298548>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.681379, 37.832378, 30.694996> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.581121, 37.482689, 30.528666>,  <26.520967, 37.272877, 30.428867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.581121, 37.482689, 30.528666>,  <26.681379, 37.832378, 30.694996>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.581121, 37.482689, 30.528666> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372877, -0.309215, 0.874842,
		-0.893387, 0.374325, -0.248476,
		-0.250644, -0.874224, -0.415826,
		26.505928, 37.220421, 30.403917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.074999, 37.732048, 30.967844>,  <26.681379, 37.832378, 30.694996>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.074999, 37.732048, 30.967844> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.182951, 37.366390, 30.846842>,  <26.247723, 37.146996, 30.774240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.182951, 37.366390, 30.846842>,  <26.074999, 37.732048, 30.967844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.182951, 37.366390, 30.846842> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137848, -0.347608, 0.927452,
		-0.952975, -0.208602, -0.219825,
		0.269881, -0.914141, -0.302506,
		26.263916, 37.092148, 30.756090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.492798, 37.381485, 31.099941>,  <26.074999, 37.732048, 30.967844>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.492798, 37.381485, 31.099941> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.804541, 37.131310, 31.084780>,  <25.991587, 36.981205, 31.075682>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.804541, 37.131310, 31.084780>,  <25.492798, 37.381485, 31.099941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.804541, 37.131310, 31.084780> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252901, -0.369335, 0.894222,
		-0.573278, -0.687329, -0.446016,
		0.779355, -0.625436, -0.037906,
		26.038347, 36.943680, 31.073408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.207155, 36.750957, 31.362755>,  <25.492798, 37.381485, 31.099941>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.207155, 36.750957, 31.362755> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.601261, 36.750732, 31.431171>,  <25.837725, 36.750595, 31.472221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.601261, 36.750732, 31.431171>,  <25.207155, 36.750957, 31.362755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.601261, 36.750732, 31.431171> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151337, -0.468887, 0.870196,
		0.079708, -0.883258, -0.462063,
		0.985263, -0.000566, 0.171044,
		25.896841, 36.750561, 31.482485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.216011, 36.314735, 31.824512>,  <25.207155, 36.750957, 31.362755>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.216011, 36.314735, 31.824512> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.609404, 36.386753, 31.817055>,  <25.845440, 36.429962, 31.812580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.609404, 36.386753, 31.817055>,  <25.216011, 36.314735, 31.824512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.609404, 36.386753, 31.817055> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093328, -0.416121, 0.904507,
		0.155094, -0.891306, -0.426050,
		0.983482, 0.180046, -0.018646,
		25.904448, 36.440765, 31.811460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.523712, 35.672634, 31.943863>,  <25.216011, 36.314735, 31.824512>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.523712, 35.672634, 31.943863> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.767307, 35.968651, 32.058037>,  <25.913465, 36.146259, 32.126541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.767307, 35.968651, 32.058037>,  <25.523712, 35.672634, 31.943863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.767307, 35.968651, 32.058037> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055265, -0.398579, 0.915468,
		0.791250, -0.541736, -0.283628,
		0.608990, 0.740039, 0.285437,
		25.950005, 36.190662, 32.143669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.046232, 35.358807, 32.315540>,  <25.523712, 35.672634, 31.943863>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.046232, 35.358807, 32.315540> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.069386, 35.732471, 32.456394>,  <26.083277, 35.956669, 32.540905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.069386, 35.732471, 32.456394>,  <26.046232, 35.358807, 32.315540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.069386, 35.732471, 32.456394> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005400, -0.353010, 0.935604,
		0.998309, -0.052253, -0.025477,
		0.057882, 0.934159, 0.352131,
		26.086750, 36.012718, 32.562035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.630592, 35.260803, 32.718357>,  <26.046232, 35.358807, 32.315540>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.630592, 35.260803, 32.718357> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.449574, 35.595837, 32.840767>,  <26.340961, 35.796856, 32.914211>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.449574, 35.595837, 32.840767>,  <26.630592, 35.260803, 32.718357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.449574, 35.595837, 32.840767> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109167, -0.288556, 0.951219,
		0.885033, 0.463881, 0.039149,
		-0.452549, 0.837586, 0.306022,
		26.313808, 35.847111, 32.932575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.982712, 35.527245, 33.278229>,  <26.630592, 35.260803, 32.718357>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.982712, 35.527245, 33.278229> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.627996, 35.708721, 33.313480>,  <26.415167, 35.817608, 33.334633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.627996, 35.708721, 33.313480>,  <26.982712, 35.527245, 33.278229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.627996, 35.708721, 33.313480> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054798, -0.292561, 0.954675,
		0.458913, 0.841767, 0.284302,
		-0.886790, 0.453692, 0.088133,
		26.361959, 35.844830, 33.339920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.992882, 35.771004, 33.947533>,  <26.982712, 35.527245, 33.278229>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.992882, 35.771004, 33.947533> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.598520, 35.764668, 33.880909>,  <26.361902, 35.760868, 33.840935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.598520, 35.764668, 33.880909>,  <26.992882, 35.771004, 33.947533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.598520, 35.764668, 33.880909> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151462, -0.338404, 0.928731,
		-0.071071, 0.940868, 0.331235,
		-0.985905, -0.015836, -0.166557,
		26.302750, 35.759918, 33.830940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.625177, 35.957790, 34.686569>,  <26.992882, 35.771004, 33.947533>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.625177, 35.957790, 34.686569> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.373356, 35.770714, 34.438396>,  <26.222263, 35.658470, 34.289494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.373356, 35.770714, 34.438396>,  <26.625177, 35.957790, 34.686569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.373356, 35.770714, 34.438396> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258596, -0.626881, 0.734948,
		-0.732661, 0.623128, 0.273712,
		-0.629552, -0.467687, -0.620430,
		26.184490, 35.630409, 34.252266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.899960, 36.059746, 34.848442>,  <26.625177, 35.957790, 34.686569>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.899960, 36.059746, 34.848442> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.015034, 35.707489, 34.697868>,  <26.084078, 35.496136, 34.607525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.015034, 35.707489, 34.697868>,  <25.899960, 36.059746, 34.848442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.015034, 35.707489, 34.697868> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038438, -0.403352, 0.914237,
		-0.956954, -0.248542, -0.149888,
		0.287684, -0.880644, -0.376436,
		26.101339, 35.443295, 34.584938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.935257, 36.047165, 35.688236>,  <25.899960, 36.059746, 34.848442>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.935257, 36.047165, 35.688236> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.091471, 36.328773, 35.925503>,  <26.185200, 36.497738, 36.067863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.091471, 36.328773, 35.925503>,  <25.935257, 36.047165, 35.688236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.091471, 36.328773, 35.925503> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706410, 0.183990, -0.683471,
		-0.590312, 0.685934, -0.425471,
		0.390534, 0.704018, 0.593162,
		26.208632, 36.539978, 36.103451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.067286, 36.702709, 35.426212>,  <25.935257, 36.047165, 35.688236>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.067286, 36.702709, 35.426212> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.349573, 36.656059, 35.705742>,  <26.518946, 36.628067, 35.873459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.349573, 36.656059, 35.705742>,  <26.067286, 36.702709, 35.426212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.349573, 36.656059, 35.705742> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685678, 0.360722, -0.632238,
		-0.178346, 0.925353, 0.334537,
		0.705718, -0.116627, 0.698827,
		26.561289, 36.621071, 35.915390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.379837, 37.325699, 35.378109>,  <26.067286, 36.702709, 35.426212>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.379837, 37.325699, 35.378109> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.652260, 37.064640, 35.510899>,  <26.815714, 36.908005, 35.590572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.652260, 37.064640, 35.510899>,  <26.379837, 37.325699, 35.378109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.652260, 37.064640, 35.510899> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683881, 0.404950, -0.606896,
		0.261660, 0.640361, 0.722130,
		0.681059, -0.652651, 0.331972,
		26.856577, 36.868843, 35.610489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.062252, 37.647690, 35.316414>,  <26.379837, 37.325699, 35.378109>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.062252, 37.647690, 35.316414> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.175623, 37.275196, 35.408039>,  <27.243645, 37.051701, 35.463017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.175623, 37.275196, 35.408039>,  <27.062252, 37.647690, 35.316414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.175623, 37.275196, 35.408039> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928237, 0.206389, -0.309484,
		0.240925, 0.300344, 0.922902,
		0.283428, -0.931234, 0.229066,
		27.260651, 36.995827, 35.476757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.684414, 37.704506, 35.871185>,  <27.062252, 37.647690, 35.316414>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.684414, 37.704506, 35.871185> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.683716, 37.374634, 35.644947>,  <27.683298, 37.176712, 35.509205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.683716, 37.374634, 35.644947>,  <27.684414, 37.704506, 35.871185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.683716, 37.374634, 35.644947> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942222, 0.188111, -0.277184,
		0.334983, -0.533401, 0.776704,
		-0.001743, -0.824680, -0.565597,
		27.683193, 37.127232, 35.475269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.371277, 37.315990, 35.973106>,  <27.684414, 37.704506, 35.871185>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.371277, 37.315990, 35.973106> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.212507, 37.174747, 35.634220>,  <28.117247, 37.090000, 35.430889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.212507, 37.174747, 35.634220>,  <28.371277, 37.315990, 35.973106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.212507, 37.174747, 35.634220> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807107, 0.305264, -0.505364,
		0.437072, -0.884380, 0.163830,
		-0.396922, -0.353109, -0.847211,
		28.093431, 37.068813, 35.380058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.910320, 36.701416, 35.622326>,  <28.371277, 37.315990, 35.973106>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.910320, 36.701416, 35.622326> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.657381, 36.866707, 35.360218>,  <28.505617, 36.965881, 35.202953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.657381, 36.866707, 35.360218>,  <28.910320, 36.701416, 35.622326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.657381, 36.866707, 35.360218> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768590, 0.228773, -0.597438,
		-0.096968, -0.881425, -0.462264,
		-0.632350, 0.413224, -0.655271,
		28.467676, 36.990673, 35.163635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.227764, 36.511909, 34.979900>,  <28.910320, 36.701416, 35.622326>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.227764, 36.511909, 34.979900> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.965590, 36.806866, 34.914597>,  <28.808285, 36.983841, 34.875416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.965590, 36.806866, 34.914597>,  <29.227764, 36.511909, 34.979900>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.965590, 36.806866, 34.914597> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586317, 0.360545, -0.725423,
		-0.476061, -0.571190, -0.668661,
		-0.655438, 0.737393, -0.163257,
		28.768959, 37.028084, 34.865620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.100210, 36.550102, 34.291302>,  <29.227764, 36.511909, 34.979900>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.100210, 36.550102, 34.291302> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.987848, 36.915581, 34.408779>,  <28.920431, 37.134869, 34.479267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.987848, 36.915581, 34.408779>,  <29.100210, 36.550102, 34.291302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.987848, 36.915581, 34.408779> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684208, 0.405247, -0.606328,
		-0.673016, 0.030626, -0.738993,
		-0.280906, 0.913694, 0.293692,
		28.903576, 37.189690, 34.496887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.157143, 36.882889, 33.677395>,  <29.100210, 36.550102, 34.291302>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.157143, 36.882889, 33.677395> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.153862, 37.179348, 33.945911>,  <29.151894, 37.357224, 34.107021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.153862, 37.179348, 33.945911>,  <29.157143, 36.882889, 33.677395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.153862, 37.179348, 33.945911> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609516, 0.535891, -0.584218,
		-0.792731, 0.404369, -0.456139,
		-0.008201, 0.741152, 0.671287,
		29.151402, 37.401695, 34.147297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.899921, 37.468830, 33.300537>,  <29.157143, 36.882889, 33.677395>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.899921, 37.468830, 33.300537> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.098776, 37.581406, 33.628841>,  <29.218088, 37.648952, 33.825825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.098776, 37.581406, 33.628841>,  <28.899921, 37.468830, 33.300537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.098776, 37.581406, 33.628841> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603177, 0.567886, -0.560075,
		-0.623726, 0.773496, 0.112557,
		0.497135, 0.281441, 0.820760,
		29.247917, 37.665836, 33.875069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.073444, 38.081837, 33.090462>,  <28.899921, 37.468830, 33.300537>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.073444, 38.081837, 33.090462> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.330158, 38.012028, 33.389168>,  <29.484186, 37.970142, 33.568390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.330158, 38.012028, 33.389168>,  <29.073444, 38.081837, 33.090462>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.330158, 38.012028, 33.389168> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695191, 0.543498, -0.470446,
		-0.323761, 0.821068, 0.470135,
		0.641785, -0.174522, 0.746762,
		29.522694, 37.959671, 33.613197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.424082, 38.720669, 33.091644>,  <29.073444, 38.081837, 33.090462>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.424082, 38.720669, 33.091644> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.643879, 38.468685, 33.311172>,  <29.775757, 38.317493, 33.442890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.643879, 38.468685, 33.311172>,  <29.424082, 38.720669, 33.091644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.643879, 38.468685, 33.311172> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832053, 0.472191, -0.291074,
		-0.075784, 0.616592, 0.783627,
		0.549495, -0.629960, 0.548822,
		29.808727, 38.279697, 33.475819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.860695, 39.087505, 33.471878>,  <29.424082, 38.720669, 33.091644>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.860695, 39.087505, 33.471878> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.032417, 38.730198, 33.418552>,  <30.135450, 38.515816, 33.386559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.032417, 38.730198, 33.418552>,  <29.860695, 39.087505, 33.471878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.032417, 38.730198, 33.418552> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834799, 0.448798, -0.318891,
		0.344686, 0.025610, 0.938369,
		0.429305, -0.893266, -0.133315,
		30.161209, 38.462219, 33.378559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.435860, 39.318100, 33.711620>,  <29.860695, 39.087505, 33.471878>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.435860, 39.318100, 33.711620> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.492050, 38.978428, 33.507988>,  <30.525764, 38.774624, 33.385811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.492050, 38.978428, 33.507988>,  <30.435860, 39.318100, 33.711620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.492050, 38.978428, 33.507988> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798369, 0.401249, -0.449005,
		0.585553, -0.343357, 0.734325,
		0.140478, -0.849179, -0.509079,
		30.534193, 38.723675, 33.355263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.087749, 39.248871, 33.757835>,  <30.435860, 39.318100, 33.711620>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.087749, 39.248871, 33.757835> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.993755, 39.029812, 33.436623>,  <30.937359, 38.898376, 33.243893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.993755, 39.029812, 33.436623>,  <31.087749, 39.248871, 33.757835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.993755, 39.029812, 33.436623> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840538, 0.300413, -0.450831,
		0.488138, -0.780920, 0.389725,
		-0.234984, -0.547646, -0.803035,
		30.923260, 38.865517, 33.195713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.733162, 38.991467, 33.563873>,  <31.087749, 39.248871, 33.757835>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.733162, 38.991467, 33.563873> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.495153, 38.969460, 33.243145>,  <31.352348, 38.956257, 33.050709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.495153, 38.969460, 33.243145>,  <31.733162, 38.991467, 33.563873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.495153, 38.969460, 33.243145> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755263, 0.302858, -0.581253,
		0.274817, -0.951446, -0.138656,
		-0.595024, -0.055016, -0.801823,
		31.316647, 38.952953, 33.002598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.092190, 38.528336, 32.957500>,  <31.733162, 38.991467, 33.563873>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.092190, 38.528336, 32.957500> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.810175, 38.760883, 32.795052>,  <31.640966, 38.900414, 32.697582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.810175, 38.760883, 32.795052>,  <32.092190, 38.528336, 32.957500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.810175, 38.760883, 32.795052> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635296, 0.263284, -0.726003,
		-0.315150, -0.769865, -0.554967,
		-0.705038, 0.581368, -0.406118,
		31.598663, 38.935295, 32.673218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.182747, 38.428757, 32.191601>,  <32.092190, 38.528336, 32.957500>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.182747, 38.428757, 32.191601> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.978966, 38.767754, 32.251225>,  <31.856697, 38.971153, 32.286999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.978966, 38.767754, 32.251225>,  <32.182747, 38.428757, 32.191601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.978966, 38.767754, 32.251225> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558052, 0.457249, -0.692460,
		-0.655011, -0.269592, -0.705890,
		-0.509450, 0.847492, 0.149057,
		31.826130, 39.022003, 32.295940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.116371, 38.691490, 31.510410>,  <32.182747, 38.428757, 32.191601>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.116371, 38.691490, 31.510410> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.045898, 39.016102, 31.733255>,  <32.003613, 39.210869, 31.866962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.045898, 39.016102, 31.733255>,  <32.116371, 38.691490, 31.510410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.045898, 39.016102, 31.733255> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277884, 0.583952, -0.762745,
		-0.944320, 0.020430, -0.328395,
		-0.176184, 0.811531, 0.557115,
		31.993044, 39.259560, 31.900391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.519760, 39.038708, 31.209175>,  <32.116371, 38.691490, 31.510410>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.519760, 39.038708, 31.209175> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.721441, 39.308315, 31.425129>,  <31.842451, 39.470081, 31.554701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.721441, 39.308315, 31.425129>,  <31.519760, 39.038708, 31.209175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.721441, 39.308315, 31.425129> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186448, 0.695386, -0.694029,
		-0.843217, 0.249272, 0.476287,
		0.504205, 0.674020, 0.539885,
		31.872704, 39.510521, 31.587095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.032648, 39.541908, 31.270824>,  <31.519760, 39.038708, 31.209175>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.032648, 39.541908, 31.270824> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.401497, 39.679974, 31.340740>,  <31.622807, 39.762814, 31.382690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.401497, 39.679974, 31.340740>,  <31.032648, 39.541908, 31.270824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.401497, 39.679974, 31.340740> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159819, 0.751253, -0.640373,
		-0.352343, 0.562568, 0.747911,
		0.922124, 0.345162, 0.174790,
		31.678135, 39.783524, 31.393177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.843000, 40.190395, 31.310411>,  <31.032648, 39.541908, 31.270824>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.843000, 40.190395, 31.310411> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.234207, 40.200932, 31.227673>,  <31.468931, 40.207253, 31.178030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.234207, 40.200932, 31.227673>,  <30.843000, 40.190395, 31.310411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.234207, 40.200932, 31.227673> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164208, 0.708653, -0.686183,
		0.128510, 0.705065, 0.697401,
		0.978019, 0.026337, -0.206846,
		31.527613, 40.208832, 31.165619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.808662, 36.327984, 44.418949> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.485477, 36.378551, 44.649155>,  <38.291569, 36.408894, 44.787277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.485477, 36.378551, 44.649155>,  <38.808662, 36.327984, 44.418949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.485477, 36.378551, 44.649155> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588648, 0.129506, 0.797949,
		0.026344, 0.983487, -0.179052,
		-0.807960, 0.126419, 0.575516,
		38.243088, 36.416477, 44.821808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.975861, 36.948814, 44.812847>,  <38.808662, 36.327984, 44.418949>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.975861, 36.948814, 44.812847> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.702393, 36.730618, 45.006767>,  <38.538311, 36.599701, 45.123119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.702393, 36.730618, 45.006767>,  <38.975861, 36.948814, 44.812847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.702393, 36.730618, 45.006767> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527993, 0.088881, 0.844585,
		-0.503805, 0.833389, 0.227251,
		-0.683670, -0.545493, 0.484802,
		38.497292, 36.566971, 45.152206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.931740, 37.219227, 45.501606>,  <38.975861, 36.948814, 44.812847>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.931740, 37.219227, 45.501606> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.752571, 36.868572, 45.571892>,  <38.645069, 36.658180, 45.614063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.752571, 36.868572, 45.571892>,  <38.931740, 37.219227, 45.501606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.752571, 36.868572, 45.571892> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430290, -0.039097, 0.901844,
		-0.783719, 0.479563, 0.394721,
		-0.447923, -0.876636, 0.175710,
		38.618195, 36.605583, 45.624603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.543697, 37.308228, 46.244816>,  <38.931740, 37.219227, 45.501606>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.543697, 37.308228, 46.244816> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.608349, 36.929043, 46.135094>,  <38.647141, 36.701530, 46.069260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.608349, 36.929043, 46.135094>,  <38.543697, 37.308228, 46.244816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.608349, 36.929043, 46.135094> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446760, -0.177556, 0.876858,
		-0.879932, -0.264278, 0.394813,
		0.161632, -0.947962, -0.274306,
		38.656837, 36.644653, 46.052803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.231468, 36.858807, 46.725502>,  <38.543697, 37.308228, 46.244816>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.231468, 36.858807, 46.725502> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.520466, 36.634941, 46.563129>,  <38.693863, 36.500622, 46.465706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.520466, 36.634941, 46.563129>,  <38.231468, 36.858807, 46.725502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.520466, 36.634941, 46.563129> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387657, -0.158233, 0.908121,
		-0.572472, -0.813475, 0.102634,
		0.722494, -0.559660, -0.405933,
		38.737213, 36.467045, 46.441349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.085464, 36.210449, 47.056217>,  <38.231468, 36.858807, 46.725502>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.085464, 36.210449, 47.056217> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.462296, 36.156384, 46.933434>,  <38.688393, 36.123943, 46.859764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.462296, 36.156384, 46.933434>,  <38.085464, 36.210449, 47.056217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.462296, 36.156384, 46.933434> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151112, -0.645995, 0.748235,
		-0.299431, -0.751279, -0.588150,
		0.942075, -0.135168, -0.306959,
		38.744919, 36.115833, 46.841347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.367096, 35.438164, 47.179134>,  <38.085464, 36.210449, 47.056217>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.367096, 35.438164, 47.179134> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.683460, 35.681831, 47.155895>,  <38.873280, 35.828030, 47.141953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.683460, 35.681831, 47.155895>,  <38.367096, 35.438164, 47.179134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.683460, 35.681831, 47.155895> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328291, -0.342281, 0.880380,
		0.516412, -0.715375, -0.470698,
		0.790913, 0.609165, -0.058094,
		38.920734, 35.864582, 47.138466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.906200, 35.108055, 47.515465>,  <38.367096, 35.438164, 47.179134>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.906200, 35.108055, 47.515465> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.056576, 35.477364, 47.483849>,  <39.146801, 35.698948, 47.464878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.056576, 35.477364, 47.483849>,  <38.906200, 35.108055, 47.515465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.056576, 35.477364, 47.483849> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542918, -0.150330, 0.826221,
		0.750941, -0.353519, -0.557773,
		0.375935, 0.923269, -0.079043,
		39.169357, 35.754345, 47.460136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.668320, 35.048733, 47.672726>,  <38.906200, 35.108055, 47.515465>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.668320, 35.048733, 47.672726> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.566639, 35.428257, 47.747715>,  <39.505630, 35.655972, 47.792709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.566639, 35.428257, 47.747715>,  <39.668320, 35.048733, 47.672726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.566639, 35.428257, 47.747715> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647519, 0.022982, 0.761702,
		0.718400, 0.315020, -0.620213,
		-0.254205, 0.948807, 0.187472,
		39.490379, 35.712898, 47.803955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.341717, 35.426750, 47.829071>,  <39.668320, 35.048733, 47.672726>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.341717, 35.426750, 47.829071> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.033920, 35.647823, 47.957088>,  <39.849243, 35.780468, 48.033897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.033920, 35.647823, 47.957088>,  <40.341717, 35.426750, 47.829071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.033920, 35.647823, 47.957088> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389358, 0.008749, 0.921045,
		0.506242, 0.833349, -0.221923,
		-0.769493, 0.552679, 0.320042,
		39.803074, 35.813625, 48.053101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.666283, 36.031437, 48.125237>,  <40.341717, 35.426750, 47.829071>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.666283, 36.031437, 48.125237> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.302055, 35.973091, 48.279942>,  <40.083519, 35.938084, 48.372765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.302055, 35.973091, 48.279942>,  <40.666283, 36.031437, 48.125237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.302055, 35.973091, 48.279942> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385120, 0.040514, 0.921977,
		-0.150151, 0.988475, 0.019283,
		-0.910570, -0.145863, 0.386764,
		40.028885, 35.929333, 48.395969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.492630, 36.504715, 48.760296>,  <40.666283, 36.031437, 48.125237>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.492630, 36.504715, 48.760296> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.255749, 36.184830, 48.799801>,  <40.113621, 35.992897, 48.823502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.255749, 36.184830, 48.799801>,  <40.492630, 36.504715, 48.760296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.255749, 36.184830, 48.799801> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207358, -0.032809, 0.977715,
		-0.778652, 0.599484, 0.185257,
		-0.592203, -0.799714, 0.098760,
		40.078087, 35.944916, 48.829430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.981216, 36.580090, 49.309322>,  <40.492630, 36.504715, 48.760296>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.981216, 36.580090, 49.309322> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.088581, 36.198807, 49.253677>,  <40.153000, 35.970036, 49.220291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.088581, 36.198807, 49.253677>,  <39.981216, 36.580090, 49.309322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.088581, 36.198807, 49.253677> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333353, -0.043577, 0.941795,
		-0.903787, -0.299164, 0.306057,
		0.268414, -0.953206, -0.139111,
		40.169106, 35.912846, 49.211945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.203651, 37.283310, 49.367203>,  <39.981216, 36.580090, 49.309322>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.203651, 37.283310, 49.367203> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.048332, 37.329159, 49.001450>,  <39.955139, 37.356667, 48.781998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.048332, 37.329159, 49.001450>,  <40.203651, 37.283310, 49.367203>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.048332, 37.329159, 49.001450> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641140, 0.679124, 0.357393,
		0.661941, 0.725019, -0.190215,
		-0.388297, 0.114619, -0.914379,
		39.931843, 37.363544, 48.727135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.312538, 37.971966, 49.074783>,  <40.203651, 37.283310, 49.367203>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.312538, 37.971966, 49.074783> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.978397, 37.811100, 48.924873>,  <39.777912, 37.714581, 48.834927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.978397, 37.811100, 48.924873>,  <40.312538, 37.971966, 49.074783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.978397, 37.811100, 48.924873> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531308, 0.765629, 0.362663,
		0.141090, 0.502072, -0.853240,
		-0.835348, -0.402165, -0.374777,
		39.727795, 37.690449, 48.812439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.378906, 38.092873, 49.819977>,  <40.312538, 37.971966, 49.074783>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.378906, 38.092873, 49.819977> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.414173, 38.490341, 49.847839>,  <40.435333, 38.728821, 49.864555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.414173, 38.490341, 49.847839>,  <40.378906, 38.092873, 49.819977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.414173, 38.490341, 49.847839> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096922, 0.078156, -0.992219,
		-0.991379, 0.080733, 0.103199,
		0.088171, 0.993667, 0.069658,
		40.440624, 38.788441, 49.868736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.817081, 38.417351, 49.408230>,  <40.378906, 38.092873, 49.819977>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.817081, 38.417351, 49.408230> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.122631, 38.671749, 49.452065>,  <40.305962, 38.824390, 49.478367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.122631, 38.671749, 49.452065>,  <39.817081, 38.417351, 49.408230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.122631, 38.671749, 49.452065> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031970, 0.132305, -0.990693,
		-0.644577, 0.760265, 0.080731,
		0.763870, 0.635998, 0.109586,
		40.351791, 38.862549, 49.484940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.619720, 38.986687, 49.128017>,  <39.817081, 38.417351, 49.408230>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.619720, 38.986687, 49.128017> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.017735, 39.025108, 49.138367>,  <40.256542, 39.048161, 49.144577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.017735, 39.025108, 49.138367>,  <39.619720, 38.986687, 49.128017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.017735, 39.025108, 49.138367> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025647, 0.003542, -0.999665,
		-0.096116, 0.995369, 0.001061,
		0.995040, 0.096057, 0.025869,
		40.316246, 39.053925, 49.146126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.800472, 39.623119, 48.784687>,  <39.619720, 38.986687, 49.128017>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.800472, 39.623119, 48.784687> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.151798, 39.432896, 48.765053>,  <40.362595, 39.318760, 48.753273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.151798, 39.432896, 48.765053>,  <39.800472, 39.623119, 48.784687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.151798, 39.432896, 48.765053> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043281, 0.023150, -0.998795,
		0.476123, 0.879379, -0.000250,
		0.878313, -0.475560, -0.049082,
		40.415291, 39.290226, 48.750328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.251003, 39.988892, 48.235050>,  <39.800472, 39.623119, 48.784687>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.251003, 39.988892, 48.235050> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.388096, 39.618118, 48.296150>,  <40.470352, 39.395653, 48.332809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.388096, 39.618118, 48.296150>,  <40.251003, 39.988892, 48.235050>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.388096, 39.618118, 48.296150> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216468, -0.080297, -0.972982,
		0.914155, 0.366532, 0.173131,
		0.342727, -0.926934, 0.152746,
		40.490913, 39.340038, 48.341972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.821430, 39.946594, 47.749275>,  <40.251003, 39.988892, 48.235050>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.821430, 39.946594, 47.749275> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.721230, 39.573368, 47.852535>,  <40.661110, 39.349434, 47.914494>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.721230, 39.573368, 47.852535>,  <40.821430, 39.946594, 47.749275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.721230, 39.573368, 47.852535> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041497, -0.256061, -0.965770,
		0.967226, -0.252642, 0.025424,
		-0.250504, -0.933062, 0.258152,
		40.646080, 39.293449, 47.929981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.186352, 39.400955, 47.351269>,  <40.821430, 39.946594, 47.749275>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.186352, 39.400955, 47.351269> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.863285, 39.213776, 47.494766>,  <40.669445, 39.101467, 47.580864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.863285, 39.213776, 47.494766>,  <41.186352, 39.400955, 47.351269>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.863285, 39.213776, 47.494766> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280628, -0.230018, -0.931848,
		0.518571, -0.853299, 0.054460,
		-0.807671, -0.467946, 0.358740,
		40.620983, 39.073391, 47.602386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.193558, 38.829136, 46.935814>,  <41.186352, 39.400955, 47.351269>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.193558, 38.829136, 46.935814> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.825073, 38.857140, 47.088902>,  <40.603985, 38.873943, 47.180756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.825073, 38.857140, 47.088902>,  <41.193558, 38.829136, 46.935814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.825073, 38.857140, 47.088902> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389071, -0.162074, -0.906838,
		-0.001456, -0.984292, 0.176542,
		-0.921207, 0.070008, 0.382723,
		40.548710, 38.878143, 47.203720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.735554, 38.244099, 46.622478>,  <41.193558, 38.829136, 46.935814>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.735554, 38.244099, 46.622478> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.472305, 38.507652, 46.768211>,  <40.314354, 38.665787, 46.855652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.472305, 38.507652, 46.768211>,  <40.735554, 38.244099, 46.622478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.472305, 38.507652, 46.768211> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583566, -0.140641, -0.799795,
		-0.475734, -0.738978, 0.477063,
		-0.658125, 0.658887, 0.364335,
		40.274868, 38.705318, 46.877510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.096603, 37.906155, 46.792877>,  <40.735554, 38.244099, 46.622478>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.096603, 37.906155, 46.792877> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.029518, 38.293133, 46.717064>,  <39.989265, 38.525318, 46.671574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.029518, 38.293133, 46.717064>,  <40.096603, 37.906155, 46.792877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.029518, 38.293133, 46.717064> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504200, -0.249389, -0.826794,
		-0.847145, -0.043100, 0.529611,
		-0.167714, 0.967444, -0.189538,
		39.979202, 38.583366, 46.660202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.504265, 37.825150, 46.350094>,  <40.096603, 37.906155, 46.792877>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.504265, 37.825150, 46.350094> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.598381, 38.212803, 46.320648>,  <39.654850, 38.445396, 46.302982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.598381, 38.212803, 46.320648>,  <39.504265, 37.825150, 46.350094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.598381, 38.212803, 46.320648> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432940, 0.036701, -0.900675,
		-0.870172, 0.243794, 0.428212,
		0.235295, 0.969132, -0.073612,
		39.668968, 38.503544, 46.298565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.893394, 38.272255, 46.404919>,  <39.504265, 37.825150, 46.350094>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.893394, 38.272255, 46.404919> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.180439, 38.437286, 46.180489>,  <39.352665, 38.536304, 46.045830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.180439, 38.437286, 46.180489>,  <38.893394, 38.272255, 46.404919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.180439, 38.437286, 46.180489> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604020, -0.032331, -0.796313,
		-0.346682, 0.910348, 0.226005,
		0.717615, 0.412580, -0.561077,
		39.395725, 38.561062, 46.012165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.651314, 38.751747, 45.839725>,  <38.893394, 38.272255, 46.404919>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.651314, 38.751747, 45.839725> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.016991, 38.739601, 45.678070>,  <39.236397, 38.732311, 45.581078>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.016991, 38.739601, 45.678070>,  <38.651314, 38.751747, 45.839725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.016991, 38.739601, 45.678070> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404815, -0.020893, -0.914160,
		0.019317, 0.999320, -0.031393,
		0.914194, -0.030368, -0.404137,
		39.291248, 38.730492, 45.556828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.199997, 39.119610, 46.308907>,  <38.651314, 38.751747, 45.839725>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.199997, 39.119610, 46.308907> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.816277, 39.078377, 46.203747>,  <37.586044, 39.053638, 46.140652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.816277, 39.078377, 46.203747>,  <38.199997, 39.119610, 46.308907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.816277, 39.078377, 46.203747> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233727, -0.232630, 0.944063,
		-0.158475, 0.967087, 0.199069,
		-0.959300, -0.103082, -0.262901,
		37.528488, 39.047451, 46.124878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.783688, 39.657299, 46.658398>,  <38.199997, 39.119610, 46.308907>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.783688, 39.657299, 46.658398> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.552753, 39.340664, 46.578320>,  <37.414192, 39.150684, 46.530273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.552753, 39.340664, 46.578320>,  <37.783688, 39.657299, 46.658398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.552753, 39.340664, 46.578320> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217900, -0.086921, 0.972093,
		-0.786896, 0.604845, -0.122304,
		-0.577335, -0.791585, -0.200193,
		37.379555, 39.103188, 46.518261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.158676, 39.794941, 47.061283>,  <37.783688, 39.657299, 46.658398>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.158676, 39.794941, 47.061283> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.140694, 39.399693, 47.002506>,  <37.129906, 39.162544, 46.967239>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.140694, 39.399693, 47.002506>,  <37.158676, 39.794941, 47.061283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.140694, 39.399693, 47.002506> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253748, -0.130976, 0.958362,
		-0.966225, 0.080372, -0.244846,
		-0.044956, -0.988122, -0.146946,
		37.127205, 39.103256, 46.958424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.511677, 39.588928, 47.499367>,  <37.158676, 39.794941, 47.061283>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.511677, 39.588928, 47.499367> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.703606, 39.250214, 47.407520>,  <36.818764, 39.046986, 47.352413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.703606, 39.250214, 47.407520>,  <36.511677, 39.588928, 47.499367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.703606, 39.250214, 47.407520> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444254, -0.460172, 0.768687,
		-0.756576, -0.266826, -0.596990,
		0.479824, -0.846785, -0.229616,
		36.847553, 38.996178, 47.338634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.046032, 38.999989, 47.635063>,  <36.511677, 39.588928, 47.499367>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.046032, 38.999989, 47.635063> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.411201, 38.836807, 47.630356>,  <36.630302, 38.738899, 47.627529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.411201, 38.836807, 47.630356>,  <36.046032, 38.999989, 47.635063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.411201, 38.836807, 47.630356> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140971, -0.342278, 0.928964,
		-0.383003, -0.846417, -0.369984,
		0.912927, -0.407952, -0.011773,
		36.685081, 38.714424, 47.626823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.002480, 38.219246, 47.903854>,  <36.046032, 38.999989, 47.635063>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.002480, 38.219246, 47.903854> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.377693, 38.353130, 47.939754>,  <36.602821, 38.433460, 47.961292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.377693, 38.353130, 47.939754>,  <36.002480, 38.219246, 47.903854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.377693, 38.353130, 47.939754> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041441, -0.365475, 0.929898,
		0.344046, -0.868561, -0.356700,
		0.938038, 0.334710, 0.089746,
		36.659103, 38.453545, 47.966679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.364647, 37.754536, 48.467819>,  <36.002480, 38.219246, 47.903854>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.364647, 37.754536, 48.467819> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.600887, 38.076614, 48.446430>,  <36.742630, 38.269859, 48.433598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.600887, 38.076614, 48.446430>,  <36.364647, 37.754536, 48.467819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.600887, 38.076614, 48.446430> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191205, -0.075256, 0.978661,
		0.783987, -0.588218, -0.198403,
		0.590597, 0.805193, -0.053471,
		36.778065, 38.318172, 48.430389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.519619, 37.078518, 48.444557>,  <36.364647, 37.754536, 48.467819>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.519619, 37.078518, 48.444557> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.231544, 36.806541, 48.499710>,  <36.058701, 36.643356, 48.532803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.231544, 36.806541, 48.499710>,  <36.519619, 37.078518, 48.444557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.231544, 36.806541, 48.499710> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099541, -0.095417, -0.990448,
		0.686603, -0.727032, 0.001036,
		-0.720186, -0.679941, 0.137883,
		36.015488, 36.602558, 48.541077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.563641, 36.608402, 47.766171>,  <36.519619, 37.078518, 48.444557>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.563641, 36.608402, 47.766171> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.216446, 36.545242, 47.954494>,  <36.008129, 36.507347, 48.067490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.216446, 36.545242, 47.954494>,  <36.563641, 36.608402, 47.766171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.216446, 36.545242, 47.954494> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388215, -0.375421, -0.841634,
		0.309646, -0.913305, 0.264562,
		-0.867991, -0.157902, 0.470806,
		35.956047, 36.497871, 48.095737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.322212, 35.938347, 47.589481>,  <36.563641, 36.608402, 47.766171>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.322212, 35.938347, 47.589481> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.993408, 36.131596, 47.710072>,  <35.796124, 36.247543, 47.782425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.993408, 36.131596, 47.710072>,  <36.322212, 35.938347, 47.589481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.993408, 36.131596, 47.710072> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445534, -0.215887, -0.868845,
		-0.354675, -0.848519, 0.392710,
		-0.822013, 0.483124, 0.301474,
		35.746803, 36.276531, 47.800514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.752857, 35.594246, 47.226360>,  <36.322212, 35.938347, 47.589481>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.752857, 35.594246, 47.226360> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.600670, 35.952393, 47.318935>,  <35.509357, 36.167282, 47.374481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.600670, 35.952393, 47.318935>,  <35.752857, 35.594246, 47.226360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.600670, 35.952393, 47.318935> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527903, -0.004796, -0.849291,
		-0.759319, -0.445300, 0.474493,
		-0.380464, 0.895369, 0.231434,
		35.486530, 36.221004, 47.388367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.003342, 35.536053, 47.032402>,  <35.752857, 35.594246, 47.226360>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.003342, 35.536053, 47.032402> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.092510, 35.925568, 47.014328>,  <35.146011, 36.159275, 47.003483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.092510, 35.925568, 47.014328>,  <35.003342, 35.536053, 47.032402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.092510, 35.925568, 47.014328> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278286, 0.019143, -0.960308,
		-0.934271, 0.226651, 0.275259,
		0.222924, 0.973788, -0.045189,
		35.159386, 36.217705, 47.000771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.431816, 35.854851, 46.714767>,  <35.003342, 35.536053, 47.032402>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.431816, 35.854851, 46.714767> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.695801, 36.155144, 46.703140>,  <34.854191, 36.335320, 46.696163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.695801, 36.155144, 46.703140>,  <34.431816, 35.854851, 46.714767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.695801, 36.155144, 46.703140> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205917, 0.143537, -0.967985,
		-0.722526, 0.644823, 0.249318,
		0.659965, 0.750733, -0.029071,
		34.893791, 36.380363, 46.694420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.062572, 36.422638, 46.396751>,  <34.431816, 35.854851, 46.714767>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.062572, 36.422638, 46.396751> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.452820, 36.484291, 46.334263>,  <34.686970, 36.521282, 46.296768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.452820, 36.484291, 46.334263>,  <34.062572, 36.422638, 46.396751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.452820, 36.484291, 46.334263> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157902, -0.001342, -0.987454,
		-0.152408, 0.988049, 0.023029,
		0.975622, 0.154132, -0.156220,
		34.745506, 36.530529, 46.287395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<38.532467, 33.718487, 50.088612> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.572983, 33.963352, 49.774925>,  <38.597290, 34.110271, 49.586712>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.572983, 33.963352, 49.774925>,  <38.532467, 33.718487, 50.088612>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.572983, 33.963352, 49.774925> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749684, -0.471226, -0.464671,
		-0.653999, 0.634979, 0.411202,
		0.101288, 0.612166, -0.784215,
		38.603371, 34.147003, 49.539661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.802231, 33.967339, 49.927258>,  <38.532467, 33.718487, 50.088612>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.802231, 33.967339, 49.927258> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.029747, 33.979500, 49.598492>,  <38.166256, 33.986797, 49.401230>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.029747, 33.979500, 49.598492>,  <37.802231, 33.967339, 49.927258>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.029747, 33.979500, 49.598492> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739464, -0.418609, -0.527218,
		-0.360093, 0.907657, -0.215617,
		0.568793, 0.030407, -0.821918,
		38.200386, 33.988621, 49.351917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.302933, 33.966255, 49.373352>,  <37.802231, 33.967339, 49.927258>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.302933, 33.966255, 49.373352> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.644733, 33.882626, 49.183147>,  <37.849815, 33.832447, 49.069023>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.644733, 33.882626, 49.183147>,  <37.302933, 33.966255, 49.373352>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.644733, 33.882626, 49.183147> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513458, -0.478538, -0.712294,
		-0.078628, 0.852813, -0.516263,
		0.854505, -0.209073, -0.475510,
		37.901085, 33.819904, 49.040493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.296654, 34.388321, 48.770081>,  <37.302933, 33.966255, 49.373352>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.296654, 34.388321, 48.770081> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.494560, 34.041763, 48.743073>,  <37.613304, 33.833828, 48.726868>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.494560, 34.041763, 48.743073>,  <37.296654, 34.388321, 48.770081>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.494560, 34.041763, 48.743073> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584878, -0.274522, -0.763253,
		0.642746, 0.417124, -0.642562,
		0.494768, -0.866398, -0.067519,
		37.642990, 33.781845, 48.722816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.589603, 34.409935, 48.053177>,  <37.296654, 34.388321, 48.770081>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.589603, 34.409935, 48.053177> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.605824, 34.025288, 48.161724>,  <37.615555, 33.794498, 48.226852>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.605824, 34.025288, 48.161724>,  <37.589603, 34.409935, 48.053177>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.605824, 34.025288, 48.161724> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370063, -0.266727, -0.889893,
		0.928121, -0.064340, -0.366676,
		0.040547, -0.961622, 0.271364,
		37.617989, 33.736801, 48.243134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.855831, 34.027966, 47.500881>,  <37.589603, 34.409935, 48.053177>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.855831, 34.027966, 47.500881> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.679901, 33.740032, 47.715691>,  <37.574345, 33.567272, 47.844574>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.679901, 33.740032, 47.715691>,  <37.855831, 34.027966, 47.500881>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.679901, 33.740032, 47.715691> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348932, -0.414017, -0.840735,
		0.827527, -0.557159, -0.069079,
		-0.439824, -0.719836, 0.537021,
		37.547955, 33.524082, 47.876797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.999020, 33.439175, 47.212776>,  <37.855831, 34.027966, 47.500881>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.999020, 33.439175, 47.212776> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.656113, 33.375408, 47.408607>,  <37.450371, 33.337147, 47.526104>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.656113, 33.375408, 47.408607>,  <37.999020, 33.439175, 47.212776>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.656113, 33.375408, 47.408607> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400981, -0.389748, -0.829042,
		0.322973, -0.907019, 0.270195,
		-0.857265, -0.159416, 0.489575,
		37.398933, 33.327583, 47.555481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.744633, 32.858589, 46.893806>,  <37.999020, 33.439175, 47.212776>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.744633, 32.858589, 46.893806> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.418941, 32.984463, 47.088955>,  <37.223526, 33.059986, 47.206043>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.418941, 32.984463, 47.088955>,  <37.744633, 32.858589, 46.893806>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.418941, 32.984463, 47.088955> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574210, -0.312669, -0.756651,
		-0.085562, -0.896222, 0.435276,
		-0.814225, 0.314681, 0.487867,
		37.174675, 33.078869, 47.235313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.270515, 32.240543, 46.858093>,  <37.744633, 32.858589, 46.893806>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.270515, 32.240543, 46.858093> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.042477, 32.560337, 46.933800>,  <36.905655, 32.752213, 46.979225>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.042477, 32.560337, 46.933800>,  <37.270515, 32.240543, 46.858093>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.042477, 32.560337, 46.933800> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579974, -0.228456, -0.781945,
		-0.581911, -0.555553, 0.593919,
		-0.570097, 0.799481, 0.189265,
		36.871449, 32.800182, 46.990578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.531219, 31.976358, 46.874073>,  <37.270515, 32.240543, 46.858093>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.531219, 31.976358, 46.874073> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.516247, 32.374138, 46.834747>,  <36.507263, 32.612804, 46.811150>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.516247, 32.374138, 46.834747>,  <36.531219, 31.976358, 46.874073>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.516247, 32.374138, 46.834747> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677754, -0.097564, -0.728787,
		-0.734335, 0.039355, 0.677645,
		-0.037432, 0.994451, -0.098317,
		36.505016, 32.672474, 46.805252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.746338, 32.099373, 46.850277>,  <36.531219, 31.976358, 46.874073>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.746338, 32.099373, 46.850277> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.959175, 32.396275, 46.687332>,  <36.086876, 32.574413, 46.589565>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.959175, 32.396275, 46.687332>,  <35.746338, 32.099373, 46.850277>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.959175, 32.396275, 46.687332> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521513, -0.091717, -0.848300,
		-0.667013, 0.663817, 0.338291,
		0.532089, 0.742250, -0.407366,
		36.118801, 32.618950, 46.565121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.213764, 32.460976, 46.408901>,  <35.746338, 32.099373, 46.850277>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.213764, 32.460976, 46.408901> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.578949, 32.561852, 46.280590>,  <35.798061, 32.622375, 46.203606>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.578949, 32.561852, 46.280590>,  <35.213764, 32.460976, 46.408901>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.578949, 32.561852, 46.280590> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304306, -0.102915, -0.946999,
		-0.271835, 0.962190, -0.017215,
		0.912964, 0.252189, -0.320776,
		35.852837, 32.637508, 46.184357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.712772, 33.054726, 46.637058>,  <35.213764, 32.460976, 46.408901>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.712772, 33.054726, 46.637058> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.341896, 33.051052, 46.786850>,  <34.119370, 33.048847, 46.876724>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.341896, 33.051052, 46.786850>,  <34.712772, 33.054726, 46.637058>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.341896, 33.051052, 46.786850> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373939, -0.081773, 0.923841,
		0.022135, 0.996609, 0.079255,
		-0.927189, -0.009187, 0.374481,
		34.063740, 33.048294, 46.899193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.652390, 33.526508, 47.171261>,  <34.712772, 33.054726, 46.637058>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.652390, 33.526508, 47.171261> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.337749, 33.292599, 47.250549>,  <34.148964, 33.152252, 47.298122>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.337749, 33.292599, 47.250549>,  <34.652390, 33.526508, 47.171261>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.337749, 33.292599, 47.250549> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330721, -0.127918, 0.935019,
		-0.521422, 0.801044, 0.294019,
		-0.786602, -0.584778, 0.198223,
		34.101768, 33.117165, 47.310017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.423954, 33.767780, 47.828178>,  <34.652390, 33.526508, 47.171261>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.423954, 33.767780, 47.828178> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.258984, 33.404484, 47.799870>,  <34.160004, 33.186508, 47.782883>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.258984, 33.404484, 47.799870>,  <34.423954, 33.767780, 47.828178>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.258984, 33.404484, 47.799870> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259734, -0.191697, 0.946462,
		-0.873182, 0.371959, 0.314961,
		-0.412422, -0.908239, -0.070776,
		34.135258, 33.132011, 47.778637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.967812, 33.746994, 48.379845>,  <34.423954, 33.767780, 47.828178>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.967812, 33.746994, 48.379845> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.026569, 33.362846, 48.285095>,  <34.061825, 33.132359, 48.228245>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.026569, 33.362846, 48.285095>,  <33.967812, 33.746994, 48.379845>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.026569, 33.362846, 48.285095> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206706, -0.204380, 0.956819,
		-0.967313, -0.189513, 0.168492,
		0.146893, -0.960372, -0.236873,
		34.070637, 33.074734, 48.214035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.535980, 33.459713, 48.766842>,  <33.967812, 33.746994, 48.379845>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.535980, 33.459713, 48.766842> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.809025, 33.186378, 48.663235>,  <33.972851, 33.022377, 48.601070>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.809025, 33.186378, 48.663235>,  <33.535980, 33.459713, 48.766842>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.809025, 33.186378, 48.663235> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133198, -0.232168, 0.963512,
		-0.718537, -0.692209, -0.067463,
		0.682615, -0.683334, -0.259022,
		34.013809, 32.981377, 48.585529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.435665, 32.751492, 49.118599>,  <33.535980, 33.459713, 48.766842>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.435665, 32.751492, 49.118599> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.811142, 32.719025, 48.984570>,  <34.036427, 32.699543, 48.904152>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.811142, 32.719025, 48.984570>,  <33.435665, 32.751492, 49.118599>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.811142, 32.719025, 48.984570> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300111, -0.285980, 0.910027,
		-0.169687, -0.954792, -0.244088,
		0.938691, -0.081166, -0.335070,
		34.092751, 32.694675, 48.884048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.673172, 32.262516, 49.495956>,  <33.435665, 32.751492, 49.118599>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.673172, 32.262516, 49.495956> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.010029, 32.456158, 49.400928>,  <34.212143, 32.572342, 49.343910>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.010029, 32.456158, 49.400928>,  <33.673172, 32.262516, 49.495956>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.010029, 32.456158, 49.400928> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291337, -0.037708, 0.955877,
		0.453790, -0.874195, -0.172794,
		0.842139, 0.484108, -0.237574,
		34.262672, 32.601391, 49.329655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.187370, 31.862034, 49.823547>,  <33.673172, 32.262516, 49.495956>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.187370, 31.862034, 49.823547> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.357666, 32.217228, 49.753998>,  <34.459843, 32.430344, 49.712269>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.357666, 32.217228, 49.753998>,  <34.187370, 31.862034, 49.823547>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.357666, 32.217228, 49.753998> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551905, -0.102564, 0.827576,
		0.717040, -0.448293, -0.533748,
		0.425740, 0.887983, -0.173873,
		34.485390, 32.483624, 49.701836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.907417, 31.772688, 50.106350>,  <34.187370, 31.862034, 49.823547>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.907417, 31.772688, 50.106350> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.876942, 32.169617, 50.067368>,  <34.858658, 32.407772, 50.043980>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.876942, 32.169617, 50.067368>,  <34.907417, 31.772688, 50.106350>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.876942, 32.169617, 50.067368> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580838, 0.123611, 0.804579,
		0.810446, 0.004694, -0.585795,
		-0.076187, 0.992320, -0.097454,
		34.854084, 32.467312, 50.038132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.532394, 32.114105, 49.936905>,  <34.907417, 31.772688, 50.106350>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.532394, 32.114105, 49.936905> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.294521, 32.376873, 50.122295>,  <35.151798, 32.534534, 50.233528>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.294521, 32.376873, 50.122295>,  <35.532394, 32.114105, 49.936905>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.294521, 32.376873, 50.122295> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691747, 0.124332, 0.711356,
		0.409677, 0.743641, -0.528359,
		-0.594686, 0.656917, 0.463476,
		35.116116, 32.573948, 50.261337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.897678, 32.738525, 50.067402>,  <35.532394, 32.114105, 49.936905>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.897678, 32.738525, 50.067402> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.610306, 32.743443, 50.345596>,  <35.437881, 32.746391, 50.512512>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.610306, 32.743443, 50.345596>,  <35.897678, 32.738525, 50.067402>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.610306, 32.743443, 50.345596> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677640, 0.238101, 0.695782,
		-0.157044, 0.971163, -0.179389,
		-0.718430, 0.012292, 0.695491,
		35.394775, 32.747131, 50.554245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.168526, 33.211689, 50.498329>,  <35.897678, 32.738525, 50.067402>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.168526, 33.211689, 50.498329> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.875751, 33.048931, 50.716946>,  <35.700085, 32.951279, 50.848114>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.875751, 33.048931, 50.716946>,  <36.168526, 33.211689, 50.498329>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.875751, 33.048931, 50.716946> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534855, 0.153840, 0.830821,
		-0.422132, 0.900430, 0.105026,
		-0.731938, -0.406890, 0.546540,
		35.656170, 32.926865, 50.880909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.197056, 33.641846, 51.206238>,  <36.168526, 33.211689, 50.498329>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.197056, 33.641846, 51.206238> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.998966, 33.299862, 51.267952>,  <35.880112, 33.094673, 51.304981>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.998966, 33.299862, 51.267952>,  <36.197056, 33.641846, 51.206238>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.998966, 33.299862, 51.267952> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350886, -0.034371, 0.935787,
		-0.794756, 0.517557, 0.317014,
		-0.495220, -0.854958, 0.154287,
		35.850399, 33.043373, 51.314240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.703289, 33.974697, 50.781765>,  <36.197056, 33.641846, 51.206238>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.703289, 33.974697, 50.781765> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.462280, 34.256172, 50.932388>,  <36.317677, 34.425056, 51.022762>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.462280, 34.256172, 50.932388>,  <36.703289, 33.974697, 50.781765>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.462280, 34.256172, 50.932388> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000795, 0.472342, -0.881415,
		-0.798102, -0.530772, -0.285156,
		-0.602522, 0.703686, 0.376555,
		36.281525, 34.467278, 51.045357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.251774, 34.258774, 50.326870>,  <36.703289, 33.974697, 50.781765>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.251774, 34.258774, 50.326870> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.244724, 34.560371, 50.589527>,  <36.240494, 34.741329, 50.747124>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.244724, 34.560371, 50.589527>,  <36.251774, 34.258774, 50.326870>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.244724, 34.560371, 50.589527> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261534, 0.630406, -0.730882,
		-0.965033, -0.184613, 0.186087,
		-0.017620, 0.753993, 0.656645,
		36.239437, 34.786568, 50.786522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.676178, 34.704536, 50.161045>,  <36.251774, 34.258774, 50.326870>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.676178, 34.704536, 50.161045> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.882347, 34.957191, 50.392689>,  <36.006050, 35.108784, 50.531673>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.882347, 34.957191, 50.392689>,  <35.676178, 34.704536, 50.161045>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.882347, 34.957191, 50.392689> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163488, 0.735859, -0.657103,
		-0.841194, 0.244011, 0.482546,
		0.515426, 0.631641, 0.579107,
		36.036976, 35.146683, 50.566422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.265247, 35.291107, 50.171947>,  <35.676178, 34.704536, 50.161045>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.265247, 35.291107, 50.171947> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.647461, 35.389458, 50.237057>,  <35.876789, 35.448467, 50.276123>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.647461, 35.389458, 50.237057>,  <35.265247, 35.291107, 50.171947>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.647461, 35.389458, 50.237057> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059505, 0.701426, -0.710254,
		-0.288809, 0.668987, 0.684869,
		0.955536, 0.245881, 0.162770,
		35.934120, 35.463223, 50.285889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.280064, 35.964733, 50.303177>,  <35.265247, 35.291107, 50.171947>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.280064, 35.964733, 50.303177> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.661945, 35.906406, 50.199432>,  <35.891075, 35.871410, 50.137184>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.661945, 35.906406, 50.199432>,  <35.280064, 35.964733, 50.303177>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.661945, 35.906406, 50.199432> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013992, 0.848715, -0.528665,
		0.297216, 0.508350, 0.808234,
		0.954708, -0.145819, -0.259364,
		35.948357, 35.862659, 50.121624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.482342, 36.623367, 50.068794>,  <35.280064, 35.964733, 50.303177>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.482342, 36.623367, 50.068794> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.777012, 36.388027, 49.935432>,  <35.953815, 36.246822, 49.855415>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.777012, 36.388027, 49.935432>,  <35.482342, 36.623367, 50.068794>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.777012, 36.388027, 49.935432> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029198, 0.520232, -0.853525,
		0.675615, 0.619037, 0.400421,
		0.736676, -0.588346, -0.333402,
		35.998016, 36.211525, 49.835411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.964779, 37.121216, 49.727997>,  <35.482342, 36.623367, 50.068794>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.964779, 37.121216, 49.727997> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.016209, 36.759243, 49.565727>,  <36.047066, 36.542061, 49.468365>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.016209, 36.759243, 49.565727>,  <35.964779, 37.121216, 49.727997>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.016209, 36.759243, 49.565727> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125178, 0.420604, -0.898567,
		0.983768, 0.064752, 0.167357,
		0.128575, -0.904931, -0.405671,
		36.054783, 36.487762, 49.444027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.348602, 37.267033, 49.128704>,  <35.964779, 37.121216, 49.727997>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.348602, 37.267033, 49.128704> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.208557, 36.896973, 49.070011>,  <36.124531, 36.674938, 49.034798>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.208557, 36.896973, 49.070011>,  <36.348602, 37.267033, 49.128704>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.208557, 36.896973, 49.070011> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045724, 0.139579, -0.989155,
		0.935592, -0.353021, -0.006566,
		-0.350109, -0.925145, -0.146730,
		36.103523, 36.619431, 49.025993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.922577, 37.573814, 48.857368>,  <36.348602, 37.267033, 49.128704>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.922577, 37.573814, 48.857368> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.977703, 37.968624, 48.824398>,  <37.010777, 38.205509, 48.804615>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.977703, 37.968624, 48.824398>,  <36.922577, 37.573814, 48.857368>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.977703, 37.968624, 48.824398> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392498, 0.021984, 0.919490,
		0.909370, -0.159070, -0.384374,
		0.137813, 0.987022, -0.082426,
		37.019047, 38.264732, 48.799671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.471939, 37.600746, 49.076012>,  <36.922577, 37.573814, 48.857368>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.471939, 37.600746, 49.076012> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.328323, 37.969639, 49.133392>,  <37.242153, 38.190975, 49.167820>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.328323, 37.969639, 49.133392>,  <37.471939, 37.600746, 49.076012>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.328323, 37.969639, 49.133392> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405755, 0.015815, 0.913845,
		0.840510, 0.386309, -0.379879,
		-0.359035, 0.922234, 0.143454,
		37.220612, 38.246307, 49.176430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.979538, 37.943974, 49.254875>,  <37.471939, 37.600746, 49.076012>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.979538, 37.943974, 49.254875> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.669106, 38.154530, 49.393787>,  <37.482845, 38.280865, 49.477135>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.669106, 38.154530, 49.393787>,  <37.979538, 37.943974, 49.254875>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.669106, 38.154530, 49.393787> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449738, 0.075957, 0.889925,
		0.442070, 0.846843, -0.295688,
		-0.776086, 0.526392, 0.347279,
		37.436279, 38.312447, 49.497971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.222183, 38.466225, 49.634121>,  <37.979538, 37.943974, 49.254875>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.222183, 38.466225, 49.634121> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.843552, 38.460690, 49.762989>,  <37.616371, 38.457371, 49.840309>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.843552, 38.460690, 49.762989>,  <38.222183, 38.466225, 49.634121>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.843552, 38.460690, 49.762989> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318106, 0.123626, 0.939960,
		-0.052833, 0.992232, -0.112620,
		-0.946582, -0.013836, 0.322167,
		37.559578, 38.456539, 49.859638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.169853, 39.076878, 49.981464>,  <38.222183, 38.466225, 49.634121>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.169853, 39.076878, 49.981464> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.885620, 38.832470, 50.121021>,  <37.715080, 38.685825, 50.204754>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.885620, 38.832470, 50.121021>,  <38.169853, 39.076878, 49.981464>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.885620, 38.832470, 50.121021> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361076, 0.108921, 0.926153,
		-0.603898, 0.784087, 0.143226,
		-0.710585, -0.611018, 0.348893,
		37.672443, 38.649166, 50.225689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.776550, 39.371559, 50.580357>,  <38.169853, 39.076878, 49.981464>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.776550, 39.371559, 50.580357> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.751438, 38.975147, 50.627541>,  <37.736370, 38.737301, 50.655849>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.751438, 38.975147, 50.627541>,  <37.776550, 39.371559, 50.580357>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.751438, 38.975147, 50.627541> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242147, 0.099535, 0.965120,
		-0.968206, 0.089155, 0.233726,
		-0.062782, -0.991032, 0.117959,
		37.732605, 38.677837, 50.662930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.521336, 39.285576, 51.292717>,  <37.776550, 39.371559, 50.580357>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.521336, 39.285576, 51.292717> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.668415, 38.922806, 51.210461>,  <37.756660, 38.705143, 51.161106>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.668415, 38.922806, 51.210461>,  <37.521336, 39.285576, 51.292717>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.668415, 38.922806, 51.210461> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224512, -0.128016, 0.966026,
		-0.902438, -0.401372, 0.156545,
		0.367695, -0.906925, -0.205639,
		37.778725, 38.650730, 51.148769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.279194, 38.817772, 51.804756>,  <37.521336, 39.285576, 51.292717>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.279194, 38.817772, 51.804756> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.611965, 38.664177, 51.644531>,  <37.811626, 38.572021, 51.548397>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.611965, 38.664177, 51.644531>,  <37.279194, 38.817772, 51.804756>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.611965, 38.664177, 51.644531> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334409, -0.229105, 0.914156,
		-0.442795, -0.894464, -0.062190,
		0.831928, -0.383987, -0.400563,
		37.861542, 38.548981, 51.524361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.390121, 38.294922, 52.292671>,  <37.279194, 38.817772, 51.804756>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.390121, 38.294922, 52.292671> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.725044, 38.336552, 52.077976>,  <37.925999, 38.361530, 51.949158>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.725044, 38.336552, 52.077976>,  <37.390121, 38.294922, 52.292671>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.725044, 38.336552, 52.077976> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546136, -0.205207, 0.812173,
		-0.025612, -0.973169, -0.228662,
		0.837305, 0.104080, -0.536739,
		37.976234, 38.367775, 51.916954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<34.338570, 36.965614, 36.897762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.690598, 36.776035, 36.886131>,  <34.901814, 36.662289, 36.879150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.690598, 36.776035, 36.886131>,  <34.338570, 36.965614, 36.897762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.690598, 36.776035, 36.886131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222729, 0.357948, 0.906788,
		-0.419362, -0.804516, 0.420582,
		0.880072, -0.473949, -0.029079,
		34.954620, 36.633850, 36.877407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.480114, 36.731327, 37.570099>,  <34.338570, 36.965614, 36.897762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.480114, 36.731327, 37.570099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.844536, 36.758644, 37.407459>,  <35.063187, 36.775032, 37.309875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.844536, 36.758644, 37.407459>,  <34.480114, 36.731327, 37.570099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.844536, 36.758644, 37.407459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373191, 0.282591, 0.883669,
		0.175245, -0.956807, 0.231970,
		0.911053, 0.068290, -0.406594,
		35.117851, 36.779133, 37.285480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.794735, 36.448097, 38.083900>,  <34.480114, 36.731327, 37.570099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.794735, 36.448097, 38.083900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.049774, 36.680851, 37.881958>,  <35.202797, 36.820503, 37.760792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.049774, 36.680851, 37.881958>,  <34.794735, 36.448097, 38.083900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.049774, 36.680851, 37.881958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403425, 0.306095, 0.862296,
		0.656287, -0.753473, -0.039579,
		0.637602, 0.581880, -0.504856,
		35.241055, 36.855415, 37.730503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.527897, 36.424068, 38.482628>,  <34.794735, 36.448097, 38.083900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.527897, 36.424068, 38.482628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.564808, 36.746143, 38.248310>,  <35.586956, 36.939388, 38.107719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.564808, 36.746143, 38.248310>,  <35.527897, 36.424068, 38.482628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.564808, 36.746143, 38.248310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375533, 0.516722, 0.769398,
		0.922204, -0.290983, -0.254693,
		0.092276, 0.805187, -0.585797,
		35.592491, 36.987701, 38.072571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.202892, 36.804600, 38.656803>,  <35.527897, 36.424068, 38.482628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.202892, 36.804600, 38.656803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.985981, 37.084953, 38.471462>,  <35.855835, 37.253166, 38.360260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.985981, 37.084953, 38.471462>,  <36.202892, 36.804600, 38.656803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.985981, 37.084953, 38.471462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162479, 0.628547, 0.760611,
		0.824337, 0.337180, -0.454728,
		-0.542281, 0.700884, -0.463350,
		35.823296, 37.295219, 38.332458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.589546, 37.356056, 38.771660>,  <36.202892, 36.804600, 38.656803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.589546, 37.356056, 38.771660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.235836, 37.513229, 38.670738>,  <36.023609, 37.607533, 38.610184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.235836, 37.513229, 38.670738>,  <36.589546, 37.356056, 38.771660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.235836, 37.513229, 38.670738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076092, 0.654339, 0.752363,
		0.460719, 0.646100, -0.608517,
		-0.884278, 0.392931, -0.252304,
		35.970554, 37.631107, 38.595047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.809261, 37.995529, 38.678043>,  <36.589546, 37.356056, 38.771660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.809261, 37.995529, 38.678043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.414024, 37.975193, 38.736126>,  <36.176884, 37.962994, 38.770977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.414024, 37.975193, 38.736126>,  <36.809261, 37.995529, 38.678043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.414024, 37.975193, 38.736126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068772, 0.698343, 0.712452,
		-0.137627, 0.713956, -0.686531,
		-0.988094, -0.050838, 0.145211,
		36.117596, 37.959942, 38.779690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.497181, 38.522671, 38.504669>,  <36.809261, 37.995529, 38.678043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.497181, 38.522671, 38.504669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.195679, 38.398869, 38.736549>,  <36.014778, 38.324585, 38.875679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.195679, 38.398869, 38.736549>,  <36.497181, 38.522671, 38.504669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.195679, 38.398869, 38.736549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011965, 0.875532, 0.483013,
		-0.657041, 0.371012, -0.656237,
		-0.753760, -0.309507, 0.579699,
		35.969551, 38.306015, 38.910458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.097504, 39.155823, 38.659492>,  <36.497181, 38.522671, 38.504669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.097504, 39.155823, 38.659492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.986946, 38.879555, 38.926800>,  <35.920612, 38.713795, 39.087185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.986946, 38.879555, 38.926800>,  <36.097504, 39.155823, 38.659492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.986946, 38.879555, 38.926800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214480, 0.722151, 0.657645,
		-0.936806, 0.038437, -0.347731,
		-0.276393, -0.690667, 0.668271,
		35.904030, 38.672356, 39.127281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.524784, 39.436443, 39.034969>,  <36.097504, 39.155823, 38.659492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.524784, 39.436443, 39.034969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.669510, 39.141308, 39.262897>,  <35.756344, 38.964226, 39.399654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.669510, 39.141308, 39.262897>,  <35.524784, 39.436443, 39.034969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.669510, 39.141308, 39.262897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136003, 0.562914, 0.815249,
		-0.922278, -0.372463, 0.103320,
		0.361811, -0.737834, 0.569819,
		35.778053, 38.919956, 39.433842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.088913, 39.359924, 39.503082>,  <35.524784, 39.436443, 39.034969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.088913, 39.359924, 39.503082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.410980, 39.197971, 39.676411>,  <35.604221, 39.100800, 39.780407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.410980, 39.197971, 39.676411>,  <35.088913, 39.359924, 39.503082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.410980, 39.197971, 39.676411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172278, 0.539472, 0.824191,
		-0.567466, -0.738267, 0.364615,
		0.805173, -0.404885, 0.433319,
		35.652531, 39.076508, 39.806408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.853703, 39.024193, 40.077858>,  <35.088913, 39.359924, 39.503082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.853703, 39.024193, 40.077858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.243538, 39.074734, 40.151840>,  <35.477440, 39.105057, 40.196228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.243538, 39.074734, 40.151840>,  <34.853703, 39.024193, 40.077858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.243538, 39.074734, 40.151840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222400, 0.447560, 0.866157,
		0.026663, -0.885282, 0.464289,
		0.974591, 0.126352, 0.184953,
		35.535915, 39.112640, 40.207325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.409081, 38.445892, 40.295444>,  <34.853703, 39.024193, 40.077858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.409081, 38.445892, 40.295444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.062698, 38.354061, 40.473167>,  <33.854870, 38.298962, 40.579803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.062698, 38.354061, 40.473167>,  <34.409081, 38.445892, 40.295444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.062698, 38.354061, 40.473167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467711, 0.057163, -0.882031,
		0.177098, -0.971610, -0.156877,
		-0.865958, -0.229579, 0.444310,
		33.802910, 38.285187, 40.606461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.084751, 37.961426, 39.840313>,  <34.409081, 38.445892, 40.295444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.084751, 37.961426, 39.840313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.784760, 38.072289, 40.080555>,  <33.604767, 38.138805, 40.224701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.784760, 38.072289, 40.080555>,  <34.084751, 37.961426, 39.840313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.784760, 38.072289, 40.080555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643735, -0.097003, -0.759076,
		-0.152122, -0.955916, 0.251164,
		-0.749977, 0.277155, 0.600600,
		33.559765, 38.155434, 40.260735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.546963, 37.450146, 39.814911>,  <34.084751, 37.961426, 39.840313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.546963, 37.450146, 39.814911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.365673, 37.792316, 39.915180>,  <33.256897, 37.997620, 39.975342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.365673, 37.792316, 39.915180>,  <33.546963, 37.450146, 39.814911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.365673, 37.792316, 39.915180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677200, -0.147566, -0.720850,
		-0.579642, -0.496462, 0.646174,
		-0.453228, 0.855424, 0.250668,
		33.229706, 38.048943, 39.990379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.798264, 37.326897, 39.799732>,  <33.546963, 37.450146, 39.814911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.798264, 37.326897, 39.799732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.826283, 37.725388, 39.779243>,  <32.843094, 37.964481, 39.766949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.826283, 37.725388, 39.779243>,  <32.798264, 37.326897, 39.799732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.826283, 37.725388, 39.779243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737723, 0.017167, -0.674885,
		-0.671460, 0.085064, 0.736143,
		0.070045, 0.996228, -0.051226,
		32.847298, 38.024258, 39.763874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.114838, 37.607906, 39.895618>,  <32.798264, 37.326897, 39.799732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.114838, 37.607906, 39.895618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.330414, 37.898788, 39.725578>,  <32.459759, 38.073318, 39.623554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.330414, 37.898788, 39.725578>,  <32.114838, 37.607906, 39.895618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.330414, 37.898788, 39.725578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707484, 0.116889, -0.696996,
		-0.457171, 0.676393, 0.577484,
		0.538945, 0.727207, -0.425099,
		32.492096, 38.116951, 39.598049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.658470, 37.982113, 39.662689>,  <32.114838, 37.607906, 39.895618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.658470, 37.982113, 39.662689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.951653, 38.171570, 39.467369>,  <32.127563, 38.285244, 39.350178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.951653, 38.171570, 39.467369>,  <31.658470, 37.982113, 39.662689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.951653, 38.171570, 39.467369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593947, 0.095599, -0.798804,
		-0.331666, 0.875514, 0.351388,
		0.732956, 0.473642, -0.488301,
		32.171539, 38.313663, 39.320877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.472507, 38.687561, 39.561413>,  <31.658470, 37.982113, 39.662689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.472507, 38.687561, 39.561413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.738520, 38.603455, 39.274769>,  <31.898127, 38.552990, 39.102783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.738520, 38.603455, 39.274769>,  <31.472507, 38.687561, 39.561413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.738520, 38.603455, 39.274769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719764, 0.075468, -0.690104,
		0.199186, 0.974727, -0.101153,
		0.665029, -0.210265, -0.716606,
		31.938028, 38.540375, 39.059788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.412119, 39.216568, 39.074615>,  <31.472507, 38.687561, 39.561413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.412119, 39.216568, 39.074615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.573511, 38.900326, 38.890381>,  <31.670347, 38.710579, 38.779839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.573511, 38.900326, 38.890381>,  <31.412119, 39.216568, 39.074615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.573511, 38.900326, 38.890381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635613, 0.119915, -0.762638,
		0.658179, 0.600466, -0.454138,
		0.403480, -0.790608, -0.460589,
		31.694555, 38.663143, 38.752205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.511204, 39.419327, 38.423962>,  <31.412119, 39.216568, 39.074615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.511204, 39.419327, 38.423962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.531025, 39.022907, 38.374382>,  <31.542917, 38.785053, 38.344635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.531025, 39.022907, 38.374382>,  <31.511204, 39.419327, 38.423962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.531025, 39.022907, 38.374382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726262, 0.049436, -0.685638,
		0.685629, 0.123991, -0.717313,
		0.049552, -0.991051, -0.123945,
		31.545891, 38.725594, 38.337200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.505424, 39.409016, 37.701393>,  <31.511204, 39.419327, 38.423962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.505424, 39.409016, 37.701393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.402401, 39.057930, 37.863026>,  <31.340588, 38.847279, 37.960007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.402401, 39.057930, 37.863026>,  <31.505424, 39.409016, 37.701393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.402401, 39.057930, 37.863026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748502, -0.083239, -0.657888,
		0.611072, -0.471903, -0.635530,
		-0.257559, -0.877712, 0.404085,
		31.325134, 38.794617, 37.984253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.201279, 39.111073, 37.134300>,  <31.505424, 39.409016, 37.701393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.201279, 39.111073, 37.134300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.130547, 38.829704, 37.409672>,  <31.088106, 38.660885, 37.574894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.130547, 38.829704, 37.409672>,  <31.201279, 39.111073, 37.134300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.130547, 38.829704, 37.409672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769560, -0.337241, -0.542260,
		0.613602, -0.625674, -0.481690,
		-0.176832, -0.703421, 0.688426,
		31.077497, 38.618679, 37.616199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.256964, 38.407974, 36.805706>,  <31.201279, 39.111073, 37.134300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.256964, 38.407974, 36.805706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.020630, 38.389496, 37.127892>,  <30.878830, 38.378410, 37.321205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.020630, 38.389496, 37.127892>,  <31.256964, 38.407974, 36.805706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.020630, 38.389496, 37.127892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646798, -0.569637, -0.507115,
		0.482250, -0.820597, 0.306684,
		-0.590836, -0.046194, 0.805468,
		30.843378, 38.375637, 37.369534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.032961, 37.660191, 36.925900>,  <31.256964, 38.407974, 36.805706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.032961, 37.660191, 36.925900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.757977, 37.898144, 37.092518>,  <30.592985, 38.040916, 37.192490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.757977, 37.898144, 37.092518>,  <31.032961, 37.660191, 36.925900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.757977, 37.898144, 37.092518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726097, -0.552470, -0.409340,
		-0.013383, -0.583857, 0.811746,
		-0.687461, 0.594885, 0.416543,
		30.551739, 38.076611, 37.217480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.622753, 37.172756, 37.186928>,  <31.032961, 37.660191, 36.925900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.622753, 37.172756, 37.186928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.412426, 37.512943, 37.181007>,  <30.286230, 37.717056, 37.177456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.412426, 37.512943, 37.181007>,  <30.622753, 37.172756, 37.186928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.412426, 37.512943, 37.181007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789541, -0.494473, -0.363485,
		-0.316453, -0.179438, 0.931482,
		-0.525816, 0.850470, -0.014804,
		30.254681, 37.768085, 37.176567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.949646, 37.043022, 37.434692>,  <30.622753, 37.172756, 37.186928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.949646, 37.043022, 37.434692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.923813, 37.362385, 37.195232>,  <29.908314, 37.554001, 37.051556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.923813, 37.362385, 37.195232>,  <29.949646, 37.043022, 37.434692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.923813, 37.362385, 37.195232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899057, -0.306879, -0.312285,
		-0.433042, 0.518051, 0.737630,
		-0.064583, 0.798404, -0.598649,
		29.904438, 37.601906, 37.015636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.513954, 36.884953, 37.997192>,  <29.949646, 37.043022, 37.434692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.513954, 36.884953, 37.997192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.429737, 36.540241, 37.812580>,  <29.379206, 36.333416, 37.701813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.429737, 36.540241, 37.812580>,  <29.513954, 36.884953, 37.997192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.429737, 36.540241, 37.812580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600186, -0.486609, 0.634814,
		-0.771653, -0.143345, 0.619680,
		-0.210545, -0.861780, -0.461527,
		29.366573, 36.281708, 37.674122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.992760, 36.334118, 38.350822>,  <29.513954, 36.884953, 37.997192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.992760, 36.334118, 38.350822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.308151, 36.227272, 38.129208>,  <29.497385, 36.163166, 37.996239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.308151, 36.227272, 38.129208>,  <28.992760, 36.334118, 38.350822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.308151, 36.227272, 38.129208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427170, -0.410275, 0.805730,
		-0.442533, -0.871964, -0.209385,
		0.788474, -0.267119, -0.554037,
		29.544695, 36.147137, 37.962997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.177214, 35.554432, 38.466789>,  <28.992760, 36.334118, 38.350822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.177214, 35.554432, 38.466789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.491812, 35.731888, 38.294930>,  <29.680571, 35.838364, 38.191814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.491812, 35.731888, 38.294930>,  <29.177214, 35.554432, 38.466789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.491812, 35.731888, 38.294930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610305, -0.451745, 0.650733,
		0.094600, -0.774019, -0.626055,
		0.786497, 0.443644, -0.429653,
		29.727760, 35.864983, 38.166035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.752230, 35.107151, 38.358543>,  <29.177214, 35.554432, 38.466789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.752230, 35.107151, 38.358543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.908279, 35.473091, 38.400200>,  <30.001909, 35.692657, 38.425194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.908279, 35.473091, 38.400200>,  <29.752230, 35.107151, 38.358543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.908279, 35.473091, 38.400200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598096, -0.337780, 0.726764,
		0.700061, -0.221239, -0.678946,
		0.390123, 0.914854, 0.104144,
		30.025316, 35.747547, 38.431442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.393707, 34.980507, 38.436546>,  <29.752230, 35.107151, 38.358543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.393707, 34.980507, 38.436546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.308964, 35.327522, 38.616543>,  <30.258118, 35.535732, 38.724541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.308964, 35.327522, 38.616543>,  <30.393707, 34.980507, 38.436546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.308964, 35.327522, 38.616543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578042, -0.260036, 0.773465,
		0.788025, 0.423978, -0.446384,
		-0.211857, 0.867539, 0.449992,
		30.245407, 35.587784, 38.751541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.094738, 35.339653, 38.550415>,  <30.393707, 34.980507, 38.436546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.094738, 35.339653, 38.550415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.818586, 35.493397, 38.795574>,  <30.652895, 35.585644, 38.942669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.818586, 35.493397, 38.795574>,  <31.094738, 35.339653, 38.550415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.818586, 35.493397, 38.795574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592427, -0.185885, 0.783886,
		0.415220, 0.904277, -0.099372,
		-0.690379, 0.384356, 0.612901,
		30.611473, 35.608704, 38.979446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.413918, 35.701454, 39.142494>,  <31.094738, 35.339653, 38.550415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.413918, 35.701454, 39.142494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.055071, 35.691570, 39.318935>,  <30.839764, 35.685638, 39.424801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.055071, 35.691570, 39.318935>,  <31.413918, 35.701454, 39.142494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.055071, 35.691570, 39.318935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438343, -0.174355, 0.881734,
		0.055117, 0.984373, 0.167250,
		-0.897116, -0.024714, 0.441103,
		30.785936, 35.684155, 39.451267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.441628, 36.037460, 39.820400>,  <31.413918, 35.701454, 39.142494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.441628, 36.037460, 39.820400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.119532, 35.801949, 39.848488>,  <30.926275, 35.660641, 39.865341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.119532, 35.801949, 39.848488>,  <31.441628, 36.037460, 39.820400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.119532, 35.801949, 39.848488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237851, -0.212248, 0.947828,
		-0.543156, 0.779930, 0.310951,
		-0.805238, -0.588778, 0.070224,
		30.877960, 35.625317, 39.869556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.230095, 36.195164, 40.509697>,  <31.441628, 36.037460, 39.820400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.230095, 36.195164, 40.509697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.037258, 35.852428, 40.436569>,  <30.921556, 35.646790, 40.392693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.037258, 35.852428, 40.436569>,  <31.230095, 36.195164, 40.509697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.037258, 35.852428, 40.436569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185279, -0.303659, 0.934592,
		-0.856306, 0.416685, 0.305144,
		-0.482091, -0.856834, -0.182822,
		30.892632, 35.595379, 40.381721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.875189, 36.138363, 41.126358>,  <31.230095, 36.195164, 40.509697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.875189, 36.138363, 41.126358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.874588, 35.783524, 40.941727>,  <30.874228, 35.570621, 40.830948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.874588, 35.783524, 40.941727>,  <30.875189, 36.138363, 41.126358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.874588, 35.783524, 40.941727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357740, -0.431512, 0.828142,
		-0.933820, -0.163881, 0.317999,
		-0.001504, -0.887097, -0.461581,
		30.874136, 35.517395, 40.803253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.674849, 35.640766, 41.582188>,  <30.875189, 36.138363, 41.126358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.674849, 35.640766, 41.582188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.847570, 35.412823, 41.302532>,  <30.951204, 35.276054, 41.134739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.847570, 35.412823, 41.302532>,  <30.674849, 35.640766, 41.582188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.847570, 35.412823, 41.302532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373289, -0.592725, 0.713675,
		-0.821096, -0.569151, -0.043219,
		0.431806, -0.569863, -0.699142,
		30.977112, 35.241863, 41.092789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.476145, 34.979584, 41.735950>,  <30.674849, 35.640766, 41.582188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.476145, 34.979584, 41.735950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.809120, 34.948017, 41.516563>,  <31.008905, 34.929077, 41.384930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.809120, 34.948017, 41.516563>,  <30.476145, 34.979584, 41.735950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.809120, 34.948017, 41.516563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382335, -0.634643, 0.671602,
		-0.401080, -0.768766, -0.498130,
		0.832439, -0.078913, -0.548469,
		31.058851, 34.924343, 41.352024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.581528, 34.318661, 41.748787>,  <30.476145, 34.979584, 41.735950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.581528, 34.318661, 41.748787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.937132, 34.476593, 41.656036>,  <31.150496, 34.571350, 41.600384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.937132, 34.476593, 41.656036>,  <30.581528, 34.318661, 41.748787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.937132, 34.476593, 41.656036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457640, -0.749650, 0.478111,
		0.014944, -0.531164, -0.847138,
		0.889012, 0.394829, -0.231879,
		31.203836, 34.595043, 41.586472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.963331, 33.816315, 41.537281>,  <30.581528, 34.318661, 41.748787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.963331, 33.816315, 41.537281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.231699, 34.087967, 41.656384>,  <31.392719, 34.250957, 41.727844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.231699, 34.087967, 41.656384>,  <30.963331, 33.816315, 41.537281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.231699, 34.087967, 41.656384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478629, -0.703299, 0.525628,
		0.566379, -0.210138, -0.796905,
		0.670917, 0.679126, 0.297755,
		31.432974, 34.291706, 41.745708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.601482, 33.427708, 41.706295>,  <30.963331, 33.816315, 41.537281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.601482, 33.427708, 41.706295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.650324, 33.772911, 41.902378>,  <31.679628, 33.980034, 42.020027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.650324, 33.772911, 41.902378>,  <31.601482, 33.427708, 41.706295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.650324, 33.772911, 41.902378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462863, -0.486422, 0.741048,
		0.877980, 0.136417, -0.458848,
		0.122102, 0.863009, 0.490211,
		31.686954, 34.031815, 42.049442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.315384, 33.466347, 42.028294>,  <31.601482, 33.427708, 41.706295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.315384, 33.466347, 42.028294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.122047, 33.754349, 42.227486>,  <32.006046, 33.927151, 42.347000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.122047, 33.754349, 42.227486>,  <32.315384, 33.466347, 42.028294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.122047, 33.754349, 42.227486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497156, -0.242459, 0.833096,
		0.720570, 0.650240, -0.240763,
		-0.483337, 0.720001, 0.497980,
		31.977047, 33.970348, 42.376881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.799919, 33.869331, 42.427589>,  <32.315384, 33.466347, 42.028294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.799919, 33.869331, 42.427589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.452152, 33.965027, 42.600510>,  <32.243492, 34.022442, 42.704262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.452152, 33.965027, 42.600510>,  <32.799919, 33.869331, 42.427589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.452152, 33.965027, 42.600510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409065, -0.142162, 0.901363,
		0.277093, 0.960498, 0.025736,
		-0.869417, 0.239234, 0.432298,
		32.191326, 34.036797, 42.730198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.016148, 34.253029, 42.945919>,  <32.799919, 33.869331, 42.427589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.016148, 34.253029, 42.945919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.645191, 34.141514, 43.045704>,  <32.422619, 34.074604, 43.105576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.645191, 34.141514, 43.045704>,  <33.016148, 34.253029, 42.945919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.645191, 34.141514, 43.045704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324239, -0.266383, 0.907694,
		-0.186600, 0.922670, 0.337433,
		-0.927388, -0.278785, 0.249459,
		32.366974, 34.057877, 43.120541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.889561, 34.568851, 43.527893>,  <33.016148, 34.253029, 42.945919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.889561, 34.568851, 43.527893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.629566, 34.265373, 43.545345>,  <32.473572, 34.083286, 43.555817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.629566, 34.265373, 43.545345>,  <32.889561, 34.568851, 43.527893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.629566, 34.265373, 43.545345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219207, -0.132207, 0.966680,
		-0.727648, 0.637889, 0.252244,
		-0.649982, -0.758696, 0.043630,
		32.434570, 34.037766, 43.558434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.483120, 34.658173, 44.142456>,  <32.889561, 34.568851, 43.527893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.483120, 34.658173, 44.142456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.426304, 34.266357, 44.085434>,  <32.392212, 34.031269, 44.051220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.426304, 34.266357, 44.085434>,  <32.483120, 34.658173, 44.142456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.426304, 34.266357, 44.085434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185997, -0.167866, 0.968104,
		-0.972229, 0.110998, 0.206036,
		-0.142044, -0.979541, -0.142559,
		32.383690, 33.972496, 44.042667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.041927, 34.415417, 44.640888>,  <32.483120, 34.658173, 44.142456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.041927, 34.415417, 44.640888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.239998, 34.093216, 44.510681>,  <32.358841, 33.899895, 44.432556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.239998, 34.093216, 44.510681>,  <32.041927, 34.415417, 44.640888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.239998, 34.093216, 44.510681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276995, -0.208746, 0.937923,
		-0.823451, -0.554606, 0.119753,
		0.495180, -0.805504, -0.325515,
		32.388554, 33.851566, 44.413025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.881708, 33.913166, 45.226818>,  <32.041927, 34.415417, 44.640888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.881708, 33.913166, 45.226818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.214096, 33.764069, 45.061626>,  <32.413528, 33.674610, 44.962513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.214096, 33.764069, 45.061626>,  <31.881708, 33.913166, 45.226818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.214096, 33.764069, 45.061626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364216, -0.196624, 0.910322,
		-0.420516, -0.906864, -0.027631,
		0.830971, -0.372741, -0.412978,
		32.463387, 33.652245, 44.937733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.897133, 33.213326, 45.427807>,  <31.881708, 33.913166, 45.226818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.897133, 33.213326, 45.427807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.245445, 33.400265, 45.366714>,  <32.454433, 33.512428, 45.330059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.245445, 33.400265, 45.366714>,  <31.897133, 33.213326, 45.427807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.245445, 33.400265, 45.366714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345500, -0.360627, 0.866359,
		0.349813, -0.807177, -0.475496,
		0.870781, 0.467347, -0.152728,
		32.506680, 33.540470, 45.320896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.432060, 32.697914, 45.563725>,  <31.897133, 33.213326, 45.427807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.432060, 32.697914, 45.563725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.660538, 33.024395, 45.528942>,  <32.797623, 33.220284, 45.508072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.660538, 33.024395, 45.528942>,  <32.432060, 32.697914, 45.563725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.660538, 33.024395, 45.528942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650849, -0.385814, 0.653868,
		0.500136, -0.430080, -0.751595,
		0.571191, 0.816198, -0.086958,
		32.831894, 33.269253, 45.502853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.054466, 32.421295, 45.652969>,  <32.432060, 32.697914, 45.563725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.054466, 32.421295, 45.652969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.070824, 32.805660, 45.762497>,  <33.080639, 33.036278, 45.828213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.070824, 32.805660, 45.762497>,  <33.054466, 32.421295, 45.652969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.070824, 32.805660, 45.762497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624075, -0.238577, 0.744050,
		0.780293, 0.140458, -0.609437,
		0.040890, 0.960912, 0.273816,
		33.083092, 33.093933, 45.844643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.726795, 32.566856, 45.635036>,  <33.054466, 32.421295, 45.652969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.726795, 32.566856, 45.635036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.568569, 32.816517, 45.904545>,  <33.473633, 32.966312, 46.066250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.568569, 32.816517, 45.904545>,  <33.726795, 32.566856, 45.635036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.568569, 32.816517, 45.904545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646452, -0.331893, 0.686983,
		0.652401, 0.707305, -0.272199,
		-0.395566, 0.624152, 0.673766,
		33.449898, 33.003761, 46.106674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.283669, 32.735168, 46.074059>,  <33.726795, 32.566856, 45.635036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.283669, 32.735168, 46.074059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.006409, 32.910076, 46.303261>,  <33.840054, 33.015022, 46.440784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.006409, 32.910076, 46.303261>,  <34.283669, 32.735168, 46.074059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.006409, 32.910076, 46.303261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558254, -0.177200, 0.810526,
		0.455954, 0.881701, -0.121280,
		-0.693151, 0.437268, 0.573008,
		33.798462, 33.041256, 46.475163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.049648, 32.935745, 45.802105>,  <34.283669, 32.735168, 46.074059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.049648, 32.935745, 45.802105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.430122, 32.819469, 45.760643>,  <35.658405, 32.749702, 45.735767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.430122, 32.819469, 45.760643>,  <35.049648, 32.935745, 45.802105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.430122, 32.819469, 45.760643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121805, -0.044997, -0.991534,
		0.283569, 0.955757, -0.078209,
		0.951185, -0.290694, -0.103656,
		35.715477, 32.732262, 45.729546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.284958, 33.310978, 45.152809>,  <35.049648, 32.935745, 45.802105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.284958, 33.310978, 45.152809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.545532, 33.012970, 45.210182>,  <35.701878, 32.834164, 45.244606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.545532, 33.012970, 45.210182>,  <35.284958, 33.310978, 45.152809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.545532, 33.012970, 45.210182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165365, -0.045076, -0.985202,
		0.740459, 0.665518, 0.093836,
		0.651440, -0.745019, 0.143431,
		35.740963, 32.789463, 45.253212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.803722, 33.473900, 44.695847>,  <35.284958, 33.310978, 45.152809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.803722, 33.473900, 44.695847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.805511, 33.079090, 44.760040>,  <35.806583, 32.842205, 44.798557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.805511, 33.079090, 44.760040>,  <35.803722, 33.473900, 44.695847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.805511, 33.079090, 44.760040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218783, -0.155635, -0.963282,
		0.975763, 0.039420, 0.215249,
		0.004473, -0.987028, 0.160487,
		35.806854, 32.782982, 44.808186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.386009, 33.243427, 44.294815>,  <35.803722, 33.473900, 44.695847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.386009, 33.243427, 44.294815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.165779, 32.917034, 44.365284>,  <36.033642, 32.721199, 44.407566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.165779, 32.917034, 44.365284>,  <36.386009, 33.243427, 44.294815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.165779, 32.917034, 44.365284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080160, -0.261742, -0.961803,
		0.830931, -0.515419, 0.209517,
		-0.550571, -0.815987, 0.176174,
		36.000607, 32.672237, 44.418137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.735077, 32.843922, 43.883595>,  <36.386009, 33.243427, 44.294815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.735077, 32.843922, 43.883595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.376846, 32.679813, 43.952438>,  <36.161907, 32.581348, 43.993744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.376846, 32.679813, 43.952438>,  <36.735077, 32.843922, 43.883595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.376846, 32.679813, 43.952438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111736, -0.167027, -0.979600,
		0.430651, -0.896536, 0.103743,
		-0.895575, -0.410275, 0.172106,
		36.108173, 32.556732, 44.004070>
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
