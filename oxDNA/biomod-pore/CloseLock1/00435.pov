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
	<24.048092, 35.252476, 35.401108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.284544, 34.956364, 35.273018>,  <24.426414, 34.778694, 35.196163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.284544, 34.956364, 35.273018>,  <24.048092, 35.252476, 35.401108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.284544, 34.956364, 35.273018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625327, 0.169862, 0.761652,
		-0.509443, -0.650483, 0.563329,
		0.591130, -0.740283, -0.320229,
		24.461884, 34.734280, 35.176949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.041824, 34.712246, 35.856712>,  <24.048092, 35.252476, 35.401108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.041824, 34.712246, 35.856712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.392761, 34.731575, 35.665741>,  <24.603323, 34.743172, 35.551159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.392761, 34.731575, 35.665741>,  <24.041824, 34.712246, 35.856712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.392761, 34.731575, 35.665741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470834, 0.105470, 0.875895,
		0.092676, -0.993248, 0.069783,
		0.877340, 0.048318, -0.477429,
		24.655964, 34.746071, 35.522511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.488550, 34.334244, 36.301079>,  <24.041824, 34.712246, 35.856712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.488550, 34.334244, 36.301079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.743361, 34.548805, 36.079639>,  <24.896248, 34.677544, 35.946777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.743361, 34.548805, 36.079639>,  <24.488550, 34.334244, 36.301079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.743361, 34.548805, 36.079639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473095, 0.294940, 0.830176,
		0.608587, -0.790747, -0.065886,
		0.637026, 0.536404, -0.553595,
		24.934469, 34.709728, 35.913559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.262035, 34.114685, 36.487408>,  <24.488550, 34.334244, 36.301079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.262035, 34.114685, 36.487408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.194614, 34.475719, 36.328949>,  <25.154161, 34.692341, 36.233871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.194614, 34.475719, 36.328949>,  <25.262035, 34.114685, 36.487408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.194614, 34.475719, 36.328949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456318, 0.427689, 0.780292,
		0.873707, -0.049252, -0.483953,
		-0.168550, 0.902583, -0.396149,
		25.144049, 34.746494, 36.210106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.755119, 34.663689, 36.372082>,  <25.262035, 34.114685, 36.487408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.755119, 34.663689, 36.372082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.088877, 34.850655, 36.488918>,  <26.289131, 34.962833, 36.559021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.088877, 34.850655, 36.488918>,  <25.755119, 34.663689, 36.372082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.088877, 34.850655, 36.488918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196417, 0.242990, -0.949935,
		-0.514986, 0.849989, 0.110941,
		0.834392, 0.467412, 0.292088,
		26.339195, 34.990879, 36.576546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.849295, 35.387638, 36.326920>,  <25.755119, 34.663689, 36.372082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.849295, 35.387638, 36.326920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.213593, 35.241028, 36.250809>,  <26.432171, 35.153061, 36.205143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.213593, 35.241028, 36.250809>,  <25.849295, 35.387638, 36.326920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.213593, 35.241028, 36.250809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051800, 0.558508, -0.827880,
		0.409709, 0.744131, 0.527644,
		0.910744, -0.366521, -0.190280,
		26.486816, 35.131073, 36.193726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.249422, 36.030025, 36.152924>,  <25.849295, 35.387638, 36.326920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.249422, 36.030025, 36.152924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.445700, 35.709656, 36.015667>,  <26.563465, 35.517433, 35.933311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.445700, 35.709656, 36.015667>,  <26.249422, 36.030025, 36.152924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.445700, 35.709656, 36.015667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292529, 0.522381, -0.800965,
		0.820760, 0.292649, 0.490621,
		0.490693, -0.800921, -0.343141,
		26.592907, 35.469379, 35.912724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.855486, 36.365887, 35.849548>,  <26.249422, 36.030025, 36.152924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.855486, 36.365887, 35.849548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.840403, 35.994755, 35.701111>,  <26.831352, 35.772076, 35.612049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.840403, 35.994755, 35.701111>,  <26.855486, 36.365887, 35.849548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.840403, 35.994755, 35.701111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296926, 0.344184, -0.890714,
		0.954155, -0.143774, 0.262519,
		-0.037706, -0.927829, -0.371096,
		26.829090, 35.716408, 35.589783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.487944, 36.237278, 35.618038>,  <26.855486, 36.365887, 35.849548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.487944, 36.237278, 35.618038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.233166, 36.003410, 35.417057>,  <27.080299, 35.863091, 35.296467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.233166, 36.003410, 35.417057>,  <27.487944, 36.237278, 35.618038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.233166, 36.003410, 35.417057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310207, 0.402287, -0.861357,
		0.705741, -0.704503, -0.074867,
		-0.636946, -0.584671, -0.502453,
		27.042082, 35.828011, 35.266323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.801676, 36.088039, 35.007336>,  <27.487944, 36.237278, 35.618038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.801676, 36.088039, 35.007336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.428679, 35.990562, 34.900700>,  <27.204880, 35.932076, 34.836720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.428679, 35.990562, 34.900700>,  <27.801676, 36.088039, 35.007336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.428679, 35.990562, 34.900700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173582, 0.344896, -0.922451,
		0.316731, -0.906457, -0.279315,
		-0.932497, -0.243684, -0.266584,
		27.148930, 35.917454, 34.820724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.848013, 35.693119, 34.343601>,  <27.801676, 36.088039, 35.007336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.848013, 35.693119, 34.343601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.484186, 35.854614, 34.382965>,  <27.265890, 35.951511, 34.406586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.484186, 35.854614, 34.382965>,  <27.848013, 35.693119, 34.343601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.484186, 35.854614, 34.382965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084856, 0.412283, -0.907095,
		-0.406801, -0.816713, -0.409258,
		-0.909567, 0.403736, 0.098414,
		27.211315, 35.975735, 34.412491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.566734, 35.539726, 33.753498>,  <27.848013, 35.693119, 34.343601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.566734, 35.539726, 33.753498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.373039, 35.849472, 33.916409>,  <27.256823, 36.035320, 34.014156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.373039, 35.849472, 33.916409>,  <27.566734, 35.539726, 33.753498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.373039, 35.849472, 33.916409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137863, 0.527212, -0.838476,
		-0.864006, -0.349874, -0.362053,
		-0.484239, 0.774361, 0.407279,
		27.227768, 36.081779, 34.038593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.403240, 35.721378, 33.050186>,  <27.566734, 35.539726, 33.753498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.403240, 35.721378, 33.050186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.323786, 36.010040, 33.315441>,  <27.276114, 36.183239, 33.474594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.323786, 36.010040, 33.315441>,  <27.403240, 35.721378, 33.050186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.323786, 36.010040, 33.315441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154049, 0.691201, -0.706053,
		-0.967891, -0.038093, -0.248470,
		-0.198638, 0.721658, 0.663139,
		27.264194, 36.226536, 33.514381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.984491, 36.213745, 32.730995>,  <27.403240, 35.721378, 33.050186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.984491, 36.213745, 32.730995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.119659, 36.418396, 33.046982>,  <27.200760, 36.541187, 33.236572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.119659, 36.418396, 33.046982>,  <26.984491, 36.213745, 32.730995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.119659, 36.418396, 33.046982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269076, 0.751789, -0.602006,
		-0.901892, 0.415990, 0.116376,
		0.337919, 0.511631, 0.789965,
		27.221035, 36.571884, 33.283970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.709965, 36.849499, 32.619438>,  <26.984491, 36.213745, 32.730995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.709965, 36.849499, 32.619438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.031412, 36.910675, 32.849499>,  <27.224281, 36.947380, 32.987537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.031412, 36.910675, 32.849499>,  <26.709965, 36.849499, 32.619438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.031412, 36.910675, 32.849499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234024, 0.807357, -0.541671,
		-0.547199, 0.569898, 0.613017,
		0.803621, 0.152941, 0.575155,
		27.272499, 36.956558, 33.022045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.753733, 37.608780, 32.725140>,  <26.709965, 36.849499, 32.619438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.753733, 37.608780, 32.725140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.123337, 37.480980, 32.809162>,  <27.345098, 37.404301, 32.859577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.123337, 37.480980, 32.809162>,  <26.753733, 37.608780, 32.725140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.123337, 37.480980, 32.809162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382329, 0.780032, -0.495352,
		-0.005586, 0.538022, 0.842913,
		0.924009, -0.319503, 0.210059,
		27.400539, 37.385128, 32.872181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.219536, 38.206112, 32.862957>,  <26.753733, 37.608780, 32.725140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.219536, 38.206112, 32.862957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.502823, 37.938129, 32.773888>,  <27.672796, 37.777340, 32.720448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.502823, 37.938129, 32.773888>,  <27.219536, 38.206112, 32.862957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.502823, 37.938129, 32.773888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548312, 0.720645, -0.424293,
		0.444724, 0.178400, 0.877721,
		0.708220, -0.669958, -0.222669,
		27.715288, 37.737141, 32.707088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.875458, 38.463318, 33.021755>,  <27.219536, 38.206112, 32.862957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.875458, 38.463318, 33.021755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.931646, 38.200436, 32.725552>,  <27.965359, 38.042706, 32.547829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.931646, 38.200436, 32.725552>,  <27.875458, 38.463318, 33.021755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.931646, 38.200436, 32.725552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654643, 0.622750, -0.428515,
		0.742773, -0.424572, 0.517713,
		0.140470, -0.657207, -0.740505,
		27.973787, 38.003273, 32.503399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.568493, 38.590755, 32.922169>,  <27.875458, 38.463318, 33.021755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.568493, 38.590755, 32.922169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.446018, 38.392460, 32.597088>,  <28.372534, 38.273483, 32.402039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.446018, 38.392460, 32.597088>,  <28.568493, 38.590755, 32.922169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.446018, 38.392460, 32.597088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619121, 0.544802, -0.565580,
		0.723144, -0.676336, 0.140112,
		-0.306189, -0.495742, -0.812704,
		28.354162, 38.243736, 32.353275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.177454, 38.351612, 32.638680>,  <28.568493, 38.590755, 32.922169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.177454, 38.351612, 32.638680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.914099, 38.338970, 32.337875>,  <28.756084, 38.331383, 32.157391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.914099, 38.338970, 32.337875>,  <29.177454, 38.351612, 32.638680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.914099, 38.338970, 32.337875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678932, 0.406367, -0.611487,
		0.324920, -0.913163, -0.246089,
		-0.658390, -0.031607, -0.752013,
		28.716581, 38.329487, 32.112270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.584827, 38.181812, 32.024853>,  <29.177454, 38.351612, 32.638680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.584827, 38.181812, 32.024853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.252598, 38.319027, 31.849365>,  <29.053261, 38.401356, 31.744072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.252598, 38.319027, 31.849365>,  <29.584827, 38.181812, 32.024853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.252598, 38.319027, 31.849365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544084, 0.331733, -0.770666,
		-0.118826, -0.878795, -0.462168,
		-0.830574, 0.343033, -0.438720,
		29.003426, 38.421936, 31.717749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.634336, 38.030895, 31.355595>,  <29.584827, 38.181812, 32.024853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.634336, 38.030895, 31.355595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.364613, 38.326210, 31.349445>,  <29.202778, 38.503399, 31.345757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.364613, 38.326210, 31.349445>,  <29.634336, 38.030895, 31.355595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.364613, 38.326210, 31.349445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516548, 0.456701, -0.724294,
		-0.527719, -0.496338, -0.689319,
		-0.674307, 0.738291, -0.015372,
		29.162321, 38.547699, 31.344833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.467266, 38.109825, 30.723461>,  <29.634336, 38.030895, 31.355595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.467266, 38.109825, 30.723461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.372459, 38.445484, 30.919279>,  <29.315575, 38.646881, 31.036770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.372459, 38.445484, 30.919279>,  <29.467266, 38.109825, 30.723461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.372459, 38.445484, 30.919279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278053, 0.541420, -0.793442,
		-0.930865, -0.051940, -0.361654,
		-0.237018, 0.839146, 0.489547,
		29.301353, 38.697227, 31.066143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.102003, 38.609344, 30.185324>,  <29.467266, 38.109825, 30.723461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.102003, 38.609344, 30.185324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.263948, 38.814465, 30.488142>,  <29.361116, 38.937538, 30.669834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.263948, 38.814465, 30.488142>,  <29.102003, 38.609344, 30.185324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.263948, 38.814465, 30.488142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395801, 0.648067, -0.650653,
		-0.824273, 0.563067, 0.059413,
		0.404865, 0.512800, 0.757047,
		29.385408, 38.968304, 30.715256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.654480, 39.245274, 30.643744>,  <29.102003, 38.609344, 30.185324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.654480, 39.245274, 30.643744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.793756, 39.519272, 30.387762>,  <28.877323, 39.683670, 30.234173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.793756, 39.519272, 30.387762>,  <28.654480, 39.245274, 30.643744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.793756, 39.519272, 30.387762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185509, -0.719523, -0.669233,
		-0.918885, 0.114304, -0.377605,
		0.348191, 0.684997, -0.639954,
		28.898214, 39.724770, 30.195776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.351387, 39.191463, 29.865374>,  <28.654480, 39.245274, 30.643744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.351387, 39.191463, 29.865374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.729080, 39.322834, 29.874849>,  <28.955696, 39.401657, 29.880535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.729080, 39.322834, 29.874849>,  <28.351387, 39.191463, 29.865374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.729080, 39.322834, 29.874849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215703, -0.562578, -0.798110,
		-0.248795, 0.758710, -0.602046,
		0.944232, 0.328428, 0.023689,
		29.012350, 39.421364, 29.881956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.640059, 39.462029, 29.212114>,  <28.351387, 39.191463, 29.865374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.640059, 39.462029, 29.212114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.916916, 39.288296, 29.442694>,  <29.083031, 39.184055, 29.581041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.916916, 39.288296, 29.442694>,  <28.640059, 39.462029, 29.212114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.916916, 39.288296, 29.442694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312416, -0.539687, -0.781751,
		0.650640, 0.721176, -0.237849,
		0.692144, -0.434331, 0.576449,
		29.124559, 39.157997, 29.615629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.386940, 39.426765, 28.854586>,  <28.640059, 39.462029, 29.212114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.386940, 39.426765, 28.854586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.353062, 39.132248, 29.123123>,  <29.332735, 38.955540, 29.284245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.353062, 39.132248, 29.123123>,  <29.386940, 39.426765, 28.854586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.353062, 39.132248, 29.123123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370908, -0.648641, -0.664599,
		0.924799, 0.192716, 0.328034,
		-0.084698, -0.736292, 0.671343,
		29.327652, 38.911362, 29.324526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.087648, 39.348633, 28.969278>,  <29.386940, 39.426765, 28.854586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.087648, 39.348633, 28.969278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.372536, 39.315006, 29.248041>,  <30.543468, 39.294830, 29.415298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.372536, 39.315006, 29.248041>,  <30.087648, 39.348633, 28.969278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.372536, 39.315006, 29.248041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350188, -0.817889, -0.456537,
		0.608370, 0.569203, -0.553077,
		0.712218, -0.084062, 0.696907,
		30.586201, 39.289787, 29.457113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.783424, 39.337025, 28.706623>,  <30.087648, 39.348633, 28.969278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.783424, 39.337025, 28.706623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.730513, 39.123962, 29.040995>,  <30.698765, 38.996124, 29.241617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.730513, 39.123962, 29.040995>,  <30.783424, 39.337025, 28.706623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.730513, 39.123962, 29.040995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398574, -0.800741, -0.447161,
		0.907547, 0.274029, 0.318225,
		-0.132280, -0.532655, 0.835931,
		30.690828, 38.964165, 29.291775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.490730, 39.168285, 29.047739>,  <30.783424, 39.337025, 28.706623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.490730, 39.168285, 29.047739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.206852, 38.888824, 29.083990>,  <31.036526, 38.721146, 29.105742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.206852, 38.888824, 29.083990>,  <31.490730, 39.168285, 29.047739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.206852, 38.888824, 29.083990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496432, -0.587211, -0.639326,
		0.499887, -0.408736, 0.763576,
		-0.709696, -0.698654, 0.090629,
		30.993942, 38.679230, 29.111179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.708229, 38.739548, 28.457367>,  <31.490730, 39.168285, 29.047739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.708229, 38.739548, 28.457367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.411779, 38.939526, 28.278126>,  <31.233910, 39.059513, 28.170582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.411779, 38.939526, 28.278126>,  <31.708229, 38.739548, 28.457367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.411779, 38.939526, 28.278126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670847, 0.577740, -0.464952,
		0.026438, -0.645195, -0.763561,
		-0.741124, 0.499940, -0.448101,
		31.189442, 39.089508, 28.143696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.007355, 39.203384, 28.004631>,  <31.708229, 38.739548, 28.457367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.007355, 39.203384, 28.004631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.640890, 39.349922, 27.939590>,  <31.421011, 39.437843, 27.900566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.640890, 39.349922, 27.939590>,  <32.007355, 39.203384, 28.004631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.640890, 39.349922, 27.939590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377886, 0.654282, -0.655070,
		-0.133594, -0.661595, -0.737864,
		-0.916163, 0.366342, -0.162599,
		31.366041, 39.459824, 27.890810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.548824, 38.814541, 28.457853>,  <32.007355, 39.203384, 28.004631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.548824, 38.814541, 28.457853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.843082, 38.781261, 28.726749>,  <33.019638, 38.761292, 28.888086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.843082, 38.781261, 28.726749>,  <32.548824, 38.814541, 28.457853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.843082, 38.781261, 28.726749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614557, -0.499343, 0.610718,
		0.284866, -0.862400, -0.418471,
		0.735644, -0.083201, 0.672239,
		33.063774, 38.756302, 28.928421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.774437, 38.132923, 28.586723>,  <32.548824, 38.814541, 28.457853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.774437, 38.132923, 28.586723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.823235, 38.345253, 28.922186>,  <32.852512, 38.472652, 29.123463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.823235, 38.345253, 28.922186>,  <32.774437, 38.132923, 28.586723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.823235, 38.345253, 28.922186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606685, -0.628856, 0.486286,
		0.785526, -0.568123, 0.245327,
		0.121995, 0.530826, 0.838654,
		32.859833, 38.504501, 29.173782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.890003, 37.660297, 29.102196>,  <32.774437, 38.132923, 28.586723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.890003, 37.660297, 29.102196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.794384, 37.979065, 29.324108>,  <32.737011, 38.170326, 29.457254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.794384, 37.979065, 29.324108>,  <32.890003, 37.660297, 29.102196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.794384, 37.979065, 29.324108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420092, -0.599984, 0.680840,
		0.875431, -0.070306, 0.478202,
		-0.239046, 0.796917, 0.554779,
		32.722672, 38.218140, 29.490541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.900227, 37.410675, 29.791388>,  <32.890003, 37.660297, 29.102196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.900227, 37.410675, 29.791388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.677097, 37.741940, 29.813242>,  <32.543221, 37.940697, 29.826355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.677097, 37.741940, 29.813242>,  <32.900227, 37.410675, 29.791388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.677097, 37.741940, 29.813242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638247, -0.470122, 0.609612,
		0.530540, 0.305186, 0.790815,
		-0.557825, 0.828159, 0.054634,
		32.509750, 37.990387, 29.829632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.787827, 37.598736, 30.536545>,  <32.900227, 37.410675, 29.791388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.787827, 37.598736, 30.536545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.481445, 37.751213, 30.329470>,  <32.297615, 37.842701, 30.205225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.481445, 37.751213, 30.329470>,  <32.787827, 37.598736, 30.536545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.481445, 37.751213, 30.329470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627884, -0.616542, 0.475015,
		-0.138103, 0.688888, 0.711590,
		-0.765957, 0.381195, -0.517688,
		32.251659, 37.865570, 30.174164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.324467, 37.799988, 30.974400>,  <32.787827, 37.598736, 30.536545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.324467, 37.799988, 30.974400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.121643, 37.752728, 30.632889>,  <31.999949, 37.724373, 30.427982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.121643, 37.752728, 30.632889>,  <32.324467, 37.799988, 30.974400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.121643, 37.752728, 30.632889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574620, -0.691968, 0.437026,
		-0.642420, 0.712194, 0.282977,
		-0.507059, -0.118150, -0.853775,
		31.969526, 37.717281, 30.376757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.579376, 37.801079, 31.219566>,  <32.324467, 37.799988, 30.974400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.579376, 37.801079, 31.219566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.561781, 37.655048, 30.847591>,  <31.551224, 37.567429, 30.624407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.561781, 37.655048, 30.847591>,  <31.579376, 37.801079, 31.219566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.561781, 37.655048, 30.847591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717861, -0.635818, 0.283569,
		-0.694796, 0.680039, -0.234108,
		-0.043988, -0.365079, -0.929937,
		31.548584, 37.545525, 30.568611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.921112, 37.768520, 31.167194>,  <31.579376, 37.801079, 31.219566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.921112, 37.768520, 31.167194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.045940, 37.527714, 30.873205>,  <31.120838, 37.383228, 30.696812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.045940, 37.527714, 30.873205>,  <30.921112, 37.768520, 31.167194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.045940, 37.527714, 30.873205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702012, -0.667375, 0.248575,
		-0.640149, 0.438385, -0.630895,
		0.312072, -0.602021, -0.734971,
		31.139563, 37.347107, 30.652714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.329554, 37.581055, 30.829765>,  <30.921112, 37.768520, 31.167194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.329554, 37.581055, 30.829765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.619173, 37.314941, 30.756937>,  <30.792946, 37.155273, 30.713240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.619173, 37.314941, 30.756937>,  <30.329554, 37.581055, 30.829765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.619173, 37.314941, 30.756937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641819, -0.746522, 0.175423,
		-0.252624, -0.010159, -0.967511,
		0.724050, -0.665283, -0.182069,
		30.836388, 37.115356, 30.702316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.033588, 37.107937, 30.426432>,  <30.329554, 37.581055, 30.829765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.033588, 37.107937, 30.426432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.349751, 36.906338, 30.565714>,  <30.539448, 36.785378, 30.649282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.349751, 36.906338, 30.565714>,  <30.033588, 37.107937, 30.426432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.349751, 36.906338, 30.565714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599774, -0.752328, 0.272532,
		0.124610, -0.424255, -0.896928,
		0.790407, -0.503994, 0.348205,
		30.586872, 36.755138, 30.670176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.955486, 36.340038, 30.331944>,  <30.033588, 37.107937, 30.426432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.955486, 36.340038, 30.331944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.246456, 36.351227, 30.606190>,  <30.421038, 36.357941, 30.770739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.246456, 36.351227, 30.606190>,  <29.955486, 36.340038, 30.331944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.246456, 36.351227, 30.606190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308262, -0.879348, 0.362935,
		0.613048, -0.475357, -0.631037,
		0.727425, 0.027972, 0.685617,
		30.464684, 36.359619, 30.811874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.368338, 35.628712, 30.324396>,  <29.955486, 36.340038, 30.331944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.368338, 35.628712, 30.324396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.414799, 35.795822, 30.684834>,  <30.442675, 35.896088, 30.901096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.414799, 35.795822, 30.684834>,  <30.368338, 35.628712, 30.324396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.414799, 35.795822, 30.684834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407740, -0.807209, 0.426804,
		0.905680, -0.416987, 0.076584,
		0.116153, 0.417774, 0.901095,
		30.449644, 35.921154, 30.955162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.543339, 35.032524, 30.688171>,  <30.368338, 35.628712, 30.324396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.543339, 35.032524, 30.688171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.445724, 35.305676, 30.963600>,  <30.387156, 35.469566, 31.128857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.445724, 35.305676, 30.963600>,  <30.543339, 35.032524, 30.688171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.445724, 35.305676, 30.963600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404734, -0.716961, 0.567589,
		0.881270, -0.140176, 0.451346,
		-0.244036, 0.682874, 0.688571,
		30.372515, 35.510536, 31.170172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.691114, 34.713062, 31.398987>,  <30.543339, 35.032524, 30.688171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.691114, 34.713062, 31.398987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.435345, 35.015480, 31.454887>,  <30.281883, 35.196930, 31.488428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.435345, 35.015480, 31.454887>,  <30.691114, 34.713062, 31.398987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.435345, 35.015480, 31.454887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486404, -0.538553, 0.688021,
		0.595440, 0.371960, 0.712107,
		-0.639423, 0.756047, 0.139753,
		30.243517, 35.242294, 31.496813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.786257, 34.917175, 32.128220>,  <30.691114, 34.713062, 31.398987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.786257, 34.917175, 32.128220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.415379, 34.981976, 31.993124>,  <30.192852, 35.020855, 31.912067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.415379, 34.981976, 31.993124>,  <30.786257, 34.917175, 32.128220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.415379, 34.981976, 31.993124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374504, -0.382467, 0.844669,
		0.007664, 0.909656, 0.415292,
		-0.927194, 0.162002, -0.337738,
		30.137220, 35.030575, 31.891802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.417534, 35.245735, 32.608551>,  <30.786257, 34.917175, 32.128220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.417534, 35.245735, 32.608551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.107227, 35.119816, 32.389797>,  <29.921043, 35.044266, 32.258545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.107227, 35.119816, 32.389797>,  <30.417534, 35.245735, 32.608551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.107227, 35.119816, 32.389797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509969, -0.197663, 0.837174,
		-0.371641, 0.928349, -0.007197,
		-0.775767, -0.314799, -0.546889,
		29.874496, 35.025375, 32.225731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.761610, 35.536488, 32.960220>,  <30.417534, 35.245735, 32.608551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.761610, 35.536488, 32.960220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.642460, 35.227516, 32.735855>,  <29.570971, 35.042133, 32.601234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.642460, 35.227516, 32.735855>,  <29.761610, 35.536488, 32.960220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.642460, 35.227516, 32.735855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647775, -0.268043, 0.713121,
		-0.701184, 0.575767, -0.420516,
		-0.297875, -0.772428, -0.560915,
		29.553097, 34.995789, 32.567581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.050987, 35.478245, 33.138382>,  <29.761610, 35.536488, 32.960220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.050987, 35.478245, 33.138382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.138962, 35.123028, 32.976887>,  <29.191746, 34.909897, 32.879990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.138962, 35.123028, 32.976887>,  <29.050987, 35.478245, 33.138382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.138962, 35.123028, 32.976887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566411, -0.453210, 0.688316,
		-0.794234, 0.077297, -0.602676,
		0.219934, -0.888046, -0.403737,
		29.204943, 34.856613, 32.855766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.423494, 35.157845, 33.147762>,  <29.050987, 35.478245, 33.138382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.423494, 35.157845, 33.147762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.720467, 34.890736, 33.126305>,  <28.898649, 34.730469, 33.113430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.720467, 34.890736, 33.126305>,  <28.423494, 35.157845, 33.147762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.720467, 34.890736, 33.126305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455992, -0.562388, 0.689776,
		-0.490784, -0.487647, -0.722032,
		0.742430, -0.667773, -0.053648,
		28.943195, 34.690403, 33.110210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.958822, 34.548954, 33.239388>,  <28.423494, 35.157845, 33.147762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.958822, 34.548954, 33.239388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.337807, 34.453045, 33.324081>,  <28.565197, 34.395500, 33.374897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.337807, 34.453045, 33.324081>,  <27.958822, 34.548954, 33.239388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.337807, 34.453045, 33.324081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319803, -0.695768, 0.643143,
		-0.006892, -0.677065, -0.735891,
		0.947459, -0.239773, 0.211733,
		28.622044, 34.381115, 33.387600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.912685, 33.856270, 33.404877>,  <27.958822, 34.548954, 33.239388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.912685, 33.856270, 33.404877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.255056, 33.989876, 33.562775>,  <28.460478, 34.070038, 33.657513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.255056, 33.989876, 33.562775>,  <27.912685, 33.856270, 33.404877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.255056, 33.989876, 33.562775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180905, -0.521723, 0.833713,
		0.484422, -0.785009, -0.386131,
		0.855926, 0.334016, 0.394746,
		28.511835, 34.090080, 33.681198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.041693, 33.293747, 33.883427>,  <27.912685, 33.856270, 33.404877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.041693, 33.293747, 33.883427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.287878, 33.587917, 33.996815>,  <28.435589, 33.764420, 34.064846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.287878, 33.587917, 33.996815>,  <28.041693, 33.293747, 33.883427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.287878, 33.587917, 33.996815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090050, -0.291685, 0.952266,
		0.783004, -0.611612, -0.113297,
		0.615464, 0.735426, 0.283466,
		28.472517, 33.808544, 34.081856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.532253, 32.965015, 34.227890>,  <28.041693, 33.293747, 33.883427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.532253, 32.965015, 34.227890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.592974, 33.334019, 34.369835>,  <28.629406, 33.555420, 34.455002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.592974, 33.334019, 34.369835>,  <28.532253, 32.965015, 34.227890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.592974, 33.334019, 34.369835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064547, -0.367509, 0.927777,
		0.986301, -0.117933, -0.115334,
		0.151801, 0.922512, 0.354863,
		28.638514, 33.610771, 34.476295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.010113, 32.856586, 34.800087>,  <28.532253, 32.965015, 34.227890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.010113, 32.856586, 34.800087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.808132, 33.196781, 34.858997>,  <28.686943, 33.400898, 34.894344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.808132, 33.196781, 34.858997>,  <29.010113, 32.856586, 34.800087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.808132, 33.196781, 34.858997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070302, -0.210587, 0.975044,
		0.860279, 0.481998, 0.166128,
		-0.504953, 0.850489, 0.147278,
		28.656647, 33.451927, 34.903179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.272030, 33.229435, 35.358807>,  <29.010113, 32.856586, 34.800087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.272030, 33.229435, 35.358807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.884529, 33.328583, 35.362392>,  <28.652029, 33.388073, 35.364544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.884529, 33.328583, 35.362392>,  <29.272030, 33.229435, 35.358807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.884529, 33.328583, 35.362392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050422, -0.232204, 0.971359,
		0.242852, 0.940554, 0.237446,
		-0.968752, 0.247869, 0.008967,
		28.593903, 33.402943, 35.365082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.738178, 33.075100, 36.031067>,  <29.272030, 33.229435, 35.358807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.738178, 33.075100, 36.031067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.887829, 33.444519, 35.997398>,  <28.977619, 33.666172, 35.977196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.887829, 33.444519, 35.997398>,  <28.738178, 33.075100, 36.031067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.887829, 33.444519, 35.997398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455315, -0.103856, 0.884252,
		0.807910, -0.369146, -0.459362,
		0.374126, 0.923550, -0.084171,
		29.000067, 33.721584, 35.972149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.379717, 33.026642, 36.448154>,  <28.738178, 33.075100, 36.031067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.379717, 33.026642, 36.448154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.281734, 33.408260, 36.379116>,  <29.222944, 33.637230, 36.337692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.281734, 33.408260, 36.379116>,  <29.379717, 33.026642, 36.448154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.281734, 33.408260, 36.379116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667887, 0.295093, 0.683262,
		0.702797, 0.052095, -0.709481,
		-0.244957, 0.954047, -0.172597,
		29.208248, 33.694473, 36.327335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.010189, 33.429707, 36.324341>,  <29.379717, 33.026642, 36.448154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.010189, 33.429707, 36.324341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.709913, 33.624268, 36.503174>,  <29.529747, 33.741005, 36.610474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.709913, 33.624268, 36.503174>,  <30.010189, 33.429707, 36.324341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.709913, 33.624268, 36.503174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660652, 0.554807, 0.505696,
		-0.002074, 0.674985, -0.737828,
		-0.750690, 0.486399, 0.447080,
		29.484707, 33.770187, 36.637299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.028488, 34.270912, 36.213894>,  <30.010189, 33.429707, 36.324341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.028488, 34.270912, 36.213894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.875227, 34.103260, 36.543140>,  <29.783270, 34.002670, 36.740688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.875227, 34.103260, 36.543140>,  <30.028488, 34.270912, 36.213894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.875227, 34.103260, 36.543140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598795, 0.565809, 0.566837,
		-0.703305, 0.710066, 0.034179,
		-0.383153, -0.419126, 0.823120,
		29.760281, 33.977524, 36.790077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.669521, 34.862831, 36.711548>,  <30.028488, 34.270912, 36.213894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.669521, 34.862831, 36.711548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.833717, 34.530575, 36.862030>,  <29.932236, 34.331219, 36.952320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.833717, 34.530575, 36.862030>,  <29.669521, 34.862831, 36.711548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.833717, 34.530575, 36.862030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638839, 0.556362, 0.531363,
		-0.650678, 0.022213, 0.759029,
		0.410491, -0.830643, 0.376203,
		29.956865, 34.281384, 36.974892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.979168, 35.142101, 37.236279>,  <29.669521, 34.862831, 36.711548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.979168, 35.142101, 37.236279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.150219, 34.781448, 37.210403>,  <30.252850, 34.565056, 37.194878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.150219, 34.781448, 37.210403>,  <29.979168, 35.142101, 37.236279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.150219, 34.781448, 37.210403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811402, 0.351322, 0.467119,
		-0.398447, -0.252239, 0.881825,
		0.427630, -0.901637, -0.064684,
		30.278507, 34.510956, 37.190998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.270510, 35.055576, 37.846375>,  <29.979168, 35.142101, 37.236279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.270510, 35.055576, 37.846375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.461264, 34.774593, 37.635040>,  <30.575716, 34.606003, 37.508240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.461264, 34.774593, 37.635040>,  <30.270510, 35.055576, 37.846375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.461264, 34.774593, 37.635040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852953, 0.224684, 0.471156,
		-0.212259, -0.675330, 0.706312,
		0.476883, -0.702458, -0.528333,
		30.604328, 34.563854, 37.476540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.627609, 34.558514, 38.286476>,  <30.270510, 35.055576, 37.846375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.627609, 34.558514, 38.286476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.832163, 34.555080, 37.942753>,  <30.954895, 34.553020, 37.736519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.832163, 34.555080, 37.942753>,  <30.627609, 34.558514, 38.286476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.832163, 34.555080, 37.942753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826893, 0.277146, 0.489324,
		0.233955, -0.960789, 0.148824,
		0.511384, -0.008582, -0.859310,
		30.985579, 34.552505, 37.684959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.185093, 34.094482, 38.410313>,  <30.627609, 34.558514, 38.286476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.185093, 34.094482, 38.410313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.254768, 34.329906, 38.094524>,  <31.296574, 34.471161, 37.905052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.254768, 34.329906, 38.094524>,  <31.185093, 34.094482, 38.410313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.254768, 34.329906, 38.094524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901343, 0.227549, 0.368513,
		0.396534, -0.775770, -0.490858,
		0.174187, 0.588559, -0.789466,
		31.307024, 34.506474, 37.857685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.705658, 33.793694, 37.965702>,  <31.185093, 34.094482, 38.410313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.705658, 33.793694, 37.965702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.717743, 34.192398, 37.935894>,  <31.724993, 34.431622, 37.918007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.717743, 34.192398, 37.935894>,  <31.705658, 33.793694, 37.965702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.717743, 34.192398, 37.935894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914275, 0.002576, 0.405087,
		0.403967, -0.080372, -0.911236,
		0.030210, 0.996762, -0.074523,
		31.726807, 34.491428, 37.913536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.463352, 33.907501, 37.914600>,  <31.705658, 33.793694, 37.965702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.463352, 33.907501, 37.914600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.329750, 34.283638, 37.940536>,  <32.249588, 34.509319, 37.956097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.329750, 34.283638, 37.940536>,  <32.463352, 33.907501, 37.914600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.329750, 34.283638, 37.940536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776585, 0.235548, 0.584322,
		0.534190, 0.245515, -0.808927,
		-0.334001, 0.940340, 0.064836,
		32.229549, 34.565739, 37.959988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.942184, 34.357380, 37.615562>,  <32.463352, 33.907501, 37.914600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.942184, 34.357380, 37.615562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.742111, 34.564137, 37.893452>,  <32.622066, 34.688190, 38.060184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.742111, 34.564137, 37.893452>,  <32.942184, 34.357380, 37.615562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.742111, 34.564137, 37.893452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859287, 0.197189, 0.471956,
		0.106961, 0.833029, -0.542791,
		-0.500186, 0.516894, 0.694719,
		32.592056, 34.719204, 38.101868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.413807, 34.789146, 37.917789>,  <32.942184, 34.357380, 37.615562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.413807, 34.789146, 37.917789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.111244, 34.854309, 38.171188>,  <32.929707, 34.893406, 38.323227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.111244, 34.854309, 38.171188>,  <33.413807, 34.789146, 37.917789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.111244, 34.854309, 38.171188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634607, -0.051928, 0.771088,
		0.158514, 0.985273, -0.064105,
		-0.756404, 0.162910, 0.633493,
		32.884323, 34.903183, 38.361237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.592957, 35.447266, 38.321430>,  <33.413807, 34.789146, 37.917789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.592957, 35.447266, 38.321430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.333611, 35.215878, 38.519417>,  <33.178001, 35.077045, 38.638210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.333611, 35.215878, 38.519417>,  <33.592957, 35.447266, 38.321430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.333611, 35.215878, 38.519417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647596, -0.077214, 0.758061,
		-0.400298, 0.812040, 0.424679,
		-0.648367, -0.578471, 0.494966,
		33.139099, 35.042336, 38.667908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.582066, 35.703728, 39.033344>,  <33.592957, 35.447266, 38.321430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.582066, 35.703728, 39.033344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.432339, 35.335953, 39.081554>,  <33.342503, 35.115288, 39.110481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.432339, 35.335953, 39.081554>,  <33.582066, 35.703728, 39.033344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.432339, 35.335953, 39.081554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734150, -0.214433, 0.644238,
		-0.566489, 0.329635, 0.755269,
		-0.374317, -0.919434, 0.120527,
		33.320042, 35.060123, 39.117714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.436054, 35.636829, 39.805031>,  <33.582066, 35.703728, 39.033344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.436054, 35.636829, 39.805031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.504166, 35.290630, 39.616596>,  <33.545033, 35.082912, 39.503536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.504166, 35.290630, 39.616596>,  <33.436054, 35.636829, 39.805031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.504166, 35.290630, 39.616596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613082, -0.281219, 0.738272,
		-0.771449, -0.414531, 0.482732,
		0.170283, -0.865494, -0.471088,
		33.555252, 35.030983, 39.475269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.555092, 35.348869, 40.381672>,  <33.436054, 35.636829, 39.805031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.555092, 35.348869, 40.381672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.621944, 35.057602, 40.115788>,  <33.662056, 34.882843, 39.956257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.621944, 35.057602, 40.115788>,  <33.555092, 35.348869, 40.381672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.621944, 35.057602, 40.115788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496063, -0.520536, 0.694956,
		-0.852050, -0.445887, 0.274219,
		0.167131, -0.728167, -0.664711,
		33.672085, 34.839153, 39.916374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.349869, 34.758900, 40.692471>,  <33.555092, 35.348869, 40.381672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.349869, 34.758900, 40.692471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.597496, 34.637379, 40.402794>,  <33.746075, 34.564465, 40.228989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.597496, 34.637379, 40.402794>,  <33.349869, 34.758900, 40.692471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.597496, 34.637379, 40.402794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455270, -0.612550, 0.646151,
		-0.639909, -0.729715, -0.240897,
		0.619068, -0.303804, -0.724194,
		33.783218, 34.546238, 40.185535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.425739, 34.090939, 40.808189>,  <33.349869, 34.758900, 40.692471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.425739, 34.090939, 40.808189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.750130, 34.215256, 40.609909>,  <33.944763, 34.289845, 40.490940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.750130, 34.215256, 40.609909>,  <33.425739, 34.090939, 40.808189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.750130, 34.215256, 40.609909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578721, -0.550645, 0.601558,
		-0.085996, -0.774724, -0.626424,
		0.810979, 0.310793, -0.495702,
		33.993423, 34.308495, 40.461197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.667355, 33.522881, 40.601360>,  <33.425739, 34.090939, 40.808189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.667355, 33.522881, 40.601360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.951691, 33.802074, 40.636070>,  <34.122292, 33.969589, 40.656895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.951691, 33.802074, 40.636070>,  <33.667355, 33.522881, 40.601360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.951691, 33.802074, 40.636070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513185, -0.599051, 0.614637,
		0.480989, -0.392375, -0.784023,
		0.710838, 0.697983, 0.086776,
		34.164944, 34.011471, 40.662102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.261417, 33.073185, 40.740040>,  <33.667355, 33.522881, 40.601360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.261417, 33.073185, 40.740040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.366474, 33.438095, 40.865757>,  <34.429508, 33.657040, 40.941189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.366474, 33.438095, 40.865757>,  <34.261417, 33.073185, 40.740040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.366474, 33.438095, 40.865757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565902, -0.409460, 0.715610,
		0.781521, -0.010088, -0.623797,
		0.262639, 0.912272, 0.314293,
		34.445267, 33.711777, 40.960045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.045174, 33.052853, 40.972145>,  <34.261417, 33.073185, 40.740040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.045174, 33.052853, 40.972145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.858231, 33.364162, 41.139889>,  <34.746063, 33.550949, 41.240536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.858231, 33.364162, 41.139889>,  <35.045174, 33.052853, 40.972145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.858231, 33.364162, 41.139889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424698, -0.218389, 0.878600,
		0.775376, 0.588724, -0.228466,
		-0.467358, 0.778274, 0.419363,
		34.718021, 33.597645, 41.265697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.534760, 33.255306, 41.380730>,  <35.045174, 33.052853, 40.972145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.534760, 33.255306, 41.380730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.175331, 33.386200, 41.497681>,  <34.959675, 33.464737, 41.567852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.175331, 33.386200, 41.497681>,  <35.534760, 33.255306, 41.380730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.175331, 33.386200, 41.497681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209495, -0.265545, 0.941062,
		0.385584, 0.906865, 0.170059,
		-0.898575, 0.327232, 0.292374,
		34.905758, 33.484371, 41.585392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.646744, 33.597313, 41.998650>,  <35.534760, 33.255306, 41.380730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.646744, 33.597313, 41.998650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.251118, 33.540070, 42.012909>,  <35.013741, 33.505726, 42.021465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.251118, 33.540070, 42.012909>,  <35.646744, 33.597313, 41.998650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.251118, 33.540070, 42.012909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090066, -0.394727, 0.914373,
		-0.116781, 0.907586, 0.403300,
		-0.989065, -0.143105, 0.035646,
		34.954399, 33.497139, 42.023602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.402336, 33.950745, 42.568066>,  <35.646744, 33.597313, 41.998650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.402336, 33.950745, 42.568066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.119820, 33.677563, 42.493523>,  <34.950310, 33.513653, 42.448799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.119820, 33.677563, 42.493523>,  <35.402336, 33.950745, 42.568066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.119820, 33.677563, 42.493523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018869, -0.281311, 0.959431,
		-0.707672, 0.674120, 0.211574,
		-0.706290, -0.682954, -0.186356,
		34.907932, 33.472675, 42.437614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.923744, 34.052082, 43.115089>,  <35.402336, 33.950745, 42.568066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.923744, 34.052082, 43.115089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.839008, 33.686237, 42.977329>,  <34.788166, 33.466732, 42.894672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.839008, 33.686237, 42.977329>,  <34.923744, 34.052082, 43.115089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.839008, 33.686237, 42.977329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062907, -0.338909, 0.938714,
		-0.975278, 0.220520, 0.014258,
		-0.211837, -0.914610, -0.344402,
		34.775455, 33.411854, 42.874008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.376503, 33.790051, 43.501320>,  <34.923744, 34.052082, 43.115089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.376503, 33.790051, 43.501320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.559044, 33.477577, 43.330914>,  <34.668568, 33.290092, 43.228668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.559044, 33.477577, 43.330914>,  <34.376503, 33.790051, 43.501320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.559044, 33.477577, 43.330914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191532, -0.553801, 0.810321,
		-0.868939, -0.288197, -0.402352,
		0.456355, -0.781183, -0.426021,
		34.695950, 33.243221, 43.203106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.992535, 33.228130, 43.759224>,  <34.376503, 33.790051, 43.501320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.992535, 33.228130, 43.759224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.329018, 33.049179, 43.637756>,  <34.530907, 32.941807, 43.564877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.329018, 33.049179, 43.637756>,  <33.992535, 33.228130, 43.759224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.329018, 33.049179, 43.637756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115740, -0.697578, 0.707099,
		-0.528174, -0.559673, -0.638591,
		0.841211, -0.447382, -0.303666,
		34.581383, 32.914963, 43.546658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.845329, 32.446796, 43.609467>,  <33.992535, 33.228130, 43.759224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.845329, 32.446796, 43.609467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.233631, 32.491100, 43.694664>,  <34.466614, 32.517681, 43.745781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.233631, 32.491100, 43.694664>,  <33.845329, 32.446796, 43.609467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.233631, 32.491100, 43.694664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113576, -0.569750, 0.813932,
		0.211501, -0.814320, -0.540509,
		0.970756, 0.110758, 0.212990,
		34.524857, 32.524326, 43.758560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.020203, 31.917816, 43.910549>,  <33.845329, 32.446796, 43.609467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.020203, 31.917816, 43.910549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.350288, 32.123535, 44.003941>,  <34.548340, 32.246967, 44.059975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.350288, 32.123535, 44.003941>,  <34.020203, 31.917816, 43.910549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.350288, 32.123535, 44.003941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101257, -0.541391, 0.834651,
		0.555663, -0.665128, -0.498842,
		0.825219, 0.514296, 0.233482,
		34.597855, 32.277824, 44.073986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.553871, 31.410339, 44.113663>,  <34.020203, 31.917816, 43.910549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.553871, 31.410339, 44.113663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.628197, 31.765186, 44.282658>,  <34.672791, 31.978094, 44.384056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.628197, 31.765186, 44.282658>,  <34.553871, 31.410339, 44.113663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.628197, 31.765186, 44.282658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069145, -0.440718, 0.894979,
		0.980150, -0.137083, -0.143230,
		0.185811, 0.887117, 0.422491,
		34.683941, 32.031322, 44.409405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.033833, 31.200132, 44.628410>,  <34.553871, 31.410339, 44.113663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.033833, 31.200132, 44.628410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.903851, 31.563604, 44.733257>,  <34.825863, 31.781687, 44.796165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.903851, 31.563604, 44.733257>,  <35.033833, 31.200132, 44.628410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.903851, 31.563604, 44.733257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022499, -0.284510, 0.958409,
		0.945463, 0.305540, 0.112896,
		-0.324953, 0.908680, 0.262119,
		34.806366, 31.836208, 44.811893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.469044, 31.289968, 45.200653>,  <35.033833, 31.200132, 44.628410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.469044, 31.289968, 45.200653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.170925, 31.555340, 45.227177>,  <34.992054, 31.714563, 45.243092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.170925, 31.555340, 45.227177>,  <35.469044, 31.289968, 45.200653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.170925, 31.555340, 45.227177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148250, -0.261863, 0.953651,
		0.650044, 0.700920, 0.293519,
		-0.745295, 0.663429, 0.066311,
		34.947338, 31.754368, 45.247070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.588562, 31.706831, 45.800076>,  <35.469044, 31.289968, 45.200653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.588562, 31.706831, 45.800076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.198765, 31.690105, 45.711876>,  <34.964886, 31.680069, 45.658955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.198765, 31.690105, 45.711876>,  <35.588562, 31.706831, 45.800076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.198765, 31.690105, 45.711876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208925, -0.189799, 0.959337,
		-0.081966, 0.980932, 0.176221,
		-0.974491, -0.041816, -0.220498,
		34.906418, 31.677561, 45.645725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.289684, 32.095173, 46.246788>,  <35.588562, 31.706831, 45.800076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.289684, 32.095173, 46.246788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.010651, 31.836470, 46.123447>,  <34.843231, 31.681248, 46.049442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.010651, 31.836470, 46.123447>,  <35.289684, 32.095173, 46.246788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.010651, 31.836470, 46.123447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270797, -0.160450, 0.949171,
		-0.663355, 0.745630, -0.063212,
		-0.697588, -0.646755, -0.308350,
		34.801373, 31.642443, 46.030941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.772907, 32.210400, 46.609676>,  <35.289684, 32.095173, 46.246788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.772907, 32.210400, 46.609676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.665730, 31.853140, 46.465187>,  <34.601421, 31.638783, 46.378494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.665730, 31.853140, 46.465187>,  <34.772907, 32.210400, 46.609676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.665730, 31.853140, 46.465187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299889, -0.278988, 0.912268,
		-0.915572, 0.352764, -0.193094,
		-0.267944, -0.893153, -0.361224,
		34.585346, 31.585194, 46.356819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.113712, 32.100613, 46.904091>,  <34.772907, 32.210400, 46.609676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.113712, 32.100613, 46.904091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.265533, 31.745264, 46.800758>,  <34.356625, 31.532055, 46.738758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.265533, 31.745264, 46.800758>,  <34.113712, 32.100613, 46.904091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.265533, 31.745264, 46.800758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217058, -0.356934, 0.908561,
		-0.899349, -0.288771, -0.328303,
		0.379549, -0.888375, -0.258328,
		34.379398, 31.478752, 46.723259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.688694, 31.619759, 47.313194>,  <34.113712, 32.100613, 46.904091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.688694, 31.619759, 47.313194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.984524, 31.384159, 47.182892>,  <34.162022, 31.242800, 47.104710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.984524, 31.384159, 47.182892>,  <33.688694, 31.619759, 47.313194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.984524, 31.384159, 47.182892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060523, -0.423818, 0.903723,
		-0.670353, -0.688082, -0.277795,
		0.739570, -0.589001, -0.325752,
		34.206394, 31.207458, 47.085167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.529289, 30.923132, 47.533794>,  <33.688694, 31.619759, 47.313194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.529289, 30.923132, 47.533794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.925541, 30.921787, 47.479183>,  <34.163292, 30.920980, 47.446419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.925541, 30.921787, 47.479183>,  <33.529289, 30.923132, 47.533794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.925541, 30.921787, 47.479183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128469, -0.316200, 0.939954,
		-0.046329, -0.948687, -0.312805,
		0.990631, -0.003361, -0.136526,
		34.222729, 30.920778, 47.438225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.808716, 30.156523, 47.730061>,  <33.529289, 30.923132, 47.533794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.808716, 30.156523, 47.730061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.111607, 30.414875, 47.768940>,  <34.293339, 30.569887, 47.792267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.111607, 30.414875, 47.768940>,  <33.808716, 30.156523, 47.730061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.111607, 30.414875, 47.768940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207538, -0.379034, 0.901810,
		0.619306, -0.662699, -0.421058,
		0.757224, 0.645882, 0.097203,
		34.338776, 30.608639, 47.798100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.437626, 29.779821, 47.769390>,  <33.808716, 30.156523, 47.730061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.437626, 29.779821, 47.769390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.456264, 30.136829, 47.948830>,  <34.467449, 30.351034, 48.056492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.456264, 30.136829, 47.948830>,  <34.437626, 29.779821, 47.769390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.456264, 30.136829, 47.948830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205863, -0.448026, 0.869996,
		0.977471, 0.051811, -0.204613,
		0.046596, 0.892518, 0.448598,
		34.470242, 30.404585, 48.083408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.810951, 29.562704, 48.186409>,  <34.437626, 29.779821, 47.769390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.810951, 29.562704, 48.186409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.742458, 29.936193, 48.312168>,  <34.701363, 30.160286, 48.387623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.742458, 29.936193, 48.312168>,  <34.810951, 29.562704, 48.186409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.742458, 29.936193, 48.312168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171529, -0.285982, 0.942758,
		0.970184, 0.215357, -0.111192,
		-0.171231, 0.933721, 0.314396,
		34.691090, 30.216311, 48.406487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.345451, 29.774702, 48.622864>,  <34.810951, 29.562704, 48.186409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.345451, 29.774702, 48.622864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.046505, 30.011669, 48.743191>,  <34.867138, 30.153849, 48.815388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.046505, 30.011669, 48.743191>,  <35.345451, 29.774702, 48.622864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.046505, 30.011669, 48.743191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214418, -0.213485, 0.953126,
		0.628868, 0.776832, 0.032526,
		-0.747362, 0.592416, 0.300820,
		34.822296, 30.189394, 48.833435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.499329, 29.942331, 49.324329>,  <35.345451, 29.774702, 48.622864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.499329, 29.942331, 49.324329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.112206, 30.041965, 49.309872>,  <34.879932, 30.101746, 49.301197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.112206, 30.041965, 49.309872>,  <35.499329, 29.942331, 49.324329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.112206, 30.041965, 49.309872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136633, -0.399336, 0.906566,
		0.211378, 0.882320, 0.420513,
		-0.967807, 0.249084, -0.036143,
		34.821865, 30.116692, 49.299030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.308979, 30.270617, 50.002872>,  <35.499329, 29.942331, 49.324329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.308979, 30.270617, 50.002872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.980000, 30.109209, 49.842499>,  <34.782612, 30.012365, 49.746273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.980000, 30.109209, 49.842499>,  <35.308979, 30.270617, 50.002872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.980000, 30.109209, 49.842499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151050, -0.524606, 0.837838,
		-0.548417, 0.749641, 0.370510,
		-0.822449, -0.403519, -0.400937,
		34.733265, 29.988153, 49.722218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.929573, 30.156872, 50.571995>,  <35.308979, 30.270617, 50.002872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.929573, 30.156872, 50.571995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.775223, 29.912209, 50.295742>,  <34.682613, 29.765411, 50.129990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.775223, 29.912209, 50.295742>,  <34.929573, 30.156872, 50.571995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.775223, 29.912209, 50.295742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118410, -0.709587, 0.694598,
		-0.914921, 0.349806, 0.201384,
		-0.385874, -0.611656, -0.690636,
		34.659462, 29.728712, 50.088551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.381554, 29.943586, 50.904720>,  <34.929573, 30.156872, 50.571995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.381554, 29.943586, 50.904720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.451328, 29.664515, 50.626781>,  <34.493195, 29.497072, 50.460018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.451328, 29.664515, 50.626781>,  <34.381554, 29.943586, 50.904720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.451328, 29.664515, 50.626781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032994, -0.709414, 0.704019,
		-0.984115, -0.099881, -0.146767,
		0.174437, -0.697678, -0.694850,
		34.503658, 29.455212, 50.418327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.838306, 29.442972, 50.987240>,  <34.381554, 29.943586, 50.904720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.838306, 29.442972, 50.987240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.168781, 29.279617, 50.831993>,  <34.367065, 29.181604, 50.738846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.168781, 29.279617, 50.831993>,  <33.838306, 29.442972, 50.987240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.168781, 29.279617, 50.831993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136921, -0.813776, 0.564819,
		-0.546502, -0.413506, -0.728250,
		0.826189, -0.408388, -0.388112,
		34.416637, 29.157101, 50.715561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.705833, 28.840530, 50.679489>,  <33.838306, 29.442972, 50.987240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.705833, 28.840530, 50.679489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.069431, 28.861664, 50.844868>,  <34.287590, 28.874344, 50.944096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.069431, 28.861664, 50.844868>,  <33.705833, 28.840530, 50.679489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.069431, 28.861664, 50.844868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206700, -0.804228, 0.557218,
		0.361946, -0.591967, -0.720118,
		0.908994, 0.052834, 0.413447,
		34.342129, 28.877514, 50.968903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.066051, 28.135695, 50.700729>,  <33.705833, 28.840530, 50.679489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.066051, 28.135695, 50.700729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.209297, 28.377859, 50.985050>,  <34.295242, 28.523157, 51.155643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.209297, 28.377859, 50.985050>,  <34.066051, 28.135695, 50.700729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.209297, 28.377859, 50.985050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219221, -0.685486, 0.694299,
		0.907578, -0.404458, -0.112761,
		0.358111, 0.605411, 0.710798,
		34.316730, 28.559483, 51.198288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.551605, 27.719326, 51.090885>,  <34.066051, 28.135695, 50.700729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.551605, 27.719326, 51.090885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.402164, 28.012299, 51.318554>,  <34.312500, 28.188084, 51.455154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.402164, 28.012299, 51.318554>,  <34.551605, 27.719326, 51.090885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.402164, 28.012299, 51.318554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107488, -0.575289, 0.810857,
		0.921339, 0.364120, 0.136203,
		-0.373605, 0.732434, 0.569175,
		34.290085, 28.232029, 51.489307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.028606, 27.840149, 51.652988>,  <34.551605, 27.719326, 51.090885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.028606, 27.840149, 51.652988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.659985, 27.927767, 51.781208>,  <34.438812, 27.980337, 51.858139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.659985, 27.927767, 51.781208>,  <35.028606, 27.840149, 51.652988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.659985, 27.927767, 51.781208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167010, -0.521685, 0.836632,
		0.350487, 0.824539, 0.444179,
		-0.921557, 0.219046, 0.320550,
		34.383518, 27.993481, 51.877373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.676991, 28.092793, 51.561211>,  <35.028606, 27.840149, 51.652988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.676991, 28.092793, 51.561211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.517559, 27.999071, 51.206532>,  <35.421902, 27.942839, 50.993725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.517559, 27.999071, 51.206532>,  <35.676991, 28.092793, 51.561211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.517559, 27.999071, 51.206532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909829, -0.222806, -0.350099,
		-0.115533, -0.946288, 0.301979,
		-0.398577, -0.234301, -0.886701,
		35.397987, 27.928782, 50.940521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.997627, 27.503565, 51.304131>,  <35.676991, 28.092793, 51.561211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.997627, 27.503565, 51.304131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.853218, 27.713478, 50.995777>,  <35.766575, 27.839426, 50.810764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.853218, 27.713478, 50.995777>,  <35.997627, 27.503565, 51.304131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.853218, 27.713478, 50.995777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924473, 0.092779, -0.369787,
		-0.122536, -0.846164, -0.518644,
		-0.361020, 0.524784, -0.770887,
		35.744911, 27.870913, 50.764511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.045418, 26.762295, 51.325176>,  <35.997627, 27.503565, 51.304131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.045418, 26.762295, 51.325176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.831875, 26.796667, 50.988697>,  <35.703751, 26.817289, 50.786808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.831875, 26.796667, 50.988697>,  <36.045418, 26.762295, 51.325176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.831875, 26.796667, 50.988697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648265, -0.597142, -0.472412,
		-0.542908, -0.797520, 0.263084,
		-0.533856, 0.085928, -0.841198,
		35.671719, 26.822447, 50.736336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.903397, 26.044428, 51.045551>,  <36.045418, 26.762295, 51.325176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.903397, 26.044428, 51.045551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.894970, 26.311489, 50.747883>,  <35.889912, 26.471725, 50.569283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.894970, 26.311489, 50.747883>,  <35.903397, 26.044428, 51.045551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.894970, 26.311489, 50.747883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650516, -0.556072, -0.517313,
		-0.759200, -0.494995, -0.422605,
		-0.021069, 0.667656, -0.744172,
		35.888649, 26.511786, 50.524632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.657047, 25.666430, 50.392113>,  <35.903397, 26.044428, 51.045551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.657047, 25.666430, 50.392113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.925556, 25.961687, 50.365181>,  <36.086662, 26.138842, 50.349022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.925556, 25.961687, 50.365181>,  <35.657047, 25.666430, 50.392113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.925556, 25.961687, 50.365181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636569, -0.620659, -0.457779,
		-0.379693, 0.264439, -0.886513,
		0.671277, 0.738142, -0.067326,
		36.126938, 26.183130, 50.344982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.013988, 25.788963, 50.694870>,  <35.657047, 25.666430, 50.392113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.013988, 25.788963, 50.694870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.877266, 26.162079, 50.649139>,  <34.795231, 26.385948, 50.621700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.877266, 26.162079, 50.649139>,  <35.013988, 25.788963, 50.694870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.877266, 26.162079, 50.649139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282345, -0.217961, -0.934224,
		-0.896353, -0.287046, 0.337869,
		-0.341808, 0.932790, -0.114324,
		34.774723, 26.441916, 50.614841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.494564, 25.736851, 50.190109>,  <35.013988, 25.788963, 50.694870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.494564, 25.736851, 50.190109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.579384, 26.126356, 50.223145>,  <34.630276, 26.360060, 50.242966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.579384, 26.126356, 50.223145>,  <34.494564, 25.736851, 50.190109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.579384, 26.126356, 50.223145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283938, 0.142254, -0.948231,
		-0.935101, 0.177621, 0.306653,
		0.212048, 0.973763, 0.082588,
		34.642998, 26.418486, 50.247921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.942608, 26.038633, 49.784340>,  <34.494564, 25.736851, 50.190109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.942608, 26.038633, 49.784340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.230103, 26.313833, 49.824490>,  <34.402599, 26.478952, 49.848579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.230103, 26.313833, 49.824490>,  <33.942608, 26.038633, 49.784340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.230103, 26.313833, 49.824490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196823, 0.339792, -0.919675,
		-0.666843, 0.641247, 0.379635,
		0.718736, 0.688000, 0.100376,
		34.445724, 26.520233, 49.854603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.645908, 26.749954, 49.567547>,  <33.942608, 26.038633, 49.784340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.645908, 26.749954, 49.567547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.041492, 26.724134, 49.514191>,  <34.278843, 26.708643, 49.482178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.041492, 26.724134, 49.514191>,  <33.645908, 26.749954, 49.567547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.041492, 26.724134, 49.514191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126520, 0.100879, -0.986821,
		0.077157, 0.992802, 0.091598,
		0.988959, -0.064551, -0.133393,
		34.338181, 26.704769, 49.474174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.763561, 27.246418, 49.089787>,  <33.645908, 26.749954, 49.567547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.763561, 27.246418, 49.089787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.112846, 27.051861, 49.077618>,  <34.322418, 26.935127, 49.070316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.112846, 27.051861, 49.077618>,  <33.763561, 27.246418, 49.089787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.112846, 27.051861, 49.077618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070885, 0.188518, -0.979508,
		0.482161, 0.853160, 0.199094,
		0.873210, -0.486394, -0.030420,
		34.374809, 26.905943, 49.068493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.158012, 27.648932, 48.597511>,  <33.763561, 27.246418, 49.089787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.158012, 27.648932, 48.597511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.362957, 27.306475, 48.624359>,  <34.485924, 27.101000, 48.640469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.362957, 27.306475, 48.624359>,  <34.158012, 27.648932, 48.597511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.362957, 27.306475, 48.624359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225192, 0.058523, -0.972555,
		0.828719, 0.513414, 0.222782,
		0.512361, -0.856143, 0.067118,
		34.516666, 27.049631, 48.644493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.771008, 27.794413, 48.264393>,  <34.158012, 27.648932, 48.597511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.771008, 27.794413, 48.264393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.726379, 27.396919, 48.261726>,  <34.699600, 27.158422, 48.260128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.726379, 27.396919, 48.261726>,  <34.771008, 27.794413, 48.264393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.726379, 27.396919, 48.261726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297753, -0.027030, -0.954260,
		0.948100, -0.108456, 0.298903,
		-0.111575, -0.993734, -0.006666,
		34.692905, 27.098799, 48.259727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.230080, 27.612415, 47.755348>,  <34.771008, 27.794413, 48.264393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.230080, 27.612415, 47.755348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.005180, 27.283045, 47.785931>,  <34.870239, 27.085423, 47.804279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.005180, 27.283045, 47.785931>,  <35.230080, 27.612415, 47.755348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.005180, 27.283045, 47.785931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017841, -0.104509, -0.994364,
		0.826774, -0.557718, 0.073451,
		-0.562251, -0.823425, 0.076455,
		34.836506, 27.036018, 47.808868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.546219, 27.165672, 47.397484>,  <35.230080, 27.612415, 47.755348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.546219, 27.165672, 47.397484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.156921, 27.077263, 47.422630>,  <34.923344, 27.024218, 47.437717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.156921, 27.077263, 47.422630>,  <35.546219, 27.165672, 47.397484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.156921, 27.077263, 47.422630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084214, 0.088540, -0.992506,
		0.213802, -0.971241, -0.104784,
		-0.973240, -0.221024, 0.062862,
		34.864948, 27.010956, 47.441490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.417877, 26.577812, 46.922638>,  <35.546219, 27.165672, 47.397484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.417877, 26.577812, 46.922638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.071133, 26.775017, 46.952263>,  <34.863087, 26.893339, 46.970039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.071133, 26.775017, 46.952263>,  <35.417877, 26.577812, 46.922638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.071133, 26.775017, 46.952263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001053, 0.150368, -0.988629,
		-0.498543, -0.856930, -0.130868,
		-0.866864, 0.493012, 0.074062,
		34.811073, 26.922920, 46.974483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.892960, 26.315434, 46.366245>,  <35.417877, 26.577812, 46.922638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.892960, 26.315434, 46.366245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.770317, 26.677002, 46.485527>,  <34.696732, 26.893942, 46.557095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.770317, 26.677002, 46.485527>,  <34.892960, 26.315434, 46.366245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.770317, 26.677002, 46.485527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164599, 0.258218, -0.951962,
		-0.937497, -0.340961, 0.069613,
		-0.306606, 0.903919, 0.298200,
		34.678337, 26.948177, 46.574986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.305470, 26.483398, 45.906338>,  <34.892960, 26.315434, 46.366245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.305470, 26.483398, 45.906338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.396721, 26.833319, 46.077305>,  <34.451469, 27.043270, 46.179886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.396721, 26.833319, 46.077305>,  <34.305470, 26.483398, 45.906338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.396721, 26.833319, 46.077305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133745, 0.462985, -0.876217,
		-0.964402, 0.142724, 0.222619,
		0.228126, 0.874800, 0.427415,
		34.465160, 27.095758, 46.205528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.814781, 26.935726, 45.690163>,  <34.305470, 26.483398, 45.906338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.814781, 26.935726, 45.690163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.125656, 27.162369, 45.799664>,  <34.312180, 27.298355, 45.865364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.125656, 27.162369, 45.799664>,  <33.814781, 26.935726, 45.690163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.125656, 27.162369, 45.799664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190410, 0.626381, -0.755904,
		-0.599773, 0.535352, 0.594701,
		0.777185, 0.566608, 0.273750,
		34.358810, 27.332352, 45.881790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.634064, 27.671515, 45.753639>,  <33.814781, 26.935726, 45.690163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.634064, 27.671515, 45.753639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.028397, 27.724148, 45.712032>,  <34.264996, 27.755728, 45.687069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.028397, 27.724148, 45.712032>,  <33.634064, 27.671515, 45.753639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.028397, 27.724148, 45.712032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164268, 0.632083, -0.757289,
		-0.033902, 0.763647, 0.644744,
		0.985833, 0.131585, -0.104014,
		34.324146, 27.763622, 45.680828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.764755, 28.376020, 45.669285>,  <33.634064, 27.671515, 45.753639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.764755, 28.376020, 45.669285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.086086, 28.200726, 45.507988>,  <34.278885, 28.095549, 45.411209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.086086, 28.200726, 45.507988>,  <33.764755, 28.376020, 45.669285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.086086, 28.200726, 45.507988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016779, 0.660195, -0.750907,
		0.595295, 0.609993, 0.523003,
		0.803332, -0.438236, -0.403246,
		34.327087, 28.069254, 45.387012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.154163, 28.940544, 45.378811>,  <33.764755, 28.376020, 45.669285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.154163, 28.940544, 45.378811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.278442, 28.615046, 45.182327>,  <34.353012, 28.419746, 45.064438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.278442, 28.615046, 45.182327>,  <34.154163, 28.940544, 45.378811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.278442, 28.615046, 45.182327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232979, 0.435822, -0.869356,
		0.921513, 0.384550, -0.054175,
		0.310700, -0.813745, -0.491207,
		34.371651, 28.370922, 45.034966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.503571, 29.263321, 44.845837>,  <34.154163, 28.940544, 45.378811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.503571, 29.263321, 44.845837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.428497, 28.885775, 44.737106>,  <34.383453, 28.659246, 44.671867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.428497, 28.885775, 44.737106>,  <34.503571, 29.263321, 44.845837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.428497, 28.885775, 44.737106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126392, 0.297650, -0.946271,
		0.974064, -0.143243, -0.175162,
		-0.187684, -0.943867, -0.271826,
		34.372192, 28.602615, 44.655560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.914425, 29.167337, 44.306877>,  <34.503571, 29.263321, 44.845837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.914425, 29.167337, 44.306877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.648022, 28.870806, 44.273735>,  <34.488178, 28.692886, 44.253849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.648022, 28.870806, 44.273735>,  <34.914425, 29.167337, 44.306877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.648022, 28.870806, 44.273735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266632, 0.340321, -0.901714,
		0.696662, -0.578459, -0.424319,
		-0.666010, -0.741328, -0.082853,
		34.448219, 28.648407, 44.248878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.016727, 28.777866, 43.642956>,  <34.914425, 29.167337, 44.306877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.016727, 28.777866, 43.642956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.633167, 28.728848, 43.745327>,  <34.403030, 28.699436, 43.806751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.633167, 28.728848, 43.745327>,  <35.016727, 28.777866, 43.642956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.633167, 28.728848, 43.745327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280617, 0.275816, -0.919336,
		0.042072, -0.953367, -0.298868,
		-0.958897, -0.122546, 0.255927,
		34.345497, 28.692083, 43.822105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.706188, 28.396681, 43.050110>,  <35.016727, 28.777866, 43.642956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.706188, 28.396681, 43.050110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.415096, 28.590649, 43.244125>,  <34.240440, 28.707029, 43.360535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.415096, 28.590649, 43.244125>,  <34.706188, 28.396681, 43.050110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.415096, 28.590649, 43.244125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295715, 0.416242, -0.859823,
		-0.618839, -0.769151, -0.159513,
		-0.727730, 0.484922, 0.485037,
		34.196777, 28.736126, 43.389637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.154560, 28.618599, 42.519608>,  <34.706188, 28.396681, 43.050110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.154560, 28.618599, 42.519608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.028336, 28.832232, 42.833340>,  <33.952599, 28.960411, 43.021580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.028336, 28.832232, 42.833340>,  <34.154560, 28.618599, 42.519608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.028336, 28.832232, 42.833340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477430, 0.624960, -0.617646,
		-0.820049, -0.569369, 0.057773,
		-0.315563, 0.534082, 0.784332,
		33.933666, 28.992456, 43.068638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.452415, 28.686968, 42.281132>,  <34.154560, 28.618599, 42.519608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.452415, 28.686968, 42.281132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.559364, 28.954603, 42.558502>,  <33.623535, 29.115185, 42.724922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.559364, 28.954603, 42.558502>,  <33.452415, 28.686968, 42.281132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.559364, 28.954603, 42.558502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349287, 0.737977, -0.577398,
		-0.898059, -0.087824, 0.431018,
		0.267372, 0.669087, 0.693423,
		33.639576, 29.155329, 42.766529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.949780, 29.145611, 42.334423>,  <33.452415, 28.686968, 42.281132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.949780, 29.145611, 42.334423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.263332, 29.337227, 42.492435>,  <33.451462, 29.452196, 42.587242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.263332, 29.337227, 42.492435>,  <32.949780, 29.145611, 42.334423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.263332, 29.337227, 42.492435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159797, 0.770429, -0.617175,
		-0.599997, 0.420666, 0.680473,
		0.783880, 0.479041, 0.395034,
		33.498497, 29.480940, 42.610947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.643696, 29.797632, 42.360519>,  <32.949780, 29.145611, 42.334423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.643696, 29.797632, 42.360519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.039810, 29.826376, 42.408123>,  <33.277481, 29.843622, 42.436687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.039810, 29.826376, 42.408123>,  <32.643696, 29.797632, 42.360519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.039810, 29.826376, 42.408123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010409, 0.891982, -0.451951,
		-0.138633, 0.446324, 0.884068,
		0.990289, 0.071857, 0.119012,
		33.336899, 29.847933, 42.443829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.743912, 30.529686, 42.473484>,  <32.643696, 29.797632, 42.360519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.743912, 30.529686, 42.473484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.074306, 30.342344, 42.348022>,  <33.272545, 30.229939, 42.272743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.074306, 30.342344, 42.348022>,  <32.743912, 30.529686, 42.473484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.074306, 30.342344, 42.348022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238504, 0.794568, -0.558371,
		0.510738, 0.386401, 0.768011,
		0.825992, -0.468355, -0.313658,
		33.322105, 30.201838, 42.253925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.185341, 31.108778, 42.451447>,  <32.743912, 30.529686, 42.473484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.185341, 31.108778, 42.451447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.328777, 30.827505, 42.205864>,  <33.414841, 30.658741, 42.058514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.328777, 30.827505, 42.205864>,  <33.185341, 31.108778, 42.451447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.328777, 30.827505, 42.205864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088245, 0.680291, -0.727611,
		0.929313, 0.206738, 0.306000,
		0.358593, -0.703181, -0.613960,
		33.436356, 30.616550, 42.021675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.667553, 31.421595, 42.055447>,  <33.185341, 31.108778, 42.451447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.667553, 31.421595, 42.055447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.581654, 31.096006, 41.839546>,  <33.530113, 30.900654, 41.710007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.581654, 31.096006, 41.839546>,  <33.667553, 31.421595, 42.055447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.581654, 31.096006, 41.839546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043194, 0.544189, -0.837850,
		0.975714, -0.203240, -0.081704,
		-0.214747, -0.813973, -0.539752,
		33.517231, 30.851814, 41.677620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.067047, 31.441086, 41.443966>,  <33.667553, 31.421595, 42.055447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.067047, 31.441086, 41.443966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.792320, 31.172781, 41.331989>,  <33.627483, 31.011799, 41.264805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.792320, 31.172781, 41.331989>,  <34.067047, 31.441086, 41.443966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.792320, 31.172781, 41.331989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108597, 0.475528, -0.872972,
		0.718674, -0.569170, -0.399442,
		-0.686815, -0.670760, -0.279939,
		33.586277, 30.971554, 41.248009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.253193, 31.197243, 40.815948>,  <34.067047, 31.441086, 41.443966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.253193, 31.197243, 40.815948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.857338, 31.140356, 40.823887>,  <33.619823, 31.106224, 40.828651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.857338, 31.140356, 40.823887>,  <34.253193, 31.197243, 40.815948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.857338, 31.140356, 40.823887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052145, 0.227156, -0.972462,
		0.133790, -0.963419, -0.232217,
		-0.989637, -0.142214, 0.019846,
		33.560448, 31.097691, 40.829842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.183620, 30.820456, 40.218170>,  <34.253193, 31.197243, 40.815948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.183620, 30.820456, 40.218170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.823513, 30.969185, 40.308727>,  <33.607449, 31.058422, 40.363064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.823513, 30.969185, 40.308727>,  <34.183620, 30.820456, 40.218170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.823513, 30.969185, 40.308727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173454, 0.170609, -0.969952,
		-0.399277, -0.912491, -0.089101,
		-0.900273, 0.371824, 0.226395,
		33.553432, 31.080732, 40.376644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.711811, 30.475952, 39.800915>,  <34.183620, 30.820456, 40.218170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.711811, 30.475952, 39.800915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.552940, 30.834846, 39.878082>,  <33.457619, 31.050182, 39.924381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.552940, 30.834846, 39.878082>,  <33.711811, 30.475952, 39.800915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.552940, 30.834846, 39.878082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162406, 0.138177, -0.977001,
		-0.903256, -0.419377, 0.090835,
		-0.397180, 0.897235, 0.192919,
		33.433784, 31.104017, 39.935959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.021027, 30.395515, 39.673286>,  <33.711811, 30.475952, 39.800915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.021027, 30.395515, 39.673286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.098537, 30.786814, 39.643669>,  <33.145042, 31.021593, 39.625900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.098537, 30.786814, 39.643669>,  <33.021027, 30.395515, 39.673286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.098537, 30.786814, 39.643669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402033, 0.010340, -0.915567,
		-0.894886, 0.207181, 0.395292,
		0.193775, 0.978248, -0.074040,
		33.156670, 31.080288, 39.621456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.538967, 30.634693, 39.181805>,  <33.021027, 30.395515, 39.673286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.538967, 30.634693, 39.181805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.798553, 30.937214, 39.214916>,  <32.954304, 31.118727, 39.234783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.798553, 30.937214, 39.214916>,  <32.538967, 30.634693, 39.181805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.798553, 30.937214, 39.214916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298302, 0.353026, -0.886786,
		-0.699899, 0.550801, 0.454708,
		0.648966, 0.756301, 0.082778,
		32.993244, 31.164104, 39.239750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.143101, 31.128189, 39.089993>,  <32.538967, 30.634693, 39.181805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.143101, 31.128189, 39.089993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.504887, 31.255396, 38.976288>,  <32.721958, 31.331720, 38.908066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.504887, 31.255396, 38.976288>,  <32.143101, 31.128189, 39.089993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.504887, 31.255396, 38.976288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344905, 0.153172, -0.926056,
		-0.250959, 0.935630, 0.248224,
		0.904467, 0.318016, -0.284264,
		32.776226, 31.350801, 38.891010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.086449, 31.823736, 38.756447>,  <32.143101, 31.128189, 39.089993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.086449, 31.823736, 38.756447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.419632, 31.658148, 38.609581>,  <32.619541, 31.558794, 38.521461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.419632, 31.658148, 38.609581>,  <32.086449, 31.823736, 38.756447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.419632, 31.658148, 38.609581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330343, 0.160295, -0.930150,
		0.443912, 0.896065, -0.003234,
		0.832956, -0.413973, -0.367166,
		32.669518, 31.533957, 38.499432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.980354, 31.990017, 38.046566>,  <32.086449, 31.823736, 38.756447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.980354, 31.990017, 38.046566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.289467, 31.736250, 38.039314>,  <32.474934, 31.583990, 38.034966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.289467, 31.736250, 38.039314>,  <31.980354, 31.990017, 38.046566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.289467, 31.736250, 38.039314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157336, -0.163825, -0.973862,
		0.614864, 0.755432, -0.226417,
		0.772779, -0.634416, -0.018127,
		32.521301, 31.545925, 38.033875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.376095, 32.219379, 37.489635>,  <31.980354, 31.990017, 38.046566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.376095, 32.219379, 37.489635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.470531, 31.834621, 37.544811>,  <32.527195, 31.603767, 37.577919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.470531, 31.834621, 37.544811>,  <32.376095, 32.219379, 37.489635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.470531, 31.834621, 37.544811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034963, -0.150272, -0.988026,
		0.971102, 0.228441, -0.069109,
		0.236091, -0.961890, 0.137943,
		32.541359, 31.546055, 37.586193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.873341, 32.070438, 36.971287>,  <32.376095, 32.219379, 37.489635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.873341, 32.070438, 36.971287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.667572, 31.749165, 37.091461>,  <32.544109, 31.556400, 37.163567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.667572, 31.749165, 37.091461>,  <32.873341, 32.070438, 36.971287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.667572, 31.749165, 37.091461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368245, -0.109496, -0.923259,
		0.774443, -0.585582, -0.239441,
		-0.514426, -0.803184, 0.300436,
		32.513245, 31.508209, 37.181591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.853912, 31.571520, 36.384331>,  <32.873341, 32.070438, 36.971287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.853912, 31.571520, 36.384331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.558929, 31.470110, 36.634731>,  <32.381939, 31.409264, 36.784973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.558929, 31.470110, 36.634731>,  <32.853912, 31.571520, 36.384331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.558929, 31.470110, 36.634731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612851, -0.138346, -0.777994,
		0.283848, -0.957384, -0.053350,
		-0.737458, -0.253527, 0.626002,
		32.337692, 31.394053, 36.822533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.529972, 31.735407, 36.351067>,  <32.853912, 31.571520, 36.384331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.529972, 31.735407, 36.351067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.814796, 31.646301, 36.084732>,  <33.985691, 31.592838, 35.924931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.814796, 31.646301, 36.084732>,  <33.529972, 31.735407, 36.351067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.814796, 31.646301, 36.084732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537356, -0.437465, 0.721022,
		-0.451898, -0.871206, -0.191800,
		0.712065, -0.222764, -0.665838,
		34.028416, 31.579472, 35.884979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.492893, 31.020985, 36.155437>,  <33.529972, 31.735407, 36.351067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.492893, 31.020985, 36.155437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.855968, 31.185928, 36.124275>,  <34.073814, 31.284895, 36.105579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.855968, 31.185928, 36.124275>,  <33.492893, 31.020985, 36.155437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.855968, 31.185928, 36.124275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363659, -0.680258, 0.636397,
		0.209431, -0.605977, -0.767418,
		0.907684, 0.412360, -0.077901,
		34.128273, 31.309637, 36.100906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.940979, 30.508467, 36.093872>,  <33.492893, 31.020985, 36.155437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.940979, 30.508467, 36.093872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.165199, 30.802549, 36.246319>,  <34.299732, 30.978998, 36.337788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.165199, 30.802549, 36.246319>,  <33.940979, 30.508467, 36.093872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.165199, 30.802549, 36.246319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333854, -0.621798, 0.708455,
		0.757839, -0.269890, -0.594003,
		0.560555, 0.735205, 0.381119,
		34.333366, 31.023111, 36.360653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.519085, 30.167379, 36.176224>,  <33.940979, 30.508467, 36.093872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.519085, 30.167379, 36.176224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.623173, 30.505590, 36.362717>,  <34.685627, 30.708517, 36.474613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.623173, 30.505590, 36.362717>,  <34.519085, 30.167379, 36.176224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.623173, 30.505590, 36.362717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678292, -0.503730, 0.534954,
		0.687171, 0.177033, -0.704595,
		0.260222, 0.845527, 0.466229,
		34.701241, 30.759249, 36.502586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.181770, 30.133913, 36.098801>,  <34.519085, 30.167379, 36.176224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.181770, 30.133913, 36.098801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.055832, 30.349791, 36.411110>,  <34.980270, 30.479317, 36.598495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.055832, 30.349791, 36.411110>,  <35.181770, 30.133913, 36.098801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.055832, 30.349791, 36.411110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494340, -0.608988, 0.620292,
		0.810248, 0.581261, -0.075056,
		-0.314843, 0.539694, 0.780772,
		34.961380, 30.511698, 36.645340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.736591, 30.236328, 36.325306>,  <35.181770, 30.133913, 36.098801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.736591, 30.236328, 36.325306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.478935, 30.295303, 36.625534>,  <35.324341, 30.330688, 36.805672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.478935, 30.295303, 36.625534>,  <35.736591, 30.236328, 36.325306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.478935, 30.295303, 36.625534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592940, -0.523654, 0.611727,
		0.483228, 0.839076, 0.249883,
		-0.644138, 0.147438, 0.750566,
		35.285694, 30.339535, 36.850704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.061214, 30.544817, 36.908592>,  <35.736591, 30.236328, 36.325306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.061214, 30.544817, 36.908592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.749924, 30.375578, 37.094215>,  <35.563148, 30.274035, 37.205589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.749924, 30.375578, 37.094215>,  <36.061214, 30.544817, 36.908592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.749924, 30.375578, 37.094215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588447, -0.233243, 0.774162,
		-0.219308, 0.875548, 0.430487,
		-0.778225, -0.423099, 0.464062,
		35.516457, 30.248648, 37.233433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.260864, 30.598103, 37.641827>,  <36.061214, 30.544817, 36.908592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.260864, 30.598103, 37.641827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.946690, 30.350735, 37.631630>,  <35.758186, 30.202314, 37.625511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.946690, 30.350735, 37.631630>,  <36.260864, 30.598103, 37.641827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.946690, 30.350735, 37.631630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260700, -0.367895, 0.892574,
		-0.561364, 0.694412, 0.450179,
		-0.785433, -0.618421, -0.025490,
		35.711060, 30.165209, 37.623981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.889301, 30.718935, 38.291080>,  <36.260864, 30.598103, 37.641827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.889301, 30.718935, 38.291080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.792202, 30.345596, 38.185295>,  <35.733944, 30.121593, 38.121822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.792202, 30.345596, 38.185295>,  <35.889301, 30.718935, 38.291080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.792202, 30.345596, 38.185295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209461, -0.316613, 0.925139,
		-0.947207, 0.169177, 0.272355,
		-0.242744, -0.933346, -0.264462,
		35.719379, 30.065592, 38.105957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.478642, 30.447790, 38.825771>,  <35.889301, 30.718935, 38.291080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.478642, 30.447790, 38.825771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.590557, 30.120886, 38.624256>,  <35.657707, 29.924744, 38.503345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.590557, 30.120886, 38.624256>,  <35.478642, 30.447790, 38.825771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.590557, 30.120886, 38.624256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176807, -0.471910, 0.863736,
		-0.943640, -0.330738, 0.012462,
		0.279789, -0.817260, -0.503790,
		35.674492, 29.875708, 38.473118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.986843, 29.930424, 39.030960>,  <35.478642, 30.447790, 38.825771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.986843, 29.930424, 39.030960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.320530, 29.749784, 38.904377>,  <35.520741, 29.641401, 38.828426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.320530, 29.749784, 38.904377>,  <34.986843, 29.930424, 39.030960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.320530, 29.749784, 38.904377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086577, -0.459505, 0.883945,
		-0.544605, -0.764796, -0.344227,
		0.834212, -0.451599, -0.316463,
		35.570793, 29.614305, 38.809437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.961010, 29.324842, 39.343937>,  <34.986843, 29.930424, 39.030960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.961010, 29.324842, 39.343937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.341892, 29.289064, 39.227112>,  <35.570423, 29.267597, 39.157017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.341892, 29.289064, 39.227112>,  <34.961010, 29.324842, 39.343937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.341892, 29.289064, 39.227112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218224, -0.469850, 0.855348,
		-0.213733, -0.878203, -0.427876,
		0.952206, -0.089443, -0.292067,
		35.627556, 29.262232, 39.139492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.167950, 28.613325, 39.439278>,  <34.961010, 29.324842, 39.343937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.167950, 28.613325, 39.439278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.518990, 28.804596, 39.425655>,  <35.729614, 28.919357, 39.417484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.518990, 28.804596, 39.425655>,  <35.167950, 28.613325, 39.439278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.518990, 28.804596, 39.425655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304942, -0.502034, 0.809304,
		0.369894, -0.720632, -0.586403,
		0.877604, 0.478176, -0.034052,
		35.782272, 28.948050, 39.415440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.737614, 28.077400, 39.369381>,  <35.167950, 28.613325, 39.439278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.737614, 28.077400, 39.369381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.883736, 28.414616, 39.527287>,  <35.971409, 28.616945, 39.622032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.883736, 28.414616, 39.527287>,  <35.737614, 28.077400, 39.369381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.883736, 28.414616, 39.527287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316945, -0.511379, 0.798772,
		0.875270, -0.166675, -0.454005,
		0.365305, 0.843036, 0.394768,
		35.993328, 28.667526, 39.645718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.500763, 27.952702, 39.567688>,  <35.737614, 28.077400, 39.369381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.500763, 27.952702, 39.567688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.366161, 28.259291, 39.786514>,  <36.285400, 28.443245, 39.917809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.366161, 28.259291, 39.786514>,  <36.500763, 27.952702, 39.567688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.366161, 28.259291, 39.786514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474106, -0.364047, 0.801682,
		0.813625, 0.529140, -0.240884,
		-0.336509, 0.766473, 0.547066,
		36.265209, 28.489233, 39.950634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.974289, 27.997057, 40.154018>,  <36.500763, 27.952702, 39.567688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.974289, 27.997057, 40.154018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.690411, 28.239717, 40.297295>,  <36.520084, 28.385313, 40.383263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.690411, 28.239717, 40.297295>,  <36.974289, 27.997057, 40.154018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.690411, 28.239717, 40.297295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308680, -0.189267, 0.932145,
		0.633281, 0.772110, -0.052939,
		-0.709699, 0.606651, 0.358194,
		36.477501, 28.421713, 40.404755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.278965, 28.492361, 40.512047>,  <36.974289, 27.997057, 40.154018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.278965, 28.492361, 40.512047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.909801, 28.490044, 40.666039>,  <36.688305, 28.488653, 40.758434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.909801, 28.490044, 40.666039>,  <37.278965, 28.492361, 40.512047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.909801, 28.490044, 40.666039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384483, -0.067026, 0.920696,
		0.020469, 0.997734, 0.064087,
		-0.922905, -0.005795, 0.384984,
		36.632931, 28.488306, 40.781532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.314056, 28.975260, 41.144699>,  <37.278965, 28.492361, 40.512047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.314056, 28.975260, 41.144699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.009853, 28.720181, 41.193634>,  <36.827332, 28.567133, 41.222996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.009853, 28.720181, 41.193634>,  <37.314056, 28.975260, 41.144699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.009853, 28.720181, 41.193634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307890, -0.188264, 0.932609,
		-0.571693, 0.746924, 0.339518,
		-0.760507, -0.637700, 0.122342,
		36.781700, 28.528870, 41.230335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.891945, 29.300182, 41.724873>,  <37.314056, 28.975260, 41.144699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.891945, 29.300182, 41.724873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.788372, 28.916908, 41.676155>,  <36.726227, 28.686943, 41.646923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.788372, 28.916908, 41.676155>,  <36.891945, 29.300182, 41.724873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.788372, 28.916908, 41.676155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150599, -0.164607, 0.974794,
		-0.954082, 0.234064, 0.186924,
		-0.258933, -0.958185, -0.121799,
		36.710693, 28.629454, 41.639614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.461197, 29.177570, 42.281876>,  <36.891945, 29.300182, 41.724873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.461197, 29.177570, 42.281876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.514912, 28.790312, 42.197342>,  <36.547138, 28.557957, 42.146622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.514912, 28.790312, 42.197342>,  <36.461197, 29.177570, 42.281876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.514912, 28.790312, 42.197342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375574, -0.147634, 0.914958,
		-0.917013, -0.202235, 0.343786,
		0.134282, -0.968145, -0.211336,
		36.555195, 28.499868, 42.133942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.955460, 28.601160, 42.710785>,  <36.461197, 29.177570, 42.281876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.955460, 28.601160, 42.710785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.317505, 28.460155, 42.615700>,  <36.534733, 28.375553, 42.558647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.317505, 28.460155, 42.615700>,  <35.955460, 28.601160, 42.710785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.317505, 28.460155, 42.615700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176320, -0.197556, 0.964304,
		-0.386892, -0.914716, -0.116655,
		0.905111, -0.352513, -0.237716,
		36.589039, 28.354403, 42.544384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.010818, 28.072290, 43.125065>,  <35.955460, 28.601160, 42.710785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.010818, 28.072290, 43.125065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.388317, 28.148113, 43.016682>,  <36.614815, 28.193607, 42.951653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.388317, 28.148113, 43.016682>,  <36.010818, 28.072290, 43.125065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.388317, 28.148113, 43.016682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301955, -0.159959, 0.939807,
		0.134807, -0.968752, -0.208198,
		0.943743, 0.189559, -0.270955,
		36.671440, 28.204981, 42.935394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.294601, 27.510803, 43.406357>,  <36.010818, 28.072290, 43.125065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.294601, 27.510803, 43.406357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.554558, 27.811697, 43.362938>,  <36.710533, 27.992233, 43.336887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.554558, 27.811697, 43.362938>,  <36.294601, 27.510803, 43.406357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.554558, 27.811697, 43.362938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430866, -0.247001, 0.867955,
		0.626096, -0.610844, -0.484637,
		0.649891, 0.752237, -0.108545,
		36.749527, 28.037369, 43.330376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.864628, 27.192698, 43.418304>,  <36.294601, 27.510803, 43.406357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.864628, 27.192698, 43.418304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.925945, 27.572708, 43.527077>,  <36.962738, 27.800714, 43.592339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.925945, 27.572708, 43.527077>,  <36.864628, 27.192698, 43.418304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.925945, 27.572708, 43.527077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299336, -0.306897, 0.903444,
		0.941753, -0.057096, -0.331424,
		0.153296, 0.950028, 0.271931,
		36.971935, 27.857718, 43.608654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.491333, 27.132168, 43.747257>,  <36.864628, 27.192698, 43.418304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.491333, 27.132168, 43.747257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.324188, 27.475636, 43.865971>,  <37.223900, 27.681715, 43.937199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.324188, 27.475636, 43.865971>,  <37.491333, 27.132168, 43.747257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.324188, 27.475636, 43.865971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201217, -0.231089, 0.951898,
		0.885948, 0.457480, -0.076216,
		-0.417862, 0.858668, 0.296785,
		37.198830, 27.733236, 43.955006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.902092, 27.327595, 44.367397>,  <37.491333, 27.132168, 43.747257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.902092, 27.327595, 44.367397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.575546, 27.557220, 44.392708>,  <37.379620, 27.694996, 44.407894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.575546, 27.557220, 44.392708>,  <37.902092, 27.327595, 44.367397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.575546, 27.557220, 44.392708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032095, -0.064302, 0.997414,
		0.576648, 0.816282, 0.034069,
		-0.816362, 0.574063, 0.063278,
		37.330639, 27.729439, 44.411690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.120052, 27.930468, 44.706879>,  <37.902092, 27.327595, 44.367397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.120052, 27.930468, 44.706879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.722347, 27.910757, 44.744862>,  <37.483727, 27.898932, 44.767651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.722347, 27.910757, 44.744862>,  <38.120052, 27.930468, 44.706879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.722347, 27.910757, 44.744862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095838, -0.015791, 0.995272,
		-0.047545, 0.998660, 0.020423,
		-0.994261, -0.049277, 0.094959,
		37.424068, 27.895973, 44.773350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.839054, 28.522680, 44.999638>,  <38.120052, 27.930468, 44.706879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.839054, 28.522680, 44.999638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.547218, 28.266315, 45.095074>,  <37.372116, 28.112497, 45.152336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.547218, 28.266315, 45.095074>,  <37.839054, 28.522680, 44.999638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.547218, 28.266315, 45.095074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138423, 0.203262, 0.969290,
		-0.669726, 0.740214, -0.059582,
		-0.729593, -0.640912, 0.238593,
		37.328339, 28.074041, 45.166653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.676498, 28.671827, 45.663391>,  <37.839054, 28.522680, 44.999638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.676498, 28.671827, 45.663391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.471672, 28.328510, 45.649982>,  <37.348778, 28.122520, 45.641937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.471672, 28.328510, 45.649982>,  <37.676498, 28.671827, 45.663391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.471672, 28.328510, 45.649982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066246, 0.000547, 0.997803,
		-0.856391, 0.513158, -0.057139,
		-0.512061, -0.858295, -0.033526,
		37.318054, 28.071022, 45.639923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.057678, 28.622547, 46.197517>,  <37.676498, 28.671827, 45.663391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.057678, 28.622547, 46.197517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.160160, 28.248739, 46.098698>,  <37.221649, 28.024454, 46.039406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.160160, 28.248739, 46.098698>,  <37.057678, 28.622547, 46.197517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.160160, 28.248739, 46.098698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077289, -0.234952, 0.968929,
		-0.963527, -0.267339, 0.012032,
		0.256205, -0.934520, -0.247045,
		37.237022, 27.968384, 46.024586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.604328, 28.228876, 46.684994>,  <37.057678, 28.622547, 46.197517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.604328, 28.228876, 46.684994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.889446, 27.982157, 46.551441>,  <37.060516, 27.834126, 46.471310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.889446, 27.982157, 46.551441>,  <36.604328, 28.228876, 46.684994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.889446, 27.982157, 46.551441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156485, -0.324187, 0.932961,
		-0.683689, -0.717261, -0.134560,
		0.712798, -0.616798, -0.333884,
		37.103287, 27.797117, 46.451275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.437466, 27.616474, 46.994442>,  <36.604328, 28.228876, 46.684994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.437466, 27.616474, 46.994442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.827003, 27.596788, 46.905708>,  <37.060726, 27.584976, 46.852467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.827003, 27.596788, 46.905708>,  <36.437466, 27.616474, 46.994442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.827003, 27.596788, 46.905708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192685, -0.338613, 0.920985,
		-0.120444, -0.939638, -0.320272,
		0.973841, -0.049215, -0.221838,
		37.119156, 27.582024, 46.839157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.685585, 26.941059, 47.169903>,  <36.437466, 27.616474, 46.994442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.685585, 26.941059, 47.169903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.011780, 27.171665, 47.149475>,  <37.207497, 27.310028, 47.137218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.011780, 27.171665, 47.149475>,  <36.685585, 26.941059, 47.169903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.011780, 27.171665, 47.149475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310227, -0.360907, 0.879492,
		0.488608, -0.733059, -0.473166,
		0.815489, 0.576516, -0.051073,
		37.256428, 27.344620, 47.134151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.192646, 26.548700, 47.604881>,  <36.685585, 26.941059, 47.169903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.192646, 26.548700, 47.604881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.386845, 26.891699, 47.536774>,  <37.503365, 27.097498, 47.495911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.386845, 26.891699, 47.536774>,  <37.192646, 26.548700, 47.604881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.386845, 26.891699, 47.536774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410911, -0.051916, 0.910196,
		0.771650, -0.511865, -0.377559,
		0.485499, 0.857496, -0.170270,
		37.532494, 27.148947, 47.485691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.951897, 26.446056, 47.707169>,  <37.192646, 26.548700, 47.604881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.951897, 26.446056, 47.707169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.852497, 26.830643, 47.754211>,  <37.792858, 27.061394, 47.782436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.852497, 26.830643, 47.754211>,  <37.951897, 26.446056, 47.707169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.852497, 26.830643, 47.754211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427722, -0.000017, 0.903911,
		0.869081, 0.274926, -0.411235,
		-0.248502, 0.961465, 0.117607,
		37.777946, 27.119081, 47.789494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.429398, 26.594048, 48.172642>,  <37.951897, 26.446056, 47.707169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.429398, 26.594048, 48.172642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.148167, 26.875942, 48.210636>,  <37.979427, 27.045078, 48.233433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.148167, 26.875942, 48.210636>,  <38.429398, 26.594048, 48.172642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.148167, 26.875942, 48.210636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157541, 0.024106, 0.987218,
		0.693439, 0.709059, -0.127973,
		-0.703081, 0.704737, 0.094990,
		37.937241, 27.087364, 48.239132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.734879, 26.980257, 48.603188>,  <38.429398, 26.594048, 48.172642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.734879, 26.980257, 48.603188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.373135, 27.147865, 48.635582>,  <38.156090, 27.248430, 48.655018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.373135, 27.147865, 48.635582>,  <38.734879, 26.980257, 48.603188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.373135, 27.147865, 48.635582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109317, 0.044004, 0.993032,
		0.412538, 0.906909, -0.085602,
		-0.904357, 0.419022, 0.080988,
		38.101826, 27.273571, 48.659878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.750504, 27.581017, 48.996300>,  <38.734879, 26.980257, 48.603188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.750504, 27.581017, 48.996300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.376862, 27.439306, 49.013870>,  <38.152676, 27.354280, 49.024410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.376862, 27.439306, 49.013870>,  <38.750504, 27.581017, 48.996300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.376862, 27.439306, 49.013870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081865, -0.092827, 0.992311,
		-0.347473, 0.930523, 0.115714,
		-0.934110, -0.354274, 0.043923,
		38.096630, 27.333025, 49.027046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.479458, 27.884581, 49.498814>,  <38.750504, 27.581017, 48.996300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.479458, 27.884581, 49.498814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.288097, 27.537033, 49.447910>,  <38.173279, 27.328505, 49.417370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.288097, 27.537033, 49.447910>,  <38.479458, 27.884581, 49.498814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.288097, 27.537033, 49.447910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039368, -0.165995, 0.985341,
		-0.877257, 0.466381, 0.113619,
		-0.478404, -0.868870, -0.127260,
		38.144577, 27.276373, 49.409733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.000423, 28.181057, 49.061836>,  <38.479458, 27.884581, 49.498814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.000423, 28.181057, 49.061836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.103947, 28.472883, 49.315056>,  <38.166061, 28.647978, 49.466988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.103947, 28.472883, 49.315056>,  <38.000423, 28.181057, 49.061836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.103947, 28.472883, 49.315056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413250, 0.676004, -0.610118,
		-0.873065, -0.103704, 0.476449,
		0.258809, 0.729565, 0.633051,
		38.181591, 28.691753, 49.504971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.443363, 28.659229, 49.169777>,  <38.000423, 28.181057, 49.061836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.443363, 28.659229, 49.169777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.772552, 28.876465, 49.236443>,  <37.970066, 29.006805, 49.276440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.772552, 28.876465, 49.236443>,  <37.443363, 28.659229, 49.169777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.772552, 28.876465, 49.236443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301794, 0.666513, -0.681675,
		-0.481290, 0.510701, 0.712421,
		0.822970, 0.543088, 0.166659,
		38.019444, 29.039391, 49.286442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.242214, 29.349482, 49.108166>,  <37.443363, 28.659229, 49.169777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.242214, 29.349482, 49.108166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.635284, 29.390722, 49.046566>,  <37.871128, 29.415466, 49.009605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.635284, 29.390722, 49.046566>,  <37.242214, 29.349482, 49.108166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.635284, 29.390722, 49.046566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178050, 0.755797, -0.630134,
		0.051426, 0.646638, 0.761062,
		0.982677, 0.103101, -0.154002,
		37.930088, 29.421652, 49.000366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.416176, 30.102789, 49.031303>,  <37.242214, 29.349482, 49.108166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.416176, 30.102789, 49.031303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.746532, 29.952677, 48.862984>,  <37.944744, 29.862610, 48.761993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.746532, 29.952677, 48.862984>,  <37.416176, 30.102789, 49.031303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.746532, 29.952677, 48.862984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052657, 0.794393, -0.605117,
		0.561368, 0.477602, 0.675842,
		0.825889, -0.375281, -0.420798,
		37.994301, 29.840092, 48.736744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.609562, 30.645466, 48.675838>,  <37.416176, 30.102789, 49.031303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.609562, 30.645466, 48.675838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.829136, 30.335028, 48.551678>,  <37.960880, 30.148766, 48.477180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.829136, 30.335028, 48.551678>,  <37.609562, 30.645466, 48.675838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.829136, 30.335028, 48.551678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091433, 0.424883, -0.900619,
		0.830851, 0.465997, 0.304192,
		0.548932, -0.776094, -0.310407,
		37.993816, 30.102200, 48.458557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.200413, 30.927626, 48.332111>,  <37.609562, 30.645466, 48.675838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.200413, 30.927626, 48.332111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.157654, 30.549583, 48.208599>,  <38.131996, 30.322758, 48.134491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.157654, 30.549583, 48.208599>,  <38.200413, 30.927626, 48.332111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.157654, 30.549583, 48.208599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017453, 0.308733, -0.950989,
		0.994117, -0.107049, -0.016509,
		-0.106899, -0.945106, -0.308785,
		38.125584, 30.266052, 48.115963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.628937, 30.905062, 47.817768>,  <38.200413, 30.927626, 48.332111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.628937, 30.905062, 47.817768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.418076, 30.574354, 47.739216>,  <38.291557, 30.375931, 47.692085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.418076, 30.574354, 47.739216>,  <38.628937, 30.905062, 47.817768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.418076, 30.574354, 47.739216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151408, 0.136023, -0.979068,
		0.836174, -0.545852, 0.053475,
		-0.527152, -0.826767, -0.196385,
		38.259930, 30.326324, 47.680302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.157658, 30.466957, 47.407406>,  <38.628937, 30.905062, 47.817768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.157658, 30.466957, 47.407406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.773075, 30.368721, 47.357944>,  <38.542328, 30.309780, 47.328266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.773075, 30.368721, 47.357944>,  <39.157658, 30.466957, 47.407406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.773075, 30.368721, 47.357944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107762, 0.077191, -0.991175,
		0.252969, -0.966295, -0.047750,
		-0.961454, -0.245591, -0.123657,
		38.484638, 30.295044, 47.320847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.188515, 29.895428, 46.841301>,  <39.157658, 30.466957, 47.407406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.188515, 29.895428, 46.841301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.825169, 30.060928, 46.865540>,  <38.607159, 30.160229, 46.880081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.825169, 30.060928, 46.865540>,  <39.188515, 29.895428, 46.841301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.825169, 30.060928, 46.865540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088708, -0.049052, -0.994849,
		-0.408651, -0.909066, 0.081261,
		-0.908370, 0.413754, 0.060596,
		38.552658, 30.185055, 46.883717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.824406, 29.501503, 46.392044>,  <39.188515, 29.895428, 46.841301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.824406, 29.501503, 46.392044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.595909, 29.828594, 46.420319>,  <38.458809, 30.024849, 46.437283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.595909, 29.828594, 46.420319>,  <38.824406, 29.501503, 46.392044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.595909, 29.828594, 46.420319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101755, 0.014897, -0.994698,
		-0.814447, -0.575409, 0.074698,
		-0.571246, 0.817730, 0.070684,
		38.424534, 30.073914, 46.441525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.240917, 29.382107, 45.987396>,  <38.824406, 29.501503, 46.392044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.240917, 29.382107, 45.987396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.237873, 29.781399, 46.010998>,  <38.236046, 30.020973, 46.025158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.237873, 29.781399, 46.010998>,  <38.240917, 29.382107, 45.987396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.237873, 29.781399, 46.010998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176969, 0.056733, -0.982580,
		-0.984187, -0.017919, 0.176224,
		-0.007609, 0.998228, 0.059007,
		38.235592, 30.080868, 46.028698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.680214, 29.578106, 45.512474>,  <38.240917, 29.382107, 45.987396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.680214, 29.578106, 45.512474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.958130, 29.861904, 45.559597>,  <38.124882, 30.032183, 45.587872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.958130, 29.861904, 45.559597>,  <37.680214, 29.578106, 45.512474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.958130, 29.861904, 45.559597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006144, 0.157941, -0.987430,
		-0.719182, 0.686784, 0.105377,
		0.694794, 0.709494, 0.117808,
		38.166569, 30.074753, 45.594940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.375301, 30.319122, 45.336182>,  <37.680214, 29.578106, 45.512474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.375301, 30.319122, 45.336182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.774387, 30.320724, 45.309200>,  <38.013840, 30.321686, 45.293011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.774387, 30.320724, 45.309200>,  <37.375301, 30.319122, 45.336182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.774387, 30.320724, 45.309200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064710, 0.343953, -0.936754,
		0.019449, 0.938978, 0.343427,
		0.997715, 0.004004, -0.067451,
		38.073700, 30.321926, 45.288963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.437588, 30.958693, 45.149246>,  <37.375301, 30.319122, 45.336182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.437588, 30.958693, 45.149246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.753468, 30.737686, 45.042595>,  <37.942997, 30.605082, 44.978603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.753468, 30.737686, 45.042595>,  <37.437588, 30.958693, 45.149246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.753468, 30.737686, 45.042595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053076, 0.371456, -0.926932,
		0.611188, 0.746153, 0.264015,
		0.789704, -0.552517, -0.266632,
		37.990379, 30.571932, 44.962605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.877556, 31.480152, 44.607353>,  <37.437588, 30.958693, 45.149246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.877556, 31.480152, 44.607353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.000401, 31.104528, 44.545582>,  <38.074108, 30.879154, 44.508518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.000401, 31.104528, 44.545582>,  <37.877556, 31.480152, 44.607353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.000401, 31.104528, 44.545582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118437, 0.123300, -0.985277,
		0.944275, 0.320879, -0.073353,
		0.307110, -0.939060, -0.154433,
		38.092533, 30.822811, 44.499252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.489571, 31.547737, 44.171104>,  <37.877556, 31.480152, 44.607353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.489571, 31.547737, 44.171104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.354057, 31.172817, 44.138386>,  <38.272747, 30.947865, 44.118755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.354057, 31.172817, 44.138386>,  <38.489571, 31.547737, 44.171104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.354057, 31.172817, 44.138386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059712, 0.108183, -0.992336,
		0.938967, -0.331304, -0.092619,
		-0.338785, -0.937301, -0.081797,
		38.252422, 30.891626, 44.113846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.869076, 31.132198, 43.597610>,  <38.489571, 31.547737, 44.171104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.869076, 31.132198, 43.597610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.513718, 30.962343, 43.667404>,  <38.300503, 30.860430, 43.709278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.513718, 30.962343, 43.667404>,  <38.869076, 31.132198, 43.597610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.513718, 30.962343, 43.667404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210227, 0.038414, -0.976898,
		0.408123, -0.904549, -0.123397,
		-0.888392, -0.424636, 0.174483,
		38.247200, 30.834953, 43.719749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884727, 30.703274, 43.100891>,  <38.869076, 31.132198, 43.597610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.884727, 30.703274, 43.100891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.499382, 30.689795, 43.207317>,  <38.268173, 30.681707, 43.271175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.499382, 30.689795, 43.207317>,  <38.884727, 30.703274, 43.100891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.499382, 30.689795, 43.207317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265028, -0.032408, -0.963696,
		0.041093, -0.998907, 0.022291,
		-0.963365, -0.033694, 0.266070,
		38.210373, 30.679686, 43.287140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.564838, 30.198141, 42.692169>,  <38.884727, 30.703274, 43.100891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.564838, 30.198141, 42.692169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.270161, 30.448519, 42.794529>,  <38.093353, 30.598745, 42.855946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.270161, 30.448519, 42.794529>,  <38.564838, 30.198141, 42.692169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.270161, 30.448519, 42.794529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301838, 0.034260, -0.952744,
		-0.605130, -0.779116, 0.163694,
		-0.736690, 0.625943, 0.255899,
		38.049152, 30.636301, 42.871300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.069492, 29.912367, 42.342922>,  <38.564838, 30.198141, 42.692169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.069492, 29.912367, 42.342922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.923168, 30.277020, 42.417877>,  <37.835373, 30.495811, 42.462849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.923168, 30.277020, 42.417877>,  <38.069492, 29.912367, 42.342922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.923168, 30.277020, 42.417877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439595, 0.008216, -0.898158,
		-0.820327, -0.410931, 0.397742,
		-0.365813, 0.911630, 0.187383,
		37.813423, 30.550508, 42.474091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.397915, 29.940603, 42.105434>,  <38.069492, 29.912367, 42.342922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.397915, 29.940603, 42.105434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.517189, 30.322245, 42.116520>,  <37.588753, 30.551229, 42.123169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.517189, 30.322245, 42.116520>,  <37.397915, 29.940603, 42.105434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.517189, 30.322245, 42.116520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462211, 0.169737, -0.870374,
		-0.835131, 0.246728, 0.491611,
		0.298190, 0.954104, 0.027712,
		37.606647, 30.608477, 42.124832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.885876, 30.260443, 41.787075>,  <37.397915, 29.940603, 42.105434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.885876, 30.260443, 41.787075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.204491, 30.502218, 41.792366>,  <37.395660, 30.647284, 41.795540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.204491, 30.502218, 41.792366>,  <36.885876, 30.260443, 41.787075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.204491, 30.502218, 41.792366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182588, 0.261365, -0.947813,
		-0.576354, 0.752557, 0.318551,
		0.796542, 0.604439, 0.013231,
		37.443455, 30.683550, 41.796337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.617371, 30.839449, 41.434132>,  <36.885876, 30.260443, 41.787075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.617371, 30.839449, 41.434132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.014687, 30.881823, 41.415600>,  <37.253078, 30.907248, 41.404480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.014687, 30.881823, 41.415600>,  <36.617371, 30.839449, 41.434132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.014687, 30.881823, 41.415600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081297, 0.354946, -0.931345,
		-0.082215, 0.928865, 0.361178,
		0.993293, 0.105934, -0.046332,
		37.312675, 30.913603, 41.401699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.681110, 31.402283, 41.040009>,  <36.617371, 30.839449, 41.434132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.681110, 31.402283, 41.040009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.031460, 31.210649, 41.016941>,  <37.241669, 31.095669, 41.003101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.031460, 31.210649, 41.016941>,  <36.681110, 31.402283, 41.040009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.031460, 31.210649, 41.016941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032753, 0.178268, -0.983437,
		0.481430, 0.859476, 0.171831,
		0.875872, -0.479084, -0.057673,
		37.294220, 31.066925, 40.999638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.100258, 31.875765, 40.653946>,  <36.681110, 31.402283, 41.040009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.100258, 31.875765, 40.653946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.276970, 31.519665, 40.609612>,  <37.382996, 31.306005, 40.583012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.276970, 31.519665, 40.609612>,  <37.100258, 31.875765, 40.653946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.276970, 31.519665, 40.609612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242954, 0.237651, -0.940476,
		0.863598, 0.388558, 0.321280,
		0.441782, -0.890250, -0.110834,
		37.409504, 31.252590, 40.576363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.629963, 32.016632, 40.223572>,  <37.100258, 31.875765, 40.653946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.629963, 32.016632, 40.223572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.586578, 31.619226, 40.209927>,  <37.560547, 31.380783, 40.201740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.586578, 31.619226, 40.209927>,  <37.629963, 32.016632, 40.223572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.586578, 31.619226, 40.209927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258665, 0.004928, -0.965954,
		0.959858, -0.113597, 0.256453,
		-0.108465, -0.993515, -0.034114,
		37.554039, 31.321173, 40.199692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.330227, 31.688482, 40.009727>,  <37.629963, 32.016632, 40.223572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.330227, 31.688482, 40.009727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.001602, 31.480198, 39.916862>,  <37.804428, 31.355227, 39.861145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.001602, 31.480198, 39.916862>,  <38.330227, 31.688482, 40.009727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.001602, 31.480198, 39.916862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206039, 0.108512, -0.972509,
		0.531587, -0.846809, 0.018138,
		-0.821561, -0.520711, -0.232159,
		37.755135, 31.323984, 39.847214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.549175, 31.251011, 39.448666>,  <38.330227, 31.688482, 40.009727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.549175, 31.251011, 39.448666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.150291, 31.221714, 39.442791>,  <37.910961, 31.204136, 39.439266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.150291, 31.221714, 39.442791>,  <38.549175, 31.251011, 39.448666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.150291, 31.221714, 39.442791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010608, 0.055810, -0.998385,
		0.073957, -0.995750, -0.054877,
		-0.997205, -0.073256, -0.014691,
		37.851131, 31.199741, 39.438385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.280315, 30.651680, 39.059334>,  <38.549175, 31.251011, 39.448666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.280315, 30.651680, 39.059334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.989895, 30.926218, 39.042458>,  <37.815643, 31.090940, 39.032330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.989895, 30.926218, 39.042458>,  <38.280315, 30.651680, 39.059334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.989895, 30.926218, 39.042458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087739, 0.031604, -0.995642,
		-0.682021, -0.726589, -0.083165,
		-0.726051, 0.686346, -0.042195,
		37.772079, 31.132122, 39.029800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.977505, 30.550117, 38.312122>,  <38.280315, 30.651680, 39.059334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.977505, 30.550117, 38.312122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.821239, 30.903265, 38.416370>,  <37.727482, 31.115154, 38.478920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.821239, 30.903265, 38.416370>,  <37.977505, 30.550117, 38.312122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.821239, 30.903265, 38.416370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053167, 0.304285, -0.951096,
		-0.918997, -0.357702, -0.165812,
		-0.390663, 0.882870, 0.260619,
		37.704041, 31.168127, 38.494556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.407280, 30.747305, 37.805019>,  <37.977505, 30.550117, 38.312122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.407280, 30.747305, 37.805019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.535503, 31.083841, 37.979095>,  <37.612438, 31.285763, 38.083542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.535503, 31.083841, 37.979095>,  <37.407280, 30.747305, 37.805019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.535503, 31.083841, 37.979095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222407, 0.379736, -0.897962,
		-0.920747, 0.384642, -0.065391,
		0.320562, 0.841339, 0.435188,
		37.631672, 31.336243, 38.109653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.111790, 31.354443, 37.475739>,  <37.407280, 30.747305, 37.805019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.111790, 31.354443, 37.475739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.418358, 31.541990, 37.651356>,  <37.602299, 31.654518, 37.756725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.418358, 31.541990, 37.651356>,  <37.111790, 31.354443, 37.475739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.418358, 31.541990, 37.651356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247839, 0.414720, -0.875548,
		-0.592595, 0.779852, 0.201647,
		0.766425, 0.468869, 0.439039,
		37.648285, 31.682652, 37.783066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.137733, 31.988564, 37.027023>,  <37.111790, 31.354443, 37.475739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.137733, 31.988564, 37.027023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.478485, 31.963554, 37.235023>,  <37.682934, 31.948549, 37.359821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.478485, 31.963554, 37.235023>,  <37.137733, 31.988564, 37.027023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.478485, 31.963554, 37.235023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468817, 0.533647, -0.703869,
		-0.233487, 0.843393, 0.483913,
		0.851877, -0.062522, 0.519997,
		37.734047, 31.944798, 37.391022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.280571, 32.617443, 37.003632>,  <37.137733, 31.988564, 37.027023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.280571, 32.617443, 37.003632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.616901, 32.413948, 37.077606>,  <37.818699, 32.291851, 37.121990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.616901, 32.413948, 37.077606>,  <37.280571, 32.617443, 37.003632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.616901, 32.413948, 37.077606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489766, 0.569493, -0.660157,
		0.230527, 0.645651, 0.728006,
		0.840825, -0.508736, 0.184934,
		37.869148, 32.261326, 37.133087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.845005, 33.115215, 37.134567>,  <37.280571, 32.617443, 37.003632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.845005, 33.115215, 37.134567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.047344, 32.786297, 37.030304>,  <38.168747, 32.588947, 36.967747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.047344, 32.786297, 37.030304>,  <37.845005, 33.115215, 37.134567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.047344, 32.786297, 37.030304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602536, 0.553053, -0.575397,
		0.617305, 0.134011, 0.775227,
		0.505851, -0.822297, -0.260656,
		38.199100, 32.539608, 36.952106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.510223, 33.339809, 37.225430>,  <37.845005, 33.115215, 37.134567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.510223, 33.339809, 37.225430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.489029, 33.053661, 36.946735>,  <38.476315, 32.881973, 36.779518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.489029, 33.053661, 36.946735>,  <38.510223, 33.339809, 37.225430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.489029, 33.053661, 36.946735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691876, 0.476815, -0.542176,
		0.720070, -0.510781, 0.469683,
		-0.052982, -0.715367, -0.696737,
		38.473133, 32.839050, 36.737713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.125046, 33.329086, 36.941631>,  <38.510223, 33.339809, 37.225430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.125046, 33.329086, 36.941631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.908787, 33.124390, 36.674553>,  <38.779034, 33.001572, 36.514305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.908787, 33.124390, 36.674553>,  <39.125046, 33.329086, 36.941631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.908787, 33.124390, 36.674553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478451, 0.465786, -0.744398,
		0.691944, -0.721917, -0.006983,
		-0.540646, -0.511741, -0.667700,
		38.746593, 32.970867, 36.474243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.637939, 32.916317, 36.506042>,  <39.125046, 33.329086, 36.941631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.637939, 32.916317, 36.506042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.305035, 32.997581, 36.299717>,  <39.105293, 33.046341, 36.175922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.305035, 32.997581, 36.299717>,  <39.637939, 32.916317, 36.506042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.305035, 32.997581, 36.299717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553915, 0.342954, -0.758657,
		0.022770, -0.917119, -0.397963,
		-0.832262, 0.203163, -0.515815,
		39.055355, 33.058529, 36.144974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.840748, 32.762196, 35.776985>,  <39.637939, 32.916317, 36.506042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.840748, 32.762196, 35.776985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.502636, 32.975628, 35.765732>,  <39.299770, 33.103687, 35.758980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.502636, 32.975628, 35.765732>,  <39.840748, 32.762196, 35.776985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.502636, 32.975628, 35.765732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338026, 0.493232, -0.801536,
		-0.413810, -0.687032, -0.597284,
		-0.845281, 0.533581, -0.028131,
		39.249050, 33.135704, 35.757294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.662807, 32.619598, 35.087208>,  <39.840748, 32.762196, 35.776985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.662807, 32.619598, 35.087208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.468925, 32.944988, 35.215786>,  <39.352596, 33.140221, 35.292931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.468925, 32.944988, 35.215786>,  <39.662807, 32.619598, 35.087208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.468925, 32.944988, 35.215786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203147, 0.462144, -0.863223,
		-0.850762, -0.353106, -0.389257,
		-0.484702, 0.813474, 0.321442,
		39.323513, 33.189030, 35.312218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.277077, 32.722153, 34.518482>,  <39.662807, 32.619598, 35.087208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.277077, 32.722153, 34.518482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.309681, 33.059429, 34.731045>,  <39.329243, 33.261795, 34.858582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.309681, 33.059429, 34.731045>,  <39.277077, 32.722153, 34.518482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.309681, 33.059429, 34.731045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170380, 0.513540, -0.840980,
		-0.982001, 0.159090, -0.101802,
		0.081512, 0.843188, 0.531403,
		39.334133, 33.312386, 34.890465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.816429, 33.267750, 34.325466>,  <39.277077, 32.722153, 34.518482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.816429, 33.267750, 34.325466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.142342, 33.451908, 34.466415>,  <39.337887, 33.562405, 34.550987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.142342, 33.451908, 34.466415>,  <38.816429, 33.267750, 34.325466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.142342, 33.451908, 34.466415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014914, 0.590940, -0.806578,
		-0.579582, 0.662437, 0.474618,
		0.814777, 0.460400, 0.352378,
		39.386776, 33.590027, 34.572128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.759647, 34.020607, 34.188095>,  <38.816429, 33.267750, 34.325466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.759647, 34.020607, 34.188095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.138252, 33.892479, 34.203693>,  <39.365414, 33.815601, 34.213051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.138252, 33.892479, 34.203693>,  <38.759647, 34.020607, 34.188095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.138252, 33.892479, 34.203693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235605, 0.603452, -0.761798,
		0.220483, 0.730235, 0.646640,
		0.946508, -0.320315, 0.038996,
		39.422203, 33.796383, 34.215393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.237202, 34.634659, 34.001659>,  <38.759647, 34.020607, 34.188095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.237202, 34.634659, 34.001659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.377266, 34.270302, 33.914333>,  <39.461304, 34.051689, 33.861938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.377266, 34.270302, 33.914333>,  <39.237202, 34.634659, 34.001659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.377266, 34.270302, 33.914333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366559, 0.347741, -0.862966,
		0.861987, 0.222152, 0.455661,
		0.350162, -0.910892, -0.218317,
		39.482315, 33.997036, 33.848839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.923244, 34.613316, 33.831856>,  <39.237202, 34.634659, 34.001659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.923244, 34.613316, 33.831856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.779388, 34.302994, 33.624477>,  <39.693073, 34.116802, 33.500050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.779388, 34.302994, 33.624477>,  <39.923244, 34.613316, 33.831856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.779388, 34.302994, 33.624477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294818, 0.432686, -0.851977,
		0.885290, -0.459257, 0.073106,
		-0.359645, -0.775800, -0.518449,
		39.671494, 34.070255, 33.468941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.120655, 35.226349, 34.326805>,  <39.923244, 34.613316, 33.831856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.120655, 35.226349, 34.326805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.317192, 34.878265, 34.341309>,  <40.435116, 34.669415, 34.350010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.317192, 34.878265, 34.341309>,  <40.120655, 35.226349, 34.326805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.317192, 34.878265, 34.341309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823649, 0.477784, 0.305492,
		-0.283166, -0.120237, 0.951504,
		0.491345, -0.870210, 0.036259,
		40.464596, 34.617203, 34.352188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.626175, 35.288227, 34.817673>,  <40.120655, 35.226349, 34.326805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.626175, 35.288227, 34.817673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.758347, 34.982189, 34.596607>,  <40.837650, 34.798565, 34.463966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.758347, 34.982189, 34.596607>,  <40.626175, 35.288227, 34.817673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.758347, 34.982189, 34.596607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942735, 0.239324, 0.232326,
		-0.045486, -0.597787, 0.800364,
		0.330428, -0.765098, -0.552668,
		40.857475, 34.752659, 34.430805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.310345, 35.299740, 35.142876>,  <40.626175, 35.288227, 34.817673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.310345, 35.299740, 35.142876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.695152, 35.196575, 35.107113>,  <41.926037, 35.134678, 35.085655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.695152, 35.196575, 35.107113>,  <41.310345, 35.299740, 35.142876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.695152, 35.196575, 35.107113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272773, -0.920759, -0.278923,
		-0.010386, 0.292718, -0.956143,
		0.962022, -0.257913, -0.089408,
		41.983761, 35.119202, 35.080292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.332249, 35.060089, 34.491482>,  <41.310345, 35.299740, 35.142876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.332249, 35.060089, 34.491482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.653690, 34.900505, 34.668140>,  <41.846554, 34.804752, 34.774136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.653690, 34.900505, 34.668140>,  <41.332249, 35.060089, 34.491482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.653690, 34.900505, 34.668140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261925, -0.903402, -0.339500,
		0.534436, 0.157143, -0.830472,
		0.803600, -0.398962, 0.441651,
		41.894772, 34.780815, 34.800636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.686943, 34.756695, 33.894032>,  <41.332249, 35.060089, 34.491482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.686943, 34.756695, 33.894032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.785187, 34.553253, 34.224121>,  <41.844131, 34.431187, 34.422176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.785187, 34.553253, 34.224121>,  <41.686943, 34.756695, 33.894032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.785187, 34.553253, 34.224121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212762, -0.858827, -0.465992,
		0.945732, -0.061124, -0.319147,
		0.245609, -0.508606, 0.825225,
		41.858868, 34.400673, 34.471687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.070904, 34.172768, 33.702351>,  <41.686943, 34.756695, 33.894032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.070904, 34.172768, 33.702351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.926418, 34.084469, 34.064739>,  <41.839725, 34.031490, 34.282173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.926418, 34.084469, 34.064739>,  <42.070904, 34.172768, 33.702351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.926418, 34.084469, 34.064739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114268, -0.953774, -0.277954,
		0.925454, -0.203926, 0.319295,
		-0.361217, -0.220749, 0.905976,
		41.818054, 34.018246, 34.336533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.330559, 33.538521, 33.865711>,  <42.070904, 34.172768, 33.702351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.330559, 33.538521, 33.865711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.023251, 33.551693, 34.121422>,  <41.838867, 33.559597, 34.274849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.023251, 33.551693, 34.121422>,  <42.330559, 33.538521, 33.865711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.023251, 33.551693, 34.121422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135388, -0.984442, -0.111997,
		0.625644, -0.172594, 0.760776,
		-0.768270, 0.032930, 0.639278,
		41.792770, 33.561573, 34.313206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.302090, 32.926579, 34.201603>,  <42.330559, 33.538521, 33.865711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.302090, 32.926579, 34.201603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.931717, 33.062130, 34.268314>,  <41.709492, 33.143459, 34.308342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.931717, 33.062130, 34.268314>,  <42.302090, 32.926579, 34.201603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.931717, 33.062130, 34.268314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362055, -0.922117, -0.136445,
		0.107553, -0.186723, 0.976508,
		-0.925931, 0.338874, 0.166780,
		41.653938, 33.163792, 34.318348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.109837, 32.505493, 34.715118>,  <42.302090, 32.926579, 34.201603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.109837, 32.505493, 34.715118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.770451, 32.640015, 34.551651>,  <41.566818, 32.720726, 34.453571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.770451, 32.640015, 34.551651>,  <42.109837, 32.505493, 34.715118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.770451, 32.640015, 34.551651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313017, -0.941498, -0.124905,
		-0.426769, 0.021943, 0.904094,
		-0.848462, 0.336303, -0.408671,
		41.515911, 32.740906, 34.429050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.542614, 32.080158, 34.972927>,  <42.109837, 32.505493, 34.715118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.542614, 32.080158, 34.972927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.374653, 32.244526, 34.649242>,  <41.273876, 32.343147, 34.455032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.374653, 32.244526, 34.649242>,  <41.542614, 32.080158, 34.972927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.374653, 32.244526, 34.649242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492296, -0.852182, -0.177285,
		-0.762448, 0.323931, 0.560127,
		-0.419902, 0.410919, -0.809214,
		41.248684, 32.367802, 34.406479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.757694, 31.867512, 34.925606>,  <41.542614, 32.080158, 34.972927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.757694, 31.867512, 34.925606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.886154, 31.959618, 34.558163>,  <40.963230, 32.014881, 34.337696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.886154, 31.959618, 34.558163>,  <40.757694, 31.867512, 34.925606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.886154, 31.959618, 34.558163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536784, -0.754865, -0.376886,
		-0.780207, 0.614132, -0.118824,
		0.321154, 0.230266, -0.918606,
		40.982502, 32.028698, 34.282581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.173943, 31.636358, 34.568096>,  <40.757694, 31.867512, 34.925606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.173943, 31.636358, 34.568096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.474754, 31.672670, 34.306957>,  <40.655239, 31.694458, 34.150272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.474754, 31.672670, 34.306957>,  <40.173943, 31.636358, 34.568096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.474754, 31.672670, 34.306957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387187, -0.740729, -0.549004,
		-0.533424, 0.665642, -0.521900,
		0.752027, 0.090779, -0.652851,
		40.700363, 31.699903, 34.111103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.950588, 31.631592, 33.855240>,  <40.173943, 31.636358, 34.568096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.950588, 31.631592, 33.855240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.332466, 31.526272, 33.799782>,  <40.561592, 31.463079, 33.766506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.332466, 31.526272, 33.799782>,  <39.950588, 31.631592, 33.855240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.332466, 31.526272, 33.799782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295479, -0.783614, -0.546481,
		0.035241, 0.562692, -0.825915,
		0.954699, -0.263299, -0.138649,
		40.618877, 31.447283, 33.758186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.901142, 31.367300, 33.255753>,  <39.950588, 31.631592, 33.855240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.901142, 31.367300, 33.255753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.247005, 31.222664, 33.395248>,  <40.454525, 31.135883, 33.478947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.247005, 31.222664, 33.395248>,  <39.901142, 31.367300, 33.255753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.247005, 31.222664, 33.395248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139222, -0.839489, -0.525238,
		0.482681, 0.405600, -0.776214,
		0.864660, -0.361589, 0.348737,
		40.506405, 31.114187, 33.499870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.204674, 30.950100, 32.721912>,  <39.901142, 31.367300, 33.255753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.204674, 30.950100, 32.721912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.388107, 30.842579, 33.060722>,  <40.498165, 30.778067, 33.264008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.388107, 30.842579, 33.060722>,  <40.204674, 30.950100, 32.721912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.388107, 30.842579, 33.060722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044656, -0.944981, -0.324064,
		0.887530, 0.186434, -0.421347,
		0.458582, -0.268801, 0.847024,
		40.525681, 30.761938, 33.314831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.654289, 30.383419, 32.554310>,  <40.204674, 30.950100, 32.721912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.654289, 30.383419, 32.554310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.606476, 30.334921, 32.948471>,  <40.577785, 30.305822, 33.184967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.606476, 30.334921, 32.948471>,  <40.654289, 30.383419, 32.554310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.606476, 30.334921, 32.948471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070966, -0.991020, -0.113329,
		0.990290, 0.056383, 0.127069,
		-0.119538, -0.121246, 0.985399,
		40.570614, 30.298548, 33.244091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.137508, 29.864643, 32.759678>,  <40.654289, 30.383419, 32.554310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.137508, 29.864643, 32.759678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.900974, 29.847549, 33.081795>,  <40.759056, 29.837294, 33.275066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.900974, 29.847549, 33.081795>,  <41.137508, 29.864643, 32.759678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.900974, 29.847549, 33.081795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027464, -0.999083, -0.032851,
		0.805961, 0.002691, 0.591962,
		-0.591331, -0.042735, 0.805296,
		40.723576, 29.834728, 33.323383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.416996, 29.319616, 33.200645>,  <41.137508, 29.864643, 32.759678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.416996, 29.319616, 33.200645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.036755, 29.369110, 33.314518>,  <40.808609, 29.398806, 33.382843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.036755, 29.369110, 33.314518>,  <41.416996, 29.319616, 33.200645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.036755, 29.369110, 33.314518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103053, -0.990901, 0.086570,
		0.292803, 0.052956, 0.954705,
		-0.950603, 0.123733, 0.284681,
		40.751575, 29.406229, 33.399921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.417450, 29.039639, 33.878876>,  <41.416996, 29.319616, 33.200645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.417450, 29.039639, 33.878876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.049297, 29.043474, 33.722515>,  <40.828403, 29.045776, 33.628700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.049297, 29.043474, 33.722515>,  <41.417450, 29.039639, 33.878876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.049297, 29.043474, 33.722515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164995, -0.915865, 0.366016,
		-0.354501, 0.401371, 0.844530,
		-0.920383, 0.009590, -0.390900,
		40.773182, 29.046350, 33.605244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.108894, 28.611286, 34.345802>,  <41.417450, 29.039639, 33.878876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.108894, 28.611286, 34.345802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.833580, 28.641645, 34.057217>,  <40.668392, 28.659861, 33.884064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.833580, 28.641645, 34.057217>,  <41.108894, 28.611286, 34.345802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.833580, 28.641645, 34.057217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315562, -0.926817, 0.203546,
		-0.653215, 0.367763, 0.661862,
		-0.688281, 0.075900, -0.721463,
		40.627094, 28.664415, 33.840778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.402424, 28.299213, 34.609226>,  <41.108894, 28.611286, 34.345802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.402424, 28.299213, 34.609226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.390961, 28.263355, 34.211002>,  <40.384083, 28.241840, 33.972069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.390961, 28.263355, 34.211002>,  <40.402424, 28.299213, 34.609226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.390961, 28.263355, 34.211002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250179, -0.963629, 0.093972,
		-0.967775, 0.251762, 0.005189,
		-0.028659, -0.089646, -0.995561,
		40.382362, 28.236462, 33.912334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.784126, 28.101645, 34.537476>,  <40.402424, 28.299213, 34.609226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.784126, 28.101645, 34.537476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.962364, 27.999672, 34.194210>,  <40.069309, 27.938488, 33.988251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.962364, 27.999672, 34.194210>,  <39.784126, 28.101645, 34.537476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.962364, 27.999672, 34.194210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372462, -0.924485, 0.081236,
		-0.814072, 0.283436, -0.506903,
		0.445599, -0.254934, -0.858167,
		40.096043, 27.923191, 33.936760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.301418, 27.612360, 34.113865>,  <39.784126, 28.101645, 34.537476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.301418, 27.612360, 34.113865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.670002, 27.532919, 33.980316>,  <39.891151, 27.485254, 33.900185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.670002, 27.532919, 33.980316>,  <39.301418, 27.612360, 34.113865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.670002, 27.532919, 33.980316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198650, -0.979468, 0.034372,
		-0.333844, 0.034652, -0.941991,
		0.921459, -0.198602, -0.333873,
		39.946438, 27.473339, 33.880154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.223587, 27.262394, 33.516479>,  <39.301418, 27.612360, 34.113865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.223587, 27.262394, 33.516479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.581882, 27.159613, 33.661602>,  <39.796860, 27.097944, 33.748676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.581882, 27.159613, 33.661602>,  <39.223587, 27.262394, 33.516479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.581882, 27.159613, 33.661602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294711, -0.954180, 0.051827,
		0.332866, -0.153347, -0.930422,
		0.895737, -0.256954, 0.362807,
		39.850605, 27.082527, 33.770443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.539040, 26.625134, 33.194557>,  <39.223587, 27.262394, 33.516479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.539040, 26.625134, 33.194557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.665661, 26.604441, 33.573421>,  <39.741634, 26.592026, 33.800739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.665661, 26.604441, 33.573421>,  <39.539040, 26.625134, 33.194557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.665661, 26.604441, 33.573421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317069, -0.946850, 0.054254,
		0.894016, -0.317490, -0.316127,
		0.316549, -0.051730, 0.947164,
		39.760624, 26.588923, 33.857571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.878139, 25.945120, 33.273983>,  <39.539040, 26.625134, 33.194557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.878139, 25.945120, 33.273983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.793297, 26.060171, 33.647568>,  <39.742393, 26.129202, 33.871719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.793297, 26.060171, 33.647568>,  <39.878139, 25.945120, 33.273983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.793297, 26.060171, 33.647568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312719, -0.925429, 0.213980,
		0.925861, -0.246681, 0.286233,
		-0.212104, 0.287626, 0.933961,
		39.729664, 26.146460, 33.927757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.423012, 26.325235, 33.740940>,  <39.878139, 25.945120, 33.273983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.423012, 26.325235, 33.740940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.531891, 26.611670, 33.998043>,  <40.597218, 26.783529, 34.152306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.531891, 26.611670, 33.998043>,  <40.423012, 26.325235, 33.740940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.531891, 26.611670, 33.998043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481818, -0.476776, 0.735212,
		0.832922, -0.509813, 0.215245,
		0.272197, 0.716083, 0.642755,
		40.613548, 26.826494, 34.190868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.190067, 26.083902, 33.644871>,  <40.423012, 26.325235, 33.740940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.190067, 26.083902, 33.644871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.534126, 25.891994, 33.714119>,  <41.740562, 25.776850, 33.755669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.534126, 25.891994, 33.714119>,  <41.190067, 26.083902, 33.644871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.534126, 25.891994, 33.714119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432554, 0.866009, 0.250849,
		-0.270275, -0.140881, 0.952420,
		0.860144, -0.479772, 0.173122,
		41.792168, 25.748062, 33.766056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.375221, 26.164377, 34.409435>,  <41.190067, 26.083902, 33.644871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.375221, 26.164377, 34.409435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.678463, 26.134903, 34.150249>,  <41.860409, 26.117218, 33.994740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.678463, 26.134903, 34.150249>,  <41.375221, 26.164377, 34.409435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.678463, 26.134903, 34.150249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359329, 0.876359, 0.320746,
		0.544211, -0.475989, 0.690847,
		0.758101, -0.073687, -0.647960,
		41.905895, 26.112797, 33.955860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.815201, 26.535416, 34.762321>,  <41.375221, 26.164377, 34.409435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.815201, 26.535416, 34.762321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.955341, 26.512726, 34.388363>,  <42.039425, 26.499113, 34.163986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.955341, 26.512726, 34.388363>,  <41.815201, 26.535416, 34.762321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.955341, 26.512726, 34.388363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510162, 0.848658, 0.139695,
		0.785484, -0.525892, 0.326270,
		0.350356, -0.056723, -0.934897,
		42.060448, 26.495708, 34.107895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.511868, 26.722721, 34.806030>,  <41.815201, 26.535416, 34.762321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.511868, 26.722721, 34.806030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.357040, 26.802391, 34.445919>,  <42.264145, 26.850193, 34.229851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.357040, 26.802391, 34.445919>,  <42.511868, 26.722721, 34.806030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.357040, 26.802391, 34.445919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294057, 0.952071, 0.084205,
		0.873904, -0.232141, -0.427086,
		-0.387069, 0.199175, -0.900281,
		42.240921, 26.862144, 34.175835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.851437, 27.235607, 34.634865>,  <42.511868, 26.722721, 34.806030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.851437, 27.235607, 34.634865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.542667, 27.269207, 34.382809>,  <42.357407, 27.289368, 34.231575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.542667, 27.269207, 34.382809>,  <42.851437, 27.235607, 34.634865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.542667, 27.269207, 34.382809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095687, 0.995291, 0.015461,
		0.628469, -0.048361, -0.776330,
		-0.771927, 0.084001, -0.630137,
		42.311089, 27.294407, 34.193768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.058632, 27.481161, 33.966373>,  <42.851437, 27.235607, 34.634865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.058632, 27.481161, 33.966373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.683872, 27.573677, 34.071239>,  <42.459019, 27.629187, 34.134159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.683872, 27.573677, 34.071239>,  <43.058632, 27.481161, 33.966373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.683872, 27.573677, 34.071239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222446, 0.972884, -0.063356,
		-0.269706, -0.001041, -0.962942,
		-0.936897, 0.231291, 0.262161,
		42.402802, 27.643064, 34.149887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.694958, 28.048599, 33.555447>,  <43.058632, 27.481161, 33.966373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.694958, 28.048599, 33.555447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.594337, 28.030989, 33.942184>,  <42.533966, 28.020422, 34.174225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.594337, 28.030989, 33.942184>,  <42.694958, 28.048599, 33.555447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.594337, 28.030989, 33.942184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366629, 0.920181, 0.137294,
		-0.895714, 0.389009, -0.215334,
		-0.251555, -0.044028, 0.966841,
		42.518871, 28.017780, 34.232235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.351345, 28.626699, 33.599316>,  <42.694958, 28.048599, 33.555447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.351345, 28.626699, 33.599316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.419922, 28.536598, 33.982956>,  <42.461067, 28.482538, 34.213139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.419922, 28.536598, 33.982956>,  <42.351345, 28.626699, 33.599316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.419922, 28.536598, 33.982956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423495, 0.895829, 0.134692,
		-0.889528, 0.383083, 0.248972,
		0.171438, -0.225251, 0.959099,
		42.471352, 28.469023, 34.270687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.127674, 29.210045, 33.873146>,  <42.351345, 28.626699, 33.599316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.127674, 29.210045, 33.873146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.382320, 29.037752, 34.129017>,  <42.535110, 28.934378, 34.282539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.382320, 29.037752, 34.129017>,  <42.127674, 29.210045, 33.873146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.382320, 29.037752, 34.129017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295617, 0.902421, 0.313445,
		-0.712269, -0.010446, 0.701829,
		0.636619, -0.430730, 0.639678,
		42.573307, 28.908533, 34.320919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.951160, 29.603939, 34.430698>,  <42.127674, 29.210045, 33.873146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.951160, 29.603939, 34.430698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.306999, 29.427458, 34.477951>,  <42.520504, 29.321569, 34.506302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.306999, 29.427458, 34.477951>,  <41.951160, 29.603939, 34.430698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.306999, 29.427458, 34.477951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421177, 0.892476, 0.161543,
		-0.176703, -0.093954, 0.979770,
		0.889599, -0.441202, 0.118132,
		42.573879, 29.295097, 34.513390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.225803, 29.903088, 34.966827>,  <41.951160, 29.603939, 34.430698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.225803, 29.903088, 34.966827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.541958, 29.739607, 34.784286>,  <42.731651, 29.641520, 34.674763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.541958, 29.739607, 34.784286>,  <42.225803, 29.903088, 34.966827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.541958, 29.739607, 34.784286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445629, 0.894732, -0.029491,
		0.420362, -0.180053, 0.889312,
		0.790386, -0.408700, -0.456348,
		42.779076, 29.616997, 34.647381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.860271, 30.111895, 35.356388>,  <42.225803, 29.903088, 34.966827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.860271, 30.111895, 35.356388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.007801, 30.036608, 34.992290>,  <43.096317, 29.991436, 34.773830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.007801, 30.036608, 34.992290>,  <42.860271, 30.111895, 35.356388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.007801, 30.036608, 34.992290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563312, 0.824219, 0.057818,
		0.739359, -0.534076, 0.410013,
		0.368820, -0.188217, -0.910245,
		43.118446, 29.980143, 34.719215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.488132, 30.240728, 35.360672>,  <42.860271, 30.111895, 35.356388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.488132, 30.240728, 35.360672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.439552, 30.250952, 34.963764>,  <43.410404, 30.257086, 34.725620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.439552, 30.250952, 34.963764>,  <43.488132, 30.240728, 35.360672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.439552, 30.250952, 34.963764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760447, 0.644882, -0.076468,
		0.637942, -0.763855, -0.097757,
		-0.121452, 0.025557, -0.992268,
		43.403118, 30.258619, 34.666084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.104351, 30.137409, 35.062469>,  <43.488132, 30.240728, 35.360672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.104351, 30.137409, 35.062469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.886913, 30.342051, 34.796307>,  <43.756451, 30.464834, 34.636608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.886913, 30.342051, 34.796307>,  <44.104351, 30.137409, 35.062469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.886913, 30.342051, 34.796307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627108, 0.774481, 0.083153,
		0.557885, -0.372079, -0.741836,
		-0.543599, 0.511601, -0.665405,
		43.723835, 30.495531, 34.596684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.542362, 30.513124, 34.699947>,  <44.104351, 30.137409, 35.062469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.542362, 30.513124, 34.699947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.204010, 30.697176, 34.592041>,  <44.000999, 30.807608, 34.527298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.204010, 30.697176, 34.592041>,  <44.542362, 30.513124, 34.699947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.204010, 30.697176, 34.592041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503296, 0.856010, -0.118066,
		0.176596, -0.235641, -0.955660,
		-0.845876, 0.460130, -0.269765,
		43.950249, 30.835215, 34.511112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.706139, 30.779615, 34.070087>,  <44.542362, 30.513124, 34.699947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.706139, 30.779615, 34.070087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.399853, 30.993706, 34.212757>,  <44.216080, 31.122160, 34.298359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.399853, 30.993706, 34.212757>,  <44.706139, 30.779615, 34.070087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.399853, 30.993706, 34.212757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515114, 0.842389, -0.158238,
		-0.385150, 0.062562, -0.920731,
		-0.765714, 0.535227, 0.356672,
		44.170139, 31.154274, 34.319759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.790123, 31.437757, 33.707729>,  <44.706139, 30.779615, 34.070087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.790123, 31.437757, 33.707729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.521534, 31.503618, 33.996731>,  <44.360378, 31.543135, 34.170132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.521534, 31.503618, 33.996731>,  <44.790123, 31.437757, 33.707729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.521534, 31.503618, 33.996731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199772, 0.979126, -0.037473,
		-0.713591, 0.119173, -0.690352,
		-0.671475, 0.164653, 0.722503,
		44.320091, 31.553015, 34.213482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.435387, 31.934902, 33.465569>,  <44.790123, 31.437757, 33.707729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.435387, 31.934902, 33.465569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.426273, 31.949242, 33.865208>,  <44.420807, 31.957846, 34.104992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.426273, 31.949242, 33.865208>,  <44.435387, 31.934902, 33.465569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.426273, 31.949242, 33.865208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299025, 0.953851, -0.027408,
		-0.953973, 0.298131, -0.032449,
		-0.022780, 0.035850, 0.999098,
		44.419437, 31.959997, 34.164936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.108459, 32.449608, 33.545536>,  <44.435387, 31.934902, 33.465569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.108459, 32.449608, 33.545536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.273342, 32.410400, 33.907856>,  <44.372272, 32.386875, 34.125248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.273342, 32.410400, 33.907856>,  <44.108459, 32.449608, 33.545536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.273342, 32.410400, 33.907856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042403, 0.995182, 0.088397,
		-0.910105, 0.001971, 0.414373,
		0.412202, -0.098022, 0.905804,
		44.397003, 32.380993, 34.179596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.703529, 32.820053, 34.073765>,  <44.108459, 32.449608, 33.545536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.703529, 32.820053, 34.073765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.046482, 32.770634, 34.273617>,  <44.252254, 32.740982, 34.393528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.046482, 32.770634, 34.273617>,  <43.703529, 32.820053, 34.073765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.046482, 32.770634, 34.273617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040302, 0.983897, 0.174133,
		-0.513095, -0.129163, 0.848557,
		0.857385, -0.123545, 0.499627,
		44.303696, 32.733570, 34.423504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.572063, 33.221718, 34.607292>,  <43.703529, 32.820053, 34.073765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.572063, 33.221718, 34.607292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.971046, 33.210686, 34.581005>,  <44.210438, 33.204067, 34.565235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.971046, 33.210686, 34.581005>,  <43.572063, 33.221718, 34.607292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.971046, 33.210686, 34.581005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041642, 0.973843, 0.223372,
		0.057834, -0.225540, 0.972516,
		0.997458, -0.027579, -0.065713,
		44.270283, 33.202412, 34.561291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.768307, 33.718819, 35.153027>,  <43.572063, 33.221718, 34.607292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.768307, 33.718819, 35.153027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.090271, 33.685253, 34.918056>,  <44.283451, 33.665112, 34.777073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.090271, 33.685253, 34.918056>,  <43.768307, 33.718819, 35.153027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.090271, 33.685253, 34.918056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238328, 0.952314, 0.190522,
		0.543428, -0.293355, 0.786530,
		0.804914, -0.083917, -0.587428,
		44.331745, 33.660080, 34.741829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.293522, 33.978615, 35.536064>,  <43.768307, 33.718819, 35.153027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.293522, 33.978615, 35.536064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.409576, 33.994236, 35.153591>,  <44.479210, 34.003609, 34.924107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.409576, 33.994236, 35.153591>,  <44.293522, 33.978615, 35.536064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.409576, 33.994236, 35.153591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255332, 0.959788, 0.116674,
		0.922293, -0.277997, 0.268502,
		0.290140, 0.039050, -0.956187,
		44.496620, 34.005951, 34.866734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.694195, 34.438732, 35.600597>,  <44.293522, 33.978615, 35.536064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.694195, 34.438732, 35.600597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.673222, 34.438141, 35.201149>,  <44.660637, 34.437786, 34.961479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.673222, 34.438141, 35.201149>,  <44.694195, 34.438732, 35.600597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.673222, 34.438141, 35.201149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178846, 0.983817, -0.010848,
		0.982479, -0.179169, -0.051316,
		-0.052430, -0.001481, -0.998623,
		44.657494, 34.437698, 34.901562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.281742, 34.732868, 35.356407>,  <44.694195, 34.438732, 35.600597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.281742, 34.732868, 35.356407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.023365, 34.753460, 35.051750>,  <44.868340, 34.765816, 34.868954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.023365, 34.753460, 35.051750>,  <45.281742, 34.732868, 35.356407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.023365, 34.753460, 35.051750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143409, 0.988143, -0.054834,
		0.749794, -0.144646, -0.645668,
		-0.645944, 0.051481, -0.761647,
		44.829582, 34.768906, 34.823257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.628571, 35.006741, 34.921753>,  <45.281742, 34.732868, 35.356407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.628571, 35.006741, 34.921753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.243942, 35.082462, 34.842209>,  <45.013165, 35.127895, 34.794483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.243942, 35.082462, 34.842209>,  <45.628571, 35.006741, 34.921753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.243942, 35.082462, 34.842209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177856, 0.981261, 0.074125,
		0.209163, 0.035909, -0.977221,
		-0.961571, 0.189309, -0.198857,
		44.955471, 35.139256, 34.782551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.164986, 35.198696, 34.502567>,  <45.628571, 35.006741, 34.921753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.164986, 35.198696, 34.502567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.358952, 35.531998, 34.608810>,  <46.475330, 35.731979, 34.672558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.358952, 35.531998, 34.608810>,  <46.164986, 35.198696, 34.502567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.358952, 35.531998, 34.608810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869939, -0.490749, -0.048696,
		0.089771, 0.254677, -0.962851,
		0.484919, 0.833250, 0.265608,
		46.504429, 35.781971, 34.688492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.655674, 35.279243, 33.983589>,  <46.164986, 35.198696, 34.502567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.655674, 35.279243, 33.983589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.755497, 35.451912, 34.330318>,  <46.815392, 35.555511, 34.538357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.755497, 35.451912, 34.330318>,  <46.655674, 35.279243, 33.983589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.755497, 35.451912, 34.330318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876247, -0.481703, -0.012382,
		0.412207, 0.762642, -0.498461,
		0.249553, 0.431671, 0.866824,
		46.830364, 35.581413, 34.590366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.330921, 35.588871, 33.997646>,  <46.655674, 35.279243, 33.983589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.330921, 35.588871, 33.997646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.218815, 35.467739, 34.362007>,  <47.151550, 35.395061, 34.580624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.218815, 35.467739, 34.362007>,  <47.330921, 35.588871, 33.997646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.218815, 35.467739, 34.362007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788854, -0.613354, 0.038807,
		0.546954, 0.729446, 0.410792,
		-0.280269, -0.302829, 0.910903,
		47.134735, 35.376892, 34.635277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.041412, 35.534355, 34.461914>,  <47.330921, 35.588871, 33.997646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.041412, 35.534355, 34.461914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.754734, 35.283096, 34.583092>,  <47.582726, 35.132343, 34.655800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.754734, 35.283096, 34.583092>,  <48.041412, 35.534355, 34.461914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.754734, 35.283096, 34.583092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681712, -0.722610, 0.114477,
		0.147006, 0.288569, 0.946107,
		-0.716700, -0.628143, 0.302948,
		47.539722, 35.094654, 34.673977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.271313, 35.193668, 35.141499>,  <48.041412, 35.534355, 34.461914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.271313, 35.193668, 35.141499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.020794, 34.976280, 34.917927>,  <47.870483, 34.845848, 34.783783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.020794, 34.976280, 34.917927>,  <48.271313, 35.193668, 35.141499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.020794, 34.976280, 34.917927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666231, -0.745429, -0.021724,
		-0.404833, -0.385979, 0.828933,
		-0.626296, -0.543466, -0.558926,
		47.832905, 34.813240, 34.750248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.213085, 34.936913, 44.673458> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.824738, 34.888504, 44.590740>,  <36.591728, 34.859459, 44.541111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.824738, 34.888504, 44.590740>,  <37.213085, 34.936913, 44.673458>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.824738, 34.888504, 44.590740> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132163, 0.449415, -0.883493,
		0.199855, -0.885088, -0.420330,
		-0.970872, -0.121018, -0.206794,
		36.533478, 34.852200, 44.528702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.256516, 34.900436, 43.991833>,  <37.213085, 34.936913, 44.673458>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.256516, 34.900436, 43.991833> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.862103, 34.920124, 44.055481>,  <36.625454, 34.931938, 44.093670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.862103, 34.920124, 44.055481>,  <37.256516, 34.900436, 43.991833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.862103, 34.920124, 44.055481> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127963, 0.387654, -0.912880,
		-0.106613, -0.920490, -0.375941,
		-0.986032, 0.049218, 0.159118,
		36.566292, 34.934891, 44.103218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.949844, 34.473991, 43.403316>,  <37.256516, 34.900436, 43.991833>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.949844, 34.473991, 43.403316> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.699497, 34.759525, 43.529003>,  <36.549290, 34.930847, 43.604416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.699497, 34.759525, 43.529003>,  <36.949844, 34.473991, 43.403316>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.699497, 34.759525, 43.529003> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260910, 0.188037, -0.946873,
		-0.734994, -0.674599, 0.068560,
		-0.625867, 0.713833, 0.314216,
		36.511738, 34.973675, 43.623268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.368191, 34.212158, 43.071095>,  <36.949844, 34.473991, 43.403316>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.368191, 34.212158, 43.071095> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.345226, 34.604313, 43.146500>,  <36.331448, 34.839607, 43.191742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.345226, 34.604313, 43.146500>,  <36.368191, 34.212158, 43.071095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.345226, 34.604313, 43.146500> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168277, 0.176624, -0.969787,
		-0.984066, -0.087399, 0.154837,
		-0.057411, 0.980390, 0.188517,
		36.328003, 34.898430, 43.203056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.007923, 34.372360, 42.448978>,  <36.368191, 34.212158, 43.071095>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.007923, 34.372360, 42.448978> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.110744, 34.730930, 42.593391>,  <36.172436, 34.946072, 42.680038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.110744, 34.730930, 42.593391>,  <36.007923, 34.372360, 42.448978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.110744, 34.730930, 42.593391> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241362, 0.421297, -0.874216,
		-0.935772, 0.137579, 0.324658,
		0.257052, 0.896426, 0.361032,
		36.187859, 34.999859, 42.701702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.487679, 34.835159, 42.237888>,  <36.007923, 34.372360, 42.448978>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.487679, 34.835159, 42.237888> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.802273, 35.072369, 42.306900>,  <35.991028, 35.214695, 42.348305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.802273, 35.072369, 42.306900>,  <35.487679, 34.835159, 42.237888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.802273, 35.072369, 42.306900> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171160, 0.477690, -0.861694,
		-0.593417, 0.648180, 0.477198,
		0.786486, 0.593022, 0.172527,
		36.038219, 35.250275, 42.358658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.315849, 35.537174, 42.065945>,  <35.487679, 34.835159, 42.237888>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.315849, 35.537174, 42.065945> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.714672, 35.521648, 42.039520>,  <35.953968, 35.512333, 42.023666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.714672, 35.521648, 42.039520>,  <35.315849, 35.537174, 42.065945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.714672, 35.521648, 42.039520> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047264, 0.367110, -0.928976,
		0.060308, 0.929367, 0.364196,
		0.997060, -0.038811, -0.066065,
		36.013790, 35.510006, 42.019699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.544785, 36.155968, 41.893642>,  <35.315849, 35.537174, 42.065945>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.544785, 36.155968, 41.893642> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.861790, 35.930935, 41.799477>,  <36.051994, 35.795914, 41.742977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.861790, 35.930935, 41.799477>,  <35.544785, 36.155968, 41.893642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.861790, 35.930935, 41.799477> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076212, 0.474348, -0.877032,
		0.605073, 0.677119, 0.418803,
		0.792514, -0.562586, -0.235411,
		36.099545, 35.762157, 41.728855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.048565, 36.610210, 41.590103>,  <35.544785, 36.155968, 41.893642>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.048565, 36.610210, 41.590103> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.138962, 36.247387, 41.448021>,  <36.193199, 36.029694, 41.362774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.138962, 36.247387, 41.448021>,  <36.048565, 36.610210, 41.590103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.138962, 36.247387, 41.448021> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047126, 0.354030, -0.934046,
		0.972988, 0.227827, 0.037263,
		0.225993, -0.907060, -0.355204,
		36.206760, 35.975269, 41.341461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.670128, 36.658207, 41.036385>,  <36.048565, 36.610210, 41.590103>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.670128, 36.658207, 41.036385> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.504078, 36.308834, 40.934574>,  <36.404446, 36.099209, 40.873486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.504078, 36.308834, 40.934574>,  <36.670128, 36.658207, 41.036385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.504078, 36.308834, 40.934574> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164751, 0.202976, -0.965224,
		0.894722, -0.442624, 0.059639,
		-0.415127, -0.873433, -0.254530,
		36.379539, 36.046803, 40.858215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.064213, 36.447750, 40.549675>,  <36.670128, 36.658207, 41.036385>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.064213, 36.447750, 40.549675> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.721268, 36.249260, 40.494999>,  <36.515499, 36.130165, 40.462193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.721268, 36.249260, 40.494999>,  <37.064213, 36.447750, 40.549675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.721268, 36.249260, 40.494999> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081491, 0.131347, -0.987981,
		0.508220, -0.858197, -0.072174,
		-0.857363, -0.496230, -0.136689,
		36.464058, 36.100391, 40.453991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.172935, 36.057262, 39.964279>,  <37.064213, 36.447750, 40.549675>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.172935, 36.057262, 39.964279> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.774567, 36.061386, 40.000114>,  <36.535545, 36.063862, 40.021614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.774567, 36.061386, 40.000114>,  <37.172935, 36.057262, 39.964279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.774567, 36.061386, 40.000114> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090041, -0.059514, -0.994158,
		-0.004912, -0.998174, 0.060200,
		-0.995926, 0.010304, 0.089585,
		36.475788, 36.064480, 40.026989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.038799, 35.609943, 39.423706>,  <37.172935, 36.057262, 39.964279>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.038799, 35.609943, 39.423706> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.682938, 35.763077, 39.523270>,  <36.469421, 35.854958, 39.583008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.682938, 35.763077, 39.523270>,  <37.038799, 35.609943, 39.423706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.682938, 35.763077, 39.523270> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384653, -0.334536, -0.860307,
		-0.246089, -0.861117, 0.444880,
		-0.889653, 0.382837, 0.248905,
		36.416042, 35.877926, 39.597942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.558887, 35.180134, 39.213699>,  <37.038799, 35.609943, 39.423706>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.558887, 35.180134, 39.213699> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.361755, 35.526928, 39.243256>,  <36.243477, 35.735004, 39.260990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.361755, 35.526928, 39.243256>,  <36.558887, 35.180134, 39.213699>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.361755, 35.526928, 39.243256> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295198, -0.086711, -0.951493,
		-0.818519, -0.490740, 0.298665,
		-0.492833, 0.866981, 0.073891,
		36.213905, 35.787022, 39.265423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.903141, 34.978004, 39.080772>,  <36.558887, 35.180134, 39.213699>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.903141, 34.978004, 39.080772> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.961884, 35.367229, 39.009697>,  <35.997128, 35.600765, 38.967052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.961884, 35.367229, 39.009697>,  <35.903141, 34.978004, 39.080772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.961884, 35.367229, 39.009697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224738, -0.142115, -0.964000,
		-0.963289, 0.181504, 0.197814,
		0.146857, 0.973067, -0.177689,
		36.005939, 35.659149, 38.956390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.440639, 35.192169, 38.574276>,  <35.903141, 34.978004, 39.080772>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.440639, 35.192169, 38.574276> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.693733, 35.501202, 38.553211>,  <35.845589, 35.686619, 38.540573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.693733, 35.501202, 38.553211>,  <35.440639, 35.192169, 38.574276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.693733, 35.501202, 38.553211> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223092, 0.116743, -0.967782,
		-0.741539, 0.624095, 0.246223,
		0.632733, 0.772578, -0.052661,
		35.883553, 35.732975, 38.537415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.158390, 35.712013, 38.130589>,  <35.440639, 35.192169, 38.574276>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.158390, 35.712013, 38.130589> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.548489, 35.800171, 38.137817>,  <35.782547, 35.853065, 38.142155>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.548489, 35.800171, 38.137817>,  <35.158390, 35.712013, 38.130589>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.548489, 35.800171, 38.137817> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007577, 0.114974, -0.993340,
		-0.221005, 0.968611, 0.113797,
		0.975243, 0.220396, 0.018070,
		35.841061, 35.866291, 38.143238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.238438, 36.336014, 37.687069>,  <35.158390, 35.712013, 38.130589>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.238438, 36.336014, 37.687069> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.607307, 36.183811, 37.714787>,  <35.828629, 36.092487, 37.731415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.607307, 36.183811, 37.714787>,  <35.238438, 36.336014, 37.687069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.607307, 36.183811, 37.714787> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129081, 0.133914, -0.982550,
		0.364591, 0.915030, 0.172609,
		0.922177, -0.380510, 0.069290,
		35.883961, 36.069656, 37.735573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.697796, 36.757313, 37.297260>,  <35.238438, 36.336014, 37.687069>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.697796, 36.757313, 37.297260> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.889214, 36.407684, 37.330715>,  <36.004063, 36.197906, 37.350788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.889214, 36.407684, 37.330715>,  <35.697796, 36.757313, 37.297260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.889214, 36.407684, 37.330715> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407621, 0.136780, -0.902849,
		0.777717, 0.466141, 0.421745,
		0.478541, -0.874073, 0.083633,
		36.032776, 36.145462, 37.355804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.440353, 36.919765, 37.062138>,  <35.697796, 36.757313, 37.297260>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.440353, 36.919765, 37.062138> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.441105, 36.521309, 37.027054>,  <36.441555, 36.282234, 37.006004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.441105, 36.521309, 37.027054>,  <36.440353, 36.919765, 37.062138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.441105, 36.521309, 37.027054> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415398, 0.080564, -0.906065,
		0.909638, -0.034736, 0.413948,
		0.001877, -0.996144, -0.087713,
		36.441669, 36.222466, 37.000740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.134987, 36.659176, 36.857437>,  <36.440353, 36.919765, 37.062138>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.134987, 36.659176, 36.857437> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.890221, 36.355686, 36.768085>,  <36.743362, 36.173592, 36.714474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.890221, 36.355686, 36.768085>,  <37.134987, 36.659176, 36.857437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.890221, 36.355686, 36.768085> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345187, -0.002073, -0.938532,
		0.711625, -0.651407, 0.263171,
		-0.611912, -0.758726, -0.223382,
		36.706646, 36.128067, 36.701073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.525337, 36.226624, 36.487499>,  <37.134987, 36.659176, 36.857437>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.525337, 36.226624, 36.487499> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.154087, 36.121407, 36.382130>,  <36.931335, 36.058277, 36.318909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.154087, 36.121407, 36.382130>,  <37.525337, 36.226624, 36.487499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.154087, 36.121407, 36.382130> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296965, -0.096427, -0.950007,
		0.224492, -0.959953, 0.167612,
		-0.928125, -0.263044, -0.263425,
		36.875648, 36.042492, 36.303101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.224487, 36.431641, 36.393635>,  <37.525337, 36.226624, 36.487499>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.224487, 36.431641, 36.393635> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.513428, 36.175758, 36.288578>,  <38.686794, 36.022228, 36.225544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.513428, 36.175758, 36.288578>,  <38.224487, 36.431641, 36.393635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.513428, 36.175758, 36.288578> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125898, -0.251795, 0.959557,
		-0.679966, -0.726205, -0.101347,
		0.722354, -0.639707, -0.262640,
		38.730133, 35.983845, 36.209785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.138557, 35.908302, 36.873207>,  <38.224487, 36.431641, 36.393635>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.138557, 35.908302, 36.873207> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.510647, 35.855759, 36.736134>,  <38.733902, 35.824234, 36.653889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.510647, 35.855759, 36.736134>,  <38.138557, 35.908302, 36.873207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.510647, 35.855759, 36.736134> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260732, -0.420575, 0.868985,
		-0.258267, -0.897699, -0.356981,
		0.930224, -0.131354, -0.342679,
		38.789715, 35.816353, 36.633331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.283268, 35.304424, 36.998825>,  <38.138557, 35.908302, 36.873207>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.283268, 35.304424, 36.998825> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.634464, 35.495007, 36.980434>,  <38.845184, 35.609356, 36.969402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.634464, 35.495007, 36.980434>,  <38.283268, 35.304424, 36.998825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.634464, 35.495007, 36.980434> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273052, -0.419640, 0.865647,
		0.393152, -0.772586, -0.498540,
		0.877994, 0.476458, -0.045974,
		38.897861, 35.637943, 36.966640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.784527, 34.833557, 37.224380>,  <38.283268, 35.304424, 36.998825>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.784527, 34.833557, 37.224380> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.956974, 35.191174, 37.273071>,  <39.060444, 35.405746, 37.302284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.956974, 35.191174, 37.273071>,  <38.784527, 34.833557, 37.224380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.956974, 35.191174, 37.273071> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256354, -0.250713, 0.933502,
		0.865111, -0.371247, -0.337280,
		0.431121, 0.894046, 0.121724,
		39.086311, 35.459389, 37.309589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.545376, 34.731121, 37.636066>,  <38.784527, 34.833557, 37.224380>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.545376, 34.731121, 37.636066> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.486404, 35.125969, 37.660946>,  <39.451023, 35.362877, 37.675873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.486404, 35.125969, 37.660946>,  <39.545376, 34.731121, 37.636066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.486404, 35.125969, 37.660946> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383828, -0.000856, 0.923404,
		0.911560, 0.160006, -0.378757,
		-0.147426, 0.987116, 0.062195,
		39.442177, 35.422104, 37.679604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.113464, 34.975208, 37.854156>,  <39.545376, 34.731121, 37.636066>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.113464, 34.975208, 37.854156> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.847893, 35.249378, 37.973751>,  <39.688549, 35.413879, 38.045506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.847893, 35.249378, 37.973751>,  <40.113464, 34.975208, 37.854156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.847893, 35.249378, 37.973751> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360459, -0.056967, 0.931034,
		0.655190, 0.725907, -0.209247,
		-0.663924, 0.685429, 0.298984,
		39.648716, 35.455006, 38.063446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.438885, 35.411606, 38.271404>,  <40.113464, 34.975208, 37.854156>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.438885, 35.411606, 38.271404> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.057045, 35.473061, 38.373497>,  <39.827942, 35.509933, 38.434753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.057045, 35.473061, 38.373497>,  <40.438885, 35.411606, 38.271404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.057045, 35.473061, 38.373497> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239530, -0.113550, 0.964226,
		0.177122, 0.981581, 0.071594,
		-0.954596, 0.153637, 0.255230,
		39.770668, 35.519154, 38.450066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.445965, 35.784607, 38.874607>,  <40.438885, 35.411606, 38.271404>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.445965, 35.784607, 38.874607> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.075306, 35.635544, 38.894436>,  <39.852913, 35.546104, 38.906334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.075306, 35.635544, 38.894436>,  <40.445965, 35.784607, 38.874607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.075306, 35.635544, 38.894436> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090955, -0.094290, 0.991381,
		-0.364771, 0.923166, 0.121269,
		-0.926644, -0.372657, 0.049572,
		39.797314, 35.523746, 38.909306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.148739, 36.064213, 39.553833>,  <40.445965, 35.784607, 38.874607>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.148739, 36.064213, 39.553833> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.919811, 35.749645, 39.460880>,  <39.782455, 35.560905, 39.405109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.919811, 35.749645, 39.460880>,  <40.148739, 36.064213, 39.553833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.919811, 35.749645, 39.460880> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192178, -0.146866, 0.970308,
		-0.797196, 0.599982, -0.067078,
		-0.572316, -0.786417, -0.232384,
		39.748116, 35.513721, 39.391167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.622635, 36.054008, 40.072945>,  <40.148739, 36.064213, 39.553833>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.622635, 36.054008, 40.072945> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.594906, 35.684727, 39.921745>,  <39.578270, 35.463158, 39.831024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.594906, 35.684727, 39.921745>,  <39.622635, 36.054008, 40.072945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.594906, 35.684727, 39.921745> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189064, -0.359886, 0.913639,
		-0.979515, 0.134801, -0.149598,
		-0.069321, -0.923207, -0.378000,
		39.574108, 35.407764, 39.808346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.007523, 35.745003, 40.415886>,  <39.622635, 36.054008, 40.072945>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.007523, 35.745003, 40.415886> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.203426, 35.431095, 40.263947>,  <39.320969, 35.242752, 40.172783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.203426, 35.431095, 40.263947>,  <39.007523, 35.745003, 40.415886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.203426, 35.431095, 40.263947> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217998, -0.532060, 0.818162,
		-0.844166, -0.317894, -0.431656,
		0.489756, -0.784765, -0.379847,
		39.350353, 35.195667, 40.149994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.549820, 35.174145, 40.417267>,  <39.007523, 35.745003, 40.415886>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.549820, 35.174145, 40.417267> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.907463, 34.996613, 40.393337>,  <39.122051, 34.890095, 40.378979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.907463, 34.996613, 40.393337>,  <38.549820, 35.174145, 40.417267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.907463, 34.996613, 40.393337> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229062, -0.568002, 0.790509,
		-0.384832, -0.693100, -0.609522,
		0.894111, -0.443831, -0.059823,
		39.175697, 34.863464, 40.375389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.455276, 34.405636, 40.494553>,  <38.549820, 35.174145, 40.417267>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.455276, 34.405636, 40.494553> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.833282, 34.482063, 40.600712>,  <39.060085, 34.527920, 40.664406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.833282, 34.482063, 40.600712>,  <38.455276, 34.405636, 40.494553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.833282, 34.482063, 40.600712> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165175, -0.421551, 0.891635,
		0.282240, -0.886447, -0.366813,
		0.945018, 0.191066, 0.265397,
		39.116787, 34.539383, 40.680332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.706867, 33.829601, 40.797661>,  <38.455276, 34.405636, 40.494553>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.706867, 33.829601, 40.797661> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.935070, 34.116592, 40.957535>,  <39.071991, 34.288788, 41.053459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.935070, 34.116592, 40.957535>,  <38.706867, 33.829601, 40.797661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.935070, 34.116592, 40.957535> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264600, -0.300135, 0.916464,
		0.777503, -0.628604, 0.018616,
		0.570506, 0.717479, 0.399684,
		39.106220, 34.331837, 41.077438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.316147, 33.425446, 41.074318>,  <38.706867, 33.829601, 40.797661>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.316147, 33.425446, 41.074318> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.305603, 33.789204, 41.240353>,  <39.299278, 34.007458, 41.339973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.305603, 33.789204, 41.240353>,  <39.316147, 33.425446, 41.074318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.305603, 33.789204, 41.240353> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047289, -0.415905, 0.908178,
		0.998533, 0.004309, 0.053967,
		-0.026359, 0.909398, 0.415091,
		39.297695, 34.062023, 41.364880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.717369, 33.234142, 41.723228>,  <39.316147, 33.425446, 41.074318>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.717369, 33.234142, 41.723228> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.557415, 33.596569, 41.778557>,  <39.461445, 33.814026, 41.811756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.557415, 33.596569, 41.778557>,  <39.717369, 33.234142, 41.723228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.557415, 33.596569, 41.778557> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029042, -0.163366, 0.986138,
		0.916107, 0.390321, 0.091641,
		-0.399882, 0.906069, 0.138325,
		39.437450, 33.868389, 41.820053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.107269, 33.555904, 42.233570>,  <39.717369, 33.234142, 41.723228>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.107269, 33.555904, 42.233570> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.741879, 33.717640, 42.215389>,  <39.522644, 33.814682, 42.204483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.741879, 33.717640, 42.215389>,  <40.107269, 33.555904, 42.233570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.741879, 33.717640, 42.215389> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068639, -0.043033, 0.996713,
		0.401054, 0.913596, 0.067063,
		-0.913479, 0.404339, -0.045450,
		39.467834, 33.838943, 42.201756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.988476, 34.078682, 42.786442>,  <40.107269, 33.555904, 42.233570>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.988476, 34.078682, 42.786442> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.611969, 33.957283, 42.727238>,  <39.386066, 33.884445, 42.691715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.611969, 33.957283, 42.727238>,  <39.988476, 34.078682, 42.786442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.611969, 33.957283, 42.727238> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112147, -0.132479, 0.984821,
		-0.318495, 0.943579, 0.090663,
		-0.941267, -0.303493, -0.148013,
		39.329590, 33.866234, 42.682835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.400951, 34.563919, 43.326145> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.238922, 34.221832, 43.196827>,  <39.141705, 34.016582, 43.119236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.238922, 34.221832, 43.196827>,  <39.400951, 34.563919, 43.326145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.238922, 34.221832, 43.196827> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297316, -0.211173, 0.931133,
		-0.864590, 0.473302, -0.168728,
		-0.405077, -0.855214, -0.323299,
		39.117397, 33.965267, 43.099838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.742870, 34.498528, 43.743900>,  <39.400951, 34.563919, 43.326145>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.742870, 34.498528, 43.743900> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.759640, 34.130558, 43.587963>,  <38.769703, 33.909775, 43.494400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.759640, 34.130558, 43.587963>,  <38.742870, 34.498528, 43.743900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.759640, 34.130558, 43.587963> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293160, -0.384341, 0.875408,
		-0.955144, 0.077588, -0.285798,
		0.041923, -0.919925, -0.389847,
		38.772217, 33.854580, 43.471008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.016518, 34.119568, 43.840481>,  <38.742870, 34.498528, 43.743900>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.016518, 34.119568, 43.840481> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.324879, 33.865307, 43.824196>,  <38.509895, 33.712749, 43.814423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.324879, 33.865307, 43.824196>,  <38.016518, 34.119568, 43.840481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.324879, 33.865307, 43.824196> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253706, -0.365067, 0.895745,
		-0.584244, -0.680203, -0.442699,
		0.770904, -0.635650, -0.040717,
		38.556149, 33.674614, 43.811981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.774540, 33.592735, 44.260719>,  <38.016518, 34.119568, 43.840481>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.774540, 33.592735, 44.260719> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.168777, 33.526932, 44.245045>,  <38.405319, 33.487450, 44.235641>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.168777, 33.526932, 44.245045>,  <37.774540, 33.592735, 44.260719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.168777, 33.526932, 44.245045> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020293, -0.345089, 0.938350,
		-0.167890, -0.924040, -0.343457,
		0.985597, -0.164510, -0.039186,
		38.464455, 33.477577, 44.233288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.810741, 32.997498, 44.469742>,  <37.774540, 33.592735, 44.260719>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.810741, 32.997498, 44.469742> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.186996, 33.124184, 44.518555>,  <38.412750, 33.200195, 44.547844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.186996, 33.124184, 44.518555>,  <37.810741, 32.997498, 44.469742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.186996, 33.124184, 44.518555> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002723, -0.366571, 0.930386,
		0.339405, -0.874823, -0.345673,
		0.940637, 0.316719, 0.122034,
		38.469189, 33.219200, 44.555164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.245701, 32.357197, 44.565506>,  <37.810741, 32.997498, 44.469742>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.245701, 32.357197, 44.565506> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.410927, 32.684269, 44.725891>,  <38.510063, 32.880512, 44.822121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.410927, 32.684269, 44.725891>,  <38.245701, 32.357197, 44.565506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.410927, 32.684269, 44.725891> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004673, -0.442177, 0.896915,
		0.910691, -0.368609, -0.186468,
		0.413062, 0.817684, 0.400964,
		38.534847, 32.929573, 44.846180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.549717, 32.117329, 45.151482>,  <38.245701, 32.357197, 44.565506>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.549717, 32.117329, 45.151482> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.538647, 32.509449, 45.229702>,  <38.532005, 32.744720, 45.276634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.538647, 32.509449, 45.229702>,  <38.549717, 32.117329, 45.151482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.538647, 32.509449, 45.229702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066678, -0.197001, 0.978133,
		0.997391, 0.014028, 0.070817,
		-0.027672, 0.980303, 0.195551,
		38.530346, 32.803539, 45.288368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.098610, 32.234642, 45.683517>,  <38.549717, 32.117329, 45.151482>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.098610, 32.234642, 45.683517> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.864773, 32.558186, 45.708828>,  <38.724472, 32.752312, 45.724014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.864773, 32.558186, 45.708828>,  <39.098610, 32.234642, 45.683517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.864773, 32.558186, 45.708828> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047550, -0.043701, 0.997912,
		0.809935, 0.586378, -0.012914,
		-0.584589, 0.808858, 0.063278,
		38.689396, 32.800842, 45.727810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.492271, 32.577240, 46.123997>,  <39.098610, 32.234642, 45.683517>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.492271, 32.577240, 46.123997> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.120609, 32.724998, 46.129986>,  <38.897614, 32.813652, 46.133579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.120609, 32.724998, 46.129986>,  <39.492271, 32.577240, 46.123997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.120609, 32.724998, 46.129986> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065456, 0.124525, 0.990055,
		0.363856, 0.920892, -0.139882,
		-0.929153, 0.369393, 0.014969,
		38.841862, 32.835815, 46.134476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.515202, 33.140869, 46.601803>,  <39.492271, 32.577240, 46.123997>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.515202, 33.140869, 46.601803> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.123463, 33.070953, 46.561165>,  <38.888420, 33.029003, 46.536781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.123463, 33.070953, 46.561165>,  <39.515202, 33.140869, 46.601803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.123463, 33.070953, 46.561165> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135996, 0.197743, 0.970774,
		-0.149591, 0.964545, -0.217431,
		-0.979350, -0.174789, -0.101594,
		38.829659, 33.018517, 46.530685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.296593, 33.717403, 46.926941>,  <39.515202, 33.140869, 46.601803>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.296593, 33.717403, 46.926941> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.040466, 33.410259, 46.919132>,  <38.886791, 33.225971, 46.914448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.040466, 33.410259, 46.919132>,  <39.296593, 33.717403, 46.926941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.040466, 33.410259, 46.919132> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012730, -0.014803, 0.999810,
		-0.768003, 0.640447, -0.000296,
		-0.640320, -0.767860, -0.019522,
		38.848370, 33.179901, 46.913277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.863792, 33.810223, 47.526680>,  <39.296593, 33.717403, 46.926941>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.863792, 33.810223, 47.526680> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.761604, 33.431461, 47.448601>,  <38.700291, 33.204205, 47.401752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.761604, 33.431461, 47.448601>,  <38.863792, 33.810223, 47.526680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.761604, 33.431461, 47.448601> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146903, -0.161536, 0.975872,
		-0.955592, 0.277978, -0.097836,
		-0.255467, -0.946908, -0.195198,
		38.684963, 33.147388, 47.390041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.156006, 33.787033, 47.773197>,  <38.863792, 33.810223, 47.526680>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.156006, 33.787033, 47.773197> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.328743, 33.426483, 47.760361>,  <38.432384, 33.210152, 47.752659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.328743, 33.426483, 47.760361>,  <38.156006, 33.787033, 47.773197>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.328743, 33.426483, 47.760361> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369433, -0.209231, 0.905396,
		-0.822818, -0.379133, -0.423354,
		0.431844, -0.901377, -0.032095,
		38.458298, 33.156071, 47.750732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.772133, 33.246929, 48.226192>,  <38.156006, 33.787033, 47.773197>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.772133, 33.246929, 48.226192> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.118690, 33.049702, 48.194592>,  <38.326626, 32.931366, 48.175632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.118690, 33.049702, 48.194592>,  <37.772133, 33.246929, 48.226192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.118690, 33.049702, 48.194592> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148402, -0.405302, 0.902057,
		-0.476797, -0.769814, -0.424324,
		0.866395, -0.493069, -0.079005,
		38.378609, 32.901783, 48.170891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.599728, 32.587872, 48.444263>,  <37.772133, 33.246929, 48.226192>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.599728, 32.587872, 48.444263> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.996685, 32.616451, 48.484348>,  <38.234859, 32.633598, 48.508400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.996685, 32.616451, 48.484348>,  <37.599728, 32.587872, 48.444263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.996685, 32.616451, 48.484348> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069100, -0.350312, 0.934081,
		0.101839, -0.933904, -0.342712,
		0.992398, 0.071445, 0.100208,
		38.294403, 32.637886, 48.514412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.819584, 31.893560, 48.825840>,  <37.599728, 32.587872, 48.444263>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.819584, 31.893560, 48.825840> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.129337, 32.139629, 48.885021>,  <38.315189, 32.287270, 48.920528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.129337, 32.139629, 48.885021>,  <37.819584, 31.893560, 48.825840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.129337, 32.139629, 48.885021> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071485, -0.147273, 0.986509,
		0.628664, -0.774514, -0.070070,
		0.774384, 0.615174, 0.147951,
		38.361652, 32.324181, 48.929405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.423580, 31.531017, 49.267139>,  <37.819584, 31.893560, 48.825840>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.423580, 31.531017, 49.267139> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.440239, 31.927950, 49.313690>,  <38.450233, 32.166111, 49.341621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.440239, 31.927950, 49.313690>,  <38.423580, 31.531017, 49.267139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.440239, 31.927950, 49.313690> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094581, -0.119870, 0.988274,
		0.994645, -0.030156, -0.098848,
		0.041651, 0.992331, 0.116376,
		38.452736, 32.225651, 49.348602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.861305, 31.610209, 49.852676>,  <38.423580, 31.531017, 49.267139>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.861305, 31.610209, 49.852676> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.693256, 31.972887, 49.837715>,  <38.592426, 32.190495, 49.828739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.693256, 31.972887, 49.837715>,  <38.861305, 31.610209, 49.852676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.693256, 31.972887, 49.837715> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035432, 0.024798, 0.999065,
		0.906777, 0.421052, 0.021708,
		-0.420120, 0.906697, -0.037405,
		38.567219, 32.244896, 49.826492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.142223, 31.927130, 50.499584>,  <38.861305, 31.610209, 49.852676>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.142223, 31.927130, 50.499584> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.842484, 32.160877, 50.375015>,  <38.662640, 32.301125, 50.300274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.842484, 32.160877, 50.375015>,  <39.142223, 31.927130, 50.499584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.842484, 32.160877, 50.375015> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282854, 0.142748, 0.948481,
		0.598719, 0.798833, 0.058323,
		-0.749353, 0.584371, -0.311419,
		38.617680, 32.336189, 50.281590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.152473, 32.644707, 50.934135>,  <39.142223, 31.927130, 50.499584>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.152473, 32.644707, 50.934135> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.780842, 32.583237, 50.799557>,  <38.557861, 32.546352, 50.718811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.780842, 32.583237, 50.799557>,  <39.152473, 32.644707, 50.934135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.780842, 32.583237, 50.799557> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344013, 0.024849, 0.938636,
		-0.135887, 0.987809, -0.075954,
		-0.929080, -0.153677, -0.336443,
		38.502117, 32.537132, 50.698624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.716228, 33.003624, 51.333244>,  <39.152473, 32.644707, 50.934135>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.716228, 33.003624, 51.333244> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.434475, 32.770855, 51.170662>,  <38.265423, 32.631195, 51.073112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.434475, 32.770855, 51.170662>,  <38.716228, 33.003624, 51.333244>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.434475, 32.770855, 51.170662> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359435, -0.201367, 0.911185,
		-0.612083, 0.787923, -0.067321,
		-0.704387, -0.581918, -0.406460,
		38.223160, 32.596279, 51.048725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.117607, 33.236115, 51.565113>,  <38.716228, 33.003624, 51.333244>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.117607, 33.236115, 51.565113> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.080906, 32.852261, 51.458771>,  <38.058887, 32.621948, 51.394966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.080906, 32.852261, 51.458771>,  <38.117607, 33.236115, 51.565113>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.080906, 32.852261, 51.458771> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457063, -0.196608, 0.867432,
		-0.884689, 0.201099, -0.420576,
		-0.091751, -0.959638, -0.265852,
		38.053379, 32.564369, 51.379017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.518772, 33.107811, 51.423695>,  <38.117607, 33.236115, 51.565113>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.518772, 33.107811, 51.423695> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.707497, 32.775391, 51.541512>,  <37.820732, 32.575939, 51.612202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.707497, 32.775391, 51.541512>,  <37.518772, 33.107811, 51.423695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.707497, 32.775391, 51.541512> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129240, 0.265266, 0.955474,
		-0.872176, -0.488870, 0.017751,
		0.471811, -0.831048, 0.294540,
		37.849041, 32.526077, 51.629875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.064915, 32.792961, 51.793766>,  <37.518772, 33.107811, 51.423695>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.064915, 32.792961, 51.793766> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.427944, 32.687969, 51.924862>,  <37.645763, 32.624973, 52.003521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.427944, 32.687969, 51.924862>,  <37.064915, 32.792961, 51.793766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.427944, 32.687969, 51.924862> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277870, 0.209724, 0.937445,
		-0.314799, -0.941869, 0.117403,
		0.907573, -0.262484, 0.327738,
		37.700218, 32.609222, 52.023182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.978634, 32.075607, 51.594543>,  <37.064915, 32.792961, 51.793766>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.978634, 32.075607, 51.594543> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.589184, 32.090775, 51.684540>,  <36.355515, 32.099876, 51.738537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.589184, 32.090775, 51.684540>,  <36.978634, 32.075607, 51.594543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.589184, 32.090775, 51.684540> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222639, 0.057771, -0.973188,
		-0.049904, -0.997609, -0.047804,
		-0.973623, 0.037923, 0.224990,
		36.297096, 32.102150, 51.752037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.740486, 31.549047, 51.240978>,  <36.978634, 32.075607, 51.594543>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.740486, 31.549047, 51.240978> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.428734, 31.787586, 51.317856>,  <36.241684, 31.930710, 51.363983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.428734, 31.787586, 51.317856>,  <36.740486, 31.549047, 51.240978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.428734, 31.787586, 51.317856> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186099, 0.072571, -0.979847,
		-0.598275, -0.799441, 0.054419,
		-0.779381, 0.596345, 0.192193,
		36.194920, 31.966490, 51.375515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.269890, 31.338659, 50.728092>,  <36.740486, 31.549047, 51.240978>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.269890, 31.338659, 50.728092> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.078495, 31.661798, 50.865749>,  <35.963657, 31.855682, 50.948341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.078495, 31.661798, 50.865749>,  <36.269890, 31.338659, 50.728092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.078495, 31.661798, 50.865749> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231811, 0.261803, -0.936869,
		-0.846945, -0.528053, 0.061999,
		-0.478485, 0.807848, 0.344141,
		35.934948, 31.904154, 50.968990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.594887, 31.397341, 50.430317>,  <36.269890, 31.338659, 50.728092>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.594887, 31.397341, 50.430317> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.679890, 31.778303, 50.517742>,  <35.730892, 32.006882, 50.570198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.679890, 31.778303, 50.517742>,  <35.594887, 31.397341, 50.430317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.679890, 31.778303, 50.517742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130830, 0.249387, -0.959526,
		-0.968362, 0.175309, 0.177599,
		0.212504, 0.952404, 0.218562,
		35.743641, 32.064026, 50.583309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.045288, 31.805704, 50.038971>,  <35.594887, 31.397341, 50.430317>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.045288, 31.805704, 50.038971> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.351437, 32.050953, 50.117249>,  <35.535126, 32.198101, 50.164215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.351437, 32.050953, 50.117249>,  <35.045288, 31.805704, 50.038971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.351437, 32.050953, 50.117249> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048560, 0.358210, -0.932378,
		-0.641758, 0.704110, 0.303936,
		0.765368, 0.613120, 0.195692,
		35.581047, 32.234890, 50.175957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.769039, 32.508068, 49.971893>,  <35.045288, 31.805704, 50.038971>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.769039, 32.508068, 49.971893> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.166656, 32.524643, 49.931564>,  <35.405228, 32.534588, 49.907368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.166656, 32.524643, 49.931564>,  <34.769039, 32.508068, 49.971893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.166656, 32.524643, 49.931564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106933, 0.550190, -0.828165,
		0.021153, 0.834011, 0.551342,
		0.994041, 0.041439, -0.100822,
		35.464870, 32.537075, 49.901318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.908791, 33.113312, 49.677929>,  <34.769039, 32.508068, 49.971893>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.908791, 33.113312, 49.677929> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.239189, 32.908363, 49.583942>,  <35.437428, 32.785393, 49.527550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.239189, 32.908363, 49.583942>,  <34.908791, 33.113312, 49.677929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.239189, 32.908363, 49.583942> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020844, 0.388789, -0.921091,
		0.563290, 0.765716, 0.310458,
		0.825997, -0.512370, -0.234962,
		35.486988, 32.754654, 49.513454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.218666, 33.499329, 49.274132>,  <34.908791, 33.113312, 49.677929>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.218666, 33.499329, 49.274132> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.466976, 33.190720, 49.218426>,  <35.615963, 33.005554, 49.185001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.466976, 33.190720, 49.218426>,  <35.218666, 33.499329, 49.274132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.466976, 33.190720, 49.218426> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206269, 0.332108, -0.920411,
		0.756367, 0.542642, 0.365305,
		0.620775, -0.771520, -0.139265,
		35.653210, 32.959263, 49.176647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.901035, 33.737125, 49.043335>,  <35.218666, 33.499329, 49.274132>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.901035, 33.737125, 49.043335> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.829414, 33.362720, 48.922123>,  <35.786442, 33.138077, 48.849396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.829414, 33.362720, 48.922123>,  <35.901035, 33.737125, 49.043335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.829414, 33.362720, 48.922123> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283948, 0.245733, -0.926817,
		0.941974, -0.251991, 0.221780,
		-0.179051, -0.936011, -0.303026,
		35.775700, 33.081917, 48.831215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.520832, 33.363430, 48.737675>,  <35.901035, 33.737125, 49.043335>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.520832, 33.363430, 48.737675> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.214561, 33.152168, 48.590816>,  <36.030800, 33.025410, 48.502701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.214561, 33.152168, 48.590816>,  <36.520832, 33.363430, 48.737675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.214561, 33.152168, 48.590816> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356925, 0.125986, -0.925598,
		0.535114, -0.839750, 0.092048,
		-0.765674, -0.528155, -0.367145,
		35.984859, 32.993721, 48.480675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.853123, 33.013359, 48.277290>,  <36.520832, 33.363430, 48.737675>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.853123, 33.013359, 48.277290> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.469860, 32.973713, 48.169880>,  <36.239902, 32.949924, 48.105434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.469860, 32.973713, 48.169880>,  <36.853123, 33.013359, 48.277290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.469860, 32.973713, 48.169880> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241256, 0.225202, -0.943970,
		0.154033, -0.969258, -0.191868,
		-0.958159, -0.099113, -0.268528,
		36.182411, 32.943977, 48.089321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.883846, 32.704468, 47.620457>,  <36.853123, 33.013359, 48.277290>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.883846, 32.704468, 47.620457> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.514435, 32.857014, 47.636684>,  <36.292786, 32.948544, 47.646420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.514435, 32.857014, 47.636684>,  <36.883846, 32.704468, 47.620457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.514435, 32.857014, 47.636684> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019494, 0.152315, -0.988140,
		-0.383024, -0.911789, -0.148102,
		-0.923533, 0.381368, 0.040566,
		36.237373, 32.971424, 47.648853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.605457, 32.454041, 47.073792>,  <36.883846, 32.704468, 47.620457>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.605457, 32.454041, 47.073792> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.363960, 32.764088, 47.148293>,  <36.219063, 32.950115, 47.192993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.363960, 32.764088, 47.148293>,  <36.605457, 32.454041, 47.073792>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.363960, 32.764088, 47.148293> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020149, 0.248401, -0.968448,
		-0.796927, -0.580937, -0.165587,
		-0.603740, 0.775118, 0.186252,
		36.182838, 32.996624, 47.204166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.063251, 32.449371, 46.521439>,  <36.605457, 32.454041, 47.073792>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.063251, 32.449371, 46.521439> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.031063, 32.832561, 46.631573>,  <36.011749, 33.062477, 46.697651>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.031063, 32.832561, 46.631573>,  <36.063251, 32.449371, 46.521439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.031063, 32.832561, 46.631573> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106826, 0.266349, -0.957939,
		-0.991016, -0.106500, 0.080903,
		-0.080472, 0.957975, 0.275333,
		36.006920, 33.119953, 46.714172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.518494, 32.932697, 46.100330>,  <36.063251, 32.449371, 46.521439>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.518494, 32.932697, 46.100330> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.799679, 33.170914, 46.255848>,  <35.968391, 33.313843, 46.349159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.799679, 33.170914, 46.255848>,  <35.518494, 32.932697, 46.100330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.799679, 33.170914, 46.255848> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191107, 0.368390, -0.909817,
		-0.685067, 0.713873, 0.145153,
		0.702966, 0.595545, 0.388798,
		36.010571, 33.349579, 46.372486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.353687, 33.539738, 45.967480>,  <35.518494, 32.932697, 46.100330>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.353687, 33.539738, 45.967480> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.734631, 33.617138, 46.061768>,  <35.963196, 33.663578, 46.118340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.734631, 33.617138, 46.061768>,  <35.353687, 33.539738, 45.967480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.734631, 33.617138, 46.061768> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059301, 0.640689, -0.765507,
		-0.299150, 0.743018, 0.598693,
		0.952362, 0.193499, 0.235723,
		36.020340, 33.675186, 46.132484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.395649, 34.235870, 46.114529>,  <35.353687, 33.539738, 45.967480>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.395649, 34.235870, 46.114529> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.756916, 34.115677, 45.991886>,  <35.973675, 34.043560, 45.918301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.756916, 34.115677, 45.991886>,  <35.395649, 34.235870, 46.114529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.756916, 34.115677, 45.991886> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023590, 0.678382, -0.734331,
		0.428649, 0.670453, 0.605601,
		0.903163, -0.300484, -0.306604,
		36.027866, 34.025532, 45.899906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.668579, 34.762306, 45.930065>,  <35.395649, 34.235870, 46.114529>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.668579, 34.762306, 45.930065> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.922112, 34.504700, 45.758713>,  <36.074230, 34.350136, 45.655903>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.922112, 34.504700, 45.758713>,  <35.668579, 34.762306, 45.930065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.922112, 34.504700, 45.758713> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069234, 0.598854, -0.797860,
		0.770370, 0.476046, 0.424157,
		0.633826, -0.644014, -0.428381,
		36.112259, 34.311497, 45.630199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.193966, 35.161697, 45.660095>,  <35.668579, 34.762306, 45.930065>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.193966, 35.161697, 45.660095> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.213337, 34.826851, 45.442146>,  <36.224960, 34.625942, 45.311375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.213337, 34.826851, 45.442146>,  <36.193966, 35.161697, 45.660095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.213337, 34.826851, 45.442146> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260585, 0.537214, -0.802182,
		0.964235, -0.103137, 0.244158,
		0.048430, -0.837117, -0.544877,
		36.227867, 34.575714, 45.278683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.849831, 35.168507, 45.304192>,  <36.193966, 35.161697, 45.660095>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.849831, 35.168507, 45.304192> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.605469, 34.929428, 45.096516>,  <36.458851, 34.785980, 44.971909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.605469, 34.929428, 45.096516>,  <36.849831, 35.168507, 45.304192>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.605469, 34.929428, 45.096516> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203155, 0.515483, -0.832469,
		0.765194, -0.614037, -0.193488,
		-0.610906, -0.597692, -0.519189,
		36.422195, 34.750122, 44.940758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.106380, 27.209633, 33.422039> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.741119, 27.311890, 33.549038>,  <40.521965, 27.373243, 33.625237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.741119, 27.311890, 33.549038>,  <41.106380, 27.209633, 33.422039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.741119, 27.311890, 33.549038> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261418, 0.964900, -0.025058,
		-0.312762, 0.060119, -0.947927,
		-0.913149, 0.255642, 0.317500,
		40.467175, 27.388582, 33.644287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.693256, 27.553938, 32.820694>,  <41.106380, 27.209633, 33.422039>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.693256, 27.553938, 32.820694> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.500977, 27.673397, 33.150478>,  <40.385609, 27.745071, 33.348351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.500977, 27.673397, 33.150478>,  <40.693256, 27.553938, 32.820694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.500977, 27.673397, 33.150478> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090232, 0.952073, -0.292260,
		-0.872229, -0.066097, -0.484611,
		-0.480702, 0.298646, 0.824461,
		40.356766, 27.762991, 33.397816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.374249, 28.186138, 32.613693>,  <40.693256, 27.553938, 32.820694>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.374249, 28.186138, 32.613693> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.321060, 28.195110, 33.010040>,  <40.289146, 28.200493, 33.247849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.321060, 28.195110, 33.010040>,  <40.374249, 28.186138, 32.613693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.321060, 28.195110, 33.010040> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017882, 0.999527, -0.025026,
		-0.990958, -0.021047, -0.132509,
		-0.132973, 0.022430, 0.990866,
		40.281170, 28.201839, 33.307301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.829987, 28.573389, 32.800285>,  <40.374249, 28.186138, 32.613693>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.829987, 28.573389, 32.800285> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.075565, 28.598787, 33.115002>,  <40.222912, 28.614027, 33.303833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.075565, 28.598787, 33.115002>,  <39.829987, 28.573389, 32.800285>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.075565, 28.598787, 33.115002> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121826, 0.992439, 0.014969,
		-0.779891, -0.105041, 0.617039,
		0.613945, 0.063497, 0.786790,
		40.259750, 28.617836, 33.351040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.504562, 29.062077, 33.374760>,  <39.829987, 28.573389, 32.800285>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.504562, 29.062077, 33.374760> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.894520, 29.068052, 33.463634>,  <40.128494, 29.071638, 33.516960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.894520, 29.068052, 33.463634>,  <39.504562, 29.062077, 33.374760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.894520, 29.068052, 33.463634> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002941, 0.998523, -0.054245,
		-0.222667, 0.052229, 0.973494,
		0.974890, 0.014941, 0.222185,
		40.186985, 29.072535, 33.530289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.531483, 29.575663, 33.741371>,  <39.504562, 29.062077, 33.374760>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.531483, 29.575663, 33.741371> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.918278, 29.525644, 33.652554>,  <40.150356, 29.495634, 33.599262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.918278, 29.525644, 33.652554>,  <39.531483, 29.575663, 33.741371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.918278, 29.525644, 33.652554> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118475, 0.992038, -0.042716,
		0.225613, 0.015000, 0.974101,
		0.966986, -0.125044, -0.222040,
		40.208374, 29.488131, 33.585941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.871891, 29.950544, 34.236462>,  <39.531483, 29.575663, 33.741371>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.871891, 29.950544, 34.236462> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.138081, 29.904621, 33.941448>,  <40.297794, 29.877068, 33.764439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.138081, 29.904621, 33.941448>,  <39.871891, 29.950544, 34.236462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.138081, 29.904621, 33.941448> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342143, 0.925099, 0.164709,
		0.663383, -0.361952, 0.654915,
		0.665478, -0.114810, -0.737534,
		40.337723, 29.870178, 33.720188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.483421, 30.251566, 34.547295>,  <39.871891, 29.950544, 34.236462>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.483421, 30.251566, 34.547295> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.531315, 30.262394, 34.150318>,  <40.560051, 30.268890, 33.912132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.531315, 30.262394, 34.150318>,  <40.483421, 30.251566, 34.547295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.531315, 30.262394, 34.150318> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546729, 0.832601, 0.088671,
		0.828705, -0.553211, 0.084885,
		0.119729, 0.027073, -0.992437,
		40.567234, 30.270515, 33.852589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.171947, 30.333847, 34.445972>,  <40.483421, 30.251566, 34.547295>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.171947, 30.333847, 34.445972> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.978828, 30.464703, 34.121040>,  <40.862957, 30.543217, 33.926079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.978828, 30.464703, 34.121040>,  <41.171947, 30.333847, 34.445972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.978828, 30.464703, 34.121040> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487823, 0.870825, 0.060766,
		0.727278, -0.366936, -0.580021,
		-0.482799, 0.327141, -0.812332,
		40.833988, 30.562845, 33.877342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.585106, 30.628426, 33.973637>,  <41.171947, 30.333847, 34.445972>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.585106, 30.628426, 33.973637> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.240391, 30.781181, 33.840084>,  <41.033562, 30.872835, 33.759953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.240391, 30.781181, 33.840084>,  <41.585106, 30.628426, 33.973637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.240391, 30.781181, 33.840084> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353322, 0.924181, 0.145099,
		0.363978, 0.007077, -0.931381,
		-0.861791, 0.381890, -0.333881,
		40.981853, 30.895748, 33.739918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.813408, 31.095005, 33.500351>,  <41.585106, 30.628426, 33.973637>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.813408, 31.095005, 33.500351> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.445065, 31.203899, 33.611992>,  <41.224056, 31.269236, 33.678978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.445065, 31.203899, 33.611992>,  <41.813408, 31.095005, 33.500351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.445065, 31.203899, 33.611992> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333046, 0.921443, 0.200056,
		-0.202718, 0.277179, -0.939189,
		-0.920862, 0.272238, 0.279106,
		41.168804, 31.285570, 33.695724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.614033, 31.854124, 33.233940>,  <41.813408, 31.095005, 33.500351>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.614033, 31.854124, 33.233940> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.323570, 31.808617, 33.505161>,  <41.149292, 31.781311, 33.667896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.323570, 31.808617, 33.505161>,  <41.614033, 31.854124, 33.233940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.323570, 31.808617, 33.505161> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066637, 0.969925, 0.234106,
		-0.684297, 0.215180, -0.696732,
		-0.726153, -0.113770, 0.678055,
		41.105724, 31.774487, 33.708576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.103184, 32.343018, 33.042309>,  <41.614033, 31.854124, 33.233940>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.103184, 32.343018, 33.042309> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.091255, 32.268681, 33.435158>,  <41.084099, 32.224079, 33.670868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.091255, 32.268681, 33.435158>,  <41.103184, 32.343018, 33.042309>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.091255, 32.268681, 33.435158> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077527, 0.979173, 0.187641,
		-0.996544, 0.081737, -0.014789,
		-0.029818, -0.185846, 0.982127,
		41.082310, 32.212925, 33.729797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.839561, 32.884884, 33.244827>,  <41.103184, 32.343018, 33.042309>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.839561, 32.884884, 33.244827> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.966614, 32.727360, 33.589855>,  <41.042847, 32.632847, 33.796871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.966614, 32.727360, 33.589855>,  <40.839561, 32.884884, 33.244827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.966614, 32.727360, 33.589855> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174362, 0.918422, 0.355105,
		-0.932044, 0.037605, 0.360388,
		0.317634, -0.393811, 0.862567,
		41.061905, 32.609215, 33.848625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.524555, 33.293896, 33.780067>,  <40.839561, 32.884884, 33.244827>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.524555, 33.293896, 33.780067> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.816589, 33.121014, 33.991795>,  <40.991810, 33.017284, 34.118832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.816589, 33.121014, 33.991795>,  <40.524555, 33.293896, 33.780067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.816589, 33.121014, 33.991795> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196613, 0.874688, 0.443018,
		-0.654461, -0.219370, 0.723573,
		0.730085, -0.432202, 0.529318,
		41.035614, 32.991352, 34.150589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.469578, 33.531769, 34.492935>,  <40.524555, 33.293896, 33.780067>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.469578, 33.531769, 34.492935> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.849495, 33.407616, 34.477142>,  <41.077446, 33.333126, 34.467667>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.849495, 33.407616, 34.477142>,  <40.469578, 33.531769, 34.492935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.849495, 33.407616, 34.477142> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295496, 0.848363, 0.439274,
		-0.102844, -0.428887, 0.897485,
		0.949792, -0.310380, -0.039486,
		41.134434, 33.314503, 34.465298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.816292, 33.654797, 35.164421>,  <40.469578, 33.531769, 34.492935>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.816292, 33.654797, 35.164421> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.112625, 33.619549, 34.898067>,  <41.290424, 33.598400, 34.738255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.112625, 33.619549, 34.898067>,  <40.816292, 33.654797, 35.164421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.112625, 33.619549, 34.898067> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450452, 0.800562, 0.395213,
		0.498256, -0.592736, 0.632776,
		0.740834, -0.088118, -0.665884,
		41.334873, 33.593113, 34.698303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.438057, 33.631691, 35.498196>,  <40.816292, 33.654797, 35.164421>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.438057, 33.631691, 35.498196> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.564148, 33.765038, 35.142780>,  <41.639805, 33.845043, 34.929531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.564148, 33.765038, 35.142780>,  <41.438057, 33.631691, 35.498196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.564148, 33.765038, 35.142780> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395846, 0.804748, 0.442365,
		0.862517, -0.491171, 0.121720,
		0.315230, 0.333364, -0.888537,
		41.658718, 33.865047, 34.876221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.150642, 33.985516, 35.661282>,  <41.438057, 33.631691, 35.498196>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.150642, 33.985516, 35.661282> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.098640, 34.088718, 35.278339>,  <42.067440, 34.150642, 35.048573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.098640, 34.088718, 35.278339>,  <42.150642, 33.985516, 35.661282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.098640, 34.088718, 35.278339> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598432, 0.790272, 0.131715,
		0.790555, -0.555788, -0.257143,
		-0.130007, 0.258011, -0.957355,
		42.059639, 34.166122, 34.991135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.849110, 34.122009, 35.362583>,  <42.150642, 33.985516, 35.661282>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.849110, 34.122009, 35.362583> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.562630, 34.343922, 35.193222>,  <42.390739, 34.477070, 35.091606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.562630, 34.343922, 35.193222>,  <42.849110, 34.122009, 35.362583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.562630, 34.343922, 35.193222> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418813, 0.826968, 0.375125,
		0.558256, 0.091337, -0.824626,
		-0.716202, 0.554780, -0.423407,
		42.347771, 34.510357, 35.066200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.211521, 34.710907, 34.995186>,  <42.849110, 34.122009, 35.362583>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.211521, 34.710907, 34.995186> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.833275, 34.829906, 35.047813>,  <42.606327, 34.901306, 35.079391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.833275, 34.829906, 35.047813>,  <43.211521, 34.710907, 34.995186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.833275, 34.829906, 35.047813> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323909, 0.898436, 0.296472,
		-0.030006, 0.322964, -0.945935,
		-0.945612, 0.297501, 0.131569,
		42.549591, 34.919155, 35.087284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.066040, 35.340782, 34.512142>,  <43.211521, 34.710907, 34.995186>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.066040, 35.340782, 34.512142> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.848473, 35.326431, 34.847492>,  <42.717934, 35.317822, 35.048702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.848473, 35.326431, 34.847492>,  <43.066040, 35.340782, 34.512142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.848473, 35.326431, 34.847492> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423085, 0.851080, 0.310903,
		-0.724677, 0.523808, -0.447737,
		-0.543914, -0.035873, 0.838374,
		42.685299, 35.315670, 35.099003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.752800, 35.416908, 34.450592>,  <43.066040, 35.340782, 34.512142>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.752800, 35.416908, 34.450592> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.144398, 35.343174, 34.485443>,  <44.379356, 35.298931, 34.506355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.144398, 35.343174, 34.485443>,  <43.752800, 35.416908, 34.450592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.144398, 35.343174, 34.485443> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173062, -0.977210, -0.122927,
		0.107804, 0.105266, -0.988583,
		0.978993, -0.184338, 0.087129,
		44.438095, 35.287872, 34.511581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.985970, 34.978481, 33.875622>,  <43.752800, 35.416908, 34.450592>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.985970, 34.978481, 33.875622> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.242420, 34.906990, 34.174156>,  <44.396290, 34.864094, 34.353275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.242420, 34.906990, 34.174156>,  <43.985970, 34.978481, 33.875622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.242420, 34.906990, 34.174156> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034930, -0.964698, -0.261030,
		0.766642, 0.193423, -0.612247,
		0.641123, -0.178731, 0.746335,
		44.434757, 34.853371, 34.398056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.567017, 34.507191, 33.616917>,  <43.985970, 34.978481, 33.875622>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.567017, 34.507191, 33.616917> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.581322, 34.475594, 34.015411>,  <44.589905, 34.456635, 34.254509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.581322, 34.475594, 34.015411>,  <44.567017, 34.507191, 33.616917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.581322, 34.475594, 34.015411> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136803, -0.987100, -0.083181,
		0.989952, 0.139262, -0.024498,
		0.035766, -0.078993, 0.996233,
		44.592052, 34.451897, 34.314281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.976170, 34.026367, 33.654392>,  <44.567017, 34.507191, 33.616917>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.976170, 34.026367, 33.654392> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.833611, 34.017536, 34.028023>,  <44.748074, 34.012238, 34.252201>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.833611, 34.017536, 34.028023>,  <44.976170, 34.026367, 33.654392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.833611, 34.017536, 34.028023> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107002, -0.994108, 0.017331,
		0.928186, 0.106124, 0.356662,
		-0.356400, -0.022077, 0.934073,
		44.726692, 34.010914, 34.308243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.424839, 33.516212, 33.965427>,  <44.976170, 34.026367, 33.654392>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.424839, 33.516212, 33.965427> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.096027, 33.566139, 34.187668>,  <44.898743, 33.596096, 34.321014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.096027, 33.566139, 34.187668>,  <45.424839, 33.516212, 33.965427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.096027, 33.566139, 34.187668> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067140, -0.990121, 0.123094,
		0.565478, 0.063883, 0.822286,
		-0.822026, 0.124815, 0.555603,
		44.849419, 33.603584, 34.354347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.595287, 33.111298, 34.482689>,  <45.424839, 33.516212, 33.965427>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.595287, 33.111298, 34.482689> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.197285, 33.146004, 34.502453>,  <44.958485, 33.166828, 34.514313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.197285, 33.146004, 34.502453>,  <45.595287, 33.111298, 34.482689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.197285, 33.146004, 34.502453> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077630, -0.983465, 0.163617,
		0.062791, 0.158963, 0.985286,
		-0.995003, 0.086762, 0.049413,
		44.898785, 33.172031, 34.517277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.492023, 32.632900, 34.946453>,  <45.595287, 33.111298, 34.482689>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.492023, 32.632900, 34.946453> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.122471, 32.661865, 34.796150>,  <44.900738, 32.679245, 34.705971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.122471, 32.661865, 34.796150>,  <45.492023, 32.632900, 34.946453>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.122471, 32.661865, 34.796150> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129372, -0.983221, 0.128605,
		-0.360136, 0.167428, 0.917753,
		-0.923886, 0.072416, -0.375754,
		44.845306, 32.683590, 34.683426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.975693, 32.317833, 35.357246>,  <45.492023, 32.632900, 34.946453>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.975693, 32.317833, 35.357246> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.770618, 32.328701, 35.013988>,  <44.647572, 32.335220, 34.808033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.770618, 32.328701, 35.013988>,  <44.975693, 32.317833, 35.357246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.770618, 32.328701, 35.013988> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274368, -0.952275, 0.133768,
		-0.813556, 0.304029, 0.495675,
		-0.512689, 0.027169, -0.858145,
		44.616814, 32.336853, 34.756546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.297573, 31.964869, 35.442059>,  <44.975693, 32.317833, 35.357246>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.297573, 31.964869, 35.442059> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.324665, 31.953741, 35.043133>,  <44.340919, 31.947065, 34.803776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.324665, 31.953741, 35.043133>,  <44.297573, 31.964869, 35.442059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.324665, 31.953741, 35.043133> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475449, -0.879709, -0.007753,
		-0.877132, 0.474698, -0.072809,
		0.067731, -0.027817, -0.997316,
		44.344986, 31.945396, 34.743938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.577251, 31.949755, 35.200191>,  <44.297573, 31.964869, 35.442059>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.577251, 31.949755, 35.200191> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.794621, 31.827847, 34.887321>,  <43.925041, 31.754702, 34.699600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.794621, 31.827847, 34.887321>,  <43.577251, 31.949755, 35.200191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.794621, 31.827847, 34.887321> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711058, -0.662370, -0.235927,
		-0.446190, 0.684384, -0.576657,
		0.543426, -0.304768, -0.782180,
		43.957649, 31.736416, 34.652668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.100101, 31.849361, 34.665333>,  <43.577251, 31.949755, 35.200191>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.100101, 31.849361, 34.665333> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.424198, 31.631393, 34.579010>,  <43.618656, 31.500612, 34.527218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.424198, 31.631393, 34.579010>,  <43.100101, 31.849361, 34.665333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.424198, 31.631393, 34.579010> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579912, -0.798716, -0.160484,
		-0.084916, 0.255179, -0.963158,
		0.810241, -0.544919, -0.215805,
		43.667271, 31.467918, 34.514267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.873016, 31.380816, 34.151993>,  <43.100101, 31.849361, 34.665333>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.873016, 31.380816, 34.151993> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.226540, 31.224016, 34.254143>,  <43.438656, 31.129936, 34.315434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.226540, 31.224016, 34.254143>,  <42.873016, 31.380816, 34.151993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.226540, 31.224016, 34.254143> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349290, -0.916018, -0.197250,
		0.311249, 0.085132, -0.946507,
		0.883810, -0.391999, 0.255374,
		43.491684, 31.106417, 34.330753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.073612, 30.993628, 33.637779>,  <42.873016, 31.380816, 34.151993>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.073612, 30.993628, 33.637779> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.282078, 30.829948, 33.937366>,  <43.407158, 30.731741, 34.117119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.282078, 30.829948, 33.937366>,  <43.073612, 30.993628, 33.637779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.282078, 30.829948, 33.937366> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456742, -0.875044, -0.160263,
		0.720956, -0.258561, -0.642937,
		0.521161, -0.409199, 0.748964,
		43.438427, 30.707190, 34.162056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.224857, 30.333302, 33.406071>,  <43.073612, 30.993628, 33.637779>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.224857, 30.333302, 33.406071> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.257076, 30.333424, 33.804771>,  <43.276405, 30.333498, 34.043991>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.257076, 30.333424, 33.804771>,  <43.224857, 30.333302, 33.406071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.257076, 30.333424, 33.804771> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254254, -0.966913, 0.020844,
		0.963778, -0.255107, -0.077801,
		0.080544, 0.000307, 0.996751,
		43.281239, 30.333515, 34.103798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.593895, 29.657249, 33.585224>,  <43.224857, 30.333302, 33.406071>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.593895, 29.657249, 33.585224> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.409206, 29.769690, 33.921745>,  <43.298393, 29.837154, 34.123657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.409206, 29.769690, 33.921745>,  <43.593895, 29.657249, 33.585224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.409206, 29.769690, 33.921745> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116816, -0.959467, 0.256472,
		0.879300, 0.020140, 0.475841,
		-0.461719, 0.281102, 0.841307,
		43.270691, 29.854019, 34.174137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.769413, 29.050671, 33.988380>,  <43.593895, 29.657249, 33.585224>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.769413, 29.050671, 33.988380> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.478493, 29.228851, 34.197231>,  <43.303940, 29.335760, 34.322540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.478493, 29.228851, 34.197231>,  <43.769413, 29.050671, 33.988380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.478493, 29.228851, 34.197231> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407066, -0.892474, 0.194390,
		0.552573, -0.071160, 0.830421,
		-0.727296, 0.445451, 0.522124,
		43.260303, 29.362486, 34.353867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.798386, 28.803772, 34.655025>,  <43.769413, 29.050671, 33.988380>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.798386, 28.803772, 34.655025> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.425064, 28.932999, 34.592319>,  <43.201073, 29.010534, 34.554695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.425064, 28.932999, 34.592319>,  <43.798386, 28.803772, 34.655025>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.425064, 28.932999, 34.592319> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352139, -0.908905, 0.223359,
		-0.070321, 0.263663, 0.962048,
		-0.933302, 0.323068, -0.156761,
		43.145073, 29.029919, 34.545292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.338970, 28.524769, 35.257454>,  <43.798386, 28.803772, 34.655025>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.338970, 28.524769, 35.257454> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.079807, 28.636448, 34.973972>,  <42.924309, 28.703455, 34.803883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.079807, 28.636448, 34.973972>,  <43.338970, 28.524769, 35.257454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.079807, 28.636448, 34.973972> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601018, -0.758979, 0.250454,
		-0.467969, 0.588217, 0.659550,
		-0.647906, 0.279197, -0.708708,
		42.885437, 28.720207, 34.761360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.686981, 28.433413, 35.506531>,  <43.338970, 28.524769, 35.257454>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.686981, 28.433413, 35.506531> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.639633, 28.407356, 35.110199>,  <42.611225, 28.391722, 34.872398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.639633, 28.407356, 35.110199>,  <42.686981, 28.433413, 35.506531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.639633, 28.407356, 35.110199> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605413, -0.786190, 0.124017,
		-0.787059, 0.614542, 0.053627,
		-0.118374, -0.065142, -0.990830,
		42.604122, 28.387814, 34.812950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.058834, 28.062563, 35.383862>,  <42.686981, 28.433413, 35.506531>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.058834, 28.062563, 35.383862> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.203072, 28.054634, 35.010857>,  <42.289612, 28.049877, 34.787052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.203072, 28.054634, 35.010857>,  <42.058834, 28.062563, 35.383862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.203072, 28.054634, 35.010857> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599030, -0.771255, -0.215241,
		-0.714939, 0.636218, -0.289982,
		0.360590, -0.019824, -0.932514,
		42.311249, 28.048687, 34.731102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.392559, 34.543499, 40.394428> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.008060, 34.653587, 40.387955>,  <39.777363, 34.719639, 40.384071>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.008060, 34.653587, 40.387955>,  <40.392559, 34.543499, 40.394428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.008060, 34.653587, 40.387955> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082232, 0.230177, -0.969668,
		-0.263146, -0.933420, -0.243889,
		-0.961245, 0.275220, -0.016186,
		39.719688, 34.736153, 40.383099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.000896, 34.139736, 39.892796>,  <40.392559, 34.543499, 40.394428>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.000896, 34.139736, 39.892796> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.817410, 34.490025, 39.953049>,  <39.707317, 34.700199, 39.989201>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.817410, 34.490025, 39.953049>,  <40.000896, 34.139736, 39.892796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.817410, 34.490025, 39.953049> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021971, 0.158288, -0.987148,
		-0.888311, -0.456131, -0.053369,
		-0.458717, 0.875722, 0.150631,
		39.679794, 34.752743, 39.998238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.558270, 34.180511, 39.325581>,  <40.000896, 34.139736, 39.892796>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.558270, 34.180511, 39.325581> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.563129, 34.552132, 39.473480>,  <39.566044, 34.775105, 39.562218>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.563129, 34.552132, 39.473480>,  <39.558270, 34.180511, 39.325581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.563129, 34.552132, 39.473480> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069736, 0.369661, -0.926546,
		-0.997492, -0.014528, 0.069279,
		0.012148, 0.929053, 0.369746,
		39.566772, 34.830849, 39.584404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.962112, 34.514599, 39.173992>,  <39.558270, 34.180511, 39.325581>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.962112, 34.514599, 39.173992> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.211800, 34.823330, 39.222389>,  <39.361610, 35.008568, 39.251427>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.211800, 34.823330, 39.222389>,  <38.962112, 34.514599, 39.173992>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.211800, 34.823330, 39.222389> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219157, 0.321644, -0.921149,
		-0.749884, 0.548478, 0.369927,
		0.624215, 0.771827, 0.120993,
		39.399063, 35.054878, 39.258686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.616436, 35.010571, 38.999092>,  <38.962112, 34.514599, 39.173992>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.616436, 35.010571, 38.999092> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.978413, 35.174641, 38.953773>,  <39.195599, 35.273083, 38.926582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.978413, 35.174641, 38.953773>,  <38.616436, 35.010571, 38.999092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.978413, 35.174641, 38.953773> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292534, 0.406298, -0.865648,
		-0.309037, 0.816503, 0.487666,
		0.904942, 0.410176, -0.113293,
		39.249897, 35.297695, 38.919785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.538609, 35.787415, 38.844620>,  <38.616436, 35.010571, 38.999092>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.538609, 35.787415, 38.844620> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.892921, 35.667797, 38.702656>,  <39.105511, 35.596027, 38.617477>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.892921, 35.667797, 38.702656>,  <38.538609, 35.787415, 38.844620>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.892921, 35.667797, 38.702656> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207615, 0.428616, -0.879309,
		0.415076, 0.852560, 0.317573,
		0.885781, -0.299047, -0.354913,
		39.158657, 35.578083, 38.596184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.646534, 36.260849, 38.304142>,  <38.538609, 35.787415, 38.844620>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.646534, 36.260849, 38.304142> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.963394, 36.026566, 38.235500>,  <39.153511, 35.885994, 38.194317>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.963394, 36.026566, 38.235500>,  <38.646534, 36.260849, 38.304142>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.963394, 36.026566, 38.235500> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015590, 0.261656, -0.965035,
		0.610132, 0.767124, 0.198139,
		0.792146, -0.585710, -0.171604,
		39.201038, 35.850853, 38.184017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.118000, 36.654472, 38.012341>,  <38.646534, 36.260849, 38.304142>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.118000, 36.654472, 38.012341> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.212402, 36.283627, 37.895882>,  <39.269043, 36.061119, 37.826008>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.212402, 36.283627, 37.895882>,  <39.118000, 36.654472, 38.012341>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.212402, 36.283627, 37.895882> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179448, 0.252880, -0.950711,
		0.955040, 0.276615, -0.106688,
		0.236002, -0.927112, -0.291148,
		39.283203, 36.005493, 37.808537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.617344, 36.614849, 37.424263>,  <39.118000, 36.654472, 38.012341>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.617344, 36.614849, 37.424263> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.423325, 36.265095, 37.418766>,  <39.306915, 36.055244, 37.415466>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.423325, 36.265095, 37.418766>,  <39.617344, 36.614849, 37.424263>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.423325, 36.265095, 37.418766> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186317, 0.118688, -0.975294,
		0.854411, -0.470499, -0.220481,
		-0.485044, -0.874382, -0.013747,
		39.277813, 36.002781, 37.414642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.936218, 36.359734, 36.822800>,  <39.617344, 36.614849, 37.424263>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.936218, 36.359734, 36.822800> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.601669, 36.154133, 36.898998>,  <39.400940, 36.030773, 36.944717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.601669, 36.154133, 36.898998>,  <39.936218, 36.359734, 36.822800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.601669, 36.154133, 36.898998> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253880, 0.055220, -0.965658,
		0.485833, -0.856009, -0.176680,
		-0.836368, -0.514004, 0.190496,
		39.350758, 35.999931, 36.956146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.059891, 35.723648, 36.513897>,  <39.936218, 36.359734, 36.822800>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.059891, 35.723648, 36.513897> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.662613, 35.769997, 36.518639>,  <39.424248, 35.797806, 36.521484>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.662613, 35.769997, 36.518639>,  <40.059891, 35.723648, 36.513897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.662613, 35.769997, 36.518639> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010963, 0.008322, -0.999905,
		-0.115965, -0.993229, -0.006995,
		-0.993193, 0.115878, 0.011854,
		39.364655, 35.804760, 36.522194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.815845, 35.274876, 36.086330>,  <40.059891, 35.723648, 36.513897>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.815845, 35.274876, 36.086330> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.500481, 35.519634, 36.111584>,  <39.311260, 35.666489, 36.126736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.500481, 35.519634, 36.111584>,  <39.815845, 35.274876, 36.086330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.500481, 35.519634, 36.111584> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117450, -0.048993, -0.991870,
		-0.603826, -0.789421, 0.110494,
		-0.788416, 0.611894, 0.063134,
		39.263954, 35.703201, 36.130524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.253326, 34.992111, 35.724384>,  <39.815845, 35.274876, 36.086330>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.253326, 34.992111, 35.724384> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.199635, 35.387802, 35.747726>,  <39.167419, 35.625217, 35.761730>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.199635, 35.387802, 35.747726>,  <39.253326, 34.992111, 35.724384>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.199635, 35.387802, 35.747726> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009904, 0.060221, -0.998136,
		-0.990901, -0.133402, -0.017881,
		-0.134230, 0.989231, 0.058352,
		39.159367, 35.684570, 35.765232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.154297, 34.444450, 35.244526>,  <39.253326, 34.992111, 35.724384>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.154297, 34.444450, 35.244526> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.110382, 34.073147, 35.102375>,  <39.084034, 33.850365, 35.017086>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.110382, 34.073147, 35.102375>,  <39.154297, 34.444450, 35.244526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.110382, 34.073147, 35.102375> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161032, -0.336203, 0.927921,
		-0.980824, 0.159097, -0.112569,
		-0.109784, -0.928254, -0.355375,
		39.077446, 33.794670, 34.995762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.528934, 34.263668, 35.541946>,  <39.154297, 34.444450, 35.244526>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.528934, 34.263668, 35.541946> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.732979, 33.927158, 35.470337>,  <38.855404, 33.725254, 35.427372>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.732979, 33.927158, 35.470337>,  <38.528934, 34.263668, 35.541946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.732979, 33.927158, 35.470337> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343953, -0.390298, 0.854028,
		-0.788342, -0.374074, -0.488453,
		0.510112, -0.841271, -0.179024,
		38.886013, 33.674778, 35.416630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.120701, 33.715950, 35.620350>,  <38.528934, 34.263668, 35.541946>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.120701, 33.715950, 35.620350> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.482498, 33.550289, 35.661095>,  <38.699577, 33.450893, 35.685539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.482498, 33.550289, 35.661095>,  <38.120701, 33.715950, 35.620350>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.482498, 33.550289, 35.661095> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380298, -0.675070, 0.632182,
		-0.193056, -0.610540, -0.768095,
		0.904491, -0.414151, 0.101861,
		38.753845, 33.426044, 35.691654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.995808, 33.068138, 35.358105>,  <38.120701, 33.715950, 35.620350>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.995808, 33.068138, 35.358105> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.301266, 33.082062, 35.615986>,  <38.484539, 33.090416, 35.770714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.301266, 33.082062, 35.615986>,  <37.995808, 33.068138, 35.358105>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.301266, 33.082062, 35.615986> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471425, -0.652213, 0.593614,
		0.441147, -0.757236, -0.481646,
		0.763641, 0.034811, 0.644702,
		38.530357, 33.092506, 35.809395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.049904, 32.322563, 35.597275>,  <37.995808, 33.068138, 35.358105>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.049904, 32.322563, 35.597275> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.271965, 32.517059, 35.867203>,  <38.405201, 32.633755, 36.029160>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.271965, 32.517059, 35.867203>,  <38.049904, 32.322563, 35.597275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.271965, 32.517059, 35.867203> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334736, -0.612111, 0.716430,
		0.761419, -0.623613, -0.177053,
		0.555151, 0.486237, 0.674819,
		38.438511, 32.662930, 36.069649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.503723, 31.829432, 35.876614>,  <38.049904, 32.322563, 35.597275>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.503723, 31.829432, 35.876614> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.474022, 32.128616, 36.140442>,  <38.456200, 32.308128, 36.298740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.474022, 32.128616, 36.140442>,  <38.503723, 31.829432, 35.876614>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.474022, 32.128616, 36.140442> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373615, -0.634093, 0.677006,
		0.924607, -0.196155, 0.326536,
		-0.074256, 0.747963, 0.659573,
		38.451744, 32.353004, 36.338314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.710152, 31.458908, 36.503647>,  <38.503723, 31.829432, 35.876614>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.710152, 31.458908, 36.503647> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.558479, 31.800869, 36.645275>,  <38.467476, 32.006046, 36.730251>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.558479, 31.800869, 36.645275>,  <38.710152, 31.458908, 36.503647>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.558479, 31.800869, 36.645275> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254978, -0.464363, 0.848147,
		0.889498, 0.231324, 0.394060,
		-0.379184, 0.854901, 0.354067,
		38.444725, 32.057339, 36.751495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.931862, 31.496643, 37.194096>,  <38.710152, 31.458908, 36.503647>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.931862, 31.496643, 37.194096> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.625423, 31.753588, 37.185360>,  <38.441563, 31.907755, 37.180119>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.625423, 31.753588, 37.185360>,  <38.931862, 31.496643, 37.194096>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.625423, 31.753588, 37.185360> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315248, -0.345928, 0.883715,
		0.560109, 0.683891, 0.467515,
		-0.766092, 0.642360, -0.021838,
		38.395596, 31.946297, 37.178810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.910320, 31.895359, 37.920498>,  <38.931862, 31.496643, 37.194096>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.910320, 31.895359, 37.920498> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.541477, 31.914896, 37.766960>,  <38.320171, 31.926619, 37.674839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.541477, 31.914896, 37.766960>,  <38.910320, 31.895359, 37.920498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.541477, 31.914896, 37.766960> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382666, -0.262138, 0.885918,
		-0.057348, 0.963793, 0.260410,
		-0.922105, 0.048844, -0.383844,
		38.264847, 31.929550, 37.651806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.546181, 32.370705, 38.345573>,  <38.910320, 31.895359, 37.920498>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.546181, 32.370705, 38.345573> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.277710, 32.127590, 38.175816>,  <38.116627, 31.981720, 38.073963>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.277710, 32.127590, 38.175816>,  <38.546181, 32.370705, 38.345573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.277710, 32.127590, 38.175816> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295703, -0.305463, 0.905125,
		-0.679762, 0.732996, 0.025296,
		-0.671180, -0.607790, -0.424392,
		38.076355, 31.945253, 38.048496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.870239, 32.502285, 38.519012>,  <38.546181, 32.370705, 38.345573>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.870239, 32.502285, 38.519012> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.817944, 32.124512, 38.398380>,  <37.786568, 31.897848, 38.326000>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.817944, 32.124512, 38.398380>,  <37.870239, 32.502285, 38.519012>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.817944, 32.124512, 38.398380> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334560, -0.244324, 0.910151,
		-0.933262, 0.219886, -0.284028,
		-0.130735, -0.944434, -0.301583,
		37.778725, 31.841181, 38.307907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.363358, 32.367382, 38.883678>,  <37.870239, 32.502285, 38.519012>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.363358, 32.367382, 38.883678> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.458675, 32.000053, 38.757252>,  <37.515865, 31.779655, 38.681396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.458675, 32.000053, 38.757252>,  <37.363358, 32.367382, 38.883678>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.458675, 32.000053, 38.757252> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402829, -0.389583, 0.828223,
		-0.883711, -0.070041, -0.462763,
		0.238294, -0.918324, -0.316064,
		37.530163, 31.724556, 38.662434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.794315, 31.948925, 39.132275>,  <37.363358, 32.367382, 38.883678>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.794315, 31.948925, 39.132275> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.096840, 31.692581, 39.079674>,  <37.278355, 31.538774, 39.048115>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.096840, 31.692581, 39.079674>,  <36.794315, 31.948925, 39.132275>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.096840, 31.692581, 39.079674> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186188, -0.403550, 0.895813,
		-0.627157, -0.653031, -0.424530,
		0.756312, -0.640858, -0.131503,
		37.323734, 31.500324, 39.040222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.538063, 31.244818, 39.311665>,  <36.794315, 31.948925, 39.132275>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.538063, 31.244818, 39.311665> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.936398, 31.230301, 39.345131>,  <37.175396, 31.221590, 39.365211>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.936398, 31.230301, 39.345131>,  <36.538063, 31.244818, 39.311665>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.936398, 31.230301, 39.345131> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090890, -0.469992, 0.877979,
		0.007456, -0.881924, -0.471332,
		0.995833, -0.036294, 0.083662,
		37.235146, 31.219412, 39.370228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.743053, 30.495537, 39.635220>,  <36.538063, 31.244818, 39.311665>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.743053, 30.495537, 39.635220> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.040886, 30.753767, 39.703144>,  <37.219585, 30.908705, 39.743900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.040886, 30.753767, 39.703144>,  <36.743053, 30.495537, 39.635220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.040886, 30.753767, 39.703144> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084578, -0.343577, 0.935308,
		0.662155, -0.682048, -0.310421,
		0.744578, 0.645574, 0.169816,
		37.264259, 30.947439, 39.754089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.789742, 29.720011, 39.395161>,  <36.743053, 30.495537, 39.635220>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.789742, 29.720011, 39.395161> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.482399, 29.464115, 39.402779>,  <36.297993, 29.310577, 39.407349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.482399, 29.464115, 39.402779>,  <36.789742, 29.720011, 39.395161>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.482399, 29.464115, 39.402779> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229727, 0.247903, -0.941153,
		0.597371, -0.727516, -0.337443,
		-0.768358, -0.639737, 0.019040,
		36.251892, 29.272194, 39.408489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.920830, 29.289312, 38.871029>,  <36.789742, 29.720011, 39.395161>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.920830, 29.289312, 38.871029> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.526814, 29.282078, 38.939579>,  <36.290405, 29.277737, 38.980709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.526814, 29.282078, 38.939579>,  <36.920830, 29.289312, 38.871029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.526814, 29.282078, 38.939579> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171276, 0.212508, -0.962031,
		-0.019021, -0.976992, -0.212427,
		-0.985039, -0.018085, 0.171378,
		36.231300, 29.276653, 38.990993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.562389, 28.853439, 38.348236>,  <36.920830, 29.289312, 38.871029>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.562389, 28.853439, 38.348236> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.278286, 29.101110, 38.482193>,  <36.107826, 29.249714, 38.562569>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.278286, 29.101110, 38.482193>,  <36.562389, 28.853439, 38.348236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.278286, 29.101110, 38.482193> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293031, 0.172506, -0.940412,
		-0.640054, -0.766067, 0.058915,
		-0.710256, 0.619179, 0.334894,
		36.065208, 29.286863, 38.582661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.078449, 28.867270, 37.810593>,  <36.562389, 28.853439, 38.348236>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.078449, 28.867270, 37.810593> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.933048, 29.177256, 38.017395>,  <35.845810, 29.363247, 38.141476>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.933048, 29.177256, 38.017395>,  <36.078449, 28.867270, 37.810593>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.933048, 29.177256, 38.017395> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432333, 0.351259, -0.830485,
		-0.825200, -0.525401, 0.207360,
		-0.363501, 0.774965, 0.517008,
		35.823997, 29.409744, 38.172497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.361584, 28.904234, 37.677822>,  <36.078449, 28.867270, 37.810593>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.361584, 28.904234, 37.677822> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.460938, 29.263412, 37.823151>,  <35.520550, 29.478920, 37.910347>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.460938, 29.263412, 37.823151>,  <35.361584, 28.904234, 37.677822>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.460938, 29.263412, 37.823151> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467930, 0.439633, -0.766658,
		-0.848143, 0.020420, 0.529374,
		0.248386, 0.897945, 0.363317,
		35.535454, 29.532797, 37.932144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.716206, 29.276155, 37.849552>,  <35.361584, 28.904234, 37.677822>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.716206, 29.276155, 37.849552> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.009762, 29.540199, 37.785480>,  <35.185898, 29.698626, 37.747036>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.009762, 29.540199, 37.785480>,  <34.716206, 29.276155, 37.849552>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.009762, 29.540199, 37.785480> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596306, 0.513166, -0.617316,
		-0.325298, 0.548560, 0.770236,
		0.733894, 0.660108, -0.160178,
		35.229931, 29.738232, 37.737427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.400719, 29.711039, 37.581074>,  <34.716206, 29.276155, 37.849552>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.400719, 29.711039, 37.581074> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.749252, 29.889027, 37.498348>,  <34.958374, 29.995819, 37.448711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.749252, 29.889027, 37.498348>,  <34.400719, 29.711039, 37.581074>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.749252, 29.889027, 37.498348> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469154, 0.632013, -0.616811,
		-0.143751, 0.634479, 0.759455,
		0.871338, 0.444968, -0.206816,
		35.010654, 30.022516, 37.436302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.336582, 30.465147, 37.702385>,  <34.400719, 29.711039, 37.581074>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.336582, 30.465147, 37.702385> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.647812, 30.412949, 37.456596>,  <34.834549, 30.381630, 37.309124>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.647812, 30.412949, 37.456596>,  <34.336582, 30.465147, 37.702385>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.647812, 30.412949, 37.456596> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247129, 0.835719, -0.490409,
		0.577519, 0.533427, 0.618002,
		0.778074, -0.130494, -0.614469,
		34.881233, 30.373800, 37.272255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.534061, 31.135735, 37.709454>,  <34.336582, 30.465147, 37.702385>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.534061, 31.135735, 37.709454> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.690643, 30.942652, 37.396084>,  <34.784592, 30.826801, 37.208061>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.690643, 30.942652, 37.396084>,  <34.534061, 31.135735, 37.709454>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.690643, 30.942652, 37.396084> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213787, 0.780367, -0.587641,
		0.895020, 0.397519, 0.202279,
		0.391451, -0.482706, -0.783429,
		34.808079, 30.797840, 37.161057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.007294, 31.624868, 37.332905>,  <34.534061, 31.135735, 37.709454>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.007294, 31.624868, 37.332905> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.892139, 31.335388, 37.082027>,  <34.823048, 31.161699, 36.931499>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.892139, 31.335388, 37.082027>,  <35.007294, 31.624868, 37.332905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.892139, 31.335388, 37.082027> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324945, 0.689888, -0.646889,
		0.900852, 0.017576, -0.433771,
		-0.287884, -0.723702, -0.627198,
		34.805775, 31.118277, 36.893867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.112816, 32.036251, 36.726398>,  <35.007294, 31.624868, 37.332905>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.112816, 32.036251, 36.726398> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.901119, 31.717909, 36.608738>,  <34.774101, 31.526905, 36.538143>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.901119, 31.717909, 36.608738>,  <35.112816, 32.036251, 36.726398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.901119, 31.717909, 36.608738> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105060, 0.405484, -0.908045,
		0.841943, -0.449669, -0.298210,
		-0.529239, -0.795852, -0.294153,
		34.742348, 31.479153, 36.520493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.324158, 31.772444, 35.962120>,  <35.112816, 32.036251, 36.726398>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.324158, 31.772444, 35.962120> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.947124, 31.660063, 36.034355>,  <34.720905, 31.592634, 36.077698>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.947124, 31.660063, 36.034355>,  <35.324158, 31.772444, 35.962120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.947124, 31.660063, 36.034355> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269107, 0.318646, -0.908871,
		0.197805, -0.905279, -0.375956,
		-0.942579, -0.280952, 0.180587,
		34.664352, 31.575777, 36.088531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.908714, 28.351421, 42.425674> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.551838, 28.252920, 42.577118>,  <37.337711, 28.193819, 42.667984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.551838, 28.252920, 42.577118>,  <37.908714, 28.351421, 42.425674>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.551838, 28.252920, 42.577118> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366817, -0.093990, -0.925533,
		0.263502, -0.964637, -0.006473,
		-0.892195, -0.246254, 0.378612,
		37.284180, 28.179045, 42.690701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.598370, 27.747543, 42.085094>,  <37.908714, 28.351421, 42.425674>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.598370, 27.747543, 42.085094> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.271374, 27.917242, 42.240902>,  <37.075176, 28.019062, 42.334389>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.271374, 27.917242, 42.240902>,  <37.598370, 27.747543, 42.085094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.271374, 27.917242, 42.240902> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440723, -0.025394, -0.897284,
		-0.370779, -0.905190, 0.207735,
		-0.817487, 0.424248, 0.389523,
		37.026127, 28.044516, 42.357758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.000435, 27.299128, 41.837669>,  <37.598370, 27.747543, 42.085094>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.000435, 27.299128, 41.837669> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.876514, 27.672630, 41.909351>,  <36.802162, 27.896732, 41.952362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.876514, 27.672630, 41.909351>,  <37.000435, 27.299128, 41.837669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.876514, 27.672630, 41.909351> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507876, -0.003182, -0.861424,
		-0.803793, -0.357888, 0.475219,
		-0.309805, 0.933759, 0.179205,
		36.783573, 27.952759, 41.963112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.354687, 27.382334, 41.406994>,  <37.000435, 27.299128, 41.837669>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.354687, 27.382334, 41.406994> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.455914, 27.758339, 41.498497>,  <36.516651, 27.983942, 41.553398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.455914, 27.758339, 41.498497>,  <36.354687, 27.382334, 41.406994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.455914, 27.758339, 41.498497> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559586, 0.335111, -0.758000,
		-0.789190, 0.063816, 0.610824,
		0.253067, 0.940015, 0.228756,
		36.531834, 28.040344, 41.567123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.810436, 27.709335, 41.279388>,  <36.354687, 27.382334, 41.406994>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.810436, 27.709335, 41.279388> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.087894, 27.997372, 41.272121>,  <36.254368, 28.170193, 41.267761>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.087894, 27.997372, 41.272121>,  <35.810436, 27.709335, 41.279388>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.087894, 27.997372, 41.272121> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413657, 0.377561, -0.828454,
		-0.589699, 0.582169, 0.559763,
		0.693644, 0.720089, -0.018171,
		36.295986, 28.213398, 41.266670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.403595, 28.397642, 41.188442>,  <35.810436, 27.709335, 41.279388>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.403595, 28.397642, 41.188442> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.780548, 28.428965, 41.058350>,  <36.006721, 28.447758, 40.980293>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.780548, 28.428965, 41.058350>,  <35.403595, 28.397642, 41.188442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.780548, 28.428965, 41.058350> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326771, 0.423582, -0.844866,
		0.071603, 0.902467, 0.424767,
		0.942387, 0.078307, -0.325230,
		36.063263, 28.452457, 40.960781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.349010, 29.048178, 40.714897>,  <35.403595, 28.397642, 41.188442>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.349010, 29.048178, 40.714897> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.706841, 28.893736, 40.624870>,  <35.921539, 28.801071, 40.570854>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.706841, 28.893736, 40.624870>,  <35.349010, 29.048178, 40.714897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.706841, 28.893736, 40.624870> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060713, 0.393942, -0.917128,
		0.442769, 0.834106, 0.328971,
		0.894578, -0.386103, -0.225067,
		35.975212, 28.777905, 40.557350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.954426, 29.553312, 40.566380>,  <35.349010, 29.048178, 40.714897>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.954426, 29.553312, 40.566380> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.070847, 29.223387, 40.372482>,  <36.140697, 29.025431, 40.256145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.070847, 29.223387, 40.372482>,  <35.954426, 29.553312, 40.566380>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.070847, 29.223387, 40.372482> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042305, 0.495082, -0.867815,
		0.955772, 0.273086, 0.109201,
		0.291051, -0.824814, -0.484739,
		36.158161, 28.975943, 40.227062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.525200, 29.780790, 40.155579>,  <35.954426, 29.553312, 40.566380>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.525200, 29.780790, 40.155579> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.372818, 29.445843, 39.998764>,  <36.281391, 29.244875, 39.904675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.372818, 29.445843, 39.998764>,  <36.525200, 29.780790, 40.155579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.372818, 29.445843, 39.998764> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006095, 0.421727, -0.906703,
		0.924576, -0.347798, -0.155553,
		-0.380950, -0.837367, -0.392038,
		36.258533, 29.194633, 39.881153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.254753, 30.115963, 39.970348>,  <36.525200, 29.780790, 40.155579>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.254753, 30.115963, 39.970348> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.362907, 30.488735, 40.067013>,  <37.427799, 30.712399, 40.125011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.362907, 30.488735, 40.067013>,  <37.254753, 30.115963, 39.970348>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.362907, 30.488735, 40.067013> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158460, -0.290662, 0.943613,
		0.949623, -0.216841, -0.226264,
		0.270381, 0.931931, 0.241659,
		37.444023, 30.768314, 40.139511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.848640, 30.023121, 40.371658>,  <37.254753, 30.115963, 39.970348>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.848640, 30.023121, 40.371658> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.725502, 30.394352, 40.455471>,  <37.651619, 30.617090, 40.505756>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.725502, 30.394352, 40.455471>,  <37.848640, 30.023121, 40.371658>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.725502, 30.394352, 40.455471> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206701, -0.149725, 0.966880,
		0.928711, 0.340964, -0.145741,
		-0.307850, 0.928077, 0.209529,
		37.633148, 30.672775, 40.518330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.352806, 30.283016, 40.929958>,  <37.848640, 30.023121, 40.371658>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.352806, 30.283016, 40.929958> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.027714, 30.515930, 40.938171>,  <37.832661, 30.655678, 40.943100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.027714, 30.515930, 40.938171>,  <38.352806, 30.283016, 40.929958>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.027714, 30.515930, 40.938171> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053666, 0.039727, 0.997768,
		0.580168, 0.812015, -0.063536,
		-0.812727, 0.582283, 0.020530,
		37.783897, 30.690615, 40.944332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.625198, 30.902651, 41.203732>,  <38.352806, 30.283016, 40.929958>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.625198, 30.902651, 41.203732> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.229748, 30.894297, 41.263317>,  <37.992477, 30.889284, 41.299068>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.229748, 30.894297, 41.263317>,  <38.625198, 30.902651, 41.203732>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.229748, 30.894297, 41.263317> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146450, 0.092331, 0.984900,
		-0.034323, 0.995509, -0.088222,
		-0.988622, -0.020885, 0.148962,
		37.933163, 30.888031, 41.308006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.434738, 31.511333, 41.695244>,  <38.625198, 30.902651, 41.203732>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.434738, 31.511333, 41.695244> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.145416, 31.236933, 41.726822>,  <37.971825, 31.072292, 41.745770>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.145416, 31.236933, 41.726822>,  <38.434738, 31.511333, 41.695244>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.145416, 31.236933, 41.726822> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132758, -0.025949, 0.990809,
		-0.677650, 0.727135, 0.109842,
		-0.723302, -0.686004, 0.078949,
		37.928425, 31.031132, 41.750507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.932247, 31.892836, 42.137894>,  <38.434738, 31.511333, 41.695244>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.932247, 31.892836, 42.137894> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.848610, 31.501900, 42.124725>,  <37.798428, 31.267338, 42.116825>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.848610, 31.501900, 42.124725>,  <37.932247, 31.892836, 42.137894>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.848610, 31.501900, 42.124725> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031647, -0.040411, 0.998682,
		-0.977383, 0.207776, 0.039380,
		-0.209093, -0.977341, -0.032921,
		37.785881, 31.208696, 42.114849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.557419, 31.792797, 42.762989>,  <37.932247, 31.892836, 42.137894>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.557419, 31.792797, 42.762989> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.616760, 31.408266, 42.670174>,  <37.652367, 31.177547, 42.614483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.616760, 31.408266, 42.670174>,  <37.557419, 31.792797, 42.762989>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.616760, 31.408266, 42.670174> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026288, -0.230722, 0.972664,
		-0.988585, -0.150400, -0.008958,
		0.148355, -0.961326, -0.232042,
		37.661266, 31.119869, 42.600559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.070724, 31.401888, 43.194839>,  <37.557419, 31.792797, 42.762989>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.070724, 31.401888, 43.194839> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.375584, 31.164005, 43.092499>,  <37.558498, 31.021276, 43.031094>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.375584, 31.164005, 43.092499>,  <37.070724, 31.401888, 43.194839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.375584, 31.164005, 43.092499> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102853, -0.278957, 0.954780,
		-0.639186, -0.753995, -0.151438,
		0.762144, -0.594705, -0.255856,
		37.604225, 30.985594, 43.015743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.930855, 30.773077, 43.567238>,  <37.070724, 31.401888, 43.194839>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.930855, 30.773077, 43.567238> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.318802, 30.739996, 43.475571>,  <37.551571, 30.720148, 43.420570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.318802, 30.739996, 43.475571>,  <36.930855, 30.773077, 43.567238>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.318802, 30.739996, 43.475571> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199853, -0.267915, 0.942486,
		-0.139343, -0.959886, -0.243313,
		0.969867, -0.082702, -0.229168,
		37.609760, 30.715185, 43.406818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.173611, 30.197174, 43.830944>,  <36.930855, 30.773077, 43.567238>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.173611, 30.197174, 43.830944> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.527840, 30.379398, 43.794674>,  <37.740379, 30.488733, 43.772911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.527840, 30.379398, 43.794674>,  <37.173611, 30.197174, 43.830944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.527840, 30.379398, 43.794674> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258792, -0.321786, 0.910758,
		0.385726, -0.830011, -0.402861,
		0.885574, 0.455561, -0.090679,
		37.793510, 30.516066, 43.767471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.786942, 29.707111, 44.057140>,  <37.173611, 30.197174, 43.830944>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.786942, 29.707111, 44.057140> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.936684, 30.077377, 44.079071>,  <38.026527, 30.299536, 44.092228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.936684, 30.077377, 44.079071>,  <37.786942, 29.707111, 44.057140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.936684, 30.077377, 44.079071> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425577, -0.224038, 0.876750,
		0.823857, -0.304886, -0.477811,
		0.374357, 0.925663, 0.054823,
		38.048992, 30.355076, 44.095516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.468727, 29.642847, 44.184990>,  <37.786942, 29.707111, 44.057140>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.468727, 29.642847, 44.184990> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.354736, 30.008049, 44.301754>,  <38.286343, 30.227171, 44.371811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.354736, 30.008049, 44.301754>,  <38.468727, 29.642847, 44.184990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.354736, 30.008049, 44.301754> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270603, -0.215516, 0.938258,
		0.919545, 0.346372, -0.185644,
		-0.284977, 0.913005, 0.291906,
		38.269245, 30.281950, 44.389324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.012630, 29.822376, 44.582657>,  <38.468727, 29.642847, 44.184990>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.012630, 29.822376, 44.582657> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.692787, 30.033949, 44.696396>,  <38.500881, 30.160892, 44.764641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.692787, 30.033949, 44.696396>,  <39.012630, 29.822376, 44.582657>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.692787, 30.033949, 44.696396> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206707, -0.202146, 0.957293,
		0.563825, 0.824237, 0.052303,
		-0.799608, 0.528934, 0.284350,
		38.452904, 30.192629, 44.781700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.337574, 30.230902, 45.044209>,  <39.012630, 29.822376, 44.582657>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.337574, 30.230902, 45.044209> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.944851, 30.235008, 45.120045>,  <38.709217, 30.237473, 45.165546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.944851, 30.235008, 45.120045>,  <39.337574, 30.230902, 45.044209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.944851, 30.235008, 45.120045> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189621, 0.002220, 0.981855,
		0.009659, 0.999945, -0.004127,
		-0.981810, 0.010266, 0.189589,
		38.650307, 30.238089, 45.176922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.905453, 32.533199, 45.351944> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.234203, 32.308208, 45.315853>,  <34.431454, 32.173214, 45.294197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.234203, 32.308208, 45.315853>,  <33.905453, 32.533199, 45.351944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.234203, 32.308208, 45.315853> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160535, 0.380654, -0.910676,
		0.546579, 0.733978, 0.403147,
		0.821876, -0.562475, -0.090229,
		34.480766, 32.139465, 45.288784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.377151, 32.980839, 45.170284>,  <33.905453, 32.533199, 45.351944>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.377151, 32.980839, 45.170284> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.536442, 32.628399, 45.068233>,  <34.632015, 32.416935, 45.007004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.536442, 32.628399, 45.068233>,  <34.377151, 32.980839, 45.170284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.536442, 32.628399, 45.068233> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314565, 0.392441, -0.864314,
		0.861666, 0.263934, 0.433441,
		0.398222, -0.881095, -0.255129,
		34.655907, 32.364071, 44.991695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.085979, 33.101894, 44.943668>,  <34.377151, 32.980839, 45.170284>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.085979, 33.101894, 44.943668> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.973335, 32.758465, 44.772297>,  <34.905750, 32.552406, 44.669472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.973335, 32.758465, 44.772297>,  <35.085979, 33.101894, 44.943668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.973335, 32.758465, 44.772297> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268055, 0.358332, -0.894284,
		0.921327, -0.366683, 0.129234,
		-0.281610, -0.858570, -0.428433,
		34.888851, 32.500893, 44.643768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.648678, 32.903439, 44.450527>,  <35.085979, 33.101894, 44.943668>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.648678, 32.903439, 44.450527> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.335590, 32.687405, 44.326809>,  <35.147739, 32.557785, 44.252579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.335590, 32.687405, 44.326809>,  <35.648678, 32.903439, 44.450527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.335590, 32.687405, 44.326809> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237834, 0.199690, -0.950557,
		0.575146, -0.817576, -0.027850,
		-0.782714, -0.540086, -0.309299,
		35.100777, 32.525379, 44.234020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.874527, 32.759003, 43.791805>,  <35.648678, 32.903439, 44.450527>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.874527, 32.759003, 43.791805> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.496845, 32.633560, 43.751553>,  <35.270237, 32.558292, 43.727402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.496845, 32.633560, 43.751553>,  <35.874527, 32.759003, 43.791805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.496845, 32.633560, 43.751553> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030714, 0.220362, -0.974935,
		0.327927, -0.923628, -0.198434,
		-0.944204, -0.313613, -0.100631,
		35.213585, 32.539478, 43.721363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.652393, 32.284782, 43.234776>,  <35.874527, 32.759003, 43.791805>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.652393, 32.284782, 43.234776> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.330467, 32.503201, 43.327816>,  <35.137310, 32.634251, 43.383640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.330467, 32.503201, 43.327816>,  <35.652393, 32.284782, 43.234776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.330467, 32.503201, 43.327816> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132923, 0.216112, -0.967278,
		-0.578448, -0.809399, -0.101349,
		-0.804817, 0.546048, 0.232597,
		35.089024, 32.667015, 43.397594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.133240, 32.101818, 42.784378>,  <35.652393, 32.284782, 43.234776>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.133240, 32.101818, 42.784378> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.987057, 32.454540, 42.903622>,  <34.899345, 32.666172, 42.975166>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.987057, 32.454540, 42.903622>,  <35.133240, 32.101818, 42.784378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.987057, 32.454540, 42.903622> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283222, 0.199738, -0.938025,
		-0.886695, -0.427238, 0.176750,
		-0.365456, 0.881801, 0.298109,
		34.877419, 32.719082, 42.993053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.535870, 32.211761, 42.416164>,  <35.133240, 32.101818, 42.784378>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.535870, 32.211761, 42.416164> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.614555, 32.578121, 42.556126>,  <34.661766, 32.797935, 42.640102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.614555, 32.578121, 42.556126>,  <34.535870, 32.211761, 42.416164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.614555, 32.578121, 42.556126> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261418, 0.392955, -0.881616,
		-0.944967, 0.081958, 0.316733,
		0.196718, 0.915898, 0.349905,
		34.673573, 32.852890, 42.661098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.015320, 32.614235, 42.127834>,  <34.535870, 32.211761, 42.416164>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.015320, 32.614235, 42.127834> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.283508, 32.891747, 42.233009>,  <34.444420, 33.058254, 42.296116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.283508, 32.891747, 42.233009>,  <34.015320, 32.614235, 42.127834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.283508, 32.891747, 42.233009> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151507, 0.474952, -0.866871,
		-0.726301, 0.541377, 0.423555,
		0.670472, 0.693781, 0.262936,
		34.484650, 33.099880, 42.311890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.681694, 33.316254, 42.068260>,  <34.015320, 32.614235, 42.127834>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.681694, 33.316254, 42.068260> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.078281, 33.362522, 42.044243>,  <34.316235, 33.390285, 42.029831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.078281, 33.362522, 42.044243>,  <33.681694, 33.316254, 42.068260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.078281, 33.362522, 42.044243> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123944, 0.694420, -0.708815,
		-0.040297, 0.710212, 0.702834,
		0.991471, 0.115675, -0.060044,
		34.375721, 33.397224, 42.026230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.802383, 34.067841, 41.964134>,  <33.681694, 33.316254, 42.068260>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.802383, 34.067841, 41.964134> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.153175, 33.930424, 41.829739>,  <34.363651, 33.847973, 41.749100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.153175, 33.930424, 41.829739>,  <33.802383, 34.067841, 41.964134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.153175, 33.930424, 41.829739> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015972, 0.677983, -0.734904,
		0.480265, 0.649861, 0.589090,
		0.876978, -0.343540, -0.335991,
		34.416267, 33.827362, 41.728943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.149052, 34.697205, 41.648727>,  <33.802383, 34.067841, 41.964134>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.149052, 34.697205, 41.648727> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.344299, 34.370804, 41.524864>,  <34.461449, 34.174965, 41.450546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.344299, 34.370804, 41.524864>,  <34.149052, 34.697205, 41.648727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.344299, 34.370804, 41.524864> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060137, 0.385395, -0.920790,
		0.870705, 0.430829, 0.237189,
		0.488115, -0.816000, -0.309657,
		34.490734, 34.126003, 41.431969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.748272, 34.914116, 41.310371>,  <34.149052, 34.697205, 41.648727>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.748272, 34.914116, 41.310371> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.667931, 34.540176, 41.193256>,  <34.619728, 34.315815, 41.122990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.667931, 34.540176, 41.193256>,  <34.748272, 34.914116, 41.310371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.667931, 34.540176, 41.193256> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036041, 0.305724, -0.951438,
		0.978959, -0.180545, -0.095098,
		-0.200851, -0.934846, -0.292784,
		34.607674, 34.259724, 41.105423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.071445, 34.911915, 40.771931>,  <34.748272, 34.914116, 41.310371>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.071445, 34.911915, 40.771931> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.779808, 34.639305, 40.746761>,  <34.604828, 34.475739, 40.731659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.779808, 34.639305, 40.746761>,  <35.071445, 34.911915, 40.771931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.779808, 34.639305, 40.746761> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236583, 0.337227, -0.911211,
		0.642229, -0.649467, -0.407105,
		-0.729088, -0.681520, -0.062924,
		34.561081, 34.434849, 40.727882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.794537, 34.951454, 40.774029>,  <35.071445, 34.911915, 40.771931>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.794537, 34.951454, 40.774029> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.017643, 35.283436, 40.777431>,  <36.151505, 35.482624, 40.779472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.017643, 35.283436, 40.777431>,  <35.794537, 34.951454, 40.774029>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.017643, 35.283436, 40.777431> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340516, -0.238164, 0.909575,
		0.756934, -0.504430, -0.415453,
		0.557763, 0.829957, 0.008507,
		36.184971, 35.532421, 40.779984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.488522, 34.742264, 40.947197>,  <35.794537, 34.951454, 40.774029>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.488522, 34.742264, 40.947197> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.430428, 35.119801, 41.065903>,  <36.395573, 35.346321, 41.137127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.430428, 35.119801, 41.065903>,  <36.488522, 34.742264, 40.947197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.430428, 35.119801, 41.065903> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304998, -0.242633, 0.920926,
		0.941214, 0.224261, -0.252632,
		-0.145231, 0.943841, 0.296769,
		36.386860, 35.402954, 41.154934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.092949, 35.030712, 41.427929>,  <36.488522, 34.742264, 40.947197>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.092949, 35.030712, 41.427929> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.776928, 35.256638, 41.523273>,  <36.587315, 35.392193, 41.580479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.776928, 35.256638, 41.523273>,  <37.092949, 35.030712, 41.427929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.776928, 35.256638, 41.523273> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254028, -0.052243, 0.965785,
		0.557937, 0.823566, -0.102203,
		-0.790048, 0.564810, 0.238358,
		36.539913, 35.426079, 41.594780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.313435, 35.475170, 41.885834>,  <37.092949, 35.030712, 41.427929>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.313435, 35.475170, 41.885834> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.920254, 35.445591, 41.953163>,  <36.684345, 35.427841, 41.993561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.920254, 35.445591, 41.953163>,  <37.313435, 35.475170, 41.885834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.920254, 35.445591, 41.953163> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174121, -0.080552, 0.981424,
		-0.059019, 0.994003, 0.092056,
		-0.982954, -0.073951, 0.168323,
		36.625366, 35.423405, 42.003658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.185520, 35.933544, 42.548378>,  <37.313435, 35.475170, 41.885834>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.185520, 35.933544, 42.548378> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.851852, 35.718796, 42.497887>,  <36.651653, 35.589947, 42.467590>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.851852, 35.718796, 42.497887>,  <37.185520, 35.933544, 42.548378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.851852, 35.718796, 42.497887> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131539, -0.028605, 0.990898,
		-0.535596, 0.843179, -0.046758,
		-0.834167, -0.536871, -0.126232,
		36.601601, 35.557735, 42.460018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.672432, 36.169655, 43.057140>,  <37.185520, 35.933544, 42.548378>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.672432, 36.169655, 43.057140> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.518433, 35.810917, 42.970016>,  <36.426033, 35.595673, 42.917744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.518433, 35.810917, 42.970016>,  <36.672432, 36.169655, 43.057140>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.518433, 35.810917, 42.970016> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225253, -0.137554, 0.964541,
		-0.895007, 0.420410, -0.149059,
		-0.384999, -0.896847, -0.217810,
		36.402931, 35.541862, 42.904675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.066277, 36.239010, 43.345566>,  <36.672432, 36.169655, 43.057140>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.066277, 36.239010, 43.345566> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.165863, 35.852821, 43.314865>,  <36.225613, 35.621109, 43.296444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.165863, 35.852821, 43.314865>,  <36.066277, 36.239010, 43.345566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.165863, 35.852821, 43.314865> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017360, -0.074782, 0.997049,
		-0.968358, -0.249560, -0.001857,
		0.248963, -0.965467, -0.076748,
		36.240551, 35.563183, 43.291840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.633141, 35.859978, 43.893829>,  <36.066277, 36.239010, 43.345566>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.633141, 35.859978, 43.893829> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.926506, 35.597141, 43.824158>,  <36.102524, 35.439438, 43.782356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.926506, 35.597141, 43.824158>,  <35.633141, 35.859978, 43.893829>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.926506, 35.597141, 43.824158> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056565, -0.314329, 0.947627,
		-0.677426, -0.685149, -0.267702,
		0.733413, -0.657090, -0.174179,
		36.146530, 35.400013, 43.771904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.268661, 35.278267, 44.205112>,  <35.633141, 35.859978, 43.893829>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.268661, 35.278267, 44.205112> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.650921, 35.169365, 44.160191>,  <35.880276, 35.104023, 44.133236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.650921, 35.169365, 44.160191>,  <35.268661, 35.278267, 44.205112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.650921, 35.169365, 44.160191> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041471, -0.501932, 0.863912,
		-0.291570, -0.820940, -0.490962,
		0.955650, -0.272252, -0.112303,
		35.937614, 35.087688, 44.126499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.265739, 34.565548, 44.506069>,  <35.268661, 35.278267, 44.205112>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.265739, 34.565548, 44.506069> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.657780, 34.641968, 44.484547>,  <35.893005, 34.687820, 44.471634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.657780, 34.641968, 44.484547>,  <35.265739, 34.565548, 44.506069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.657780, 34.641968, 44.484547> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185042, -0.781497, 0.595837,
		0.071786, -0.593939, -0.801301,
		0.980105, 0.191048, -0.053803,
		35.951813, 34.699284, 44.468407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.712719, 33.906544, 44.306152>,  <35.265739, 34.565548, 44.506069>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.712719, 33.906544, 44.306152> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.952106, 34.165272, 44.495239>,  <36.095737, 34.320511, 44.608692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.952106, 34.165272, 44.495239>,  <35.712719, 33.906544, 44.306152>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.952106, 34.165272, 44.495239> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189598, -0.687634, 0.700866,
		0.778391, -0.329818, -0.534161,
		0.598465, 0.646823, 0.472715,
		36.131645, 34.359318, 44.637054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.342171, 33.526890, 44.504013>,  <35.712719, 33.906544, 44.306152>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.342171, 33.526890, 44.504013> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.321892, 33.848324, 44.741222>,  <36.309723, 34.041183, 44.883549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.321892, 33.848324, 44.741222>,  <36.342171, 33.526890, 44.504013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.321892, 33.848324, 44.741222> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218495, -0.570481, 0.791714,
		0.974520, 0.169713, -0.146657,
		-0.050699, 0.803585, 0.593026,
		36.306683, 34.089401, 44.919128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.998272, 33.628201, 44.969715>,  <36.342171, 33.526890, 44.504013>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.998272, 33.628201, 44.969715> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.712753, 33.816010, 45.177578>,  <36.541443, 33.928696, 45.302296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.712753, 33.816010, 45.177578>,  <36.998272, 33.628201, 44.969715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.712753, 33.816010, 45.177578> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308378, -0.455478, 0.835130,
		0.628805, 0.756363, 0.180328,
		-0.713797, 0.469525, 0.519653,
		36.498615, 33.956867, 45.333473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.233341, 33.589832, 45.645279>,  <36.998272, 33.628201, 44.969715>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.233341, 33.589832, 45.645279> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.864075, 33.729160, 45.710312>,  <36.642513, 33.812756, 45.749332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.864075, 33.729160, 45.710312>,  <37.233341, 33.589832, 45.645279>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.864075, 33.729160, 45.710312> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020614, -0.467211, 0.883905,
		0.383840, 0.812643, 0.438495,
		-0.923169, 0.348318, 0.162583,
		36.587124, 33.833656, 45.759087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.892284, 33.811520, 45.848434>,  <37.233341, 33.589832, 45.645279>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.892284, 33.811520, 45.848434> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.157658, 33.513489, 45.820946>,  <38.316883, 33.334671, 45.804451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.157658, 33.513489, 45.820946>,  <37.892284, 33.811520, 45.848434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.157658, 33.513489, 45.820946> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156188, 0.227726, -0.961117,
		0.731753, 0.626903, 0.267453,
		0.663433, -0.745073, -0.068725,
		38.356686, 33.289967, 45.800327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.503181, 34.067715, 45.455441>,  <37.892284, 33.811520, 45.848434>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.503181, 34.067715, 45.455441> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.519455, 33.670135, 45.414631>,  <38.529221, 33.431587, 45.390144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.519455, 33.670135, 45.414631>,  <38.503181, 34.067715, 45.455441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.519455, 33.670135, 45.414631> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356866, 0.109833, -0.927676,
		0.933269, 0.001332, 0.359175,
		0.040685, -0.993949, -0.102028,
		38.531662, 33.371952, 45.384022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.235203, 33.854061, 45.393414>,  <38.503181, 34.067715, 45.455441>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.235203, 33.854061, 45.393414> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.995804, 33.582634, 45.223076>,  <38.852165, 33.419777, 45.120872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.995804, 33.582634, 45.223076>,  <39.235203, 33.854061, 45.393414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.995804, 33.582634, 45.223076> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391716, 0.215803, -0.894420,
		0.698825, -0.702119, 0.136649,
		-0.598500, -0.678571, -0.425840,
		38.816254, 33.379063, 45.095325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.647743, 33.697327, 44.783733>,  <39.235203, 33.854061, 45.393414>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.647743, 33.697327, 44.783733> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.283932, 33.548466, 44.709686>,  <39.065647, 33.459148, 44.665257>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.283932, 33.548466, 44.709686>,  <39.647743, 33.697327, 44.783733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.283932, 33.548466, 44.709686> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116862, 0.198461, -0.973117,
		0.398882, -0.906708, -0.137015,
		-0.909525, -0.372147, -0.185122,
		39.011074, 33.436821, 44.654148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.718220, 33.199360, 44.259792>,  <39.647743, 33.697327, 44.783733>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.718220, 33.199360, 44.259792> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.327663, 33.277836, 44.223652>,  <39.093330, 33.324921, 44.201969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.327663, 33.277836, 44.223652>,  <39.718220, 33.199360, 44.259792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.327663, 33.277836, 44.223652> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088483, -0.018260, -0.995910,
		-0.197036, -0.980396, 0.000470,
		-0.976395, 0.196189, -0.090347,
		39.034744, 33.336693, 44.196548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.489704, 32.829872, 43.727371>,  <39.718220, 33.199360, 44.259792>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.489704, 32.829872, 43.727371> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.190891, 33.095722, 43.733421>,  <39.011604, 33.255230, 43.737053>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.190891, 33.095722, 43.733421>,  <39.489704, 32.829872, 43.727371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.190891, 33.095722, 43.733421> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222461, 0.271356, -0.936417,
		-0.626467, -0.696165, -0.350563,
		-0.747028, 0.664621, 0.015126,
		38.966782, 33.295109, 43.737961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.071312, 32.686172, 43.023079>,  <39.489704, 32.829872, 43.727371>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.071312, 32.686172, 43.023079> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.967857, 33.053333, 43.143459>,  <38.905785, 33.273628, 43.215687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.967857, 33.053333, 43.143459>,  <39.071312, 32.686172, 43.023079>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.967857, 33.053333, 43.143459> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021925, 0.305890, -0.951814,
		-0.965725, -0.252775, -0.058990,
		-0.258640, 0.917898, 0.300948,
		38.890266, 33.328701, 43.233746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.518135, 32.937710, 42.574276>,  <39.071312, 32.686172, 43.023079>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.518135, 32.937710, 42.574276> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.707573, 33.250294, 42.736771>,  <38.821236, 33.437843, 42.834267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.707573, 33.250294, 42.736771>,  <38.518135, 32.937710, 42.574276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.707573, 33.250294, 42.736771> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060421, 0.431327, -0.900170,
		-0.878666, 0.450864, 0.157059,
		0.473598, 0.781459, 0.406235,
		38.849651, 33.484730, 42.858643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.136078, 33.578285, 42.313423>,  <38.518135, 32.937710, 42.574276>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.136078, 33.578285, 42.313423> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.510799, 33.666267, 42.422245>,  <38.735634, 33.719055, 42.487537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.510799, 33.666267, 42.422245>,  <38.136078, 33.578285, 42.313423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.510799, 33.666267, 42.422245> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149417, 0.451583, -0.879629,
		-0.316332, 0.864692, 0.390181,
		0.936808, 0.219955, 0.272050,
		38.791843, 33.732254, 42.503860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.248638, 34.245293, 42.154156>,  <38.136078, 33.578285, 42.313423>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.248638, 34.245293, 42.154156> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.632576, 34.134132, 42.169533>,  <38.862938, 34.067436, 42.178761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.632576, 34.134132, 42.169533>,  <38.248638, 34.245293, 42.154156>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.632576, 34.134132, 42.169533> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187029, 0.531719, -0.826011,
		0.209105, 0.800030, 0.562341,
		0.959841, -0.277897, 0.038444,
		38.920528, 34.050762, 42.181065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.639000, 34.877674, 42.081738>,  <38.248638, 34.245293, 42.154156>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.639000, 34.877674, 42.081738> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.879681, 34.571499, 41.990482>,  <39.024090, 34.387794, 41.935730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.879681, 34.571499, 41.990482>,  <38.639000, 34.877674, 42.081738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.879681, 34.571499, 41.990482> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198549, 0.420011, -0.885533,
		0.773646, 0.487534, 0.404700,
		0.601706, -0.765442, -0.228140,
		39.060192, 34.341866, 41.922039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.213276, 35.259159, 41.863792>,  <38.639000, 34.877674, 42.081738>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.213276, 35.259159, 41.863792> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.213837, 34.884464, 41.723785>,  <39.214172, 34.659645, 41.639782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.213837, 34.884464, 41.723785>,  <39.213276, 35.259159, 41.863792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.213837, 34.884464, 41.723785> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266394, 0.337724, -0.902761,
		0.963863, -0.091977, 0.250016,
		0.001403, -0.936741, -0.350022,
		39.214256, 34.603443, 41.618778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.889908, 35.189835, 41.578716>,  <39.213276, 35.259159, 41.863792>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.889908, 35.189835, 41.578716> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.628464, 34.925983, 41.430294>,  <39.471596, 34.767673, 41.341240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.628464, 34.925983, 41.430294>,  <39.889908, 35.189835, 41.578716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.628464, 34.925983, 41.430294> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308917, 0.215052, -0.926457,
		0.690914, -0.720169, 0.063210,
		-0.653612, -0.659628, -0.371055,
		39.432381, 34.728096, 41.318977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.273586, 34.990543, 40.940063>,  <39.889908, 35.189835, 41.578716>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.273586, 34.990543, 40.940063> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.924225, 34.818260, 40.849159>,  <39.714607, 34.714890, 40.794617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.924225, 34.818260, 40.849159>,  <40.273586, 34.990543, 40.940063>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.924225, 34.818260, 40.849159> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125429, 0.251959, -0.959575,
		0.470560, -0.866605, -0.166039,
		-0.873408, -0.430712, -0.227259,
		39.662201, 34.689045, 40.780983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<30.145700, 40.618500, 31.286085> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.530584, 40.509834, 31.293535>,  <30.761515, 40.444633, 31.298004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.530584, 40.509834, 31.293535>,  <30.145700, 40.618500, 31.286085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.530584, 40.509834, 31.293535> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086328, 0.239472, -0.967058,
		0.258256, 0.932122, 0.253875,
		0.962212, -0.271665, 0.018623,
		30.819248, 40.428333, 31.299122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.722244, 39.965759, 31.397264>,  <30.145700, 40.618500, 31.286085>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.722244, 39.965759, 31.397264> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.597778, 39.647633, 31.189167>,  <29.523100, 39.456757, 31.064308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.597778, 39.647633, 31.189167>,  <29.722244, 39.965759, 31.397264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.597778, 39.647633, 31.189167> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516375, -0.318076, 0.795101,
		-0.797831, 0.516048, -0.311706,
		-0.311164, -0.795313, -0.520245,
		29.504429, 39.409039, 31.033094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.992241, 39.898701, 31.386286>,  <29.722244, 39.965759, 31.397264>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.992241, 39.898701, 31.386286> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.102297, 39.520061, 31.319056>,  <29.168329, 39.292877, 31.278717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.102297, 39.520061, 31.319056>,  <28.992241, 39.898701, 31.386286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.102297, 39.520061, 31.319056> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724436, -0.319062, 0.611058,
		-0.632054, -0.046365, -0.773536,
		0.275138, -0.946599, -0.168076,
		29.184837, 39.236080, 31.268633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.379381, 39.524078, 31.363375>,  <28.992241, 39.898701, 31.386286>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.379381, 39.524078, 31.363375> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.631140, 39.214615, 31.392509>,  <28.782196, 39.028934, 31.409990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.631140, 39.214615, 31.392509>,  <28.379381, 39.524078, 31.363375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.631140, 39.214615, 31.392509> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683579, -0.506648, 0.525384,
		-0.369566, -0.380466, -0.847742,
		0.629397, -0.773662, 0.072839,
		28.819960, 38.982517, 31.414362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.886528, 39.009697, 31.291914>,  <28.379381, 39.524078, 31.363375>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.886528, 39.009697, 31.291914> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.219940, 38.823795, 31.411400>,  <28.419987, 38.712254, 31.483091>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.219940, 38.823795, 31.411400>,  <27.886528, 39.009697, 31.291914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.219940, 38.823795, 31.411400> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550943, -0.659021, 0.512009,
		-0.041100, -0.591349, -0.805368,
		0.833531, -0.464755, 0.298714,
		28.469999, 38.684368, 31.501015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.962234, 38.229698, 31.037886>,  <27.886528, 39.009697, 31.291914>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.962234, 38.229698, 31.037886> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.165571, 38.291237, 31.376806>,  <28.287573, 38.328159, 31.580158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.165571, 38.291237, 31.376806>,  <27.962234, 38.229698, 31.037886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.165571, 38.291237, 31.376806> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533993, -0.715595, 0.450305,
		0.675605, -0.681362, -0.281611,
		0.508340, 0.153849, 0.847302,
		28.318073, 38.337391, 31.630997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.952848, 37.591022, 31.271793>,  <27.962234, 38.229698, 31.037886>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.952848, 37.591022, 31.271793> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.060097, 37.797405, 31.597221>,  <28.124445, 37.921234, 31.792479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.060097, 37.797405, 31.597221>,  <27.952848, 37.591022, 31.271793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.060097, 37.797405, 31.597221> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480770, -0.660156, 0.577108,
		0.834849, -0.545873, 0.071058,
		0.268118, 0.515961, 0.813570,
		28.140532, 37.952194, 31.841293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.171000, 37.048046, 31.694492>,  <27.952848, 37.591022, 31.271793>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.171000, 37.048046, 31.694492> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.087685, 37.366501, 31.921749>,  <28.037695, 37.557575, 32.058102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.087685, 37.366501, 31.921749>,  <28.171000, 37.048046, 31.694492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.087685, 37.366501, 31.921749> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324334, -0.604235, 0.727811,
		0.922726, -0.032672, 0.384069,
		-0.208288, 0.796136, 0.568140,
		28.025198, 37.605343, 32.092190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.414270, 36.780685, 32.313316>,  <28.171000, 37.048046, 31.694492>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.414270, 36.780685, 32.313316> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.201338, 37.089321, 32.452614>,  <28.073578, 37.274502, 32.536194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.201338, 37.089321, 32.452614>,  <28.414270, 36.780685, 32.313316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.201338, 37.089321, 32.452614> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322605, -0.565235, 0.759233,
		0.782656, 0.291819, 0.549811,
		-0.532331, 0.771590, 0.348242,
		28.041639, 37.320797, 32.557087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.522636, 36.901054, 33.133312>,  <28.414270, 36.780685, 32.313316>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.522636, 36.901054, 33.133312> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.168640, 37.060463, 33.037003>,  <27.956242, 37.156109, 32.979218>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.168640, 37.060463, 33.037003>,  <28.522636, 36.901054, 33.133312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.168640, 37.060463, 33.037003> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426799, -0.487648, 0.761605,
		0.186102, 0.776776, 0.601652,
		-0.884991, 0.398521, -0.240775,
		27.903143, 37.180019, 32.964771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.314493, 37.218906, 33.743401>,  <28.522636, 36.901054, 33.133312>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.314493, 37.218906, 33.743401> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.986229, 37.134121, 33.531139>,  <27.789270, 37.083248, 33.403782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.986229, 37.134121, 33.531139>,  <28.314493, 37.218906, 33.743401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.986229, 37.134121, 33.531139> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382127, -0.486878, 0.785448,
		-0.424849, 0.847361, 0.318564,
		-0.820660, -0.211965, -0.530649,
		27.740030, 37.070530, 33.371944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.699409, 37.278530, 34.210876>,  <28.314493, 37.218906, 33.743401>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.699409, 37.278530, 34.210876> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.540976, 37.057846, 33.917282>,  <27.445915, 36.925434, 33.741127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.540976, 37.057846, 33.917282>,  <27.699409, 37.278530, 34.210876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.540976, 37.057846, 33.917282> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529031, -0.516235, 0.673518,
		-0.750496, 0.655070, -0.087400,
		-0.396083, -0.551710, -0.733985,
		27.422152, 36.892334, 33.697086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.870447, 37.199581, 34.419647>,  <27.699409, 37.278530, 34.210876>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.870447, 37.199581, 34.419647> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.014984, 36.912895, 34.181065>,  <27.101706, 36.740883, 34.037914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.014984, 36.912895, 34.181065>,  <26.870447, 37.199581, 34.419647>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.014984, 36.912895, 34.181065> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403353, -0.696873, 0.593022,
		-0.840678, 0.026299, -0.540896,
		0.361340, -0.716713, -0.596454,
		27.123386, 36.697880, 34.002129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.341990, 36.928837, 34.363499>,  <26.870447, 37.199581, 34.419647>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.341990, 36.928837, 34.363499> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.638769, 36.667603, 34.302853>,  <26.816837, 36.510860, 34.266464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.638769, 36.667603, 34.302853>,  <26.341990, 36.928837, 34.363499>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.638769, 36.667603, 34.302853> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414825, -0.624825, 0.661449,
		-0.526718, -0.427867, -0.734505,
		0.741949, -0.653088, -0.151617,
		26.861353, 36.471676, 34.257366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.001570, 36.410984, 34.397743>,  <26.341990, 36.928837, 34.363499>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.001570, 36.410984, 34.397743> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.372271, 36.261612, 34.414120>,  <26.594690, 36.171989, 34.423946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.372271, 36.261612, 34.414120>,  <26.001570, 36.410984, 34.397743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.372271, 36.261612, 34.414120> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299823, -0.669561, 0.679554,
		-0.226353, -0.642055, -0.732482,
		0.926753, -0.373433, 0.040946,
		26.650297, 36.149582, 34.426403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.906273, 35.726845, 34.599339>,  <26.001570, 36.410984, 34.397743>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.906273, 35.726845, 34.599339> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.302422, 35.765453, 34.639038>,  <26.540110, 35.788616, 34.662857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.302422, 35.765453, 34.639038>,  <25.906273, 35.726845, 34.599339>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.302422, 35.765453, 34.639038> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014975, -0.638017, 0.769877,
		0.137630, -0.763950, -0.630428,
		0.990370, 0.096518, 0.099250,
		26.599533, 35.794407, 34.668812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.282782, 35.048195, 34.564342>,  <25.906273, 35.726845, 34.599339>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.282782, 35.048195, 34.564342> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.526411, 35.272549, 34.788643>,  <26.672588, 35.407162, 34.923222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.526411, 35.272549, 34.788643>,  <26.282782, 35.048195, 34.564342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.526411, 35.272549, 34.788643> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105535, -0.643418, 0.758206,
		0.786059, -0.520983, -0.332697,
		0.609076, 0.560884, 0.560747,
		26.709133, 35.440815, 34.956867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.803925, 34.536469, 34.920765>,  <26.282782, 35.048195, 34.564342>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.803925, 34.536469, 34.920765> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.830803, 34.874977, 35.132164>,  <26.846930, 35.078083, 35.259003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.830803, 34.874977, 35.132164>,  <26.803925, 34.536469, 34.920765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.830803, 34.874977, 35.132164> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079295, -0.532548, 0.842677,
		0.994584, -0.014716, -0.102890,
		0.067195, 0.846272, 0.528497,
		26.850962, 35.128860, 35.290714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.243608, 34.404255, 35.438560>,  <26.803925, 34.536469, 34.920765>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.243608, 34.404255, 35.438560> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.038172, 34.720169, 35.572708>,  <26.914909, 34.909718, 35.653194>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.038172, 34.720169, 35.572708>,  <27.243608, 34.404255, 35.438560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.038172, 34.720169, 35.572708> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015210, -0.382413, 0.923866,
		0.857901, 0.479589, 0.184391,
		-0.513590, 0.789781, 0.335367,
		26.884094, 34.957104, 35.673317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.682024, 34.666531, 35.885876>,  <27.243608, 34.404255, 35.438560>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.682024, 34.666531, 35.885876> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.318117, 34.799747, 35.985001>,  <27.099773, 34.879677, 36.044476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.318117, 34.799747, 35.985001>,  <27.682024, 34.666531, 35.885876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.318117, 34.799747, 35.985001> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056711, -0.491646, 0.868947,
		0.411230, 0.804591, 0.428395,
		-0.909766, 0.333042, 0.247808,
		27.045187, 34.899662, 36.059341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.031208, 34.603939, 35.262981>,  <27.682024, 34.666531, 35.885876>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.031208, 34.603939, 35.262981> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.223951, 34.267937, 35.163219>,  <28.339598, 34.066334, 35.103363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.223951, 34.267937, 35.163219>,  <28.031208, 34.603939, 35.262981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.223951, 34.267937, 35.163219> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181690, 0.374226, -0.909364,
		0.857206, 0.392868, 0.332944,
		0.481857, -0.840006, -0.249408,
		28.368507, 34.015934, 35.088398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.663702, 34.755989, 35.091125>,  <28.031208, 34.603939, 35.262981>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.663702, 34.755989, 35.091125> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.636101, 34.410015, 34.892277>,  <28.619539, 34.202431, 34.772968>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.636101, 34.410015, 34.892277>,  <28.663702, 34.755989, 35.091125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.636101, 34.410015, 34.892277> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184056, 0.478719, -0.858459,
		0.980491, -0.150737, 0.126161,
		-0.069005, -0.864931, -0.497124,
		28.615398, 34.150536, 34.743141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.209658, 34.702633, 34.575172>,  <28.663702, 34.755989, 35.091125>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.209658, 34.702633, 34.575172> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.954405, 34.436638, 34.419952>,  <28.801252, 34.277042, 34.326820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.954405, 34.436638, 34.419952>,  <29.209658, 34.702633, 34.575172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.954405, 34.436638, 34.419952> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303346, 0.246089, -0.920555,
		0.707650, -0.705149, 0.044683,
		-0.638133, -0.664985, -0.388049,
		28.762964, 34.237141, 34.303539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.689917, 34.244743, 34.157372>,  <29.209658, 34.702633, 34.575172>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.689917, 34.244743, 34.157372> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.323452, 34.216652, 33.999527>,  <29.103573, 34.199799, 33.904819>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.323452, 34.216652, 33.999527>,  <29.689917, 34.244743, 34.157372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.323452, 34.216652, 33.999527> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388197, 0.089598, -0.917210,
		0.099794, -0.993497, -0.054813,
		-0.916157, -0.070254, -0.394615,
		29.048605, 34.195583, 33.881142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.816837, 33.939289, 33.586323>,  <29.689917, 34.244743, 34.157372>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.816837, 33.939289, 33.586323> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.445324, 34.064167, 33.506424>,  <29.222416, 34.139095, 33.458485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.445324, 34.064167, 33.506424>,  <29.816837, 33.939289, 33.586323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.445324, 34.064167, 33.506424> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304522, 0.335598, -0.891426,
		-0.211262, -0.888768, -0.406767,
		-0.928781, 0.312194, -0.199751,
		29.166689, 34.157825, 33.446499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.565601, 33.617603, 32.944298>,  <29.816837, 33.939289, 33.586323>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.565601, 33.617603, 32.944298> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.384636, 33.969742, 33.001308>,  <29.276056, 34.181026, 33.035515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.384636, 33.969742, 33.001308>,  <29.565601, 33.617603, 32.944298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.384636, 33.969742, 33.001308> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357073, 0.325265, -0.875615,
		-0.817203, -0.345246, -0.461502,
		-0.452413, 0.880345, 0.142530,
		29.248911, 34.233845, 33.044067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.586365, 33.765560, 32.336746>,  <29.565601, 33.617603, 32.944298>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.586365, 33.765560, 32.336746> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.461206, 34.108147, 32.500973>,  <29.386110, 34.313698, 32.599510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.461206, 34.108147, 32.500973>,  <29.586365, 33.765560, 32.336746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.461206, 34.108147, 32.500973> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289053, 0.497638, -0.817805,
		-0.904734, -0.137213, -0.403273,
		-0.312897, 0.856463, 0.410568,
		29.367336, 34.365086, 32.624142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.128674, 34.062954, 31.779238>,  <29.586365, 33.765560, 32.336746>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.128674, 34.062954, 31.779238> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.267086, 34.328598, 32.044334>,  <29.350134, 34.487984, 32.203392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.267086, 34.328598, 32.044334>,  <29.128674, 34.062954, 31.779238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.267086, 34.328598, 32.044334> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419765, 0.522152, -0.742398,
		-0.839083, 0.535087, -0.098089,
		0.346030, 0.664108, 0.662740,
		29.370895, 34.527832, 32.243156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.922909, 34.721203, 31.441109>,  <29.128674, 34.062954, 31.779238>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.922909, 34.721203, 31.441109> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.215851, 34.786007, 31.705656>,  <29.391617, 34.824890, 31.864384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.215851, 34.786007, 31.705656>,  <28.922909, 34.721203, 31.441109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.215851, 34.786007, 31.705656> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441272, 0.626808, -0.642177,
		-0.518589, 0.762145, 0.387556,
		0.732355, 0.162008, 0.661369,
		29.435558, 34.834610, 31.904066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.991318, 35.487026, 31.415804>,  <28.922909, 34.721203, 31.441109>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.991318, 35.487026, 31.415804> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.330839, 35.353546, 31.579842>,  <29.534552, 35.273457, 31.678265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.330839, 35.353546, 31.579842>,  <28.991318, 35.487026, 31.415804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.330839, 35.353546, 31.579842> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515597, 0.694106, -0.502371,
		-0.117007, 0.637858, 0.761214,
		0.848804, -0.333699, 0.410093,
		29.585480, 35.253437, 31.702869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.355717, 36.111504, 31.695826>,  <28.991318, 35.487026, 31.415804>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.355717, 36.111504, 31.695826> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.634966, 35.826492, 31.667736>,  <29.802515, 35.655487, 31.650883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.634966, 35.826492, 31.667736>,  <29.355717, 36.111504, 31.695826>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.634966, 35.826492, 31.667736> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642750, 0.666911, -0.376965,
		0.315429, 0.218033, 0.923562,
		0.698124, -0.712525, -0.070222,
		29.844402, 35.612736, 31.646669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.003950, 36.367790, 32.043331>,  <29.355717, 36.111504, 31.695826>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.003950, 36.367790, 32.043331> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.135002, 36.092331, 31.784588>,  <30.213633, 35.927055, 31.629343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.135002, 36.092331, 31.784588>,  <30.003950, 36.367790, 32.043331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.135002, 36.092331, 31.784588> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714606, 0.628489, -0.307149,
		0.618060, -0.361617, 0.698023,
		0.327629, -0.688647, -0.646857,
		30.233292, 35.885738, 31.590530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.725861, 36.458797, 32.044556>,  <30.003950, 36.367790, 32.043331>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.725861, 36.458797, 32.044556> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.649633, 36.261959, 31.704786>,  <30.603897, 36.143856, 31.500923>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.649633, 36.261959, 31.704786>,  <30.725861, 36.458797, 32.044556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.649633, 36.261959, 31.704786> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651739, 0.583652, -0.484340,
		0.734111, -0.645906, 0.209491,
		-0.190569, -0.492093, -0.849428,
		30.592463, 36.114330, 31.449959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.388927, 36.478661, 31.689144>,  <30.725861, 36.458797, 32.044556>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.388927, 36.478661, 31.689144> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.105925, 36.418755, 31.412884>,  <30.936123, 36.382812, 31.247128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.105925, 36.418755, 31.412884>,  <31.388927, 36.478661, 31.689144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.105925, 36.418755, 31.412884> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541061, 0.513900, -0.665703,
		0.454622, -0.844677, -0.282560,
		-0.707511, -0.149761, -0.690651,
		30.893671, 36.373825, 31.205688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.636570, 36.136669, 31.060881>,  <31.388927, 36.478661, 31.689144>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.636570, 36.136669, 31.060881> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.306034, 36.330063, 30.945360>,  <31.107712, 36.446098, 30.876047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.306034, 36.330063, 30.945360>,  <31.636570, 36.136669, 31.060881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.306034, 36.330063, 30.945360> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518107, 0.451644, -0.726349,
		-0.220741, -0.749842, -0.623707,
		-0.826340, 0.483482, -0.288802,
		31.058132, 36.475109, 30.858719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.860790, 36.361599, 30.410469>,  <31.636570, 36.136669, 31.060881>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.860790, 36.361599, 30.410469> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.523848, 36.567314, 30.474899>,  <31.321682, 36.690742, 30.513557>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.523848, 36.567314, 30.474899>,  <31.860790, 36.361599, 30.410469>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.523848, 36.567314, 30.474899> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338173, 0.737137, -0.585037,
		-0.419613, -0.438337, -0.794849,
		-0.842357, 0.514285, 0.161078,
		31.271141, 36.721600, 30.523222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.599003, 36.505539, 29.734785>,  <31.860790, 36.361599, 30.410469>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.599003, 36.505539, 29.734785> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.464136, 36.766228, 30.006542>,  <31.383217, 36.922642, 30.169596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.464136, 36.766228, 30.006542>,  <31.599003, 36.505539, 29.734785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.464136, 36.766228, 30.006542> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418917, 0.750128, -0.511681,
		-0.843106, 0.112087, -0.525936,
		-0.337167, 0.651725, 0.679392,
		31.362986, 36.961746, 30.210360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.216419, 37.107174, 29.368872>,  <31.599003, 36.505539, 29.734785>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.216419, 37.107174, 29.368872> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.352556, 37.225914, 29.725758>,  <31.434238, 37.297157, 29.939890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.352556, 37.225914, 29.725758>,  <31.216419, 37.107174, 29.368872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.352556, 37.225914, 29.725758> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379084, 0.825018, -0.419095,
		-0.860502, 0.480860, 0.168256,
		0.340340, 0.296849, 0.892216,
		31.454659, 37.314968, 29.993422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.185280, 37.795025, 29.277849>,  <31.216419, 37.107174, 29.368872>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.185280, 37.795025, 29.277849> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.405806, 37.762321, 29.609962>,  <31.538120, 37.742699, 29.809231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.405806, 37.762321, 29.609962>,  <31.185280, 37.795025, 29.277849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.405806, 37.762321, 29.609962> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521666, 0.810429, -0.266588,
		-0.651090, 0.580104, 0.489450,
		0.551313, -0.081756, 0.830283,
		31.571199, 37.737793, 29.859047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.278149, 38.438370, 29.589991>,  <31.185280, 37.795025, 29.277849>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.278149, 38.438370, 29.589991> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.587532, 38.256622, 29.766768>,  <31.773163, 38.147575, 29.872833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.587532, 38.256622, 29.766768>,  <31.278149, 38.438370, 29.589991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.587532, 38.256622, 29.766768> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607003, 0.731719, -0.310054,
		-0.182500, 0.508075, 0.841756,
		0.773460, -0.454364, 0.441942,
		31.819571, 38.120312, 29.899349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.705456, 38.972424, 29.736767>,  <31.278149, 38.438370, 29.589991>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.705456, 38.972424, 29.736767> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.959314, 38.666626, 29.781988>,  <32.111629, 38.483147, 29.809120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.959314, 38.666626, 29.781988>,  <31.705456, 38.972424, 29.736767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.959314, 38.666626, 29.781988> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772729, 0.625737, -0.106504,
		0.010680, 0.154950, 0.987864,
		0.634646, -0.764489, 0.113052,
		32.149708, 38.437279, 29.815903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.291656, 39.277336, 30.042849>,  <31.705456, 38.972424, 29.736767>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.291656, 39.277336, 30.042849> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.407574, 38.924946, 29.893238>,  <32.477123, 38.713512, 29.803471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.407574, 38.924946, 29.893238>,  <32.291656, 39.277336, 30.042849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.407574, 38.924946, 29.893238> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845456, 0.418797, -0.331382,
		0.448582, -0.220192, 0.866193,
		0.289791, -0.880980, -0.374027,
		32.494511, 38.660652, 29.781031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.924770, 31.117044, 45.965179> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.592571, 30.928022, 45.847221>,  <38.393253, 30.814610, 45.776447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.592571, 30.928022, 45.847221>,  <38.924770, 31.117044, 45.965179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.592571, 30.928022, 45.847221> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355807, 0.042720, 0.933583,
		-0.428571, 0.880266, -0.203616,
		-0.830499, -0.472554, -0.294896,
		38.343422, 30.786257, 45.758751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.298492, 31.446875, 46.247738>,  <38.924770, 31.117044, 45.965179>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.298492, 31.446875, 46.247738> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.252815, 31.054770, 46.183186>,  <38.225410, 30.819506, 46.144455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.252815, 31.054770, 46.183186>,  <38.298492, 31.446875, 46.247738>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.252815, 31.054770, 46.183186> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079169, -0.152949, 0.985058,
		-0.990299, 0.125261, -0.060141,
		-0.114191, -0.980263, -0.161382,
		38.218559, 30.760691, 46.134769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.742172, 31.163725, 46.620205>,  <38.298492, 31.446875, 46.247738>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.742172, 31.163725, 46.620205> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.933975, 30.819019, 46.553947>,  <38.049057, 30.612196, 46.514194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.933975, 30.819019, 46.553947>,  <37.742172, 31.163725, 46.620205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.933975, 30.819019, 46.553947> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292250, -0.334805, 0.895821,
		-0.827444, -0.381143, -0.412392,
		0.479506, -0.861763, -0.165643,
		38.077827, 30.560490, 46.504253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.284836, 30.640306, 46.874912>,  <37.742172, 31.163725, 46.620205>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.284836, 30.640306, 46.874912> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.660519, 30.503464, 46.886654>,  <37.885929, 30.421358, 46.893700>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.660519, 30.503464, 46.886654>,  <37.284836, 30.640306, 46.874912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.660519, 30.503464, 46.886654> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154077, -0.343502, 0.926427,
		-0.306844, -0.874628, -0.375329,
		0.939205, -0.342098, 0.029359,
		37.942280, 30.400833, 46.895462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.153542, 30.076517, 47.098438>,  <37.284836, 30.640306, 46.874912>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.153542, 30.076517, 47.098438> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.551559, 30.085037, 47.137268>,  <37.790371, 30.090149, 47.160564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.551559, 30.085037, 47.137268>,  <37.153542, 30.076517, 47.098438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.551559, 30.085037, 47.137268> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064860, -0.600889, 0.796697,
		0.075302, -0.799049, -0.596533,
		0.995049, 0.021302, 0.097075,
		37.850075, 30.091427, 47.166389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.391258, 29.407490, 47.522469>,  <37.153542, 30.076517, 47.098438>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.391258, 29.407490, 47.522469> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.682339, 29.680052, 47.553802>,  <37.856987, 29.843590, 47.572605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.682339, 29.680052, 47.553802>,  <37.391258, 29.407490, 47.522469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.682339, 29.680052, 47.553802> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253018, -0.372841, 0.892732,
		0.637521, -0.629821, -0.443725,
		0.727701, 0.681407, 0.078338,
		37.900650, 29.884474, 47.577305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.950050, 29.106312, 47.599937>,  <37.391258, 29.407490, 47.522469>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.950050, 29.106312, 47.599937> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.033466, 29.465424, 47.755116>,  <38.083515, 29.680891, 47.848225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.033466, 29.465424, 47.755116>,  <37.950050, 29.106312, 47.599937>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.033466, 29.465424, 47.755116> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350408, -0.438922, 0.827383,
		0.913087, -0.036600, -0.406120,
		0.208537, 0.897780, 0.387949,
		38.096027, 29.734758, 47.871502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.685360, 29.121601, 47.881962>,  <37.950050, 29.106312, 47.599937>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.685360, 29.121601, 47.881962> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.480583, 29.415226, 48.060432>,  <38.357719, 29.591400, 48.167515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.480583, 29.415226, 48.060432>,  <38.685360, 29.121601, 47.881962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.480583, 29.415226, 48.060432> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302267, -0.332247, 0.893446,
		0.804085, 0.592254, -0.051793,
		-0.511939, 0.734062, 0.446173,
		38.327000, 29.635445, 48.194286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.103664, 29.188084, 48.378246>,  <38.685360, 29.121601, 47.881962>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.103664, 29.188084, 48.378246> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.773685, 29.381632, 48.495094>,  <38.575699, 29.497761, 48.565201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.773685, 29.381632, 48.495094>,  <39.103664, 29.188084, 48.378246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.773685, 29.381632, 48.495094> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111993, -0.366648, 0.923594,
		0.554003, 0.794632, 0.248276,
		-0.824948, 0.483869, 0.292118,
		38.526199, 29.526793, 48.582729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.213985, 29.694279, 48.963127>,  <39.103664, 29.188084, 48.378246>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.213985, 29.694279, 48.963127> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.829281, 29.585104, 48.972294>,  <38.598457, 29.519598, 48.977795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.829281, 29.585104, 48.972294>,  <39.213985, 29.694279, 48.963127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.829281, 29.585104, 48.972294> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144357, -0.434007, 0.889269,
		-0.232770, 0.858570, 0.456810,
		-0.961759, -0.272939, 0.022917,
		38.540752, 29.503222, 48.979168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.060097, 29.718204, 49.703419>,  <39.213985, 29.694279, 48.963127>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.060097, 29.718204, 49.703419> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.744289, 29.508028, 49.576561>,  <38.554806, 29.381922, 49.500446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.744289, 29.508028, 49.576561>,  <39.060097, 29.718204, 49.703419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.744289, 29.508028, 49.576561> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042670, -0.468500, 0.882433,
		-0.612247, 0.710226, 0.347466,
		-0.789514, -0.525440, -0.317143,
		38.507435, 29.350395, 49.481419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.489655, 29.701405, 50.292263>,  <39.060097, 29.718204, 49.703419>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.489655, 29.701405, 50.292263> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.454960, 29.392256, 50.040821>,  <38.434143, 29.206766, 49.889954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.454960, 29.392256, 50.040821>,  <38.489655, 29.701405, 50.292263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.454960, 29.392256, 50.040821> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012415, -0.631775, 0.775053,
		-0.996153, 0.059425, 0.064397,
		-0.086742, -0.772871, -0.628607,
		38.428936, 29.160395, 49.852238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.633610, 30.464994, 50.383911>,  <38.489655, 29.701405, 50.292263>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.633610, 30.464994, 50.383911> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.734409, 30.843491, 50.465031>,  <38.794888, 31.070587, 50.513702>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.734409, 30.843491, 50.465031>,  <38.633610, 30.464994, 50.383911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.734409, 30.843491, 50.465031> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919952, 0.299272, -0.253230,
		-0.300309, -0.122754, 0.945910,
		0.251999, 0.946239, 0.202802,
		38.810009, 31.127363, 50.525871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.131939, 30.764040, 50.949627>,  <38.633610, 30.464994, 50.383911>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.131939, 30.764040, 50.949627> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.286041, 30.976244, 50.647598>,  <38.378502, 31.103567, 50.466381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.286041, 30.976244, 50.647598>,  <38.131939, 30.764040, 50.949627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.286041, 30.976244, 50.647598> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.922551, 0.240850, -0.301481,
		0.021921, 0.812742, 0.582211,
		0.385252, 0.530510, -0.755076,
		38.401615, 31.135397, 50.421074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.831532, 31.395529, 50.972401>,  <38.131939, 30.764040, 50.949627>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.831532, 31.395529, 50.972401> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.802368, 31.773157, 51.101032>,  <37.784870, 31.999735, 51.178211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.802368, 31.773157, 51.101032>,  <37.831532, 31.395529, 50.972401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.802368, 31.773157, 51.101032> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131205, 0.328711, -0.935272,
		-0.988670, -0.025998, -0.147834,
		-0.072910, 0.944072, 0.321576,
		37.780495, 32.056377, 51.197506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.345287, 31.800373, 50.597488>,  <37.831532, 31.395529, 50.972401>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.345287, 31.800373, 50.597488> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.614155, 32.065617, 50.729229>,  <37.775475, 32.224762, 50.808273>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.614155, 32.065617, 50.729229>,  <37.345287, 31.800373, 50.597488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.614155, 32.065617, 50.729229> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208648, 0.257157, -0.943577,
		-0.710389, 0.702964, 0.034498,
		0.672171, 0.663108, 0.329353,
		37.815807, 32.264549, 50.828033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.322495, 32.349281, 50.153450>,  <37.345287, 31.800373, 50.597488>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.322495, 32.349281, 50.153450> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.677502, 32.418034, 50.324455>,  <37.890507, 32.459286, 50.427059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.677502, 32.418034, 50.324455>,  <37.322495, 32.349281, 50.153450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.677502, 32.418034, 50.324455> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349533, 0.353409, -0.867714,
		-0.300229, 0.919543, 0.253580,
		0.887519, 0.171878, 0.427514,
		37.943756, 32.469597, 50.452709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.610928, 33.033642, 49.896301>,  <37.322495, 32.349281, 50.153450>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.610928, 33.033642, 49.896301> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.925610, 32.825878, 50.029751>,  <38.114418, 32.701218, 50.109821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.925610, 32.825878, 50.029751>,  <37.610928, 33.033642, 49.896301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.925610, 32.825878, 50.029751> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472340, 0.158497, -0.867049,
		0.397479, 0.839695, 0.370030,
		0.786705, -0.519414, 0.333622,
		38.161621, 32.670055, 50.129837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.222866, 33.477936, 49.924778>,  <37.610928, 33.033642, 49.896301>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.222866, 33.477936, 49.924778> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.323044, 33.096447, 49.858223>,  <38.383152, 32.867554, 49.818291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.323044, 33.096447, 49.858223>,  <38.222866, 33.477936, 49.924778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.323044, 33.096447, 49.858223> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272727, 0.234408, -0.933098,
		0.928923, 0.188309, 0.318813,
		0.250443, -0.953726, -0.166390,
		38.398178, 32.810329, 49.808308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.783684, 33.466553, 49.532417>,  <38.222866, 33.477936, 49.924778>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.783684, 33.466553, 49.532417> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.697693, 33.078796, 49.484962>,  <38.646099, 32.846142, 49.456490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.697693, 33.078796, 49.484962>,  <38.783684, 33.466553, 49.532417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.697693, 33.078796, 49.484962> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266647, 0.058597, -0.962011,
		0.939512, -0.238445, 0.245887,
		-0.214979, -0.969386, -0.118634,
		38.633198, 32.787979, 49.449371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.364269, 33.105118, 49.167419>,  <38.783684, 33.466553, 49.532417>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.364269, 33.105118, 49.167419> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.035583, 32.887829, 49.098492>,  <38.838371, 32.757458, 49.057133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.035583, 32.887829, 49.098492>,  <39.364269, 33.105118, 49.167419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.035583, 32.887829, 49.098492> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088109, 0.177647, -0.980142,
		0.563044, -0.820583, -0.098113,
		-0.821717, -0.543218, -0.172323,
		38.789070, 32.724865, 49.046795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.602425, 32.655697, 48.669128>,  <39.364269, 33.105118, 49.167419>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.602425, 32.655697, 48.669128> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.204357, 32.656429, 48.629871>,  <38.965515, 32.656868, 48.606316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.204357, 32.656429, 48.629871>,  <39.602425, 32.655697, 48.669128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.204357, 32.656429, 48.629871> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098048, 0.066975, -0.992925,
		0.004756, -0.997753, -0.066831,
		-0.995170, 0.001831, -0.098146,
		38.905807, 32.656979, 48.600426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.461662, 32.274548, 48.029739>,  <39.602425, 32.655697, 48.669128>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.461662, 32.274548, 48.029739> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.117764, 32.474823, 48.070023>,  <38.911423, 32.594986, 48.094193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.117764, 32.474823, 48.070023>,  <39.461662, 32.274548, 48.029739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.117764, 32.474823, 48.070023> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099498, 0.029205, -0.994609,
		-0.500927, -0.865136, 0.024709,
		-0.859751, 0.500686, 0.100709,
		38.859837, 32.625027, 48.100235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.938789, 31.952570, 47.709805>,  <39.461662, 32.274548, 48.029739>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.938789, 31.952570, 47.709805> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.810688, 32.331478, 47.714191>,  <38.733829, 32.558823, 47.716824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.810688, 32.331478, 47.714191>,  <38.938789, 31.952570, 47.709805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.810688, 32.331478, 47.714191> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072058, -0.012810, -0.997318,
		-0.944588, -0.320183, 0.072361,
		-0.320251, 0.947269, 0.010972,
		38.714611, 32.615658, 47.717484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.406364, 31.870367, 47.235874>,  <38.938789, 31.952570, 47.709805>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.406364, 31.870367, 47.235874> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.472050, 32.260929, 47.291965>,  <38.511463, 32.495266, 47.325619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.472050, 32.260929, 47.291965>,  <38.406364, 31.870367, 47.235874>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.472050, 32.260929, 47.291965> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016823, 0.139362, -0.990099,
		-0.986281, 0.164948, 0.006460,
		0.164215, 0.976407, 0.140225,
		38.521313, 32.553852, 47.334034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.965118, 32.186695, 46.877270>,  <38.406364, 31.870367, 47.235874>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.965118, 32.186695, 46.877270> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.216274, 32.497982, 46.881947>,  <38.366966, 32.684753, 46.884754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.216274, 32.497982, 46.881947>,  <37.965118, 32.186695, 46.877270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.216274, 32.497982, 46.881947> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132802, 0.121929, -0.983614,
		-0.766888, 0.616048, 0.179907,
		0.627890, 0.778214, 0.011693,
		38.404640, 32.731445, 46.885456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.533295, 32.785919, 46.662750>,  <37.965118, 32.186695, 46.877270>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.533295, 32.785919, 46.662750> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.926666, 32.835545, 46.609867>,  <38.162689, 32.865322, 46.578136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.926666, 32.835545, 46.609867>,  <37.533295, 32.785919, 46.662750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.926666, 32.835545, 46.609867> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152010, 0.166808, -0.974201,
		-0.098813, 0.978153, 0.182903,
		0.983427, 0.124067, -0.132206,
		38.221695, 32.872765, 46.570206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.632259, 33.319527, 46.282284>,  <37.533295, 32.785919, 46.662750>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.632259, 33.319527, 46.282284> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.000755, 33.175179, 46.224194>,  <38.221851, 33.088570, 46.189339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.000755, 33.175179, 46.224194>,  <37.632259, 33.319527, 46.282284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.000755, 33.175179, 46.224194> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090932, 0.163213, -0.982391,
		0.378214, 0.918225, 0.117544,
		0.921241, -0.360866, -0.145225,
		38.277126, 33.066917, 46.180626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.264355, 33.965031, 46.395355>,  <37.632259, 33.319527, 46.282284>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.264355, 33.965031, 46.395355> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.884445, 33.870026, 46.313854>,  <36.656498, 33.813023, 46.264954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.884445, 33.870026, 46.313854>,  <37.264355, 33.965031, 46.395355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.884445, 33.870026, 46.313854> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111151, -0.352592, 0.929152,
		-0.292527, 0.905133, 0.308484,
		-0.949775, -0.237514, -0.203749,
		36.599514, 33.798771, 46.252731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.890968, 34.119934, 46.998760>,  <37.264355, 33.965031, 46.395355>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.890968, 34.119934, 46.998760> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.620914, 33.913887, 46.787537>,  <36.458881, 33.790257, 46.660801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.620914, 33.913887, 46.787537>,  <36.890968, 34.119934, 46.998760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.620914, 33.913887, 46.787537> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349345, -0.407215, 0.843880,
		-0.649733, 0.754207, 0.094969,
		-0.675133, -0.515120, -0.528060,
		36.418373, 33.759350, 46.629120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.233139, 34.305305, 47.220871>,  <36.890968, 34.119934, 46.998760>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.233139, 34.305305, 47.220871> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.160324, 33.939857, 47.075459>,  <36.116634, 33.720589, 46.988213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.160324, 33.939857, 47.075459>,  <36.233139, 34.305305, 47.220871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.160324, 33.939857, 47.075459> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243075, -0.316421, 0.916947,
		-0.952772, 0.255288, -0.164477,
		-0.182042, -0.913622, -0.363532,
		36.105713, 33.665771, 46.966400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.596043, 34.089207, 47.527187>,  <36.233139, 34.305305, 47.220871>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.596043, 34.089207, 47.527187> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.758785, 33.739655, 47.420750>,  <35.856430, 33.529922, 47.356888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.758785, 33.739655, 47.420750>,  <35.596043, 34.089207, 47.527187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.758785, 33.739655, 47.420750> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208446, -0.372416, 0.904354,
		-0.889392, -0.312477, -0.333677,
		0.406856, -0.873879, -0.266090,
		35.880840, 33.477489, 47.340923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.112339, 33.559742, 47.611851>,  <35.596043, 34.089207, 47.527187>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.112339, 33.559742, 47.611851> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.459316, 33.362156, 47.635662>,  <35.667503, 33.243607, 47.649948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.459316, 33.362156, 47.635662>,  <35.112339, 33.559742, 47.611851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.459316, 33.362156, 47.635662> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305683, -0.434727, 0.847095,
		-0.392554, -0.753004, -0.528097,
		0.867444, -0.493961, 0.059527,
		35.719547, 33.213966, 47.653519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.926647, 32.928448, 47.771538>,  <35.112339, 33.559742, 47.611851>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.926647, 32.928448, 47.771538> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.315437, 32.909035, 47.863548>,  <35.548710, 32.897385, 47.918755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.315437, 32.909035, 47.863548>,  <34.926647, 32.928448, 47.771538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.315437, 32.909035, 47.863548> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217352, -0.558393, 0.800597,
		0.089588, -0.828155, -0.553293,
		0.971973, -0.048536, 0.230026,
		35.607029, 32.894474, 47.932556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.108250, 32.200409, 47.959789>,  <34.926647, 32.928448, 47.771538>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.108250, 32.200409, 47.959789> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.376480, 32.449001, 48.121819>,  <35.537418, 32.598156, 48.219036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.376480, 32.449001, 48.121819>,  <35.108250, 32.200409, 47.959789>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.376480, 32.449001, 48.121819> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081341, -0.481148, 0.872858,
		0.737366, -0.618268, -0.272096,
		0.670579, 0.621483, 0.405072,
		35.577652, 32.635445, 48.243340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.291458, 31.425686, 47.739742>,  <35.108250, 32.200409, 47.959789>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.291458, 31.425686, 47.739742> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.965881, 31.193377, 47.745434>,  <34.770535, 31.053991, 47.748848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.965881, 31.193377, 47.745434>,  <35.291458, 31.425686, 47.739742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.965881, 31.193377, 47.745434> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054922, 0.052536, -0.997108,
		0.578347, -0.812368, -0.074658,
		-0.813940, -0.580774, 0.014233,
		34.721699, 31.019144, 47.749702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.472752, 31.067322, 47.208851>,  <35.291458, 31.425686, 47.739742>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.472752, 31.067322, 47.208851> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.086170, 31.001755, 47.287933>,  <34.854221, 30.962414, 47.335384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.086170, 31.001755, 47.287933>,  <35.472752, 31.067322, 47.208851>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.086170, 31.001755, 47.287933> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216041, 0.102627, -0.970976,
		0.138876, -0.981120, -0.134598,
		-0.966457, -0.163924, 0.197710,
		34.796234, 30.952579, 47.347248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.288197, 30.605516, 46.684162>,  <35.472752, 31.067322, 47.208851>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.288197, 30.605516, 46.684162> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.965813, 30.793619, 46.827988>,  <34.772385, 30.906481, 46.914284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.965813, 30.793619, 46.827988>,  <35.288197, 30.605516, 46.684162>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.965813, 30.793619, 46.827988> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330253, 0.146913, -0.932389,
		-0.491289, -0.870215, 0.036899,
		-0.805958, 0.470259, 0.359568,
		34.724026, 30.934696, 46.935860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.615154, 30.213245, 46.550137>,  <35.288197, 30.605516, 46.684162>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.615154, 30.213245, 46.550137> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.570549, 30.610266, 46.569782>,  <34.543785, 30.848478, 46.581570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.570549, 30.610266, 46.569782>,  <34.615154, 30.213245, 46.550137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.570549, 30.610266, 46.569782> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298407, 0.013700, -0.954341,
		-0.947903, -0.121074, 0.294655,
		-0.111509, 0.992549, 0.049116,
		34.537098, 30.908030, 46.584518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.078754, 30.443386, 45.991257>,  <34.615154, 30.213245, 46.550137>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.078754, 30.443386, 45.991257> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.251198, 30.792046, 46.084530>,  <34.354664, 31.001242, 46.140491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.251198, 30.792046, 46.084530>,  <34.078754, 30.443386, 45.991257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.251198, 30.792046, 46.084530> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299305, 0.381942, -0.874378,
		-0.851214, 0.307156, 0.425547,
		0.431105, 0.871651, 0.233181,
		34.380527, 31.053541, 46.154484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.862064, 30.932634, 45.485935>,  <34.078754, 30.443386, 45.991257>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.862064, 30.932634, 45.485935> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.130451, 31.161139, 45.675022>,  <34.291481, 31.298241, 45.788475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.130451, 31.161139, 45.675022>,  <33.862064, 30.932634, 45.485935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.130451, 31.161139, 45.675022> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116643, 0.548275, -0.828124,
		-0.732257, 0.610782, 0.301240,
		0.670965, 0.571262, 0.472722,
		34.331741, 31.332518, 45.816837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.628777, 31.663406, 45.428284>,  <33.862064, 30.932634, 45.485935>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.628777, 31.663406, 45.428284> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.023418, 31.623213, 45.479675>,  <34.260204, 31.599096, 45.510509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.023418, 31.623213, 45.479675>,  <33.628777, 31.663406, 45.428284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.023418, 31.623213, 45.479675> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162660, 0.547942, -0.820549,
		0.012055, 0.830459, 0.556949,
		0.986609, -0.100485, 0.128477,
		34.319401, 31.593067, 45.518219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<37.133301, 26.485506, 49.511890> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.401859, 26.777126, 49.458660>,  <37.562996, 26.952099, 49.426720>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.401859, 26.777126, 49.458660>,  <37.133301, 26.485506, 49.511890>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.401859, 26.777126, 49.458660> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389762, 0.194632, -0.900114,
		-0.630329, 0.656201, 0.414833,
		0.671395, 0.729053, -0.133080,
		37.603279, 26.995842, 49.418736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.875626, 26.915073, 49.064137>,  <37.133301, 26.485506, 49.511890>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.875626, 26.915073, 49.064137> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.239304, 27.081535, 49.058872>,  <37.457512, 27.181414, 49.055714>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.239304, 27.081535, 49.058872>,  <36.875626, 26.915073, 49.064137>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.239304, 27.081535, 49.058872> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144328, 0.285354, -0.947493,
		-0.390549, 0.863358, 0.319506,
		0.909198, 0.416156, -0.013162,
		37.512062, 27.206383, 49.054924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.822102, 27.492487, 48.692154>,  <36.875626, 26.915073, 49.064137>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.822102, 27.492487, 48.692154> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.217007, 27.429323, 48.684288>,  <37.453949, 27.391426, 48.679569>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.217007, 27.429323, 48.684288>,  <36.822102, 27.492487, 48.692154>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.217007, 27.429323, 48.684288> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011484, 0.193948, -0.980945,
		0.158713, 0.968220, 0.193290,
		0.987258, -0.157908, -0.019663,
		37.513184, 27.381950, 48.678391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.113075, 28.093246, 48.353420>,  <36.822102, 27.492487, 48.692154>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.113075, 28.093246, 48.353420> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.353611, 27.777628, 48.303154>,  <37.497932, 27.588257, 48.272995>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.353611, 27.777628, 48.303154>,  <37.113075, 28.093246, 48.353420>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.353611, 27.777628, 48.303154> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114945, 0.070212, -0.990887,
		0.790681, 0.610306, -0.048476,
		0.601341, -0.789048, -0.125667,
		37.534012, 27.540915, 48.265453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.434181, 28.353867, 47.817562>,  <37.113075, 28.093246, 48.353420>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.434181, 28.353867, 47.817562> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.540421, 27.968412, 47.829281>,  <37.604164, 27.737139, 47.836311>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.540421, 27.968412, 47.829281>,  <37.434181, 28.353867, 47.817562>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.540421, 27.968412, 47.829281> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042491, -0.018655, -0.998923,
		0.963146, 0.266561, 0.035991,
		0.265602, -0.963638, 0.029294,
		37.620102, 27.679321, 47.838070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.095524, 28.300144, 47.463470>,  <37.434181, 28.353867, 47.817562>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.095524, 28.300144, 47.463470> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.942577, 27.930683, 47.453156>,  <37.850811, 27.709007, 47.446964>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.942577, 27.930683, 47.453156>,  <38.095524, 28.300144, 47.463470>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.942577, 27.930683, 47.453156> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123090, 0.078579, -0.989280,
		0.915776, -0.375092, -0.143739,
		-0.382365, -0.923651, -0.025791,
		37.827869, 27.653587, 47.445419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.388496, 27.885077, 46.865753>,  <38.095524, 28.300144, 47.463470>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.388496, 27.885077, 46.865753> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.036919, 27.723431, 46.967060>,  <37.825970, 27.626444, 47.027843>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.036919, 27.723431, 46.967060>,  <38.388496, 27.885077, 46.865753>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.036919, 27.723431, 46.967060> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301392, 0.059107, -0.951667,
		0.369611, -0.912797, -0.173749,
		-0.878948, -0.404113, 0.253263,
		37.773235, 27.602196, 47.043037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.339653, 27.387266, 46.437916>,  <38.388496, 27.885077, 46.865753>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.339653, 27.387266, 46.437916> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.957626, 27.436659, 46.545689>,  <37.728409, 27.466295, 46.610352>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.957626, 27.436659, 46.545689>,  <38.339653, 27.387266, 46.437916>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.957626, 27.436659, 46.545689> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262089, 0.072597, -0.962309,
		-0.138390, -0.989687, -0.036971,
		-0.955069, 0.123485, 0.269433,
		37.671104, 27.473703, 46.626518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.905602, 26.892412, 46.047024>,  <38.339653, 27.387266, 46.437916>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.905602, 26.892412, 46.047024> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.673367, 27.193768, 46.170528>,  <37.534027, 27.374580, 46.244633>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.673367, 27.193768, 46.170528>,  <37.905602, 26.892412, 46.047024>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.673367, 27.193768, 46.170528> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248065, 0.197514, -0.948394,
		-0.775492, -0.627214, 0.072216,
		-0.580583, 0.753386, 0.308761,
		37.499191, 27.419783, 46.263157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.330971, 26.743853, 45.711964>,  <37.905602, 26.892412, 46.047024>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.330971, 26.743853, 45.711964> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.312321, 27.130075, 45.814354>,  <37.301132, 27.361809, 45.875790>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.312321, 27.130075, 45.814354>,  <37.330971, 26.743853, 45.711964>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.312321, 27.130075, 45.814354> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468010, 0.205277, -0.859551,
		-0.882493, -0.159876, 0.442319,
		-0.046624, 0.965557, 0.255979,
		37.298332, 27.419743, 45.891148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.730103, 26.953968, 45.579609>,  <37.330971, 26.743853, 45.711964>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.730103, 26.953968, 45.579609> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.896160, 27.316221, 45.614216>,  <36.995796, 27.533573, 45.634979>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.896160, 27.316221, 45.614216>,  <36.730103, 26.953968, 45.579609>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.896160, 27.316221, 45.614216> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389485, 0.262869, -0.882724,
		-0.822166, 0.332761, 0.461858,
		0.415145, 0.905632, 0.086516,
		37.020702, 27.587912, 45.640171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.313522, 27.570463, 45.654594>,  <36.730103, 26.953968, 45.579609>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.313522, 27.570463, 45.654594> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.644241, 27.660627, 45.448452>,  <36.842674, 27.714725, 45.324768>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.644241, 27.660627, 45.448452>,  <36.313522, 27.570463, 45.654594>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.644241, 27.660627, 45.448452> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555941, 0.188025, -0.809677,
		-0.085609, 0.955949, 0.280773,
		0.826802, 0.225409, -0.515354,
		36.892281, 27.728251, 45.293846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.554321, 27.797146, 45.595589>,  <36.313522, 27.570463, 45.654594>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.554321, 27.797146, 45.595589> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.154854, 27.806574, 45.613918>,  <34.915173, 27.812231, 45.624916>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.154854, 27.806574, 45.613918>,  <35.554321, 27.797146, 45.595589>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.154854, 27.806574, 45.613918> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035901, -0.319632, 0.946861,
		0.036966, 0.947248, 0.318361,
		-0.998671, 0.023572, 0.045823,
		34.855251, 27.813646, 45.627666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.332207, 28.130161, 46.282825>,  <35.554321, 27.797146, 45.595589>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.332207, 28.130161, 46.282825> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.056664, 27.871723, 46.151352>,  <34.891338, 27.716660, 46.072468>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.056664, 27.871723, 46.151352>,  <35.332207, 28.130161, 46.282825>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.056664, 27.871723, 46.151352> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068455, -0.393414, 0.916809,
		-0.721656, 0.654052, 0.226778,
		-0.688859, -0.646097, -0.328682,
		34.850006, 27.677895, 46.052746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.835247, 28.252918, 46.673965>,  <35.332207, 28.130161, 46.282825>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.835247, 28.252918, 46.673965> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.739109, 27.890184, 46.535469>,  <34.681427, 27.672544, 46.452374>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.739109, 27.890184, 46.535469>,  <34.835247, 28.252918, 46.673965>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.739109, 27.890184, 46.535469> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171950, -0.311279, 0.934633,
		-0.955336, 0.284172, -0.081115,
		-0.240347, -0.906836, -0.346239,
		34.667004, 27.618134, 46.431599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.207348, 28.071198, 46.985016>,  <34.835247, 28.252918, 46.673965>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.207348, 28.071198, 46.985016> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.363155, 27.722380, 46.866482>,  <34.456638, 27.513088, 46.795361>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.363155, 27.722380, 46.866482>,  <34.207348, 28.071198, 46.985016>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.363155, 27.722380, 46.866482> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112949, -0.364549, 0.924309,
		-0.914068, -0.326561, -0.240494,
		0.389515, -0.872045, -0.296338,
		34.480011, 27.460766, 46.777580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.777393, 27.641794, 47.297039>,  <34.207348, 28.071198, 46.985016>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.777393, 27.641794, 47.297039> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.098328, 27.429398, 47.188004>,  <34.290890, 27.301960, 47.122581>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.098328, 27.429398, 47.188004>,  <33.777393, 27.641794, 47.297039>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.098328, 27.429398, 47.188004> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021960, -0.430130, 0.902500,
		-0.596470, -0.730094, -0.333447,
		0.802335, -0.530991, -0.272592,
		34.339027, 27.270100, 47.106224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.602947, 26.947186, 47.507030>,  <33.777393, 27.641794, 47.297039>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.602947, 26.947186, 47.507030> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.002182, 26.968266, 47.494148>,  <34.241722, 26.980913, 47.486420>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.002182, 26.968266, 47.494148>,  <33.602947, 26.947186, 47.507030>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.002182, 26.968266, 47.494148> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047937, -0.332279, 0.941962,
		0.038942, -0.941708, -0.334171,
		0.998091, 0.052701, -0.032203,
		34.301609, 26.984076, 47.484486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.915730, 26.226664, 47.611137>,  <33.602947, 26.947186, 47.507030>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.915730, 26.226664, 47.611137> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.177643, 26.511557, 47.712318>,  <34.334789, 26.682493, 47.773029>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.177643, 26.511557, 47.712318>,  <33.915730, 26.226664, 47.611137>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.177643, 26.511557, 47.712318> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035477, -0.363272, 0.931007,
		0.754986, -0.600631, -0.263131,
		0.654780, 0.712233, 0.252957,
		34.374077, 26.725227, 47.788204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.248188, 25.896639, 48.166985>,  <33.915730, 26.226664, 47.611137>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.248188, 25.896639, 48.166985> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.430351, 26.252344, 48.184021>,  <34.539650, 26.465767, 48.194244>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.430351, 26.252344, 48.184021>,  <34.248188, 25.896639, 48.166985>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.430351, 26.252344, 48.184021> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105474, -0.101394, 0.989239,
		0.884013, -0.446016, -0.139969,
		0.455409, 0.889263, 0.042591,
		34.566975, 26.519123, 48.196796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.867161, 25.778374, 48.537712>,  <34.248188, 25.896639, 48.166985>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.867161, 25.778374, 48.537712> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.772331, 26.164970, 48.577087>,  <34.715431, 26.396929, 48.600712>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.772331, 26.164970, 48.577087>,  <34.867161, 25.778374, 48.537712>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.772331, 26.164970, 48.577087> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193780, -0.052246, 0.979653,
		0.951968, 0.251328, -0.174900,
		-0.237077, 0.966491, 0.098438,
		34.701210, 26.454918, 48.606621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.407410, 26.020298, 48.936211>,  <34.867161, 25.778374, 48.537712>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.407410, 26.020298, 48.936211> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.107609, 26.282999, 48.969475>,  <34.927727, 26.440620, 48.989433>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.107609, 26.282999, 48.969475>,  <35.407410, 26.020298, 48.936211>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.107609, 26.282999, 48.969475> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078280, -0.036806, 0.996252,
		0.657354, 0.753205, -0.023824,
		-0.749505, 0.656755, 0.083156,
		34.882759, 26.480026, 48.994423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.634460, 26.716072, 49.309395>,  <35.407410, 26.020298, 48.936211>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.634460, 26.716072, 49.309395> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.238125, 26.698835, 49.360580>,  <35.000324, 26.688494, 49.391293>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.238125, 26.698835, 49.360580>,  <35.634460, 26.716072, 49.309395>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.238125, 26.698835, 49.360580> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123328, 0.097024, 0.987611,
		-0.054974, 0.994349, -0.090821,
		-0.990842, -0.043092, 0.127965,
		34.940872, 26.685907, 49.398972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.534386, 27.257151, 49.831024>,  <35.634460, 26.716072, 49.309395>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.534386, 27.257151, 49.831024> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.201275, 27.036318, 49.847477>,  <35.001408, 26.903818, 49.857349>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.201275, 27.036318, 49.847477>,  <35.534386, 27.257151, 49.831024>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.201275, 27.036318, 49.847477> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073058, -0.035953, 0.996679,
		-0.548769, 0.833015, 0.070275,
		-0.832776, -0.552081, 0.041128,
		34.951443, 26.870693, 49.859814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.132832, 27.586182, 50.338390>,  <35.534386, 27.257151, 49.831024>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.132832, 27.586182, 50.338390> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.996868, 27.210415, 50.320671>,  <34.915291, 26.984955, 50.310040>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.996868, 27.210415, 50.320671>,  <35.132832, 27.586182, 50.338390>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.996868, 27.210415, 50.320671> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002853, -0.046071, 0.998934,
		-0.940455, 0.339670, 0.012980,
		-0.339906, -0.939416, -0.044296,
		34.894897, 26.928591, 50.307381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.932369, 28.336210, 50.189178>,  <35.132832, 27.586182, 50.338390>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.932369, 28.336210, 50.189178> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.659504, 28.591860, 50.331261>,  <34.495785, 28.745251, 50.416512>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.659504, 28.591860, 50.331261>,  <34.932369, 28.336210, 50.189178>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.659504, 28.591860, 50.331261> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196068, 0.627882, -0.753208,
		-0.704423, -0.444165, -0.553629,
		-0.682162, 0.639126, 0.355208,
		34.454857, 28.783598, 50.437824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.606586, 28.458406, 49.532375>,  <34.932369, 28.336210, 50.189178>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.606586, 28.458406, 49.532375> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.545727, 28.761679, 49.785992>,  <34.509209, 28.943642, 49.938164>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.545727, 28.761679, 49.785992>,  <34.606586, 28.458406, 49.532375>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.545727, 28.761679, 49.785992> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165589, 0.652001, -0.739916,
		-0.974387, -0.007589, -0.224750,
		-0.152153, 0.758180, 0.634045,
		34.500080, 28.989132, 49.976204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.026524, 28.949400, 49.271778>,  <34.606586, 28.458406, 49.532375>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.026524, 28.949400, 49.271778> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.231628, 29.191029, 49.515804>,  <34.354691, 29.336006, 49.662220>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.231628, 29.191029, 49.515804>,  <34.026524, 28.949400, 49.271778>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.231628, 29.191029, 49.515804> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052465, 0.687212, -0.724560,
		-0.856928, 0.403531, 0.320681,
		0.512759, 0.604072, 0.610062,
		34.385456, 29.372250, 49.698822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.671867, 29.557650, 49.121799>,  <34.026524, 28.949400, 49.271778>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.671867, 29.557650, 49.121799> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.989548, 29.691795, 49.324493>,  <34.180157, 29.772284, 49.446110>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.989548, 29.691795, 49.324493>,  <33.671867, 29.557650, 49.121799>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.989548, 29.691795, 49.324493> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165998, 0.682454, -0.711830,
		-0.584545, 0.649451, 0.486334,
		0.794198, 0.335366, 0.506733,
		34.227806, 29.792406, 49.476513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.540058, 30.167690, 49.219471>,  <33.671867, 29.557650, 49.121799>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.540058, 30.167690, 49.219471> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.939331, 30.175030, 49.242420>,  <34.178894, 30.179434, 49.256191>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.939331, 30.175030, 49.242420>,  <33.540058, 30.167690, 49.219471>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.939331, 30.175030, 49.242420> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019183, 0.806071, -0.591508,
		-0.057099, 0.591534, 0.804256,
		0.998184, 0.018346, 0.057374,
		34.238785, 30.180534, 49.259632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.815037, 30.922234, 49.243931>,  <33.540058, 30.167690, 49.219471>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.815037, 30.922234, 49.243931> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.100060, 30.683064, 49.097095>,  <34.271072, 30.539562, 49.008995>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.100060, 30.683064, 49.097095>,  <33.815037, 30.922234, 49.243931>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.100060, 30.683064, 49.097095> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159457, 0.647521, -0.745178,
		0.683256, 0.472445, 0.556737,
		0.712555, -0.597923, -0.367088,
		34.313828, 30.503687, 48.986969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.287308, 31.431602, 48.798370>,  <33.815037, 30.922234, 49.243931>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.287308, 31.431602, 48.798370> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.429127, 31.069250, 48.705696>,  <34.514217, 30.851839, 48.650093>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.429127, 31.069250, 48.705696>,  <34.287308, 31.431602, 48.798370>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.429127, 31.069250, 48.705696> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125669, 0.291697, -0.948220,
		0.926554, 0.307074, 0.217262,
		0.354548, -0.905880, -0.231683,
		34.535492, 30.797485, 48.636192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.889244, 31.533821, 48.423210>,  <34.287308, 31.431602, 48.798370>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.889244, 31.533821, 48.423210> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.771072, 31.166342, 48.318352>,  <34.700169, 30.945854, 48.255436>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.771072, 31.166342, 48.318352>,  <34.889244, 31.533821, 48.423210>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.771072, 31.166342, 48.318352> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230471, 0.197757, -0.952772,
		0.927150, -0.341890, 0.153310,
		-0.295426, -0.918696, -0.262146,
		34.682446, 30.890734, 48.239708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.685101, 31.846645, 48.436462>,  <34.889244, 31.533821, 48.423210>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.685101, 31.846645, 48.436462> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.670544, 32.228069, 48.556057>,  <35.661808, 32.456924, 48.627815>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.670544, 32.228069, 48.556057>,  <35.685101, 31.846645, 48.436462>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.670544, 32.228069, 48.556057> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084215, -0.295198, 0.951717,
		0.995783, 0.059818, -0.069561,
		-0.036395, 0.953562, 0.298990,
		35.659626, 32.514137, 48.645756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.056278, 31.744251, 48.998970>,  <35.685101, 31.846645, 48.436462>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.056278, 31.744251, 48.998970> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.955303, 32.130432, 49.024818>,  <35.894718, 32.362141, 49.040329>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.955303, 32.130432, 49.024818>,  <36.056278, 31.744251, 48.998970>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.955303, 32.130432, 49.024818> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226613, -0.005939, 0.973967,
		0.940702, 0.260512, -0.217285,
		-0.252440, 0.965452, 0.064622,
		35.879570, 32.420067, 49.044205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.594051, 32.056477, 49.286289>,  <36.056278, 31.744251, 48.998970>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.594051, 32.056477, 49.286289> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.253899, 32.248974, 49.371391>,  <36.049809, 32.364471, 49.422455>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.253899, 32.248974, 49.371391>,  <36.594051, 32.056477, 49.286289>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.253899, 32.248974, 49.371391> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242634, -0.000144, 0.970118,
		0.466891, 0.876588, -0.116643,
		-0.850377, 0.481241, 0.212758,
		35.998787, 32.393345, 49.435219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.730175, 32.657066, 49.796329>,  <36.594051, 32.056477, 49.286289>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.730175, 32.657066, 49.796329> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.338013, 32.584084, 49.826035>,  <36.102715, 32.540295, 49.843857>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.338013, 32.584084, 49.826035>,  <36.730175, 32.657066, 49.796329>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.338013, 32.584084, 49.826035> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076705, -0.006364, 0.997034,
		-0.181441, 0.983194, 0.020235,
		-0.980406, -0.182455, 0.074261,
		36.043892, 32.529346, 49.848312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610130, 32.998810, 50.270866>,  <36.730175, 32.657066, 49.796329>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.610130, 32.998810, 50.270866> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.284264, 32.767178, 50.258331>,  <36.088745, 32.628197, 50.250809>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.284264, 32.767178, 50.258331>,  <36.610130, 32.998810, 50.270866>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.284264, 32.767178, 50.258331> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077013, 0.054462, 0.995542,
		-0.574795, 0.813447, -0.088966,
		-0.814665, -0.579084, -0.031341,
		36.039864, 32.593452, 50.248928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.031284, 33.316528, 50.716476>,  <36.610130, 32.998810, 50.270866>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.031284, 33.316528, 50.716476> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.957542, 32.924870, 50.682350>,  <35.913296, 32.689873, 50.661877>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.957542, 32.924870, 50.682350>,  <36.031284, 33.316528, 50.716476>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.957542, 32.924870, 50.682350> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093549, -0.068927, 0.993226,
		-0.978397, 0.191089, -0.078891,
		-0.184357, -0.979150, -0.085314,
		35.902237, 32.631126, 50.656757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.572876, 33.139439, 51.206436>,  <36.031284, 33.316528, 50.716476>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.572876, 33.139439, 51.206436> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.657192, 32.751907, 51.154381>,  <35.707783, 32.519390, 51.123146>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.657192, 32.751907, 51.154381>,  <35.572876, 33.139439, 51.206436>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.657192, 32.751907, 51.154381> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000350, -0.133055, 0.991109,
		-0.977531, -0.208965, -0.027708,
		0.210794, -0.968829, -0.130138,
		35.720432, 32.461258, 51.115337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.128059, 32.720886, 51.605492>,  <35.572876, 33.139439, 51.206436>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.128059, 32.720886, 51.605492> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.434937, 32.474159, 51.535122>,  <35.619064, 32.326122, 51.492901>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.434937, 32.474159, 51.535122>,  <35.128059, 32.720886, 51.605492>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.434937, 32.474159, 51.535122> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027583, -0.242293, 0.969811,
		-0.640820, -0.748887, -0.168873,
		0.767195, -0.616816, -0.175923,
		35.665096, 32.289116, 51.482346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.015282, 32.148048, 52.049042>,  <35.128059, 32.720886, 51.605492>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.015282, 32.148048, 52.049042> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.405350, 32.158314, 51.961056>,  <35.639389, 32.164471, 51.908264>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.405350, 32.158314, 51.961056>,  <35.015282, 32.148048, 52.049042>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.405350, 32.158314, 51.961056> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215079, -0.346363, 0.913112,
		-0.052758, -0.937749, -0.343282,
		0.975170, 0.025659, -0.219963,
		35.697903, 32.166012, 51.895065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.651302, 35.615574, 36.049313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.024849, 35.740013, 36.119862>,  <36.248978, 35.814678, 36.162189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.024849, 35.740013, 36.119862>,  <35.651302, 35.615574, 36.049313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.024849, 35.740013, 36.119862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068981, -0.327226, 0.942425,
		0.350901, -0.892267, -0.284126,
		0.933868, 0.311099, 0.176373,
		36.305008, 35.833344, 36.172775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.835949, 35.200863, 36.424389>,  <35.651302, 35.615574, 36.049313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.835949, 35.200863, 36.424389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.136387, 35.454342, 36.498455>,  <36.316650, 35.606430, 36.542896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.136387, 35.454342, 36.498455>,  <35.835949, 35.200863, 36.424389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.136387, 35.454342, 36.498455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033034, -0.244045, 0.969201,
		0.659366, -0.734080, -0.162367,
		0.751096, 0.633695, 0.185165,
		36.361717, 35.644451, 36.554005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.298279, 34.939445, 36.813232>,  <35.835949, 35.200863, 36.424389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.298279, 34.939445, 36.813232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.339432, 35.331955, 36.878372>,  <36.364124, 35.567459, 36.917458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.339432, 35.331955, 36.878372>,  <36.298279, 34.939445, 36.813232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.339432, 35.331955, 36.878372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117234, -0.150619, 0.981616,
		0.987760, -0.120087, 0.099541,
		0.102886, 0.981271, 0.162854,
		36.370296, 35.626335, 36.927227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.744862, 35.044430, 37.436939>,  <36.298279, 34.939445, 36.813232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.744862, 35.044430, 37.436939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.508530, 35.366505, 37.416615>,  <36.366730, 35.559750, 37.404419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.508530, 35.366505, 37.416615>,  <36.744862, 35.044430, 37.436939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.508530, 35.366505, 37.416615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246408, -0.120122, 0.961693,
		0.768244, 0.580721, 0.269378,
		-0.590833, 0.805192, -0.050811,
		36.331280, 35.608063, 37.401371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.981049, 35.434589, 37.903824>,  <36.744862, 35.044430, 37.436939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.981049, 35.434589, 37.903824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.662128, 35.667702, 37.840977>,  <36.470776, 35.807568, 37.803268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.662128, 35.667702, 37.840977>,  <36.981049, 35.434589, 37.903824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.662128, 35.667702, 37.840977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046926, 0.199668, 0.978739,
		0.601761, 0.787718, -0.131847,
		-0.797296, 0.582780, -0.157117,
		36.422939, 35.842537, 37.793842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.063766, 36.059795, 38.244415>,  <36.981049, 35.434589, 37.903824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.063766, 36.059795, 38.244415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.675755, 35.966198, 38.218239>,  <36.442947, 35.910038, 38.202534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.675755, 35.966198, 38.218239>,  <37.063766, 36.059795, 38.244415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.675755, 35.966198, 38.218239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113805, 0.199606, 0.973245,
		-0.214674, 0.951527, -0.220255,
		-0.970033, -0.233996, -0.065438,
		36.384747, 35.896000, 38.198608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.745792, 36.654892, 38.533714>,  <37.063766, 36.059795, 38.244415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.745792, 36.654892, 38.533714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.463634, 36.371410, 38.538696>,  <36.294338, 36.201321, 38.541687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.463634, 36.371410, 38.538696>,  <36.745792, 36.654892, 38.533714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.463634, 36.371410, 38.538696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156482, 0.172846, 0.972439,
		-0.691328, 0.684002, -0.232824,
		-0.705393, -0.708707, 0.012459,
		36.252018, 36.158798, 38.542435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.069740, 36.994514, 38.739922>,  <36.745792, 36.654892, 38.533714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.069740, 36.994514, 38.739922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.095779, 36.603088, 38.818081>,  <36.111401, 36.368233, 38.864975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.095779, 36.603088, 38.818081>,  <36.069740, 36.994514, 38.739922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.095779, 36.603088, 38.818081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051060, 0.192290, 0.980009,
		-0.996572, -0.073769, -0.037449,
		0.065093, -0.978561, 0.195397,
		36.115307, 36.309521, 38.876701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.530785, 36.905281, 39.247887>,  <36.069740, 36.994514, 38.739922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.530785, 36.905281, 39.247887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.762745, 36.579433, 39.252083>,  <35.901920, 36.383926, 39.254601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.762745, 36.579433, 39.252083>,  <35.530785, 36.905281, 39.247887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.762745, 36.579433, 39.252083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080244, 0.069926, 0.994320,
		-0.810723, -0.575769, 0.105919,
		0.579905, -0.814617, 0.010489,
		35.936718, 36.335049, 39.255230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.372093, 36.636917, 39.834957>,  <35.530785, 36.905281, 39.247887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.372093, 36.636917, 39.834957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.682438, 36.395031, 39.763000>,  <35.868645, 36.249897, 39.719826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.682438, 36.395031, 39.763000>,  <35.372093, 36.636917, 39.834957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.682438, 36.395031, 39.763000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006865, -0.293208, 0.956024,
		-0.630871, -0.740503, -0.231639,
		0.775857, -0.604719, -0.179892,
		35.915195, 36.213615, 39.709034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.213409, 35.977367, 40.093281>,  <35.372093, 36.636917, 39.834957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.213409, 35.977367, 40.093281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.611530, 36.013489, 40.079296>,  <35.850403, 36.035160, 40.070904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.611530, 36.013489, 40.079296>,  <35.213409, 35.977367, 40.093281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.611530, 36.013489, 40.079296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066454, -0.374375, 0.924893,
		0.070431, -0.922870, -0.378616,
		0.995301, 0.090302, -0.034961,
		35.910122, 36.040581, 40.068810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.431389, 35.347233, 40.293011>,  <35.213409, 35.977367, 40.093281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.431389, 35.347233, 40.293011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.744808, 35.591595, 40.338352>,  <35.932861, 35.738213, 40.365555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.744808, 35.591595, 40.338352>,  <35.431389, 35.347233, 40.293011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.744808, 35.591595, 40.338352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029505, -0.218808, 0.975322,
		0.620629, -0.760868, -0.189471,
		0.783549, 0.610903, 0.113349,
		35.979874, 35.774864, 40.372356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.105598, 34.684723, 39.885540>,  <35.431389, 35.347233, 40.293011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.105598, 34.684723, 39.885540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.763042, 34.590851, 40.069504>,  <34.557507, 34.534527, 40.179882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.763042, 34.590851, 40.069504>,  <35.105598, 34.684723, 39.885540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.763042, 34.590851, 40.069504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500268, 0.156749, -0.851564,
		0.127753, -0.959352, -0.251641,
		-0.856394, -0.234678, 0.459908,
		34.506123, 34.520447, 40.207478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.799950, 34.328529, 39.457821>,  <35.105598, 34.684723, 39.885540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.799950, 34.328529, 39.457821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.482388, 34.418209, 39.683899>,  <34.291851, 34.472015, 39.819546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.482388, 34.418209, 39.683899>,  <34.799950, 34.328529, 39.457821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.482388, 34.418209, 39.683899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563858, 0.076404, -0.822330,
		-0.227549, -0.971544, 0.065759,
		-0.793905, 0.224200, 0.565198,
		34.244217, 34.485470, 39.853458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.244972, 33.965229, 39.137154>,  <34.799950, 34.328529, 39.457821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.244972, 33.965229, 39.137154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.051571, 34.234535, 39.360916>,  <33.935532, 34.396118, 39.495174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.051571, 34.234535, 39.360916>,  <34.244972, 33.965229, 39.137154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.051571, 34.234535, 39.360916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700008, 0.086315, -0.708900,
		-0.525564, -0.734345, 0.429559,
		-0.483500, 0.673266, 0.559411,
		33.906521, 34.436516, 39.528740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.536533, 33.776176, 39.119942>,  <34.244972, 33.965229, 39.137154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.536533, 33.776176, 39.119942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.579330, 34.162472, 39.214516>,  <33.605011, 34.394249, 39.271259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.579330, 34.162472, 39.214516>,  <33.536533, 33.776176, 39.119942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.579330, 34.162472, 39.214516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696293, 0.242533, -0.675539,
		-0.709738, -0.092350, 0.698387,
		0.106996, 0.965738, 0.236437,
		33.611427, 34.452194, 39.285446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.814190, 33.884556, 39.095535>,  <33.536533, 33.776176, 39.119942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.814190, 33.884556, 39.095535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.979347, 34.247097, 39.131401>,  <33.078442, 34.464622, 39.152920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.979347, 34.247097, 39.131401>,  <32.814190, 33.884556, 39.095535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.979347, 34.247097, 39.131401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812177, 0.410954, -0.414108,
		-0.412178, 0.098157, 0.905800,
		0.412890, 0.906357, 0.089665,
		33.103214, 34.519005, 39.158302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.338299, 34.367901, 39.528481>,  <32.814190, 33.884556, 39.095535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.338299, 34.367901, 39.528481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.564194, 34.570187, 39.267612>,  <32.699730, 34.691559, 39.111092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.564194, 34.570187, 39.267612>,  <32.338299, 34.367901, 39.528481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.564194, 34.570187, 39.267612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817738, 0.236357, -0.524824,
		-0.111265, 0.829693, 0.547019,
		0.564735, 0.505713, -0.652173,
		32.733616, 34.721901, 39.071960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.954334, 34.915321, 39.263130>,  <32.338299, 34.367901, 39.528481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.954334, 34.915321, 39.263130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.243435, 34.901619, 38.987026>,  <32.416897, 34.893398, 38.821365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.243435, 34.901619, 38.987026>,  <31.954334, 34.915321, 39.263130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.243435, 34.901619, 38.987026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672379, 0.196092, -0.713761,
		0.159805, 0.979987, 0.118692,
		0.722751, -0.034257, -0.690259,
		32.460258, 34.891342, 38.779949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.809046, 35.466339, 38.830280>,  <31.954334, 34.915321, 39.263130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.809046, 35.466339, 38.830280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.061394, 35.261677, 38.596970>,  <32.212803, 35.138882, 38.456982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.061394, 35.261677, 38.596970>,  <31.809046, 35.466339, 38.830280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.061394, 35.261677, 38.596970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665827, 0.028948, -0.745545,
		0.398345, 0.858705, -0.322409,
		0.630870, -0.511652, -0.583280,
		32.250656, 35.108181, 38.421986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.768995, 35.774109, 38.119980>,  <31.809046, 35.466339, 38.830280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.768995, 35.774109, 38.119980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.924679, 35.412876, 38.047356>,  <32.018089, 35.196136, 38.003780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.924679, 35.412876, 38.047356>,  <31.768995, 35.774109, 38.119980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.924679, 35.412876, 38.047356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581722, -0.088149, -0.808598,
		0.714224, 0.420329, -0.559650,
		0.389209, -0.903080, -0.181557,
		32.041443, 35.141953, 37.992889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.684473, 35.706566, 37.447392>,  <31.768995, 35.774109, 38.119980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.684473, 35.706566, 37.447392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.734245, 35.332996, 37.581440>,  <31.764109, 35.108856, 37.661869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.734245, 35.332996, 37.581440>,  <31.684473, 35.706566, 37.447392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.734245, 35.332996, 37.581440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757671, -0.307507, -0.575650,
		0.640665, -0.182283, -0.745869,
		0.124428, -0.933923, 0.335120,
		31.771574, 35.052818, 37.681976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.851181, 35.197502, 36.839111>,  <31.684473, 35.706566, 37.447392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.851181, 35.197502, 36.839111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.695463, 34.998070, 37.148914>,  <31.602032, 34.878410, 37.334797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.695463, 34.998070, 37.148914>,  <31.851181, 35.197502, 36.839111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.695463, 34.998070, 37.148914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711709, -0.370967, -0.596535,
		0.584738, -0.783455, -0.210427,
		-0.389297, -0.498579, 0.774511,
		31.578674, 34.848495, 37.381268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.588678, 34.606636, 36.534184>,  <31.851181, 35.197502, 36.839111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.588678, 34.606636, 36.534184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.421093, 34.592846, 36.897121>,  <31.320541, 34.584572, 37.114883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.421093, 34.592846, 36.897121>,  <31.588678, 34.606636, 36.534184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.421093, 34.592846, 36.897121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718863, -0.597881, -0.354647,
		0.554711, -0.800843, 0.225711,
		-0.418965, -0.034471, 0.907348,
		31.295404, 34.582504, 37.169327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.466122, 33.898621, 36.757515>,  <31.588678, 34.606636, 36.534184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.466122, 33.898621, 36.757515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.191944, 34.122147, 36.944233>,  <31.027437, 34.256260, 37.056263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.191944, 34.122147, 36.944233>,  <31.466122, 33.898621, 36.757515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.191944, 34.122147, 36.944233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709368, -0.657077, -0.255043,
		0.164197, -0.505946, 0.846793,
		-0.685446, 0.558810, 0.466792,
		30.986311, 34.289791, 37.084270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.014181, 33.420998, 37.041836>,  <31.466122, 33.898621, 36.757515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.014181, 33.420998, 37.041836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.782389, 33.746658, 37.056580>,  <30.643312, 33.942055, 37.065426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.782389, 33.746658, 37.056580>,  <31.014181, 33.420998, 37.041836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.782389, 33.746658, 37.056580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751173, -0.516023, -0.411655,
		-0.316131, -0.266232, 0.910594,
		-0.579483, 0.814151, 0.036855,
		30.608543, 33.990902, 37.067635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.028429, 32.740623, 37.244087>,  <31.014181, 33.420998, 37.041836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.028429, 32.740623, 37.244087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.424196, 32.739315, 37.302105>,  <31.661657, 32.738529, 37.336914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.424196, 32.739315, 37.302105>,  <31.028429, 32.740623, 37.244087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.424196, 32.739315, 37.302105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120439, 0.538869, 0.833735,
		-0.080892, -0.842383, 0.532773,
		0.989420, -0.003276, 0.145045,
		31.721022, 32.738331, 37.345619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.434349, 32.113178, 37.041168>,  <31.028429, 32.740623, 37.244087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.434349, 32.113178, 37.041168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.320065, 31.738529, 36.960064>,  <31.251493, 31.513741, 36.911400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.320065, 31.738529, 36.960064>,  <31.434349, 32.113178, 37.041168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.320065, 31.738529, 36.960064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815065, -0.348784, 0.462622,
		-0.504021, -0.033088, 0.863057,
		-0.285714, -0.936619, -0.202763,
		31.234350, 31.457544, 36.899235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.274328, 31.673653, 37.538998>,  <31.434349, 32.113178, 37.041168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.274328, 31.673653, 37.538998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.425932, 31.442621, 37.249790>,  <31.516893, 31.304003, 37.076263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.425932, 31.442621, 37.249790>,  <31.274328, 31.673653, 37.538998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.425932, 31.442621, 37.249790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820610, -0.151365, 0.551079,
		-0.427730, -0.802181, 0.416597,
		0.379007, -0.577577, -0.723021,
		31.539635, 31.269348, 37.032883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.562113, 30.877209, 37.725613>,  <31.274328, 31.673653, 37.538998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.562113, 30.877209, 37.725613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.786400, 31.013535, 37.423767>,  <31.920971, 31.095329, 37.242661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.786400, 31.013535, 37.423767>,  <31.562113, 30.877209, 37.725613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.786400, 31.013535, 37.423767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822084, -0.120311, 0.556511,
		0.098878, -0.932401, -0.347637,
		0.560715, 0.340813, -0.754616,
		31.954615, 31.115778, 37.197384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.097656, 30.345470, 37.601566>,  <31.562113, 30.877209, 37.725613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.097656, 30.345470, 37.601566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.212898, 30.708477, 37.479313>,  <32.282043, 30.926281, 37.405960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.212898, 30.708477, 37.479313>,  <32.097656, 30.345470, 37.601566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.212898, 30.708477, 37.479313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754704, -0.018729, 0.655798,
		0.589424, -0.419598, -0.690302,
		0.288101, 0.907517, -0.305633,
		32.299328, 30.980732, 37.387623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.785049, 30.291203, 37.750778>,  <32.097656, 30.345470, 37.601566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.785049, 30.291203, 37.750778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.694378, 30.679407, 37.717976>,  <32.639973, 30.912329, 37.698296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.694378, 30.679407, 37.717976>,  <32.785049, 30.291203, 37.750778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.694378, 30.679407, 37.717976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630535, 0.210402, 0.747099,
		0.742321, 0.117648, -0.659635,
		-0.226683, 0.970510, -0.082005,
		32.626373, 30.970560, 37.693375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.435658, 30.597281, 37.928802>,  <32.785049, 30.291203, 37.750778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.435658, 30.597281, 37.928802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.173191, 30.898642, 37.945885>,  <33.015709, 31.079458, 37.956135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.173191, 30.898642, 37.945885>,  <33.435658, 30.597281, 37.928802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.173191, 30.898642, 37.945885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449465, 0.344742, 0.824096,
		0.606153, 0.559944, -0.564838,
		-0.656171, 0.753403, 0.042709,
		32.976341, 31.124662, 37.958698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.827206, 31.180391, 38.075249>,  <33.435658, 30.597281, 37.928802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.827206, 31.180391, 38.075249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.462280, 31.269438, 38.212723>,  <33.243324, 31.322866, 38.295208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.462280, 31.269438, 38.212723>,  <33.827206, 31.180391, 38.075249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.462280, 31.269438, 38.212723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383900, 0.172941, 0.907035,
		0.142482, 0.959445, -0.243239,
		-0.912316, 0.222615, 0.343690,
		33.188587, 31.336222, 38.315830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.953144, 31.755863, 38.506836>,  <33.827206, 31.180391, 38.075249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.953144, 31.755863, 38.506836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.595821, 31.613865, 38.617100>,  <33.381428, 31.528666, 38.683258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.595821, 31.613865, 38.617100>,  <33.953144, 31.755863, 38.506836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.595821, 31.613865, 38.617100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222613, 0.183336, 0.957513,
		-0.390450, 0.916715, -0.084748,
		-0.893304, -0.354995, 0.275656,
		33.327831, 31.507366, 38.699799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.859192, 32.134567, 39.147217>,  <33.953144, 31.755863, 38.506836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.859192, 32.134567, 39.147217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.580685, 31.848782, 39.174759>,  <33.413578, 31.677309, 39.191284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.580685, 31.848782, 39.174759>,  <33.859192, 32.134567, 39.147217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.580685, 31.848782, 39.174759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191402, -0.092353, 0.977157,
		-0.691787, 0.693547, 0.201054,
		-0.696273, -0.714467, 0.068857,
		33.371803, 31.634441, 39.195415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.361538, 32.372250, 39.616520>,  <33.859192, 32.134567, 39.147217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.361538, 32.372250, 39.616520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.321705, 31.974245, 39.613838>,  <33.297806, 31.735443, 39.612228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.321705, 31.974245, 39.613838>,  <33.361538, 32.372250, 39.616520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.321705, 31.974245, 39.613838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228490, -0.029425, 0.973102,
		-0.968440, 0.095369, 0.230279,
		-0.099580, -0.995007, -0.006705,
		33.291832, 31.675743, 39.611828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.895317, 32.200443, 40.226257>,  <33.361538, 32.372250, 39.616520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.895317, 32.200443, 40.226257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.033363, 31.837334, 40.130890>,  <33.116192, 31.619469, 40.073669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.033363, 31.837334, 40.130890>,  <32.895317, 32.200443, 40.226257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.033363, 31.837334, 40.130890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042973, -0.269042, 0.962169,
		-0.937577, -0.321810, -0.131860,
		0.345111, -0.907775, -0.238419,
		33.136898, 31.565001, 40.059364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.396011, 31.600620, 40.500835>,  <32.895317, 32.200443, 40.226257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.396011, 31.600620, 40.500835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.759998, 31.435333, 40.486919>,  <32.978390, 31.336161, 40.478569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.759998, 31.435333, 40.486919>,  <32.396011, 31.600620, 40.500835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.759998, 31.435333, 40.486919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197607, -0.505859, 0.839677,
		-0.364569, -0.757204, -0.541970,
		0.909968, -0.413218, -0.034792,
		33.032990, 31.311367, 40.476482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.286541, 30.978998, 40.914268>,  <32.396011, 31.600620, 40.500835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.286541, 30.978998, 40.914268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.683563, 30.993036, 40.867611>,  <32.921776, 31.001459, 40.839615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.683563, 30.993036, 40.867611>,  <32.286541, 30.978998, 40.914268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.683563, 30.993036, 40.867611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112506, -0.631168, 0.767443,
		-0.046689, -0.774852, -0.630416,
		0.992554, 0.035094, -0.116645,
		32.981331, 31.003565, 40.832619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.600410, 30.216177, 40.929638>,  <32.286541, 30.978998, 40.914268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.600410, 30.216177, 40.929638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.910786, 30.449682, 41.025253>,  <33.097012, 30.589785, 41.082623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.910786, 30.449682, 41.025253>,  <32.600410, 30.216177, 40.929638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.910786, 30.449682, 41.025253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218799, -0.604480, 0.765984,
		0.591643, -0.542058, -0.596767,
		0.775941, 0.583761, 0.239035,
		33.143570, 30.624811, 41.096962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.133915, 29.852131, 40.928204>,  <32.600410, 30.216177, 40.929638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.133915, 29.852131, 40.928204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.254951, 30.153875, 41.161228>,  <33.327572, 30.334923, 41.301044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.254951, 30.153875, 41.161228>,  <33.133915, 29.852131, 40.928204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.254951, 30.153875, 41.161228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210351, -0.649000, 0.731131,
		0.929620, -0.098687, -0.355059,
		0.302586, 0.754361, 0.582564,
		33.345726, 30.380184, 41.335999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.714405, 29.540087, 41.349617>,  <33.133915, 29.852131, 40.928204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.714405, 29.540087, 41.349617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.633255, 29.878637, 41.546589>,  <33.584564, 30.081768, 41.664772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.633255, 29.878637, 41.546589>,  <33.714405, 29.540087, 41.349617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.633255, 29.878637, 41.546589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169134, -0.465043, 0.868981,
		0.964487, 0.259580, -0.048807,
		-0.202873, 0.846377, 0.492432,
		33.572392, 30.132551, 41.694317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.336826, 29.781889, 41.659653>,  <33.714405, 29.540087, 41.349617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.336826, 29.781889, 41.659653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.003452, 29.885105, 41.855122>,  <33.803429, 29.947035, 41.972404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.003452, 29.885105, 41.855122>,  <34.336826, 29.781889, 41.659653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.003452, 29.885105, 41.855122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337423, -0.462684, 0.819799,
		0.437642, 0.848138, 0.298548,
		-0.833436, 0.258042, 0.488671,
		33.753422, 29.962517, 42.001724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.649719, 29.856508, 42.311813>,  <34.336826, 29.781889, 41.659653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.649719, 29.856508, 42.311813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.256264, 29.896681, 42.371635>,  <34.020191, 29.920784, 42.407528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.256264, 29.896681, 42.371635>,  <34.649719, 29.856508, 42.311813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.256264, 29.896681, 42.371635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090136, -0.444421, 0.891272,
		0.155977, 0.890171, 0.428098,
		-0.983640, 0.100431, 0.149556,
		33.961170, 29.926809, 42.416504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.538242, 30.125053, 42.959385>,  <34.649719, 29.856508, 42.311813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.538242, 30.125053, 42.959385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.186970, 29.960970, 42.860981>,  <33.976204, 29.862520, 42.801937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.186970, 29.960970, 42.860981>,  <34.538242, 30.125053, 42.959385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.186970, 29.960970, 42.860981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039676, -0.575019, 0.817178,
		-0.476676, 0.707871, 0.521247,
		-0.878183, -0.410210, -0.246012,
		33.923515, 29.837906, 42.787178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.195095, 30.065569, 43.508068>,  <34.538242, 30.125053, 42.959385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.195095, 30.065569, 43.508068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.983414, 29.792807, 43.306099>,  <33.856407, 29.629148, 43.184917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.983414, 29.792807, 43.306099>,  <34.195095, 30.065569, 43.508068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.983414, 29.792807, 43.306099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026192, -0.607926, 0.793561,
		-0.848092, 0.406729, 0.339576,
		-0.529202, -0.681907, -0.504924,
		33.824654, 29.588234, 43.154621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.587238, 29.802513, 43.950451>,  <34.195095, 30.065569, 43.508068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.587238, 29.802513, 43.950451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.669243, 29.509830, 43.690426>,  <33.718445, 29.334221, 43.534412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.669243, 29.509830, 43.690426>,  <33.587238, 29.802513, 43.950451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.669243, 29.509830, 43.690426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092506, -0.646708, 0.757108,
		-0.974379, -0.215348, -0.064893,
		0.205008, -0.731707, -0.650059,
		33.730747, 29.290318, 43.495407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.199951, 29.234558, 44.090233>,  <33.587238, 29.802513, 43.950451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.199951, 29.234558, 44.090233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.501526, 29.072651, 43.883259>,  <33.682472, 28.975506, 43.759075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.501526, 29.072651, 43.883259>,  <33.199951, 29.234558, 44.090233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.501526, 29.072651, 43.883259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189586, -0.620072, 0.761293,
		-0.629016, -0.672056, -0.390743,
		0.753921, -0.404786, -0.517448,
		33.727707, 28.951221, 43.728027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.159061, 28.534109, 44.209274>,  <33.199951, 29.234558, 44.090233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.159061, 28.534109, 44.209274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.536953, 28.590801, 44.091022>,  <33.763687, 28.624817, 44.020073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.536953, 28.590801, 44.091022>,  <33.159061, 28.534109, 44.209274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.536953, 28.590801, 44.091022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322375, -0.565670, 0.759008,
		-0.059652, -0.812361, -0.580096,
		0.944731, 0.141732, -0.295628,
		33.820374, 28.633320, 44.002335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.435715, 27.834742, 44.214077>,  <33.159061, 28.534109, 44.209274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.435715, 27.834742, 44.214077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.749458, 28.082815, 44.218987>,  <33.937706, 28.231659, 44.221931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.749458, 28.082815, 44.218987>,  <33.435715, 27.834742, 44.214077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.749458, 28.082815, 44.218987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406189, -0.528471, 0.745472,
		0.468817, -0.579732, -0.666424,
		0.784360, 0.620184, 0.012276,
		33.984768, 28.268869, 44.222668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.043823, 27.430632, 44.196049>,  <33.435715, 27.834742, 44.214077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.043823, 27.430632, 44.196049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.153282, 27.786526, 44.342190>,  <34.218960, 28.000063, 44.429874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.153282, 27.786526, 44.342190>,  <34.043823, 27.430632, 44.196049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.153282, 27.786526, 44.342190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455189, -0.454421, 0.765705,
		0.847301, -0.043230, -0.529351,
		0.273650, 0.889737, 0.365354,
		34.235378, 28.053448, 44.451797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.723164, 27.250134, 44.438766>,  <34.043823, 27.430632, 44.196049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.723164, 27.250134, 44.438766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.621841, 27.599865, 44.604362>,  <34.561047, 27.809704, 44.703720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.621841, 27.599865, 44.604362>,  <34.723164, 27.250134, 44.438766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.621841, 27.599865, 44.604362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567873, -0.212066, 0.795329,
		0.783171, 0.436555, -0.442789,
		-0.253305, 0.874327, 0.413992,
		34.545849, 27.862164, 44.728561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.326248, 27.595118, 44.753838>,  <34.723164, 27.250134, 44.438766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.326248, 27.595118, 44.753838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.008499, 27.725515, 44.958855>,  <34.817848, 27.803753, 45.081867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.008499, 27.725515, 44.958855>,  <35.326248, 27.595118, 44.753838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.008499, 27.725515, 44.958855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416336, -0.322219, 0.850200,
		0.442310, 0.888766, 0.120239,
		-0.794371, 0.325992, 0.512546,
		34.770187, 27.823313, 45.112617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.087574, 27.899679, 44.904625>,  <35.326248, 27.595118, 44.753838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.087574, 27.899679, 44.904625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.485821, 27.910250, 44.868740>,  <36.724770, 27.916592, 44.847210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.485821, 27.910250, 44.868740>,  <36.087574, 27.899679, 44.904625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.485821, 27.910250, 44.868740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093511, 0.298402, -0.949848,
		0.001670, 0.954074, 0.299565,
		0.995617, 0.026427, -0.089715,
		36.784504, 27.918179, 44.841827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.187721, 28.432249, 44.481373>,  <36.087574, 27.899679, 44.904625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.187721, 28.432249, 44.481373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.525826, 28.219854, 44.457424>,  <36.728687, 28.092417, 44.443054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.525826, 28.219854, 44.457424>,  <36.187721, 28.432249, 44.481373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.525826, 28.219854, 44.457424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113164, 0.287391, -0.951105,
		0.522232, 0.797157, 0.303009,
		0.845262, -0.530987, -0.059875,
		36.779404, 28.060558, 44.439461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.601250, 28.853979, 44.257572>,  <36.187721, 28.432249, 44.481373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.601250, 28.853979, 44.257572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.753323, 28.496666, 44.161648>,  <36.844566, 28.282278, 44.104092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.753323, 28.496666, 44.161648>,  <36.601250, 28.853979, 44.257572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.753323, 28.496666, 44.161648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164784, 0.320551, -0.932788,
		0.910114, 0.315112, 0.269066,
		0.380182, -0.893281, -0.239813,
		36.867378, 28.228682, 44.089703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.238762, 29.074162, 44.034523>,  <36.601250, 28.853979, 44.257572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.238762, 29.074162, 44.034523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.146488, 28.715370, 43.883678>,  <37.091125, 28.500095, 43.793171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.146488, 28.715370, 43.883678>,  <37.238762, 29.074162, 44.034523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.146488, 28.715370, 43.883678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004198, 0.388477, -0.921449,
		0.973020, -0.210977, -0.093380,
		-0.230681, -0.896981, -0.377110,
		37.077286, 28.446276, 43.770546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.672794, 28.939621, 43.387600>,  <37.238762, 29.074162, 44.034523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.672794, 28.939621, 43.387600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.379753, 28.669489, 43.353603>,  <37.203930, 28.507410, 43.333206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.379753, 28.669489, 43.353603>,  <37.672794, 28.939621, 43.387600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.379753, 28.669489, 43.353603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104380, 0.234861, -0.966408,
		0.672607, -0.699120, -0.242551,
		-0.732602, -0.675331, -0.084995,
		37.159973, 28.466890, 43.328106>
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
