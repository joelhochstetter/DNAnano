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
	<24.718073, 34.744747, 34.784313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.408916, 34.839073, 35.019951>,  <24.223423, 34.895668, 35.161331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.408916, 34.839073, 35.019951>,  <24.718073, 34.744747, 34.784313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.408916, 34.839073, 35.019951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457084, 0.437036, -0.774645,
		-0.440126, -0.867981, -0.229995,
		-0.772893, 0.235814, 0.589091,
		24.177048, 34.909817, 35.196678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.200516, 34.365665, 34.417183>,  <24.718073, 34.744747, 34.784313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.200516, 34.365665, 34.417183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.592648, 34.293915, 34.384258>,  <25.827927, 34.250862, 34.364506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.592648, 34.293915, 34.384258>,  <25.200516, 34.365665, 34.417183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.592648, 34.293915, 34.384258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178054, -0.983746, 0.023227,
		-0.085137, -0.008115, -0.996336,
		0.980330, -0.179380, -0.082308,
		25.886747, 34.240101, 34.359566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.350037, 33.899967, 33.895828>,  <25.200516, 34.365665, 34.417183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.350037, 33.899967, 33.895828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.672462, 33.854259, 34.128105>,  <25.865919, 33.826836, 34.267471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.672462, 33.854259, 34.128105>,  <25.350037, 33.899967, 33.895828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.672462, 33.854259, 34.128105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120045, -0.992355, -0.028644,
		0.579522, -0.046619, -0.813622,
		0.806067, -0.114271, 0.580688,
		25.914282, 33.819977, 34.302311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.588202, 33.344173, 33.672100>,  <25.350037, 33.899967, 33.895828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.588202, 33.344173, 33.672100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.778704, 33.356930, 34.023590>,  <25.893005, 33.364582, 34.234486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.778704, 33.356930, 34.023590>,  <25.588202, 33.344173, 33.672100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.778704, 33.356930, 34.023590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099962, -0.990900, 0.090138,
		0.873606, -0.130768, -0.468734,
		0.476256, 0.031890, 0.878728,
		25.921581, 33.366497, 34.287209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.195246, 32.830971, 33.532158>,  <25.588202, 33.344173, 33.672100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.195246, 32.830971, 33.532158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.101480, 32.870026, 33.919048>,  <26.045221, 32.893459, 34.151180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.101480, 32.870026, 33.919048>,  <26.195246, 32.830971, 33.532158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.101480, 32.870026, 33.919048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046373, -0.994934, 0.089194,
		0.971030, -0.023945, 0.237755,
		-0.234415, 0.097636, 0.967221,
		26.031157, 32.899315, 34.209213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.710524, 32.401131, 34.072044>,  <26.195246, 32.830971, 33.532158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.710524, 32.401131, 34.072044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.331394, 32.431496, 34.195896>,  <26.103916, 32.449715, 34.270206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.331394, 32.431496, 34.195896>,  <26.710524, 32.401131, 34.072044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.331394, 32.431496, 34.195896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057510, -0.996016, 0.068151,
		0.313570, 0.046788, 0.948412,
		-0.947822, 0.075913, 0.309630,
		26.047047, 32.454269, 34.288784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.745502, 32.018822, 34.761024>,  <26.710524, 32.401131, 34.072044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.745502, 32.018822, 34.761024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.379328, 32.009254, 34.600323>,  <26.159622, 32.003513, 34.503902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.379328, 32.009254, 34.600323>,  <26.745502, 32.018822, 34.761024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.379328, 32.009254, 34.600323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033881, -0.990109, 0.136145,
		-0.401035, 0.138244, 0.905571,
		-0.915436, -0.023917, -0.401752,
		26.104696, 32.002079, 34.479797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.345751, 31.643753, 35.139172>,  <26.745502, 32.018822, 34.761024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.345751, 31.643753, 35.139172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.136652, 31.622278, 34.798855>,  <26.011192, 31.609392, 34.594666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.136652, 31.622278, 34.798855>,  <26.345751, 31.643753, 35.139172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.136652, 31.622278, 34.798855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055480, -0.993757, 0.096798,
		-0.850681, 0.097803, 0.516505,
		-0.522747, -0.053688, -0.850796,
		25.979828, 31.606173, 34.543617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.766508, 31.283691, 35.210293>,  <26.345751, 31.643753, 35.139172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.766508, 31.283691, 35.210293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.822697, 31.241266, 34.816540>,  <25.856409, 31.215811, 34.580288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.822697, 31.241266, 34.816540>,  <25.766508, 31.283691, 35.210293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.822697, 31.241266, 34.816540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095650, -0.991048, 0.093134,
		-0.985453, 0.081074, -0.149361,
		0.140473, -0.106065, -0.984387,
		25.864838, 31.209446, 34.521225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.215654, 30.913725, 35.003151>,  <25.766508, 31.283691, 35.210293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.215654, 30.913725, 35.003151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.478960, 30.839590, 34.711304>,  <25.636944, 30.795109, 34.536198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.478960, 30.839590, 34.711304>,  <25.215654, 30.913725, 35.003151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.478960, 30.839590, 34.711304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268332, -0.963323, 0.002614,
		-0.703339, 0.194058, -0.683854,
		0.658264, -0.185339, -0.729614,
		25.676439, 30.783989, 34.492420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.854477, 30.420151, 34.425373>,  <25.215654, 30.913725, 35.003151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.854477, 30.420151, 34.425373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.253080, 30.397322, 34.401009>,  <25.492243, 30.383625, 34.386391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.253080, 30.397322, 34.401009>,  <24.854477, 30.420151, 34.425373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.253080, 30.397322, 34.401009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056557, -0.998348, 0.010137,
		-0.061393, -0.006657, -0.998092,
		0.996510, -0.057071, -0.060915,
		25.552032, 30.380199, 34.382732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.067602, 29.967230, 33.821545>,  <24.854477, 30.420151, 34.425373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.067602, 29.967230, 33.821545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.313202, 29.988493, 34.136551>,  <25.460562, 30.001251, 34.325554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.313202, 29.988493, 34.136551>,  <25.067602, 29.967230, 33.821545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.313202, 29.988493, 34.136551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106737, -0.982973, 0.149568,
		0.782057, -0.175892, -0.597871,
		0.613999, 0.053156, 0.787515,
		25.497402, 30.004440, 34.372807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.317978, 29.396240, 34.291126>,  <25.067602, 29.967230, 33.821545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.317978, 29.396240, 34.291126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.128815, 29.043800, 34.289356>,  <25.015316, 28.832336, 34.288292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.128815, 29.043800, 34.289356>,  <25.317978, 29.396240, 34.291126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.128815, 29.043800, 34.289356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878837, -0.472045, 0.069414,
		-0.063251, 0.028936, 0.997578,
		-0.472910, -0.881100, -0.004427,
		24.986942, 28.779470, 34.288029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.256287, 29.295427, 35.099342>,  <25.317978, 29.396240, 34.291126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.256287, 29.295427, 35.099342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.551950, 29.202702, 34.846390>,  <25.729349, 29.147066, 34.694618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.551950, 29.202702, 34.846390>,  <25.256287, 29.295427, 35.099342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.551950, 29.202702, 34.846390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142213, 0.971452, -0.189885,
		0.658343, 0.050423, 0.751027,
		0.739161, -0.231816, -0.632378,
		25.773699, 29.133158, 34.656677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.962891, 29.588284, 35.300682>,  <25.256287, 29.295427, 35.099342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.962891, 29.588284, 35.300682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.987371, 29.559999, 34.902435>,  <26.002060, 29.543030, 34.663486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.987371, 29.559999, 34.902435>,  <25.962891, 29.588284, 35.300682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.987371, 29.559999, 34.902435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265110, 0.962811, -0.052081,
		0.962274, -0.260761, 0.077671,
		0.061201, -0.070708, -0.995618,
		26.005732, 29.538788, 34.603748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.563763, 29.912437, 35.043407>,  <25.962891, 29.588284, 35.300682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.563763, 29.912437, 35.043407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.292049, 29.932804, 34.750565>,  <26.129021, 29.945024, 34.574860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.292049, 29.932804, 34.750565>,  <26.563763, 29.912437, 35.043407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.292049, 29.932804, 34.750565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127198, 0.990660, -0.049125,
		0.722767, -0.126493, -0.679417,
		-0.679285, 0.050915, -0.732106,
		26.088264, 29.948078, 34.530933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.801134, 30.189648, 34.323009>,  <26.563763, 29.912437, 35.043407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.801134, 30.189648, 34.323009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.409046, 30.257889, 34.363136>,  <26.173794, 30.298834, 34.387211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.409046, 30.257889, 34.363136>,  <26.801134, 30.189648, 34.323009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.409046, 30.257889, 34.363136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126952, 0.930863, -0.342604,
		-0.151832, -0.323091, -0.934109,
		-0.980220, 0.170605, 0.100318,
		26.114981, 30.309071, 34.393230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.663294, 30.577036, 33.735729>,  <26.801134, 30.189648, 34.323009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.663294, 30.577036, 33.735729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.342306, 30.647182, 33.963867>,  <26.149714, 30.689270, 34.100750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.342306, 30.647182, 33.963867>,  <26.663294, 30.577036, 33.735729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.342306, 30.647182, 33.963867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012924, 0.960721, -0.277214,
		-0.596553, -0.215085, -0.773216,
		-0.802470, 0.175366, 0.570341,
		26.101564, 30.699793, 34.134968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.265701, 31.058620, 33.288654>,  <26.663294, 30.577036, 33.735729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.265701, 31.058620, 33.288654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.179951, 31.086105, 33.678387>,  <26.128500, 31.102596, 33.912228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.179951, 31.086105, 33.678387>,  <26.265701, 31.058620, 33.288654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.179951, 31.086105, 33.678387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027120, 0.996719, -0.076259,
		-0.976375, -0.042771, -0.211808,
		-0.214375, 0.068713, 0.974331,
		26.115639, 31.106720, 33.970688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.722769, 31.607443, 33.399845>,  <26.265701, 31.058620, 33.288654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.722769, 31.607443, 33.399845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.930086, 31.556862, 33.738167>,  <26.054478, 31.526514, 33.941158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.930086, 31.556862, 33.738167>,  <25.722769, 31.607443, 33.399845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.930086, 31.556862, 33.738167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081842, 0.991803, 0.098130,
		-0.851277, 0.018362, 0.524396,
		0.518296, -0.126453, 0.845801,
		26.085575, 31.518927, 33.991905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.187027, 31.478146, 33.872028>,  <25.722769, 31.607443, 33.399845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.187027, 31.478146, 33.872028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.393877, 31.555138, 34.205624>,  <25.517986, 31.601334, 34.405781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.393877, 31.555138, 34.205624>,  <25.187027, 31.478146, 33.872028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.393877, 31.555138, 34.205624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058798, 0.964095, -0.258967,
		-0.853888, 0.182955, 0.487240,
		0.517125, 0.192479, 0.833986,
		25.549015, 31.612881, 34.455818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.862638, 32.072525, 34.142971>,  <25.187027, 31.478146, 33.872028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.862638, 32.072525, 34.142971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.223394, 32.052750, 34.314621>,  <25.439848, 32.040886, 34.417610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.223394, 32.052750, 34.314621>,  <24.862638, 32.072525, 34.142971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.223394, 32.052750, 34.314621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115420, 0.984890, -0.129113,
		-0.416256, 0.165976, 0.893970,
		0.901892, -0.049438, 0.429124,
		25.493961, 32.037918, 34.443359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.804071, 32.588280, 34.662647>,  <24.862638, 32.072525, 34.142971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.804071, 32.588280, 34.662647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.177607, 32.540817, 34.527668>,  <25.401728, 32.512341, 34.446682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.177607, 32.540817, 34.527668>,  <24.804071, 32.588280, 34.662647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.177607, 32.540817, 34.527668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041639, 0.973023, -0.226919,
		0.355270, 0.197854, 0.913585,
		0.933836, -0.118658, -0.337447,
		25.457758, 32.505219, 34.426434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.335741, 32.949921, 35.065331>,  <24.804071, 32.588280, 34.662647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.335741, 32.949921, 35.065331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.682539, 32.751255, 35.049107>,  <25.890617, 32.632057, 35.039371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.682539, 32.751255, 35.049107>,  <25.335741, 32.949921, 35.065331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.682539, 32.751255, 35.049107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493475, 0.867040, -0.068742,
		0.069304, 0.039586, 0.996810,
		0.866995, -0.496664, -0.040555,
		25.942636, 32.602257, 35.036942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.943115, 33.080395, 35.608810>,  <25.335741, 32.949921, 35.065331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.943115, 33.080395, 35.608810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.017920, 33.011368, 35.221977>,  <26.062801, 32.969952, 34.989876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.017920, 33.011368, 35.221977>,  <25.943115, 33.080395, 35.608810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.017920, 33.011368, 35.221977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317068, 0.942366, -0.106841,
		0.929782, -0.286651, 0.230947,
		0.187010, -0.172564, -0.967083,
		26.074022, 32.959599, 34.931854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.549740, 33.361614, 35.418350>,  <25.943115, 33.080395, 35.608810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.549740, 33.361614, 35.418350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.374250, 33.359489, 35.058907>,  <26.268957, 33.358215, 34.843243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.374250, 33.359489, 35.058907>,  <26.549740, 33.361614, 35.418350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.374250, 33.359489, 35.058907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334938, 0.926958, -0.169010,
		0.833869, -0.375126, -0.404898,
		-0.438723, -0.005316, -0.898606,
		26.242634, 33.357895, 34.789326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.982756, 33.773209, 35.064140>,  <26.549740, 33.361614, 35.418350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.982756, 33.773209, 35.064140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.651848, 33.773968, 34.839420>,  <26.453302, 33.774422, 34.704586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.651848, 33.773968, 34.839420>,  <26.982756, 33.773209, 35.064140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.651848, 33.773968, 34.839420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111266, 0.980740, -0.160530,
		0.550677, -0.195311, -0.811547,
		-0.827270, 0.001897, -0.561802,
		26.403667, 33.774536, 34.670879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.157051, 34.191742, 34.472244>,  <26.982756, 33.773209, 35.064140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.157051, 34.191742, 34.472244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.757540, 34.171978, 34.473087>,  <26.517834, 34.160118, 34.473595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.757540, 34.171978, 34.473087>,  <27.157051, 34.191742, 34.472244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.757540, 34.171978, 34.473087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049433, 0.998719, -0.010777,
		-0.001576, -0.010869, -0.999940,
		-0.998776, -0.049413, 0.002111,
		26.457907, 34.157154, 34.473721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.815336, 34.498783, 33.807339>,  <27.157051, 34.191742, 34.472244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.815336, 34.498783, 33.807339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.596376, 34.549683, 34.138195>,  <26.465000, 34.580223, 34.336708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.596376, 34.549683, 34.138195>,  <26.815336, 34.498783, 33.807339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.596376, 34.549683, 34.138195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046760, 0.982179, -0.182041,
		-0.835565, -0.138327, -0.531693,
		-0.547399, 0.127245, 0.827142,
		26.432158, 34.587856, 34.386337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.003136, 35.108418, 34.106888>,  <26.815336, 34.498783, 33.807339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.003136, 35.108418, 34.106888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.282124, 35.334312, 33.930431>,  <27.449516, 35.469849, 33.824558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.282124, 35.334312, 33.930431>,  <27.003136, 35.108418, 34.106888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.282124, 35.334312, 33.930431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502048, 0.824345, 0.261538,
		0.511353, 0.039059, 0.858482,
		0.697470, 0.564738, -0.441141,
		27.491365, 35.503735, 33.798088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.071150, 35.754005, 34.567715>,  <27.003136, 35.108418, 34.106888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.071150, 35.754005, 34.567715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.247314, 35.900841, 34.239986>,  <27.353014, 35.988941, 34.043350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.247314, 35.900841, 34.239986>,  <27.071150, 35.754005, 34.567715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.247314, 35.900841, 34.239986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473178, 0.870461, 0.135649,
		0.762980, 0.327943, 0.557059,
		0.440412, 0.367085, -0.819320,
		27.379438, 36.010967, 33.994190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.228907, 36.510883, 34.767910>,  <27.071150, 35.754005, 34.567715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.228907, 36.510883, 34.767910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.206738, 36.434654, 34.375866>,  <27.193436, 36.388916, 34.140640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.206738, 36.434654, 34.375866>,  <27.228907, 36.510883, 34.767910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.206738, 36.434654, 34.375866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437120, 0.887179, -0.147783,
		0.897694, 0.420234, -0.132473,
		-0.055424, -0.190570, -0.980108,
		27.190111, 36.377483, 34.081833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.399527, 37.150742, 34.373821>,  <27.228907, 36.510883, 34.767910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.399527, 37.150742, 34.373821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.174297, 36.952129, 34.109577>,  <27.039160, 36.832962, 33.951031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.174297, 36.952129, 34.109577>,  <27.399527, 37.150742, 34.373821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.174297, 36.952129, 34.109577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368989, 0.866327, -0.336636,
		0.739457, 0.054209, -0.671018,
		-0.563073, -0.496526, -0.660614,
		27.005375, 36.803173, 33.911392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.443457, 37.564369, 33.737198>,  <27.399527, 37.150742, 34.373821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.443457, 37.564369, 33.737198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.115887, 37.339153, 33.692757>,  <26.919344, 37.204025, 33.666092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.115887, 37.339153, 33.692757>,  <27.443457, 37.564369, 33.737198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.115887, 37.339153, 33.692757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487014, 0.784217, -0.384475,
		0.303606, -0.260747, -0.916425,
		-0.818926, -0.563040, -0.111106,
		26.870209, 37.170242, 33.659424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.127974, 37.565479, 33.021641>,  <27.443457, 37.564369, 33.737198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.127974, 37.565479, 33.021641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.822226, 37.515778, 33.274715>,  <26.638777, 37.485954, 33.426559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.822226, 37.515778, 33.274715>,  <27.127974, 37.565479, 33.021641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.822226, 37.515778, 33.274715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471338, 0.777257, -0.416788,
		-0.439975, -0.616792, -0.652679,
		-0.764371, -0.124256, 0.632690,
		26.592915, 37.478500, 33.464523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.453602, 37.577999, 32.647980>,  <27.127974, 37.565479, 33.021641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.453602, 37.577999, 32.647980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.324497, 37.661079, 33.017342>,  <26.247034, 37.710930, 33.238960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.324497, 37.661079, 33.017342>,  <26.453602, 37.577999, 32.647980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.324497, 37.661079, 33.017342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569929, 0.736267, -0.364818,
		-0.755650, -0.644026, -0.119262,
		-0.322761, 0.207704, 0.923409,
		26.227669, 37.723392, 33.294365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.000988, 37.006233, 32.580650>,  <26.453602, 37.577999, 32.647980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.000988, 37.006233, 32.580650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.902479, 37.052368, 32.965576>,  <25.843374, 37.080048, 33.196533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.902479, 37.052368, 32.965576>,  <26.000988, 37.006233, 32.580650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.902479, 37.052368, 32.965576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641654, 0.724736, -0.251074,
		-0.726382, -0.679304, -0.104476,
		-0.246273, 0.115338, 0.962313,
		25.828598, 37.086967, 33.254269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.338282, 36.955803, 32.608051>,  <26.000988, 37.006233, 32.580650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.338282, 36.955803, 32.608051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.438993, 37.169323, 32.930954>,  <25.499420, 37.297436, 33.124695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.438993, 37.169323, 32.930954>,  <25.338282, 36.955803, 32.608051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.438993, 37.169323, 32.930954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729626, 0.652700, -0.204029,
		-0.635808, -0.537626, 0.553811,
		0.251781, 0.533799, 0.807258,
		25.514528, 37.329464, 33.173130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.667957, 37.026699, 32.955059>,  <25.338282, 36.955803, 32.608051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.667957, 37.026699, 32.955059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.910078, 37.313980, 33.092346>,  <25.055349, 37.486347, 33.174717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.910078, 37.313980, 33.092346>,  <24.667957, 37.026699, 32.955059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.910078, 37.313980, 33.092346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663408, 0.693452, -0.281095,
		-0.439888, -0.057546, 0.896207,
		0.605301, 0.718201, 0.343217,
		25.091669, 37.529442, 33.195312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.347466, 37.561420, 33.571613>,  <24.667957, 37.026699, 32.955059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.347466, 37.561420, 33.571613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.637062, 37.753101, 33.373138>,  <24.810820, 37.868111, 33.254055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.637062, 37.753101, 33.373138>,  <24.347466, 37.561420, 33.571613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.637062, 37.753101, 33.373138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653368, 0.707078, -0.270464,
		0.221236, 0.520007, 0.825014,
		0.723992, 0.479201, -0.496187,
		24.854259, 37.896862, 33.224281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.505783, 38.296078, 33.733749>,  <24.347466, 37.561420, 33.571613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.505783, 38.296078, 33.733749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.596136, 38.256794, 33.346073>,  <24.650349, 38.233223, 33.113468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.596136, 38.256794, 33.346073>,  <24.505783, 38.296078, 33.733749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.596136, 38.256794, 33.346073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474150, 0.858018, -0.197450,
		0.850975, 0.504143, 0.147248,
		0.225884, -0.098207, -0.969191,
		24.663902, 38.227333, 33.055317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.543825, 38.566750, 34.433762>,  <24.505783, 38.296078, 33.733749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.543825, 38.566750, 34.433762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.260727, 38.430660, 34.681419>,  <24.090868, 38.349007, 34.830013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.260727, 38.430660, 34.681419>,  <24.543825, 38.566750, 34.433762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.260727, 38.430660, 34.681419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149263, 0.928627, 0.339665,
		-0.690521, 0.147979, -0.708013,
		-0.707743, -0.340226, 0.619149,
		24.048405, 38.328594, 34.867165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.348778, 38.527214, 34.648144>,  <24.543825, 38.566750, 34.433762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.348778, 38.527214, 34.648144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.479845, 38.520725, 35.026005>,  <25.558485, 38.516830, 35.252720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.479845, 38.520725, 35.026005>,  <25.348778, 38.527214, 34.648144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.479845, 38.520725, 35.026005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750062, -0.612438, 0.249652,
		0.574491, -0.790352, -0.212847,
		0.327669, -0.016225, 0.944653,
		25.578146, 38.515858, 35.309402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.797361, 38.061935, 34.165421>,  <25.348778, 38.527214, 34.648144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.797361, 38.061935, 34.165421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.712420, 37.835724, 33.846653>,  <25.661453, 37.699997, 33.655392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.712420, 37.835724, 33.846653>,  <25.797361, 38.061935, 34.165421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.712420, 37.835724, 33.846653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723146, -0.639449, 0.261084,
		-0.657240, -0.520847, 0.544752,
		-0.212356, -0.565530, -0.796920,
		25.648712, 37.666065, 33.607578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.875360, 37.437504, 34.423164>,  <25.797361, 38.061935, 34.165421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.875360, 37.437504, 34.423164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.910614, 37.430264, 34.024788>,  <25.931767, 37.425919, 33.785763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.910614, 37.430264, 34.024788>,  <25.875360, 37.437504, 34.423164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.910614, 37.430264, 34.024788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675543, -0.733686, 0.073120,
		-0.732034, -0.679248, -0.052435,
		0.088137, -0.018104, -0.995944,
		25.937056, 37.424831, 33.726006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.639580, 36.789547, 34.143623>,  <25.875360, 37.437504, 34.423164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.639580, 36.789547, 34.143623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.902912, 36.961563, 33.896507>,  <26.060911, 37.064774, 33.748238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.902912, 36.961563, 33.896507>,  <25.639580, 36.789547, 34.143623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.902912, 36.961563, 33.896507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604396, -0.791202, 0.093300,
		-0.448674, -0.434811, -0.780789,
		0.658330, 0.430044, -0.617790,
		26.100410, 37.090576, 33.711170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.828371, 36.308979, 33.535557>,  <25.639580, 36.789547, 34.143623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.828371, 36.308979, 33.535557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.132650, 36.565235, 33.577351>,  <26.315218, 36.718990, 33.602428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.132650, 36.565235, 33.577351>,  <25.828371, 36.308979, 33.535557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.132650, 36.565235, 33.577351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626532, -0.766748, 0.139841,
		0.169704, -0.040912, -0.984646,
		0.760696, 0.640643, 0.104487,
		26.360859, 36.757427, 33.608696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.364937, 36.083282, 33.053215>,  <25.828371, 36.308979, 33.535557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.364937, 36.083282, 33.053215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.582733, 36.330345, 33.280205>,  <26.713411, 36.478584, 33.416401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.582733, 36.330345, 33.280205>,  <26.364937, 36.083282, 33.053215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.582733, 36.330345, 33.280205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768786, -0.638046, -0.043180,
		0.335407, 0.459781, -0.822255,
		0.544490, 0.617655, 0.567479,
		26.746080, 36.515640, 33.450447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.950083, 36.397732, 32.787403>,  <26.364937, 36.083282, 33.053215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.950083, 36.397732, 32.787403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.056551, 36.388378, 33.172859>,  <27.120432, 36.382767, 33.404133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.056551, 36.388378, 33.172859>,  <26.950083, 36.397732, 32.787403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.056551, 36.388378, 33.172859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681916, -0.702000, -0.205393,
		0.681280, 0.711793, -0.170905,
		0.266173, -0.023388, 0.963642,
		27.136402, 36.381363, 33.461952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.540594, 36.050758, 32.723141>,  <26.950083, 36.397732, 32.787403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.540594, 36.050758, 32.723141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.556641, 36.049023, 33.122814>,  <27.566269, 36.047981, 33.362617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.556641, 36.049023, 33.122814>,  <27.540594, 36.050758, 32.723141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.556641, 36.049023, 33.122814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686709, -0.726283, -0.030722,
		0.725825, 0.687382, -0.026158,
		0.040116, -0.004336, 0.999186,
		27.568676, 36.047722, 33.422569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.258572, 36.067627, 32.902412>,  <27.540594, 36.050758, 32.723141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.258572, 36.067627, 32.902412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.015875, 35.921051, 33.184570>,  <27.870256, 35.833107, 33.353867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.015875, 35.921051, 33.184570>,  <28.258572, 36.067627, 32.902412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.015875, 35.921051, 33.184570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517690, -0.855568, 0.000843,
		0.603207, 0.365689, 0.708811,
		-0.606744, -0.366436, 0.705398,
		27.833851, 35.811119, 33.396191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.670828, 35.864361, 33.442635>,  <28.258572, 36.067627, 32.902412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.670828, 35.864361, 33.442635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.343946, 35.634132, 33.430691>,  <28.147818, 35.495995, 33.423527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.343946, 35.634132, 33.430691>,  <28.670828, 35.864361, 33.442635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.343946, 35.634132, 33.430691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551202, -0.795635, 0.251281,
		-0.168385, 0.188891, 0.967454,
		-0.817204, -0.575574, -0.029856,
		28.098785, 35.461460, 33.421734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.605316, 35.483742, 34.064312>,  <28.670828, 35.864361, 33.442635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.605316, 35.483742, 34.064312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.506632, 35.314167, 33.715736>,  <28.447422, 35.212421, 33.506592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.506632, 35.314167, 33.715736>,  <28.605316, 35.483742, 34.064312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.506632, 35.314167, 33.715736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598116, -0.774142, 0.207273,
		-0.762490, -0.470087, 0.444552,
		-0.246710, -0.423937, -0.871442,
		28.432619, 35.186985, 33.454304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.492853, 34.841084, 34.387260>,  <28.605316, 35.483742, 34.064312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.492853, 34.841084, 34.387260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.527237, 34.806522, 33.990242>,  <28.547867, 34.785786, 33.752029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.527237, 34.806522, 33.990242>,  <28.492853, 34.841084, 34.387260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.527237, 34.806522, 33.990242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565079, -0.816264, 0.120000,
		-0.820547, -0.571181, -0.021339,
		0.085959, -0.086407, -0.992545,
		28.553024, 34.780602, 33.692478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.115303, 34.102085, 34.603672>,  <28.492853, 34.841084, 34.387260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.115303, 34.102085, 34.603672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.003010, 33.871479, 34.296734>,  <27.935635, 33.733116, 34.112572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.003010, 33.871479, 34.296734>,  <28.115303, 34.102085, 34.603672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.003010, 33.871479, 34.296734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902613, 0.113232, -0.415293,
		0.326312, -0.809200, 0.488586,
		-0.280731, -0.576519, -0.767343,
		27.918791, 33.698524, 34.066532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.633085, 33.695694, 34.272854>,  <28.115303, 34.102085, 34.603672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.633085, 33.695694, 34.272854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.656359, 34.082039, 34.171879>,  <28.670322, 34.313847, 34.111294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.656359, 34.082039, 34.171879>,  <28.633085, 33.695694, 34.272854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.656359, 34.082039, 34.171879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378735, 0.255321, 0.889591,
		0.923674, 0.043848, 0.380661,
		0.058184, 0.965862, -0.252440,
		28.673815, 34.371796, 34.096146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.014830, 33.198692, 34.689274>,  <28.633085, 33.695694, 34.272854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.014830, 33.198692, 34.689274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.272106, 33.167385, 34.993950>,  <29.426472, 33.148602, 35.176758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.272106, 33.167385, 34.993950>,  <29.014830, 33.198692, 34.689274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.272106, 33.167385, 34.993950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483682, -0.729637, -0.483407,
		0.593595, 0.679341, -0.431441,
		0.643193, -0.078268, 0.761693,
		29.465065, 33.143906, 35.222458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.596176, 33.283375, 34.335796>,  <29.014830, 33.198692, 34.689274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.596176, 33.283375, 34.335796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.651192, 33.082329, 34.677197>,  <29.684200, 32.961700, 34.882034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.651192, 33.082329, 34.677197>,  <29.596176, 33.283375, 34.335796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.651192, 33.082329, 34.677197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619573, -0.628641, -0.470043,
		0.772795, 0.593454, 0.224944,
		0.137540, -0.502616, 0.853499,
		29.692453, 32.931545, 34.933247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.350580, 33.365299, 34.747974>,  <29.596176, 33.283375, 34.335796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.350580, 33.365299, 34.747974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.166700, 33.018398, 34.824436>,  <30.056372, 32.810257, 34.870312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.166700, 33.018398, 34.824436>,  <30.350580, 33.365299, 34.747974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.166700, 33.018398, 34.824436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847405, -0.492759, -0.197720,
		0.265667, 0.071093, 0.961440,
		-0.459702, -0.867257, 0.191155,
		30.028790, 32.758221, 34.881783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.785576, 32.973083, 35.221588>,  <30.350580, 33.365299, 34.747974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.785576, 32.973083, 35.221588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.569679, 32.747772, 34.971340>,  <30.440142, 32.612587, 34.821194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.569679, 32.747772, 34.971340>,  <30.785576, 32.973083, 35.221588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.569679, 32.747772, 34.971340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840931, -0.326403, -0.431621,
		0.038921, -0.759064, 0.649852,
		-0.539741, -0.563280, -0.625616,
		30.407757, 32.578789, 34.783657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.295820, 32.658749, 34.643890>,  <30.785576, 32.973083, 35.221588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.295820, 32.658749, 34.643890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.313448, 33.026993, 34.488693>,  <31.324024, 33.247940, 34.395576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.313448, 33.026993, 34.488693>,  <31.295820, 32.658749, 34.643890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.313448, 33.026993, 34.488693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037988, -0.386546, -0.921487,
		-0.998306, 0.055351, 0.017937,
		0.044072, 0.920608, -0.387994,
		31.326670, 33.303177, 34.372295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.737047, 32.757359, 34.131844>,  <31.295820, 32.658749, 34.643890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.737047, 32.757359, 34.131844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.073807, 32.967739, 34.083542>,  <31.275864, 33.093967, 34.054562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.073807, 32.967739, 34.083542>,  <30.737047, 32.757359, 34.131844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.073807, 32.967739, 34.083542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122977, -0.404875, -0.906064,
		-0.525434, 0.747966, -0.405544,
		0.841900, 0.525949, -0.120753,
		31.326376, 33.125523, 34.047318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.640129, 33.054344, 33.535645>,  <30.737047, 32.757359, 34.131844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.640129, 33.054344, 33.535645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.036482, 33.035564, 33.586163>,  <31.274294, 33.024296, 33.616474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.036482, 33.035564, 33.586163>,  <30.640129, 33.054344, 33.535645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.036482, 33.035564, 33.586163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099496, -0.377159, -0.920789,
		0.090862, 0.924958, -0.369049,
		0.990881, -0.046945, 0.126299,
		31.333746, 33.021481, 33.624054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.064966, 33.340340, 32.972748>,  <30.640129, 33.054344, 33.535645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.064966, 33.340340, 32.972748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.278036, 33.045578, 33.139233>,  <31.405878, 32.868721, 33.239124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.278036, 33.045578, 33.139233>,  <31.064966, 33.340340, 32.972748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.278036, 33.045578, 33.139233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170777, -0.388083, -0.905664,
		0.828910, 0.553505, -0.080876,
		0.532676, -0.736902, 0.416211,
		31.437840, 32.824509, 33.264095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.848473, 33.339367, 32.926098>,  <31.064966, 33.340340, 32.972748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.848473, 33.339367, 32.926098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.717422, 32.961754, 32.941406>,  <31.638792, 32.735188, 32.950592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.717422, 32.961754, 32.941406>,  <31.848473, 33.339367, 32.926098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.717422, 32.961754, 32.941406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276202, -0.134439, -0.951650,
		0.903534, -0.301215, 0.304790,
		-0.327627, -0.944032, 0.038274,
		31.619135, 32.678543, 32.952888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.263008, 32.789509, 32.802055>,  <31.848473, 33.339367, 32.926098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.263008, 32.789509, 32.802055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.895258, 32.696728, 32.674973>,  <31.674606, 32.641060, 32.598721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.895258, 32.696728, 32.674973>,  <32.263008, 32.789509, 32.802055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.895258, 32.696728, 32.674973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343946, -0.082046, -0.935398,
		0.190902, -0.969261, 0.155211,
		-0.919379, -0.231953, -0.317711,
		31.619444, 32.627140, 32.579659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.323875, 32.072117, 32.581032>,  <32.263008, 32.789509, 32.802055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.323875, 32.072117, 32.581032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.023819, 32.282509, 32.420715>,  <31.843784, 32.408745, 32.324524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.023819, 32.282509, 32.420715>,  <32.323875, 32.072117, 32.581032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.023819, 32.282509, 32.420715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200039, -0.397195, -0.895668,
		-0.630295, -0.752051, 0.192736,
		-0.750141, 0.525980, -0.400790,
		31.798777, 32.440304, 32.300480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.846811, 31.543894, 32.385014>,  <32.323875, 32.072117, 32.581032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.846811, 31.543894, 32.385014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.894960, 31.893053, 32.195885>,  <31.923851, 32.102547, 32.082409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.894960, 31.893053, 32.195885>,  <31.846811, 31.543894, 32.385014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.894960, 31.893053, 32.195885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385347, -0.480025, -0.788089,
		-0.914887, -0.087335, -0.394150,
		0.120374, 0.872897, -0.472823,
		31.931072, 32.154922, 32.054039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.760099, 31.361847, 31.716206>,  <31.846811, 31.543894, 32.385014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.760099, 31.361847, 31.716206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.954165, 31.711559, 31.709913>,  <32.070602, 31.921387, 31.706139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.954165, 31.711559, 31.709913>,  <31.760099, 31.361847, 31.716206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.954165, 31.711559, 31.709913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611490, -0.352081, -0.708603,
		-0.625058, 0.334168, -0.705432,
		0.485162, 0.874283, -0.015730,
		32.099712, 31.973845, 31.705194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.744896, 31.624016, 30.988899>,  <31.760099, 31.361847, 31.716206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.744896, 31.624016, 30.988899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.060303, 31.792965, 31.167711>,  <32.249546, 31.894335, 31.275000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.060303, 31.792965, 31.167711>,  <31.744896, 31.624016, 30.988899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.060303, 31.792965, 31.167711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585123, -0.291385, -0.756786,
		-0.189389, 0.858309, -0.476904,
		0.788519, 0.422375, 0.447031,
		32.296860, 31.919678, 31.301821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.111942, 31.744511, 30.457930>,  <31.744896, 31.624016, 30.988899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.111942, 31.744511, 30.457930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.384155, 31.815306, 30.742338>,  <32.547482, 31.857782, 30.912983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.384155, 31.815306, 30.742338>,  <32.111942, 31.744511, 30.457930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.384155, 31.815306, 30.742338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731218, -0.226087, -0.643588,
		0.046845, 0.957894, -0.283276,
		0.680534, 0.176987, 0.711020,
		32.588314, 31.868402, 30.955645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.556320, 32.324120, 30.281948>,  <32.111942, 31.744511, 30.457930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.556320, 32.324120, 30.281948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.789261, 32.118950, 30.534227>,  <32.929024, 31.995850, 30.685595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.789261, 32.118950, 30.534227>,  <32.556320, 32.324120, 30.281948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.789261, 32.118950, 30.534227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682473, -0.113074, -0.722111,
		0.441701, 0.850956, 0.284207,
		0.582349, -0.512921, 0.630700,
		32.963966, 31.965073, 30.723436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.408066, 32.440872, 30.102690>,  <32.556320, 32.324120, 30.281948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.408066, 32.440872, 30.102690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.392895, 32.097305, 30.306976>,  <33.383793, 31.891167, 30.429548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.392895, 32.097305, 30.306976>,  <33.408066, 32.440872, 30.102690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.392895, 32.097305, 30.306976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652964, -0.408182, -0.637986,
		0.756439, 0.309284, 0.576319,
		-0.037924, -0.858913, 0.510716,
		33.381519, 31.839632, 30.460192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.117271, 32.230701, 30.224958>,  <33.408066, 32.440872, 30.102690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.117271, 32.230701, 30.224958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.874306, 31.913630, 30.245804>,  <33.728527, 31.723387, 30.258310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.874306, 31.913630, 30.245804>,  <34.117271, 32.230701, 30.224958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.874306, 31.913630, 30.245804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564638, -0.476953, -0.673572,
		0.558779, -0.379712, 0.737282,
		-0.607413, -0.792675, 0.052112,
		33.692081, 31.675827, 30.261436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.529579, 31.676239, 30.204964>,  <34.117271, 32.230701, 30.224958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.529579, 31.676239, 30.204964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.176861, 31.524185, 30.093298>,  <33.965229, 31.432953, 30.026299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.176861, 31.524185, 30.093298>,  <34.529579, 31.676239, 30.204964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.176861, 31.524185, 30.093298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467476, -0.626086, -0.624085,
		0.062455, -0.680819, 0.729784,
		-0.881796, -0.380134, -0.279164,
		33.912323, 31.410145, 30.009548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.617161, 30.884308, 30.161427>,  <34.529579, 31.676239, 30.204964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.617161, 30.884308, 30.161427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.266941, 30.912987, 29.970312>,  <34.056808, 30.930195, 29.855644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.266941, 30.912987, 29.970312>,  <34.617161, 30.884308, 30.161427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.266941, 30.912987, 29.970312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292168, -0.709036, -0.641799,
		-0.384783, -0.701518, 0.599846,
		-0.875546, 0.071698, -0.477786,
		34.004276, 30.934496, 29.826977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.318562, 30.210043, 30.053160>,  <34.617161, 30.884308, 30.161427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.318562, 30.210043, 30.053160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.154053, 30.437841, 29.768475>,  <34.055347, 30.574520, 29.597664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.154053, 30.437841, 29.768475>,  <34.318562, 30.210043, 30.053160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.154053, 30.437841, 29.768475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119132, -0.740521, -0.661389,
		-0.903696, -0.356796, 0.236708,
		-0.411268, 0.569495, -0.711712,
		34.030674, 30.608690, 29.554960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.868408, 29.811522, 29.640057>,  <34.318562, 30.210043, 30.053160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.868408, 29.811522, 29.640057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.934753, 30.104490, 29.375921>,  <33.974560, 30.280272, 29.217440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.934753, 30.104490, 29.375921>,  <33.868408, 29.811522, 29.640057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.934753, 30.104490, 29.375921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182925, -0.680844, -0.709218,
		-0.969034, -0.003158, -0.246907,
		0.165865, 0.732422, -0.660339,
		33.984512, 30.324217, 29.177820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.524269, 29.589943, 29.057671>,  <33.868408, 29.811522, 29.640057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.524269, 29.589943, 29.057671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.793568, 29.856009, 28.928488>,  <33.955147, 30.015648, 28.850979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.793568, 29.856009, 28.928488>,  <33.524269, 29.589943, 29.057671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.793568, 29.856009, 28.928488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160420, -0.557760, -0.814352,
		-0.721808, 0.496449, -0.482215,
		0.673244, 0.665163, -0.322955,
		33.995541, 30.055557, 28.831602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.316185, 29.642921, 28.362009>,  <33.524269, 29.589943, 29.057671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.316185, 29.642921, 28.362009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.668839, 29.831547, 28.354599>,  <33.880432, 29.944721, 28.350153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.668839, 29.831547, 28.354599>,  <33.316185, 29.642921, 28.362009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.668839, 29.831547, 28.354599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201405, -0.411469, -0.888892,
		-0.426792, 0.779949, -0.457741,
		0.881637, 0.471564, -0.018526,
		33.933331, 29.973017, 28.349041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.343864, 30.082014, 27.850386>,  <33.316185, 29.642921, 28.362009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.343864, 30.082014, 27.850386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.728378, 29.998077, 27.921824>,  <33.959087, 29.947716, 27.964685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.728378, 29.998077, 27.921824>,  <33.343864, 30.082014, 27.850386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.728378, 29.998077, 27.921824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118628, -0.269841, -0.955570,
		0.248710, 0.939762, -0.234501,
		0.961286, -0.209842, 0.178594,
		34.016766, 29.935125, 27.975401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.745506, 30.339439, 27.273083>,  <33.343864, 30.082014, 27.850386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.745506, 30.339439, 27.273083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.986267, 30.065863, 27.437979>,  <34.130722, 29.901716, 27.536917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.986267, 30.065863, 27.437979>,  <33.745506, 30.339439, 27.273083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.986267, 30.065863, 27.437979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269473, -0.311990, -0.911069,
		0.751733, 0.659458, -0.003482,
		0.601898, -0.683942, 0.412239,
		34.166836, 29.860680, 27.561651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.269482, 30.346981, 26.819017>,  <33.745506, 30.339439, 27.273083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.269482, 30.346981, 26.819017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.316029, 30.007025, 27.024599>,  <34.343956, 29.803051, 27.147947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.316029, 30.007025, 27.024599>,  <34.269482, 30.346981, 26.819017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.316029, 30.007025, 27.024599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322279, -0.457158, -0.828941,
		0.939465, 0.262101, 0.220702,
		0.116370, -0.849888, 0.513953,
		34.350941, 29.752058, 27.178785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.965927, 30.002024, 26.655537>,  <34.269482, 30.346981, 26.819017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.965927, 30.002024, 26.655537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.751675, 29.695967, 26.798454>,  <34.623123, 29.512333, 26.884205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.751675, 29.695967, 26.798454>,  <34.965927, 30.002024, 26.655537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.751675, 29.695967, 26.798454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179080, -0.516404, -0.837411,
		0.825245, -0.384560, 0.413624,
		-0.535632, -0.765141, 0.357293,
		34.590984, 29.466425, 26.905642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.411041, 29.391092, 26.533676>,  <34.965927, 30.002024, 26.655537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.411041, 29.391092, 26.533676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.022369, 29.303957, 26.570312>,  <34.789165, 29.251677, 26.592295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.022369, 29.303957, 26.570312>,  <35.411041, 29.391092, 26.533676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.022369, 29.303957, 26.570312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029116, -0.495002, -0.868404,
		0.234511, -0.841141, 0.487325,
		-0.971677, -0.217839, 0.091593,
		34.730865, 29.238605, 26.597790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.428631, 28.756746, 26.245363>,  <35.411041, 29.391092, 26.533676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.428631, 28.756746, 26.245363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.044842, 28.869350, 26.250563>,  <34.814568, 28.936913, 26.253681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.044842, 28.869350, 26.250563>,  <35.428631, 28.756746, 26.245363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.044842, 28.869350, 26.250563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161880, -0.512812, -0.843101,
		-0.230677, -0.811034, 0.537599,
		-0.959470, 0.281510, 0.012997,
		34.757000, 28.953804, 26.254461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.056034, 28.135450, 26.115393>,  <35.428631, 28.756746, 26.245363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.056034, 28.135450, 26.115393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.818378, 28.435760, 25.999926>,  <34.675785, 28.615948, 25.930645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.818378, 28.435760, 25.999926>,  <35.056034, 28.135450, 26.115393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.818378, 28.435760, 25.999926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052337, -0.394201, -0.917533,
		-0.802655, -0.530037, 0.273505,
		-0.594142, 0.750777, -0.288667,
		34.640137, 28.660994, 25.913326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.617897, 27.830956, 25.633127>,  <35.056034, 28.135450, 26.115393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.617897, 27.830956, 25.633127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.588387, 28.224251, 25.566439>,  <34.570679, 28.460228, 25.526424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.588387, 28.224251, 25.566439>,  <34.617897, 27.830956, 25.633127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.588387, 28.224251, 25.566439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005470, -0.166778, -0.985979,
		-0.997260, -0.073654, 0.006926,
		-0.073776, 0.983240, -0.166724,
		34.566254, 28.519222, 25.516422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.945103, 27.952240, 25.114275>,  <34.617897, 27.830956, 25.633127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.945103, 27.952240, 25.114275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.220024, 28.241922, 25.091852>,  <34.384975, 28.415731, 25.078398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.220024, 28.241922, 25.091852>,  <33.945103, 27.952240, 25.114275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.220024, 28.241922, 25.091852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078866, -0.002318, -0.996883,
		-0.722079, 0.689579, 0.055522,
		0.687300, 0.724207, -0.056058,
		34.426216, 28.459185, 25.075035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.654945, 28.556992, 24.759058>,  <33.945103, 27.952240, 25.114275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.654945, 28.556992, 24.759058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.054199, 28.571516, 24.739393>,  <34.293751, 28.580231, 24.727594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.054199, 28.571516, 24.739393>,  <33.654945, 28.556992, 24.759058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.054199, 28.571516, 24.739393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052573, 0.099877, -0.993610,
		-0.031170, 0.994337, 0.101600,
		0.998131, 0.036312, -0.049162,
		34.353638, 28.582409, 24.724644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.691967, 28.888525, 24.174665>,  <33.654945, 28.556992, 24.759058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.691967, 28.888525, 24.174665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.052433, 28.739899, 24.263966>,  <34.268711, 28.650723, 24.317547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.052433, 28.739899, 24.263966>,  <33.691967, 28.888525, 24.174665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.052433, 28.739899, 24.263966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204626, -0.089386, -0.974750,
		0.382141, 0.924093, -0.004519,
		0.901164, -0.371567, 0.223251,
		34.322781, 28.628429, 24.330940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.202850, 29.103176, 23.711641>,  <33.691967, 28.888525, 24.174665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.202850, 29.103176, 23.711641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.376076, 28.774107, 23.858969>,  <34.480011, 28.576666, 23.947365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.376076, 28.774107, 23.858969>,  <34.202850, 29.103176, 23.711641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.376076, 28.774107, 23.858969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307530, -0.249250, -0.918313,
		0.847277, 0.510961, 0.145055,
		0.433067, -0.822675, 0.368320,
		34.505997, 28.527304, 23.969465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.922878, 29.085775, 23.413004>,  <34.202850, 29.103176, 23.711641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.922878, 29.085775, 23.413004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.816250, 28.720806, 23.537214>,  <34.752274, 28.501825, 23.611740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.816250, 28.720806, 23.537214>,  <34.922878, 29.085775, 23.413004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.816250, 28.720806, 23.537214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465787, -0.404020, -0.787281,
		0.843791, -0.065225, 0.532693,
		-0.266569, -0.912422, 0.310527,
		34.736279, 28.447079, 23.630373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.534767, 28.741879, 23.339645>,  <34.922878, 29.085775, 23.413004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.534767, 28.741879, 23.339645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.235687, 28.476715, 23.355104>,  <35.056240, 28.317617, 23.364380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.235687, 28.476715, 23.355104>,  <35.534767, 28.741879, 23.339645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.235687, 28.476715, 23.355104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324945, -0.416026, -0.849313,
		0.579096, -0.622475, 0.526472,
		-0.747703, -0.662908, 0.038649,
		35.011375, 28.277843, 23.366699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.785984, 28.194324, 23.198048>,  <35.534767, 28.741879, 23.339645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.785984, 28.194324, 23.198048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.404095, 28.106670, 23.117559>,  <35.174961, 28.054077, 23.069267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.404095, 28.106670, 23.117559>,  <35.785984, 28.194324, 23.198048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.404095, 28.106670, 23.117559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267732, -0.337926, -0.902289,
		0.129728, -0.915306, 0.381294,
		-0.954720, -0.219137, -0.201219,
		35.117680, 28.040930, 23.057194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.824196, 27.569883, 22.848719>,  <35.785984, 28.194324, 23.198048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.824196, 27.569883, 22.848719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.464043, 27.710638, 22.746361>,  <35.247952, 27.795092, 22.684946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.464043, 27.710638, 22.746361>,  <35.824196, 27.569883, 22.848719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.464043, 27.710638, 22.746361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207426, -0.169839, -0.963395,
		-0.382469, -0.920505, 0.079929,
		-0.900385, 0.351889, -0.255895,
		35.193928, 27.816204, 22.669592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.716408, 27.220724, 22.217039>,  <35.824196, 27.569883, 22.848719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.716408, 27.220724, 22.217039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.417839, 27.486914, 22.217293>,  <35.238697, 27.646627, 22.217445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.417839, 27.486914, 22.217293>,  <35.716408, 27.220724, 22.217039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.417839, 27.486914, 22.217293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021525, -0.023189, -0.999499,
		-0.665128, -0.746060, 0.031633,
		-0.746420, 0.665475, 0.000635,
		35.193913, 27.686556, 22.217484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.229740, 26.952929, 21.767618>,  <35.716408, 27.220724, 22.217039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.229740, 26.952929, 21.767618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.167503, 27.348055, 21.769062>,  <35.130161, 27.585131, 21.769928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.167503, 27.348055, 21.769062>,  <35.229740, 26.952929, 21.767618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.167503, 27.348055, 21.769062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038084, 0.009650, -0.999228,
		-0.987087, -0.155337, -0.039121,
		-0.155594, 0.987815, 0.003609,
		35.120827, 27.644400, 21.770145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.782421, 27.151699, 21.230806>,  <35.229740, 26.952929, 21.767618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.782421, 27.151699, 21.230806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.942375, 27.510859, 21.304415>,  <35.038349, 27.726355, 21.348579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.942375, 27.510859, 21.304415>,  <34.782421, 27.151699, 21.230806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.942375, 27.510859, 21.304415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065901, 0.172089, -0.982875,
		-0.914192, 0.405168, 0.009644,
		0.399889, 0.897900, 0.184023,
		35.062344, 27.780228, 21.359621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.485256, 27.562111, 20.779453>,  <34.782421, 27.151699, 21.230806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.485256, 27.562111, 20.779453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.800255, 27.783766, 20.887369>,  <34.989254, 27.916759, 20.952120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.800255, 27.783766, 20.887369>,  <34.485256, 27.562111, 20.779453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.800255, 27.783766, 20.887369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096358, 0.321664, -0.941938,
		-0.608746, 0.767765, 0.199912,
		0.787492, 0.554138, 0.269792,
		35.036503, 27.950006, 20.968307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.421543, 28.264633, 20.500706>,  <34.485256, 27.562111, 20.779453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.421543, 28.264633, 20.500706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.817383, 28.227850, 20.544943>,  <35.054886, 28.205780, 20.571486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.817383, 28.227850, 20.544943>,  <34.421543, 28.264633, 20.500706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.817383, 28.227850, 20.544943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140325, 0.448520, -0.882688,
		0.031565, 0.889029, 0.456761,
		0.989602, -0.091957, 0.110595,
		35.114262, 28.200262, 20.578121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.685009, 28.816057, 20.307976>,  <34.421543, 28.264633, 20.500706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.685009, 28.816057, 20.307976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.021194, 28.599720, 20.294634>,  <35.222904, 28.469917, 20.286629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.021194, 28.599720, 20.294634>,  <34.685009, 28.816057, 20.307976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.021194, 28.599720, 20.294634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269250, 0.470244, -0.840461,
		0.470244, 0.697394, 0.540844,
		0.840461, -0.540844, -0.033356,
		35.273335, 28.437468, 20.284628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.291046, 29.236664, 20.113304>,  <34.685009, 28.816057, 20.307976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.291046, 29.236664, 20.113304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.443729, 28.882328, 20.007784>,  <35.535339, 28.669727, 19.944471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.443729, 28.882328, 20.007784>,  <35.291046, 29.236664, 20.113304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.443729, 28.882328, 20.007784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399669, 0.415538, -0.817064,
		0.833405, 0.206447, 0.512656,
		0.381709, -0.885837, -0.263801,
		35.558243, 28.616577, 19.928644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.848965, 29.471123, 19.817076>,  <35.291046, 29.236664, 20.113304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.848965, 29.471123, 19.817076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.827934, 29.081551, 19.728806>,  <35.815315, 28.847807, 19.675842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.827934, 29.081551, 19.728806>,  <35.848965, 29.471123, 19.817076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.827934, 29.081551, 19.728806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446211, 0.174782, -0.877694,
		0.893382, -0.144618, 0.425388,
		-0.052580, -0.973929, -0.220677,
		35.812160, 28.789371, 19.662603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.496143, 29.300922, 19.563951>,  <35.848965, 29.471123, 19.817076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.496143, 29.300922, 19.563951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.236820, 29.035872, 19.413958>,  <36.081226, 28.876841, 19.323961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.236820, 29.035872, 19.413958>,  <36.496143, 29.300922, 19.563951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.236820, 29.035872, 19.413958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314293, 0.215680, -0.924501,
		0.693479, -0.717220, 0.068433,
		-0.648311, -0.662630, -0.374987,
		36.042328, 28.837082, 19.301462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.919025, 28.873413, 19.138369>,  <36.496143, 29.300922, 19.563951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.919025, 28.873413, 19.138369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.536491, 28.819967, 19.034389>,  <36.306973, 28.787899, 18.972002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.536491, 28.819967, 19.034389>,  <36.919025, 28.873413, 19.138369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.536491, 28.819967, 19.034389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251251, 0.078564, -0.964728,
		0.149328, -0.987914, -0.041561,
		-0.956334, -0.133619, -0.259946,
		36.249592, 28.779882, 18.956406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.900078, 28.384626, 18.555748>,  <36.919025, 28.873413, 19.138369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.900078, 28.384626, 18.555748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.580387, 28.625038, 18.555031>,  <36.388573, 28.769285, 18.554600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.580387, 28.625038, 18.555031>,  <36.900078, 28.384626, 18.555748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.580387, 28.625038, 18.555031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175839, 0.230969, -0.956940,
		-0.574735, -0.765126, -0.290281,
		-0.799225, 0.601029, -0.001793,
		36.340618, 28.805347, 18.554493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.769260, 28.235859, 17.893150>,  <36.900078, 28.384626, 18.555748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.769260, 28.235859, 17.893150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.545567, 28.551449, 17.994957>,  <36.411350, 28.740803, 18.056042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.545567, 28.551449, 17.994957>,  <36.769260, 28.235859, 17.893150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.545567, 28.551449, 17.994957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062909, 0.346516, -0.935932,
		-0.826622, -0.507391, -0.243416,
		-0.559231, 0.788975, 0.254518,
		36.377796, 28.788141, 18.071312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.156197, 28.219385, 17.485966>,  <36.769260, 28.235859, 17.893150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.156197, 28.219385, 17.485966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.225277, 28.594316, 17.607021>,  <36.266724, 28.819275, 17.679655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.225277, 28.594316, 17.607021>,  <36.156197, 28.219385, 17.485966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.225277, 28.594316, 17.607021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093658, 0.321489, -0.942270,
		-0.980512, 0.134385, 0.143309,
		0.172699, 0.937329, 0.302637,
		36.277088, 28.875515, 17.697813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.709045, 28.689768, 17.191919>,  <36.156197, 28.219385, 17.485966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.709045, 28.689768, 17.191919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.978123, 28.970829, 17.284670>,  <36.139568, 29.139465, 17.340321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.978123, 28.970829, 17.284670>,  <35.709045, 28.689768, 17.191919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.978123, 28.970829, 17.284670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374873, 0.593827, -0.711927,
		-0.637933, 0.391981, 0.662867,
		0.672690, 0.702652, 0.231879,
		36.179932, 29.181625, 17.354233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.466816, 29.417377, 17.308153>,  <35.709045, 28.689768, 17.191919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.466816, 29.417377, 17.308153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.397930, 29.767200, 17.126829>,  <35.356598, 29.977095, 17.018036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.397930, 29.767200, 17.126829>,  <35.466816, 29.417377, 17.308153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.397930, 29.767200, 17.126829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115517, -0.439079, -0.890991,
		-0.978263, -0.205804, -0.025412,
		-0.172211, 0.874560, -0.453309,
		35.346268, 30.029568, 16.990837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.949944, 29.304836, 16.891983>,  <35.466816, 29.417377, 17.308153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.949944, 29.304836, 16.891983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.101543, 29.638882, 16.732512>,  <35.192501, 29.839310, 16.636829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.101543, 29.638882, 16.732512>,  <34.949944, 29.304836, 16.891983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.101543, 29.638882, 16.732512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102807, -0.390155, -0.914992,
		-0.919670, 0.387764, -0.062011,
		0.378995, 0.835115, -0.398679,
		35.215240, 29.889416, 16.612907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.510830, 29.455591, 16.370382>,  <34.949944, 29.304836, 16.891983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.510830, 29.455591, 16.370382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.826054, 29.687927, 16.288807>,  <35.015186, 29.827330, 16.239862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.826054, 29.687927, 16.288807>,  <34.510830, 29.455591, 16.370382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.826054, 29.687927, 16.288807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026572, -0.298876, -0.953922,
		-0.615029, 0.757163, -0.220097,
		0.788056, 0.580842, -0.203936,
		35.062469, 29.862181, 16.227627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.275349, 29.929462, 15.815889>,  <34.510830, 29.455591, 16.370382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.275349, 29.929462, 15.815889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.670120, 29.865282, 15.809800>,  <34.906982, 29.826773, 15.806147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.670120, 29.865282, 15.809800>,  <34.275349, 29.929462, 15.815889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.670120, 29.865282, 15.809800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105337, -0.570646, -0.814413,
		0.121987, 0.805369, -0.580087,
		0.986926, -0.160452, -0.015224,
		34.966198, 29.817146, 15.805233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.637119, 29.852335, 15.224835>,  <34.275349, 29.929462, 15.815889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.637119, 29.852335, 15.224835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.592743, 30.153019, 14.964798>,  <34.566116, 30.333429, 14.808776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.592743, 30.153019, 14.964798>,  <34.637119, 29.852335, 15.224835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.592743, 30.153019, 14.964798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264909, -0.652832, -0.709671,
		-0.957870, 0.093483, 0.271562,
		-0.110942, 0.751712, -0.650093,
		34.559460, 30.378532, 14.769770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.191898, 29.270327, 15.109644>,  <34.637119, 29.852335, 15.224835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.191898, 29.270327, 15.109644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.484142, 29.538414, 15.057470>,  <35.659489, 29.699266, 15.026166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.484142, 29.538414, 15.057470>,  <35.191898, 29.270327, 15.109644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.484142, 29.538414, 15.057470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241115, 0.431974, 0.869058,
		0.638802, -0.603496, 0.477205,
		0.730613, 0.670217, -0.130434,
		35.703327, 29.739479, 15.018340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.843487, 29.258087, 15.574082>,  <35.191898, 29.270327, 15.109644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.843487, 29.258087, 15.574082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.685223, 29.607250, 15.459898>,  <35.590263, 29.816748, 15.391387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.685223, 29.607250, 15.459898>,  <35.843487, 29.258087, 15.574082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.685223, 29.607250, 15.459898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166759, 0.237375, 0.956998,
		0.903131, 0.426248, 0.051645,
		-0.395659, 0.872907, -0.285462,
		35.566525, 29.869122, 15.374260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.201149, 29.768690, 15.978020>,  <35.843487, 29.258087, 15.574082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.201149, 29.768690, 15.978020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.823021, 29.847826, 15.874311>,  <35.596142, 29.895308, 15.812086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.823021, 29.847826, 15.874311>,  <36.201149, 29.768690, 15.978020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.823021, 29.847826, 15.874311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135520, 0.484810, 0.864056,
		0.296641, 0.851950, -0.431492,
		-0.945325, 0.197839, -0.259271,
		35.539425, 29.907177, 15.796530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.185677, 30.502239, 15.950378>,  <36.201149, 29.768690, 15.978020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.185677, 30.502239, 15.950378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.833942, 30.319431, 16.003899>,  <35.622902, 30.209745, 16.036011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.833942, 30.319431, 16.003899>,  <36.185677, 30.502239, 15.950378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.833942, 30.319431, 16.003899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122781, 0.489061, 0.863564,
		-0.460104, 0.742934, -0.486162,
		-0.879335, -0.457021, 0.133800,
		35.570141, 30.182325, 16.044039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.732471, 30.988539, 16.249979>,  <36.185677, 30.502239, 15.950378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.732471, 30.988539, 16.249979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.563148, 30.639149, 16.346189>,  <35.461555, 30.429514, 16.403915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.563148, 30.639149, 16.346189>,  <35.732471, 30.988539, 16.249979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.563148, 30.639149, 16.346189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271898, 0.375730, 0.885945,
		-0.864224, 0.309627, -0.396545,
		-0.423306, -0.873475, 0.240528,
		35.436157, 30.377106, 16.418348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.121849, 31.201324, 16.367619>,  <35.732471, 30.988539, 16.249979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.121849, 31.201324, 16.367619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.187595, 30.859831, 16.565252>,  <35.227043, 30.654934, 16.683832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.187595, 30.859831, 16.565252>,  <35.121849, 31.201324, 16.367619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.187595, 30.859831, 16.565252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302056, 0.433272, 0.849139,
		-0.939014, -0.288808, -0.186662,
		0.164363, -0.853736, 0.494085,
		35.236904, 30.603710, 16.713478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.577171, 30.953770, 16.724148>,  <35.121849, 31.201324, 16.367619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.577171, 30.953770, 16.724148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.866394, 30.767693, 16.928415>,  <35.039928, 30.656046, 17.050976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.866394, 30.767693, 16.928415>,  <34.577171, 30.953770, 16.724148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.866394, 30.767693, 16.928415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292036, 0.464096, 0.836259,
		-0.626024, -0.753796, 0.199713,
		0.723055, -0.465195, 0.510671,
		35.083309, 30.628134, 17.081617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.270695, 30.746374, 17.356712>,  <34.577171, 30.953770, 16.724148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.270695, 30.746374, 17.356712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.667068, 30.771635, 17.404150>,  <34.904892, 30.786791, 17.432613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.667068, 30.771635, 17.404150>,  <34.270695, 30.746374, 17.356712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.667068, 30.771635, 17.404150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134153, 0.415741, 0.899535,
		0.007502, -0.907288, 0.420443,
		0.990933, 0.063152, 0.118596,
		34.964348, 30.790581, 17.439730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.395210, 30.494959, 18.148232>,  <34.270695, 30.746374, 17.356712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.395210, 30.494959, 18.148232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.721180, 30.688965, 18.021324>,  <34.916763, 30.805368, 17.945179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.721180, 30.688965, 18.021324>,  <34.395210, 30.494959, 18.148232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.721180, 30.688965, 18.021324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093951, 0.429630, 0.898104,
		0.571904, -0.761694, 0.304547,
		0.814923, 0.485016, -0.317269,
		34.965656, 30.834469, 17.926144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.873123, 30.516119, 18.782339>,  <34.395210, 30.494959, 18.148232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.873123, 30.516119, 18.782339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.999290, 30.814465, 18.547665>,  <35.074989, 30.993471, 18.406860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.999290, 30.814465, 18.547665>,  <34.873123, 30.516119, 18.782339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.999290, 30.814465, 18.547665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226698, 0.541119, 0.809814,
		0.921477, -0.388429, 0.001593,
		0.315417, 0.745864, -0.586685,
		35.093914, 31.038223, 18.371658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.563934, 30.740358, 19.004217>,  <34.873123, 30.516119, 18.782339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.563934, 30.740358, 19.004217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.396069, 31.044205, 18.805477>,  <35.295349, 31.226513, 18.686234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.396069, 31.044205, 18.805477>,  <35.563934, 30.740358, 19.004217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.396069, 31.044205, 18.805477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216867, 0.615446, 0.757756,
		0.881391, 0.210253, -0.423018,
		-0.419665, 0.759618, -0.496852,
		35.270168, 31.272091, 18.656422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.056450, 31.418625, 19.139059>,  <35.563934, 30.740358, 19.004217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.056450, 31.418625, 19.139059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.731163, 31.601486, 18.995010>,  <35.535992, 31.711203, 18.908581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.731163, 31.601486, 18.995010>,  <36.056450, 31.418625, 19.139059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.731163, 31.601486, 18.995010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182586, 0.787988, 0.587995,
		0.552576, 0.412415, -0.724275,
		-0.813217, 0.457154, -0.360122,
		35.487198, 31.738632, 18.886974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.168530, 32.154324, 19.074192>,  <36.056450, 31.418625, 19.139059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.168530, 32.154324, 19.074192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.774082, 32.105690, 19.119413>,  <35.537415, 32.076508, 19.146547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.774082, 32.105690, 19.119413>,  <36.168530, 32.154324, 19.074192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.774082, 32.105690, 19.119413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004756, 0.659975, 0.751273,
		-0.165959, 0.741383, -0.650237,
		-0.986121, -0.121588, 0.113055,
		35.478245, 32.069214, 19.153330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.869400, 32.903107, 19.242697>,  <36.168530, 32.154324, 19.074192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.869400, 32.903107, 19.242697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.608513, 32.631142, 19.376762>,  <35.451981, 32.467964, 19.457203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.608513, 32.631142, 19.376762>,  <35.869400, 32.903107, 19.242697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.608513, 32.631142, 19.376762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159085, 0.555078, 0.816444,
		-0.741151, 0.479179, -0.470194,
		-0.652217, -0.679909, 0.335166,
		35.412849, 32.427170, 19.477312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.313488, 33.324039, 19.535265>,  <35.869400, 32.903107, 19.242697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.313488, 33.324039, 19.535265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.289787, 32.955063, 19.687891>,  <35.275566, 32.733677, 19.779467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.289787, 32.955063, 19.687891>,  <35.313488, 33.324039, 19.535265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.289787, 32.955063, 19.687891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087456, 0.385563, 0.918528,
		-0.994405, 0.021057, -0.103519,
		-0.059255, -0.922441, 0.381564,
		35.272011, 32.678329, 19.802361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.871292, 33.428658, 20.047646>,  <35.313488, 33.324039, 19.535265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.871292, 33.428658, 20.047646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.949203, 33.057995, 20.176245>,  <34.995953, 32.835598, 20.253405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.949203, 33.057995, 20.176245>,  <34.871292, 33.428658, 20.047646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.949203, 33.057995, 20.176245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143915, 0.297227, 0.943899,
		-0.970231, -0.230123, -0.075466,
		0.194782, -0.926661, 0.321497,
		35.007637, 32.779995, 20.272694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.292416, 33.130306, 20.337717>,  <34.871292, 33.428658, 20.047646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.292416, 33.130306, 20.337717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.602814, 32.940727, 20.504189>,  <34.789051, 32.826981, 20.604071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.602814, 32.940727, 20.504189>,  <34.292416, 33.130306, 20.337717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.602814, 32.940727, 20.504189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414579, 0.114007, 0.902844,
		-0.475348, -0.873141, -0.108020,
		0.775995, -0.473948, 0.416179,
		34.835613, 32.798542, 20.629042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.989494, 33.135433, 20.939093>,  <34.292416, 33.130306, 20.337717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.989494, 33.135433, 20.939093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.348423, 32.978519, 21.020012>,  <34.563782, 32.884369, 21.068563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.348423, 32.978519, 21.020012>,  <33.989494, 33.135433, 20.939093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.348423, 32.978519, 21.020012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265108, -0.112567, 0.957626,
		-0.352893, -0.912928, -0.205007,
		0.897321, -0.392289, 0.202301,
		34.617619, 32.860832, 21.080702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.935047, 32.446129, 21.307814>,  <33.989494, 33.135433, 20.939093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.935047, 32.446129, 21.307814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.270638, 32.626873, 21.429104>,  <34.471992, 32.735317, 21.501879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.270638, 32.626873, 21.429104>,  <33.935047, 32.446129, 21.307814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.270638, 32.626873, 21.429104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300245, -0.080358, 0.950471,
		0.453846, -0.888463, 0.068251,
		0.838973, 0.451859, 0.303227,
		34.522331, 32.762432, 21.520071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.151321, 32.170280, 21.936344>,  <33.935047, 32.446129, 21.307814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.151321, 32.170280, 21.936344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.354599, 32.514534, 21.949234>,  <34.476566, 32.721088, 21.956968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.354599, 32.514534, 21.949234>,  <34.151321, 32.170280, 21.936344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.354599, 32.514534, 21.949234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328530, 0.159133, 0.930991,
		0.796119, -0.483712, 0.363616,
		0.508195, 0.860639, 0.032225,
		34.507057, 32.772724, 21.958902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.531727, 32.182625, 22.574654>,  <34.151321, 32.170280, 21.936344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.531727, 32.182625, 22.574654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.503731, 32.569141, 22.475559>,  <34.486931, 32.801052, 22.416103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.503731, 32.569141, 22.475559>,  <34.531727, 32.182625, 22.574654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.503731, 32.569141, 22.475559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290096, 0.217895, 0.931862,
		0.954434, 0.137093, 0.265067,
		-0.069995, 0.966296, -0.247736,
		34.482731, 32.859032, 22.401237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.821316, 32.505856, 23.153040>,  <34.531727, 32.182625, 22.574654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.821316, 32.505856, 23.153040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.620598, 32.794106, 22.961660>,  <34.500168, 32.967056, 22.846832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.620598, 32.794106, 22.961660>,  <34.821316, 32.505856, 23.153040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.620598, 32.794106, 22.961660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352185, 0.334994, 0.873925,
		0.790045, 0.607030, 0.085694,
		-0.501792, 0.720620, -0.478447,
		34.470062, 33.010292, 22.818127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.892857, 32.935802, 23.636108>,  <34.821316, 32.505856, 23.153040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.892857, 32.935802, 23.636108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.598457, 33.053776, 23.392363>,  <34.421818, 33.124557, 23.246115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.598457, 33.053776, 23.392363>,  <34.892857, 32.935802, 23.636108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.598457, 33.053776, 23.392363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511242, 0.347904, 0.785872,
		0.443776, 0.889933, -0.105277,
		-0.735999, 0.294929, -0.609362,
		34.377659, 33.142254, 23.209555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.652054, 33.650806, 23.877251>,  <34.892857, 32.935802, 23.636108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.652054, 33.650806, 23.877251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.371471, 33.469563, 23.657198>,  <34.203121, 33.360817, 23.525166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.371471, 33.469563, 23.657198>,  <34.652054, 33.650806, 23.877251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.371471, 33.469563, 23.657198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660588, 0.123584, 0.740507,
		-0.267544, 0.882847, -0.386008,
		-0.701459, -0.453110, -0.550134,
		34.161034, 33.333630, 23.492157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.095737, 34.144932, 23.841547>,  <34.652054, 33.650806, 23.877251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.095737, 34.144932, 23.841547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.950897, 33.782944, 23.752182>,  <33.863995, 33.565750, 23.698563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.950897, 33.782944, 23.752182>,  <34.095737, 34.144932, 23.841547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.950897, 33.782944, 23.752182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501264, -0.013025, 0.865196,
		-0.785887, 0.425274, -0.448913,
		-0.362099, -0.904971, -0.223410,
		33.842266, 33.511452, 23.685160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.411831, 34.137772, 23.890575>,  <34.095737, 34.144932, 23.841547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.411831, 34.137772, 23.890575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.540279, 33.763935, 23.951801>,  <33.617348, 33.539635, 23.988537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.540279, 33.763935, 23.951801>,  <33.411831, 34.137772, 23.890575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.540279, 33.763935, 23.951801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607623, -0.079353, 0.790251,
		-0.726413, -0.346771, -0.593359,
		0.321120, -0.934587, 0.153063,
		33.636616, 33.483559, 23.997721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.815289, 33.778614, 23.861656>,  <33.411831, 34.137772, 23.890575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.815289, 33.778614, 23.861656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.074635, 33.539585, 24.050348>,  <33.230244, 33.396168, 24.163565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.074635, 33.539585, 24.050348>,  <32.815289, 33.778614, 23.861656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.074635, 33.539585, 24.050348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630605, -0.074358, 0.772534,
		-0.426566, -0.798361, -0.425042,
		0.648366, -0.597570, 0.471731,
		33.269146, 33.360313, 24.191868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.435833, 33.150860, 24.143450>,  <32.815289, 33.778614, 23.861656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.435833, 33.150860, 24.143450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.771381, 33.189304, 24.357759>,  <32.972710, 33.212372, 24.486345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.771381, 33.189304, 24.357759>,  <32.435833, 33.150860, 24.143450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.771381, 33.189304, 24.357759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543843, 0.106414, 0.832413,
		0.022991, -0.989666, 0.141537,
		0.838872, 0.096113, 0.535776,
		33.023045, 33.218140, 24.518492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.293541, 32.851910, 24.747406>,  <32.435833, 33.150860, 24.143450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.293541, 32.851910, 24.747406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.630928, 33.037682, 24.855377>,  <32.833363, 33.149143, 24.920160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.630928, 33.037682, 24.855377>,  <32.293541, 32.851910, 24.747406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.630928, 33.037682, 24.855377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353277, 0.101055, 0.930045,
		0.404660, -0.879826, 0.249309,
		0.843472, 0.464428, 0.269929,
		32.883968, 33.177010, 24.936356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.575706, 32.431755, 25.325859>,  <32.293541, 32.851910, 24.747406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.575706, 32.431755, 25.325859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.738350, 32.796970, 25.338650>,  <32.835938, 33.016102, 25.346325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.738350, 32.796970, 25.338650>,  <32.575706, 32.431755, 25.325859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.738350, 32.796970, 25.338650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241650, 0.073729, 0.967558,
		0.881064, -0.401146, 0.250616,
		0.406610, 0.913042, 0.031977,
		32.860332, 33.070885, 25.348244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.939209, 32.391899, 25.980282>,  <32.575706, 32.431755, 25.325859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.939209, 32.391899, 25.980282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.857082, 32.773075, 25.891068>,  <32.807804, 33.001781, 25.837540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.857082, 32.773075, 25.891068>,  <32.939209, 32.391899, 25.980282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.857082, 32.773075, 25.891068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089631, 0.245241, 0.965310,
		0.974582, 0.178207, -0.135766,
		-0.205321, 0.952942, -0.223034,
		32.795486, 33.058956, 25.824158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.339924, 32.765526, 26.453390>,  <32.939209, 32.391899, 25.980282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.339924, 32.765526, 26.453390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.084091, 33.041134, 26.317039>,  <32.930592, 33.206497, 26.235229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.084091, 33.041134, 26.317039>,  <33.339924, 32.765526, 26.453390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.084091, 33.041134, 26.317039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011546, 0.434770, 0.900468,
		0.768640, 0.579855, -0.270113,
		-0.639578, 0.689017, -0.340876,
		32.892220, 33.247837, 26.214777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.589619, 33.414036, 26.548363>,  <33.339924, 32.765526, 26.453390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.589619, 33.414036, 26.548363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.191277, 33.441422, 26.524424>,  <32.952271, 33.457851, 26.510059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.191277, 33.441422, 26.524424>,  <33.589619, 33.414036, 26.548363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.191277, 33.441422, 26.524424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017084, 0.505576, 0.862613,
		0.089313, 0.860061, -0.502312,
		-0.995857, 0.068461, -0.059848,
		32.892521, 33.461960, 26.506470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.436367, 34.043667, 26.935114>,  <33.589619, 33.414036, 26.548363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.436367, 34.043667, 26.935114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.080132, 33.864735, 26.902235>,  <32.866390, 33.757378, 26.882507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.080132, 33.864735, 26.902235>,  <33.436367, 34.043667, 26.935114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.080132, 33.864735, 26.902235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209677, 0.243433, 0.946982,
		-0.403602, 0.860603, -0.310592,
		-0.890584, -0.447328, -0.082198,
		32.812958, 33.730537, 26.877575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.952480, 34.516502, 27.304821>,  <33.436367, 34.043667, 26.935114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.952480, 34.516502, 27.304821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.758259, 34.168072, 27.275236>,  <32.641727, 33.959015, 27.257484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.758259, 34.168072, 27.275236>,  <32.952480, 34.516502, 27.304821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.758259, 34.168072, 27.275236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320967, 0.098934, 0.941909,
		-0.813155, 0.481083, -0.327623,
		-0.485550, -0.871075, -0.073963,
		32.612595, 33.906750, 27.253048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.266403, 34.672523, 27.496552>,  <32.952480, 34.516502, 27.304821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.266403, 34.672523, 27.496552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.331558, 34.281601, 27.550722>,  <32.370651, 34.047047, 27.583225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.331558, 34.281601, 27.550722>,  <32.266403, 34.672523, 27.496552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.331558, 34.281601, 27.550722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387540, 0.062853, 0.919708,
		-0.907348, -0.202293, -0.368507,
		0.162888, -0.977306, 0.135426,
		32.380424, 33.988411, 27.591351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.606451, 34.373268, 27.771082>,  <32.266403, 34.672523, 27.496552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.606451, 34.373268, 27.771082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.882957, 34.104877, 27.878374>,  <32.048862, 33.943844, 27.942749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.882957, 34.104877, 27.878374>,  <31.606451, 34.373268, 27.771082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.882957, 34.104877, 27.878374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416678, -0.066859, 0.906592,
		-0.590366, -0.738461, -0.325797,
		0.691265, -0.670974, 0.268228,
		32.090336, 33.903587, 27.958843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.303169, 33.995079, 28.323412>,  <31.606451, 34.373268, 27.771082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.303169, 33.995079, 28.323412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.698473, 33.940464, 28.350836>,  <31.935656, 33.907696, 28.367290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.698473, 33.940464, 28.350836>,  <31.303169, 33.995079, 28.323412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.698473, 33.940464, 28.350836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081769, -0.093615, 0.992245,
		-0.129062, -0.986201, -0.103681,
		0.988259, -0.136538, 0.068558,
		31.994951, 33.899502, 28.371403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.332031, 33.497726, 28.782595>,  <31.303169, 33.995079, 28.323412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.332031, 33.497726, 28.782595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.686447, 33.683006, 28.790403>,  <31.899096, 33.794174, 28.795090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.686447, 33.683006, 28.790403>,  <31.332031, 33.497726, 28.782595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.686447, 33.683006, 28.790403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006478, -0.054475, 0.998494,
		0.463566, -0.884578, -0.051267,
		0.886038, 0.463200, 0.019523,
		31.952259, 33.821968, 28.796261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.700491, 33.101723, 29.370445>,  <31.332031, 33.497726, 28.782595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.700491, 33.101723, 29.370445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.863800, 33.461288, 29.306871>,  <31.961786, 33.677029, 29.268726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.863800, 33.461288, 29.306871>,  <31.700491, 33.101723, 29.370445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.863800, 33.461288, 29.306871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066996, 0.203144, 0.976854,
		0.910398, -0.388176, 0.143162,
		0.408274, 0.898917, -0.158935,
		31.986282, 33.730965, 29.259192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.024673, 33.211807, 29.993546>,  <31.700491, 33.101723, 29.370445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.024673, 33.211807, 29.993546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.046650, 33.582939, 29.845970>,  <32.059837, 33.805618, 29.757425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.046650, 33.582939, 29.845970>,  <32.024673, 33.211807, 29.993546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.046650, 33.582939, 29.845970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104077, 0.372804, 0.922055,
		0.993051, -0.012262, 0.117048,
		0.054942, 0.927829, -0.368937,
		32.063133, 33.861286, 29.735289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.371010, 33.508625, 30.416515>,  <32.024673, 33.211807, 29.993546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.371010, 33.508625, 30.416515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.216461, 33.842178, 30.258852>,  <32.123730, 34.042309, 30.164255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.216461, 33.842178, 30.258852>,  <32.371010, 33.508625, 30.416515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.216461, 33.842178, 30.258852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138815, 0.369902, 0.918642,
		0.911837, 0.409654, -0.027165,
		-0.386373, 0.833880, -0.394156,
		32.100548, 34.092342, 30.140606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.728065, 34.069984, 30.763567>,  <32.371010, 33.508625, 30.416515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.728065, 34.069984, 30.763567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.380245, 34.190994, 30.607431>,  <32.171555, 34.263599, 30.513750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.380245, 34.190994, 30.607431>,  <32.728065, 34.069984, 30.763567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.380245, 34.190994, 30.607431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230710, 0.449998, 0.862713,
		0.436644, 0.840226, -0.321499,
		-0.869548, 0.302526, -0.390338,
		32.119381, 34.281754, 30.490330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.643074, 34.843727, 30.963448>,  <32.728065, 34.069984, 30.763567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.643074, 34.843727, 30.963448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.283852, 34.698448, 30.864183>,  <32.068317, 34.611282, 30.804625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.283852, 34.698448, 30.864183>,  <32.643074, 34.843727, 30.963448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.283852, 34.698448, 30.864183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411506, 0.494331, 0.765702,
		-0.155428, 0.789763, -0.593394,
		-0.898056, -0.363197, -0.248159,
		32.014435, 34.589489, 30.789736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.189335, 35.405315, 30.879086>,  <32.643074, 34.843727, 30.963448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.189335, 35.405315, 30.879086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.005371, 35.065243, 30.981592>,  <31.894993, 34.861198, 31.043097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.005371, 35.065243, 30.981592>,  <32.189335, 35.405315, 30.879086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.005371, 35.065243, 30.981592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460921, 0.475245, 0.749463,
		-0.758968, 0.226569, -0.610437,
		-0.459912, -0.850181, 0.256265,
		31.867397, 34.810188, 31.058472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.520981, 35.973572, 30.616226>,  <32.189335, 35.405315, 30.879086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.520981, 35.973572, 30.616226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.889599, 35.954708, 30.770380>,  <33.110771, 35.943390, 30.862873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.889599, 35.954708, 30.770380>,  <32.520981, 35.973572, 30.616226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.889599, 35.954708, 30.770380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382589, -0.058761, -0.922048,
		0.066127, 0.997158, -0.036109,
		0.921549, -0.047157, 0.385387,
		33.166065, 35.940559, 30.885996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.022881, 36.222057, 30.044895>,  <32.520981, 35.973572, 30.616226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.022881, 36.222057, 30.044895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.291996, 36.056065, 30.289892>,  <33.453465, 35.956470, 30.436890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.291996, 36.056065, 30.289892>,  <33.022881, 36.222057, 30.044895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.291996, 36.056065, 30.289892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601407, -0.175395, -0.779452,
		0.430883, 0.892765, 0.131567,
		0.672792, -0.414978, 0.612490,
		33.493832, 35.931572, 30.473639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.669830, 36.538425, 30.067656>,  <33.022881, 36.222057, 30.044895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.669830, 36.538425, 30.067656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.752827, 36.161247, 30.171814>,  <33.802624, 35.934940, 30.234310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.752827, 36.161247, 30.171814>,  <33.669830, 36.538425, 30.067656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.752827, 36.161247, 30.171814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623508, -0.077637, -0.777952,
		0.753782, 0.323775, 0.571824,
		0.207487, -0.942943, 0.260397,
		33.815071, 35.878365, 30.249933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.312542, 36.540543, 29.884504>,  <33.669830, 36.538425, 30.067656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.312542, 36.540543, 29.884504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.190926, 36.160458, 29.911795>,  <34.117958, 35.932407, 29.928169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.190926, 36.160458, 29.911795>,  <34.312542, 36.540543, 29.884504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.190926, 36.160458, 29.911795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571778, -0.239292, -0.784735,
		0.761992, -0.199580, 0.616065,
		-0.304037, -0.950214, 0.068223,
		34.099716, 35.875393, 29.932262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.882771, 36.066975, 29.753777>,  <34.312542, 36.540543, 29.884504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.882771, 36.066975, 29.753777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.555470, 35.856968, 29.660118>,  <34.359089, 35.730965, 29.603922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.555470, 35.856968, 29.660118>,  <34.882771, 36.066975, 29.753777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.555470, 35.856968, 29.660118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459022, -0.351507, -0.815930,
		0.346072, -0.775113, 0.528615,
		-0.818250, -0.525016, -0.234147,
		34.309994, 35.699463, 29.589874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.148590, 35.414074, 29.645409>,  <34.882771, 36.066975, 29.753777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.148590, 35.414074, 29.645409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.793053, 35.398609, 29.462780>,  <34.579731, 35.389328, 29.353203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.793053, 35.398609, 29.462780>,  <35.148590, 35.414074, 29.645409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.793053, 35.398609, 29.462780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413242, -0.498113, -0.762309,
		-0.197947, -0.866250, 0.458725,
		-0.888846, -0.038667, -0.456571,
		34.526398, 35.387009, 29.325809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.231022, 34.725761, 29.303490>,  <35.148590, 35.414074, 29.645409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.231022, 34.725761, 29.303490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.920589, 34.915119, 29.136827>,  <34.734329, 35.028732, 29.036831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.920589, 34.915119, 29.136827>,  <35.231022, 34.725761, 29.303490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.920589, 34.915119, 29.136827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327466, -0.262128, -0.907775,
		-0.538950, -0.840945, 0.048412,
		-0.776079, 0.473392, -0.416655,
		34.687767, 35.057137, 29.011831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.932388, 34.215496, 28.829803>,  <35.231022, 34.725761, 29.303490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.932388, 34.215496, 28.829803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.812595, 34.579735, 28.715872>,  <34.740719, 34.798279, 28.647512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.812595, 34.579735, 28.715872>,  <34.932388, 34.215496, 28.829803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.812595, 34.579735, 28.715872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246862, -0.214413, -0.945033,
		-0.921612, -0.353336, -0.160578,
		-0.299484, 0.910594, -0.284830,
		34.722752, 34.852913, 28.630423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.819416, 34.114994, 28.111744>,  <34.932388, 34.215496, 28.829803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.819416, 34.114994, 28.111744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.799404, 34.514423, 28.104351>,  <34.787395, 34.754082, 28.099915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.799404, 34.514423, 28.104351>,  <34.819416, 34.114994, 28.111744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.799404, 34.514423, 28.104351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303117, -0.002453, -0.952950,
		-0.951639, -0.053277, -0.302563,
		-0.050028, 0.998577, -0.018484,
		34.784397, 34.813995, 28.098806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.422226, 34.292229, 27.463261>,  <34.819416, 34.114994, 28.111744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.422226, 34.292229, 27.463261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.646156, 34.602509, 27.579807>,  <34.780514, 34.788677, 27.649734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.646156, 34.602509, 27.579807>,  <34.422226, 34.292229, 27.463261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.646156, 34.602509, 27.579807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373071, 0.078016, -0.924517,
		-0.739874, 0.626267, -0.245714,
		0.559825, 0.775695, 0.291364,
		34.814102, 34.835217, 27.667217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.235184, 34.885700, 27.009817>,  <34.422226, 34.292229, 27.463261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.235184, 34.885700, 27.009817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.599995, 34.956657, 27.157726>,  <34.818882, 34.999229, 27.246471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.599995, 34.956657, 27.157726>,  <34.235184, 34.885700, 27.009817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.599995, 34.956657, 27.157726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321701, 0.249795, -0.913297,
		-0.254376, 0.951912, 0.170754,
		0.912031, 0.177388, 0.369773,
		34.873604, 35.009872, 27.268658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.360458, 35.446072, 26.682013>,  <34.235184, 34.885700, 27.009817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.360458, 35.446072, 26.682013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.716251, 35.310360, 26.804459>,  <34.929729, 35.228935, 26.877926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.716251, 35.310360, 26.804459>,  <34.360458, 35.446072, 26.682013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.716251, 35.310360, 26.804459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361751, 0.113521, -0.925337,
		0.279194, 0.933812, 0.223708,
		0.889487, -0.339275, 0.306113,
		34.983097, 35.208576, 26.896292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.946888, 35.952763, 26.482641>,  <34.360458, 35.446072, 26.682013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.946888, 35.952763, 26.482641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.089676, 35.581436, 26.524229>,  <35.175346, 35.358643, 26.549183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.089676, 35.581436, 26.524229>,  <34.946888, 35.952763, 26.482641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.089676, 35.581436, 26.524229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434109, 0.066307, -0.898417,
		0.827118, 0.365840, 0.426658,
		0.356967, -0.928313, 0.103971,
		35.196766, 35.302944, 26.555420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.645416, 35.958179, 26.175077>,  <34.946888, 35.952763, 26.482641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.645416, 35.958179, 26.175077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.540657, 35.572151, 26.177671>,  <35.477802, 35.340534, 26.179228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.540657, 35.572151, 26.177671>,  <35.645416, 35.958179, 26.175077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.540657, 35.572151, 26.177671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420033, -0.120033, -0.899536,
		0.868897, -0.232863, 0.436799,
		-0.261898, -0.965074, 0.006486,
		35.462086, 35.282631, 26.179617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.247746, 35.647831, 26.212564>,  <35.645416, 35.958179, 26.175077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.247746, 35.647831, 26.212564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.988441, 35.361301, 26.109299>,  <35.832859, 35.189384, 26.047340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.988441, 35.361301, 26.109299>,  <36.247746, 35.647831, 26.212564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.988441, 35.361301, 26.109299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598894, -0.270306, -0.753831,
		0.470202, -0.643287, 0.604228,
		-0.648256, -0.716322, -0.258162,
		35.793964, 35.146404, 26.031851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.559757, 35.008118, 26.088587>,  <36.247746, 35.647831, 26.212564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.559757, 35.008118, 26.088587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.218742, 35.017246, 25.879717>,  <36.014133, 35.022724, 25.754395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.218742, 35.017246, 25.879717>,  <36.559757, 35.008118, 26.088587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.218742, 35.017246, 25.879717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486625, -0.329924, -0.808916,
		-0.190739, -0.943732, 0.270165,
		-0.852534, 0.022823, -0.522173,
		35.962982, 35.024094, 25.723064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.757187, 34.547928, 25.621605>,  <36.559757, 35.008118, 26.088587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.757187, 34.547928, 25.621605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.423016, 34.679180, 25.445248>,  <36.222511, 34.757931, 25.339434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.423016, 34.679180, 25.445248>,  <36.757187, 34.547928, 25.621605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.423016, 34.679180, 25.445248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341054, -0.319541, -0.884068,
		-0.430975, -0.888944, 0.155042,
		-0.835429, 0.328134, -0.440892,
		36.172386, 34.777618, 25.312981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.343094, 33.931221, 25.205723>,  <36.757187, 34.547928, 25.621605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.343094, 33.931221, 25.205723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.226433, 34.284203, 25.058090>,  <36.156437, 34.495991, 24.969511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.226433, 34.284203, 25.058090>,  <36.343094, 33.931221, 25.205723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.226433, 34.284203, 25.058090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273315, -0.292887, -0.916251,
		-0.916645, -0.368102, -0.155765,
		-0.291652, 0.882450, -0.369081,
		36.138939, 34.548939, 24.947367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.165279, 33.713749, 24.604065>,  <36.343094, 33.931221, 25.205723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.165279, 33.713749, 24.604065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.161961, 34.107845, 24.535683>,  <36.159969, 34.344303, 24.494654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.161961, 34.107845, 24.535683>,  <36.165279, 33.713749, 24.604065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.161961, 34.107845, 24.535683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224090, -0.164781, -0.960537,
		-0.974533, -0.046276, -0.219416,
		-0.008294, 0.985244, -0.170954,
		36.159473, 34.403419, 24.484396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.815121, 33.831646, 23.910568>,  <36.165279, 33.713749, 24.604065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.815121, 33.831646, 23.910568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.014065, 34.172047, 23.978004>,  <36.133430, 34.376286, 24.018467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.014065, 34.172047, 23.978004>,  <35.815121, 33.831646, 23.910568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.014065, 34.172047, 23.978004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413284, -0.061555, -0.908520,
		-0.762774, 0.521542, -0.382320,
		0.497365, 0.851002, 0.168593,
		36.163273, 34.427349, 24.028582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.623528, 34.318264, 23.386484>,  <35.815121, 33.831646, 23.910568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.623528, 34.318264, 23.386484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.992859, 34.377583, 23.528168>,  <36.214458, 34.413174, 23.613178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.992859, 34.377583, 23.528168>,  <35.623528, 34.318264, 23.386484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.992859, 34.377583, 23.528168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374879, -0.148249, -0.915144,
		-0.083200, 0.977768, -0.192475,
		0.923333, 0.148295, 0.354210,
		36.269859, 34.422070, 23.634430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.804680, 34.836338, 22.981041>,  <35.623528, 34.318264, 23.386484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.804680, 34.836338, 22.981041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.151333, 34.673237, 23.096060>,  <36.359325, 34.575375, 23.165071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.151333, 34.673237, 23.096060>,  <35.804680, 34.836338, 22.981041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.151333, 34.673237, 23.096060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310409, -0.010584, -0.950544,
		0.390633, 0.913030, 0.117399,
		0.866632, -0.407756, 0.287547,
		36.411324, 34.550911, 23.182323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.499302, 35.268635, 22.617851>,  <35.804680, 34.836338, 22.981041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.499302, 35.268635, 22.617851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.621262, 34.900574, 22.716114>,  <36.694439, 34.679737, 22.775072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.621262, 34.900574, 22.716114>,  <36.499302, 35.268635, 22.617851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.621262, 34.900574, 22.716114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456014, -0.085398, -0.885866,
		0.836114, 0.382125, 0.393566,
		0.304901, -0.920156, 0.245657,
		36.712730, 34.624527, 22.789810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.044262, 35.139584, 22.201582>,  <36.499302, 35.268635, 22.617851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.044262, 35.139584, 22.201582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.002785, 34.762653, 22.328873>,  <36.977898, 34.536495, 22.405247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.002785, 34.762653, 22.328873>,  <37.044262, 35.139584, 22.201582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.002785, 34.762653, 22.328873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386874, -0.332969, -0.859919,
		0.916284, 0.033942, 0.399090,
		-0.103698, -0.942327, 0.318225,
		36.971676, 34.479954, 22.424341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.603394, 34.789940, 21.990776>,  <37.044262, 35.139584, 22.201582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.603394, 34.789940, 21.990776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.361382, 34.473846, 22.029697>,  <37.216175, 34.284191, 22.053049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.361382, 34.473846, 22.029697>,  <37.603394, 34.789940, 21.990776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.361382, 34.473846, 22.029697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434528, -0.430127, -0.791313,
		0.667173, -0.436491, 0.603619,
		-0.605034, -0.790232, 0.097302,
		37.179871, 34.236778, 22.058887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.061836, 34.150021, 21.966238>,  <37.603394, 34.789940, 21.990776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.061836, 34.150021, 21.966238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.690964, 34.038189, 21.866493>,  <37.468441, 33.971092, 21.806646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.690964, 34.038189, 21.866493>,  <38.061836, 34.150021, 21.966238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.690964, 34.038189, 21.866493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357591, -0.462046, -0.811568,
		0.111680, -0.841636, 0.528372,
		-0.927176, -0.279577, -0.249360,
		37.412811, 33.954315, 21.791685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.129704, 33.451622, 21.894909>,  <38.061836, 34.150021, 21.966238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.129704, 33.451622, 21.894909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.799889, 33.538998, 21.686134>,  <37.601997, 33.591423, 21.560869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.799889, 33.538998, 21.686134>,  <38.129704, 33.451622, 21.894909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.799889, 33.538998, 21.686134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359851, -0.509398, -0.781678,
		-0.436620, -0.832345, 0.341416,
		-0.824542, 0.218437, -0.521934,
		37.552525, 33.604530, 21.529554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.053802, 32.891495, 21.460970>,  <38.129704, 33.451622, 21.894909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.053802, 32.891495, 21.460970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.808296, 33.145889, 21.273857>,  <37.660992, 33.298527, 21.161591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.808296, 33.145889, 21.273857>,  <38.053802, 32.891495, 21.460970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.808296, 33.145889, 21.273857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258510, -0.397952, -0.880231,
		-0.745968, -0.661179, 0.079839,
		-0.613763, 0.635985, -0.467781,
		37.624168, 33.336685, 21.133522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.789974, 32.464218, 20.997429>,  <38.053802, 32.891495, 21.460970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.789974, 32.464218, 20.997429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.702274, 32.834587, 20.874399>,  <37.649654, 33.056808, 20.800581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.702274, 32.834587, 20.874399>,  <37.789974, 32.464218, 20.997429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.702274, 32.834587, 20.874399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159541, -0.276979, -0.947538,
		-0.962537, -0.256816, -0.086996,
		-0.219247, 0.925920, -0.307575,
		37.636501, 33.112362, 20.782127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.444630, 32.322792, 20.297176>,  <37.789974, 32.464218, 20.997429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.444630, 32.322792, 20.297176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.611317, 32.684296, 20.336302>,  <37.711330, 32.901196, 20.359777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.611317, 32.684296, 20.336302>,  <37.444630, 32.322792, 20.297176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.611317, 32.684296, 20.336302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401698, -0.086552, -0.911673,
		-0.815464, 0.419206, -0.399105,
		0.416722, 0.903756, 0.097814,
		37.736332, 32.955421, 20.365646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.213169, 32.660004, 19.709068>,  <37.444630, 32.322792, 20.297176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.213169, 32.660004, 19.709068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.537865, 32.850170, 19.844748>,  <37.732681, 32.964272, 19.926155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.537865, 32.850170, 19.844748>,  <37.213169, 32.660004, 19.709068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.537865, 32.850170, 19.844748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403199, -0.036035, -0.914402,
		-0.422500, 0.879022, -0.220939,
		0.811742, 0.475417, 0.339196,
		37.781387, 32.992794, 19.946507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.366272, 33.125938, 19.219387>,  <37.213169, 32.660004, 19.709068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.366272, 33.125938, 19.219387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.712177, 33.165367, 19.416353>,  <37.919720, 33.189022, 19.534533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.712177, 33.165367, 19.416353>,  <37.366272, 33.125938, 19.219387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.712177, 33.165367, 19.416353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490587, 0.043696, -0.870296,
		-0.107300, 0.994170, -0.010569,
		0.864761, 0.098568, 0.492415,
		37.971607, 33.194939, 19.564077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.805347, 33.690296, 18.867516>,  <37.366272, 33.125938, 19.219387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.805347, 33.690296, 18.867516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.066441, 33.447502, 19.048845>,  <38.223099, 33.301826, 19.157644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.066441, 33.447502, 19.048845>,  <37.805347, 33.690296, 18.867516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.066441, 33.447502, 19.048845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418863, -0.209453, -0.883563,
		0.631259, 0.766616, 0.117526,
		0.652737, -0.606984, 0.453326,
		38.262260, 33.265408, 19.184843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.527500, 33.843708, 18.587313>,  <37.805347, 33.690296, 18.867516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.527500, 33.843708, 18.587313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.522255, 33.477928, 18.749111>,  <38.519108, 33.258461, 18.846191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.522255, 33.477928, 18.749111>,  <38.527500, 33.843708, 18.587313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.522255, 33.477928, 18.749111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355220, -0.382404, -0.852986,
		0.934691, 0.132504, 0.329842,
		-0.013108, -0.914445, 0.404498,
		38.518322, 33.203594, 18.870461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.186333, 33.537037, 18.401276>,  <38.527500, 33.843708, 18.587313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.186333, 33.537037, 18.401276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.989632, 33.208035, 18.515591>,  <38.871613, 33.010635, 18.584179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.989632, 33.208035, 18.515591>,  <39.186333, 33.537037, 18.401276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.989632, 33.208035, 18.515591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402919, -0.505903, -0.762705,
		0.771906, -0.259911, 0.580179,
		-0.491750, -0.822502, 0.285786,
		38.842106, 32.961285, 18.601326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.671787, 32.968052, 18.462524>,  <39.186333, 33.537037, 18.401276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.671787, 32.968052, 18.462524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.305298, 32.816349, 18.410831>,  <39.085403, 32.725327, 18.379816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.305298, 32.816349, 18.410831>,  <39.671787, 32.968052, 18.462524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.305298, 32.816349, 18.410831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346462, -0.587916, -0.730972,
		0.201246, -0.714507, 0.670059,
		-0.916223, -0.379255, -0.129233,
		39.030430, 32.702572, 18.372061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.790668, 32.168098, 18.342268>,  <39.671787, 32.968052, 18.462524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.790668, 32.168098, 18.342268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.435741, 32.271576, 18.189558>,  <39.222786, 32.333664, 18.097933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.435741, 32.271576, 18.189558>,  <39.790668, 32.168098, 18.342268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.435741, 32.271576, 18.189558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189333, -0.550508, -0.813076,
		-0.420504, -0.793738, 0.439496,
		-0.887316, 0.258691, -0.381772,
		39.169548, 32.349182, 18.075026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.379688, 31.738277, 18.687061>,  <39.790668, 32.168098, 18.342268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.379688, 31.738277, 18.687061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.769680, 31.785723, 18.762272>,  <41.003674, 31.814190, 18.807398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.769680, 31.785723, 18.762272>,  <40.379688, 31.738277, 18.687061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.769680, 31.785723, 18.762272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202750, 0.127466, 0.970899,
		0.091192, -0.984725, 0.148325,
		0.974975, 0.118611, 0.188029,
		41.062172, 31.821306, 18.818680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.567715, 31.225906, 19.209404>,  <40.379688, 31.738277, 18.687061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.567715, 31.225906, 19.209404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.835007, 31.519627, 19.257181>,  <40.995384, 31.695860, 19.285847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.835007, 31.519627, 19.257181>,  <40.567715, 31.225906, 19.209404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.835007, 31.519627, 19.257181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131235, -0.041686, 0.990474,
		0.732286, -0.677542, 0.068510,
		0.668232, 0.734302, 0.119443,
		41.035477, 31.739918, 19.293015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.784092, 31.076992, 19.915136>,  <40.567715, 31.225906, 19.209404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.784092, 31.076992, 19.915136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.931171, 31.439867, 19.833351>,  <41.019421, 31.657593, 19.784279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.931171, 31.439867, 19.833351>,  <40.784092, 31.076992, 19.915136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.931171, 31.439867, 19.833351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034565, 0.233047, 0.971851,
		0.929303, -0.350280, 0.117048,
		0.367697, 0.907190, -0.204464,
		41.041481, 31.712025, 19.772013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.171196, 31.274961, 20.491364>,  <40.784092, 31.076992, 19.915136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.171196, 31.274961, 20.491364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.093674, 31.628326, 20.320705>,  <41.047161, 31.840345, 20.218311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.093674, 31.628326, 20.320705>,  <41.171196, 31.274961, 20.491364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.093674, 31.628326, 20.320705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155641, 0.401696, 0.902450,
		0.968615, 0.241302, 0.059645,
		-0.193804, 0.883410, -0.426645,
		41.035534, 31.893349, 20.192711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.516575, 31.696321, 20.931633>,  <41.171196, 31.274961, 20.491364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.516575, 31.696321, 20.931633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.251141, 31.932116, 20.747387>,  <41.091881, 32.073593, 20.636839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.251141, 31.932116, 20.747387>,  <41.516575, 31.696321, 20.931633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.251141, 31.932116, 20.747387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260693, 0.394907, 0.880958,
		0.701212, 0.704667, -0.108378,
		-0.663582, 0.589485, -0.460616,
		41.052067, 32.108959, 20.609201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.576035, 32.393177, 21.279385>,  <41.516575, 31.696321, 20.931633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.576035, 32.393177, 21.279385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.230343, 32.377945, 21.078726>,  <41.022926, 32.368805, 20.958330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.230343, 32.377945, 21.078726>,  <41.576035, 32.393177, 21.279385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.230343, 32.377945, 21.078726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493502, 0.257941, 0.830616,
		0.097762, 0.965409, -0.241716,
		-0.864233, -0.038085, -0.501648,
		40.971073, 32.366520, 20.928232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.273579, 33.041359, 21.491829>,  <41.576035, 32.393177, 21.279385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.273579, 33.041359, 21.491829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.989197, 32.797443, 21.351717>,  <40.818565, 32.651096, 21.267649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.989197, 32.797443, 21.351717>,  <41.273579, 33.041359, 21.491829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.989197, 32.797443, 21.351717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544435, 0.161999, 0.823011,
		-0.445116, 0.775832, -0.447164,
		-0.710959, -0.609787, -0.350282,
		40.775909, 32.614506, 21.246632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.699345, 33.423744, 21.527691>,  <41.273579, 33.041359, 21.491829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.699345, 33.423744, 21.527691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.529461, 33.061649, 21.532887>,  <40.427528, 32.844395, 21.536003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.529461, 33.061649, 21.532887>,  <40.699345, 33.423744, 21.527691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.529461, 33.061649, 21.532887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482007, 0.238243, 0.843154,
		-0.766348, 0.351837, -0.537515,
		-0.424712, -0.905236, 0.012989,
		40.402046, 32.790077, 21.536783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.926720, 33.520802, 21.598507>,  <40.699345, 33.423744, 21.527691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.926720, 33.520802, 21.598507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.045155, 33.157253, 21.716003>,  <40.116215, 32.939125, 21.786501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.045155, 33.157253, 21.716003>,  <39.926720, 33.520802, 21.598507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.045155, 33.157253, 21.716003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651293, 0.032847, 0.758115,
		-0.698679, -0.415779, -0.582217,
		0.296084, -0.908872, 0.293743,
		40.133980, 32.884590, 21.804127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.244816, 33.197861, 21.717249>,  <39.926720, 33.520802, 21.598507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.244816, 33.197861, 21.717249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.528961, 33.004261, 21.921650>,  <39.699448, 32.888100, 22.044291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.528961, 33.004261, 21.921650>,  <39.244816, 33.197861, 21.717249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.528961, 33.004261, 21.921650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586411, -0.005485, 0.809995,
		-0.389237, -0.875049, -0.287721,
		0.710364, -0.484002, 0.511004,
		39.742069, 32.859062, 22.074951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.921547, 32.849934, 22.360659>,  <39.244816, 33.197861, 21.717249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.921547, 32.849934, 22.360659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.312027, 32.830296, 22.445162>,  <39.546314, 32.818512, 22.495863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.312027, 32.830296, 22.445162>,  <38.921547, 32.849934, 22.360659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.312027, 32.830296, 22.445162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199098, 0.183447, 0.962656,
		-0.086021, -0.981803, 0.169305,
		0.976197, -0.049101, 0.211256,
		39.604885, 32.815567, 22.508539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.876301, 32.358047, 22.900879>,  <38.921547, 32.849934, 22.360659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.876301, 32.358047, 22.900879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.227066, 32.547234, 22.935127>,  <39.437523, 32.660744, 22.955677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.227066, 32.547234, 22.935127>,  <38.876301, 32.358047, 22.900879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.227066, 32.547234, 22.935127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166902, 0.132579, 0.977019,
		0.450745, -0.871049, 0.195199,
		0.876911, 0.472966, 0.085621,
		39.490139, 32.689121, 22.960814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.167248, 32.027420, 23.496029>,  <38.876301, 32.358047, 22.900879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.167248, 32.027420, 23.496029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.341988, 32.382191, 23.436003>,  <39.446831, 32.595055, 23.399988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.341988, 32.382191, 23.436003>,  <39.167248, 32.027420, 23.496029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.341988, 32.382191, 23.436003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263028, 0.285480, 0.921584,
		0.860219, -0.363125, 0.357999,
		0.436852, 0.886928, -0.150064,
		39.473042, 32.648270, 23.390984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.459644, 32.085838, 24.128685>,  <39.167248, 32.027420, 23.496029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.459644, 32.085838, 24.128685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.470001, 32.453480, 23.971418>,  <39.476215, 32.674065, 23.877058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.470001, 32.453480, 23.971418>,  <39.459644, 32.085838, 24.128685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.470001, 32.453480, 23.971418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309431, 0.381349, 0.871106,
		0.950569, 0.099102, 0.294273,
		0.025892, 0.919104, -0.393164,
		39.477768, 32.729210, 23.853470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.981270, 32.466457, 24.479052>,  <39.459644, 32.085838, 24.128685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.981270, 32.466457, 24.479052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.701427, 32.714443, 24.336954>,  <39.533520, 32.863235, 24.251696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.701427, 32.714443, 24.336954>,  <39.981270, 32.466457, 24.479052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.701427, 32.714443, 24.336954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203943, 0.303234, 0.930836,
		0.684804, 0.723669, -0.085709,
		-0.699608, 0.619961, -0.355243,
		39.491547, 32.900433, 24.230381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.103771, 33.042088, 24.870504>,  <39.981270, 32.466457, 24.479052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.103771, 33.042088, 24.870504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.740337, 33.112892, 24.719172>,  <39.522278, 33.155376, 24.628372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.740337, 33.112892, 24.719172>,  <40.103771, 33.042088, 24.870504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.740337, 33.112892, 24.719172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285000, 0.399448, 0.871330,
		0.305361, 0.899504, -0.312485,
		-0.908587, 0.177012, -0.378334,
		39.467762, 33.165997, 24.605671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.868023, 33.643124, 25.175436>,  <40.103771, 33.042088, 24.870504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.868023, 33.643124, 25.175436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.506496, 33.512093, 25.065302>,  <39.289581, 33.433472, 24.999222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.506496, 33.512093, 25.065302>,  <39.868023, 33.643124, 25.175436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.506496, 33.512093, 25.065302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390945, 0.370446, 0.842574,
		-0.174013, 0.869173, -0.462880,
		-0.903815, -0.327579, -0.275336,
		39.235352, 33.413818, 24.982700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.365330, 34.253353, 25.162821>,  <39.868023, 33.643124, 25.175436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.365330, 34.253353, 25.162821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.156635, 33.913929, 25.197992>,  <39.031418, 33.710274, 25.219095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.156635, 33.913929, 25.197992>,  <39.365330, 34.253353, 25.162821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.156635, 33.913929, 25.197992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459171, 0.366186, 0.809364,
		-0.718995, 0.381900, -0.580688,
		-0.521736, -0.848564, 0.087928,
		39.000114, 33.659359, 25.224371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.770775, 34.475235, 25.202660>,  <39.365330, 34.253353, 25.162821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.770775, 34.475235, 25.202660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.711117, 34.105213, 25.342388>,  <38.675323, 33.883198, 25.426226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.711117, 34.105213, 25.342388>,  <38.770775, 34.475235, 25.202660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.711117, 34.105213, 25.342388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485479, 0.376267, 0.789135,
		-0.861433, -0.051894, -0.505213,
		-0.149144, -0.925057, 0.349322,
		38.666374, 33.827698, 25.447186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.011047, 34.377949, 25.355700>,  <38.770775, 34.475235, 25.202660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.011047, 34.377949, 25.355700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.220100, 34.109478, 25.565985>,  <38.345531, 33.948395, 25.692156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.220100, 34.109478, 25.565985>,  <38.011047, 34.377949, 25.355700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.220100, 34.109478, 25.565985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520760, 0.236909, 0.820173,
		-0.675026, -0.702423, -0.225703,
		0.522637, -0.671175, 0.525714,
		38.376892, 33.908127, 25.723700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.504108, 34.081615, 25.757683>,  <38.011047, 34.377949, 25.355700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.504108, 34.081615, 25.757683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.839779, 33.958130, 25.936787>,  <38.041180, 33.884041, 26.044249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.839779, 33.958130, 25.936787>,  <37.504108, 34.081615, 25.757683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.839779, 33.958130, 25.936787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427519, 0.134473, 0.893949,
		-0.336183, -0.941603, -0.019133,
		0.839172, -0.308710, 0.447760,
		38.091530, 33.865517, 26.071115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.260590, 33.675507, 26.285778>,  <37.504108, 34.081615, 25.757683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.260590, 33.675507, 26.285778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.631680, 33.773041, 26.398823>,  <37.854332, 33.831562, 26.466650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.631680, 33.773041, 26.398823>,  <37.260590, 33.675507, 26.285778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.631680, 33.773041, 26.398823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309603, 0.079753, 0.947515,
		0.208500, -0.966532, 0.149481,
		0.927725, 0.243836, 0.282613,
		37.909996, 33.846191, 26.483606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.395447, 33.433819, 26.957525>,  <37.260590, 33.675507, 26.285778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.395447, 33.433819, 26.957525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.663841, 33.728539, 26.924307>,  <37.824879, 33.905373, 26.904375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.663841, 33.728539, 26.924307>,  <37.395447, 33.433819, 26.957525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.663841, 33.728539, 26.924307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146286, 0.241349, 0.959349,
		0.726894, -0.631564, 0.269726,
		0.670988, 0.736802, -0.083046,
		37.865139, 33.949577, 26.899393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.664116, 33.415604, 27.544746>,  <37.395447, 33.433819, 26.957525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.664116, 33.415604, 27.544746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.748863, 33.784348, 27.414959>,  <37.799713, 34.005596, 27.337086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.748863, 33.784348, 27.414959>,  <37.664116, 33.415604, 27.544746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.748863, 33.784348, 27.414959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019602, 0.335948, 0.941676,
		0.977101, -0.193152, 0.089248,
		0.211869, 0.921863, -0.324469,
		37.812424, 34.060905, 27.317617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.108585, 33.662113, 28.050545>,  <37.664116, 33.415604, 27.544746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.108585, 33.662113, 28.050545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.969513, 33.984676, 27.859201>,  <37.886070, 34.178215, 27.744396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.969513, 33.984676, 27.859201>,  <38.108585, 33.662113, 28.050545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.969513, 33.984676, 27.859201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082008, 0.482078, 0.872281,
		0.934020, 0.342504, -0.101477,
		-0.347680, 0.806406, -0.478359,
		37.865208, 34.226597, 27.715694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.448818, 34.292709, 28.360144>,  <38.108585, 33.662113, 28.050545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.448818, 34.292709, 28.360144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.151772, 34.463867, 28.154066>,  <37.973541, 34.566563, 28.030420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.151772, 34.463867, 28.154066>,  <38.448818, 34.292709, 28.360144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.151772, 34.463867, 28.154066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284328, 0.495063, 0.821018,
		0.606361, 0.756188, -0.245981,
		-0.742620, 0.427894, -0.515192,
		37.928986, 34.592236, 27.999508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.468323, 35.059849, 28.326015>,  <38.448818, 34.292709, 28.360144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.468323, 35.059849, 28.326015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.088600, 34.948151, 28.268284>,  <37.860767, 34.881130, 28.233644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.088600, 34.948151, 28.268284>,  <38.468323, 35.059849, 28.326015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.088600, 34.948151, 28.268284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258507, 0.432301, 0.863881,
		-0.178840, 0.857402, -0.482575,
		-0.949311, -0.279245, -0.144331,
		37.803806, 34.864376, 28.224985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.190243, 35.680485, 28.503641>,  <38.468323, 35.059849, 28.326015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.190243, 35.680485, 28.503641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.903275, 35.401829, 28.504711>,  <37.731094, 35.234634, 28.505354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.903275, 35.401829, 28.504711>,  <38.190243, 35.680485, 28.503641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.903275, 35.401829, 28.504711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228815, 0.239267, 0.943607,
		-0.657992, 0.676350, -0.331056,
		-0.717419, -0.696637, 0.002677,
		37.688049, 35.192837, 28.505514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.524734, 36.015884, 28.771679>,  <38.190243, 35.680485, 28.503641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.524734, 36.015884, 28.771679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.490211, 35.622932, 28.837999>,  <37.469498, 35.387161, 28.877790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.490211, 35.622932, 28.837999>,  <37.524734, 36.015884, 28.771679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.490211, 35.622932, 28.837999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360868, 0.185945, 0.913892,
		-0.928615, 0.019043, -0.370556,
		-0.086306, -0.982376, 0.165800,
		37.464321, 35.328220, 28.887739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.129986, 35.981255, 29.389523>,  <37.524734, 36.015884, 28.771679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.129986, 35.981255, 29.389523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.280006, 35.610477, 29.385332>,  <37.370018, 35.388012, 29.382818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.280006, 35.610477, 29.385332>,  <37.129986, 35.981255, 29.389523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.280006, 35.610477, 29.385332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060007, -0.035555, 0.997565,
		-0.925061, -0.373508, -0.068958,
		0.375050, -0.926945, -0.010478,
		37.392521, 35.332394, 29.382189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.805477, 35.657982, 30.001026>,  <37.129986, 35.981255, 29.389523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.805477, 35.657982, 30.001026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.095165, 35.394756, 29.918615>,  <37.268978, 35.236820, 29.869169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.095165, 35.394756, 29.918615>,  <36.805477, 35.657982, 30.001026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.095165, 35.394756, 29.918615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083562, -0.212822, 0.973511,
		-0.684484, -0.722255, -0.099141,
		0.724223, -0.658069, -0.206026,
		37.312431, 35.197334, 29.856808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.620480, 34.983715, 30.310711>,  <36.805477, 35.657982, 30.001026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.620480, 34.983715, 30.310711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.017891, 35.008533, 30.272673>,  <37.256340, 35.023422, 30.249849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.017891, 35.008533, 30.272673>,  <36.620480, 34.983715, 30.310711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.017891, 35.008533, 30.272673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111462, -0.373321, 0.920982,
		0.021640, -0.925625, -0.377822,
		0.993533, 0.062043, -0.095093,
		37.315952, 35.027145, 30.244144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.835480, 34.364899, 30.629263>,  <36.620480, 34.983715, 30.310711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.835480, 34.364899, 30.629263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.157959, 34.601555, 30.629070>,  <37.351448, 34.743549, 30.628954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.157959, 34.601555, 30.629070>,  <36.835480, 34.364899, 30.629263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.157959, 34.601555, 30.629070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212200, -0.288395, 0.933702,
		0.552278, -0.752854, -0.358051,
		0.806201, 0.591641, -0.000481,
		37.399818, 34.779049, 30.628925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.316139, 33.986393, 31.073803>,  <36.835480, 34.364899, 30.629263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.316139, 33.986393, 31.073803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.441174, 34.365055, 31.042469>,  <37.516193, 34.592251, 31.023668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.441174, 34.365055, 31.042469>,  <37.316139, 33.986393, 31.073803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.441174, 34.365055, 31.042469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407172, -0.059030, 0.911442,
		0.858196, -0.316800, -0.403903,
		0.312587, 0.946654, -0.078333,
		37.534950, 34.649052, 31.018969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.949699, 33.939407, 31.268631>,  <37.316139, 33.986393, 31.073803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.949699, 33.939407, 31.268631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.824848, 34.317059, 31.310955>,  <37.749939, 34.543652, 31.336349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.824848, 34.317059, 31.310955>,  <37.949699, 33.939407, 31.268631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.824848, 34.317059, 31.310955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342121, 0.007799, 0.939623,
		0.886302, 0.329480, -0.325441,
		-0.312125, 0.944130, 0.105810,
		37.731209, 34.600296, 31.342697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.514259, 34.285885, 31.713881>,  <37.949699, 33.939407, 31.268631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.514259, 34.285885, 31.713881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.187031, 34.512844, 31.751436>,  <37.990692, 34.649017, 31.773970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.187031, 34.512844, 31.751436>,  <38.514259, 34.285885, 31.713881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.187031, 34.512844, 31.751436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295748, 0.275032, 0.914817,
		0.493239, 0.776158, -0.392803,
		-0.818076, 0.567394, 0.093890,
		37.941608, 34.683064, 31.779604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.710564, 34.947807, 32.044514>,  <38.514259, 34.285885, 31.713881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.710564, 34.947807, 32.044514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.314007, 34.935802, 32.095493>,  <38.076073, 34.928600, 32.126083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.314007, 34.935802, 32.095493>,  <38.710564, 34.947807, 32.044514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.314007, 34.935802, 32.095493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114100, 0.279503, 0.953341,
		-0.064234, 0.959676, -0.273672,
		-0.991391, -0.030011, 0.127453,
		38.016590, 34.926800, 32.133728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.486107, 35.623924, 32.422199>,  <38.710564, 34.947807, 32.044514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.486107, 35.623924, 32.422199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.230644, 35.322380, 32.483910>,  <38.077366, 35.141453, 32.520935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.230644, 35.322380, 32.483910>,  <38.486107, 35.623924, 32.422199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.230644, 35.322380, 32.483910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062146, 0.149305, 0.986836,
		-0.766975, 0.639841, -0.048506,
		-0.638660, -0.753864, 0.154277,
		38.039047, 35.096222, 32.530193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.386826, 35.658443, 33.121338>,  <38.486107, 35.623924, 32.422199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.386826, 35.658443, 33.121338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.186737, 35.319550, 33.049809>,  <38.066685, 35.116215, 33.006893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.186737, 35.319550, 33.049809>,  <38.386826, 35.658443, 33.121338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.186737, 35.319550, 33.049809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109769, -0.266895, 0.957454,
		-0.858913, 0.459308, 0.226506,
		-0.500219, -0.847233, -0.178822,
		38.036671, 35.065380, 32.996162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.826401, 35.613186, 33.685772>,  <38.386826, 35.658443, 33.121338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.826401, 35.613186, 33.685772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.935295, 35.260689, 33.531216>,  <38.000633, 35.049191, 33.438480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.935295, 35.260689, 33.531216>,  <37.826401, 35.613186, 33.685772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.935295, 35.260689, 33.531216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323776, -0.294251, 0.899214,
		-0.906121, -0.369905, 0.205219,
		0.272238, -0.881242, -0.386393,
		38.016968, 34.996315, 33.415298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.419140, 35.062763, 34.100273>,  <37.826401, 35.613186, 33.685772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.419140, 35.062763, 34.100273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.755329, 34.915306, 33.941422>,  <37.957043, 34.826832, 33.846111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.755329, 34.915306, 33.941422>,  <37.419140, 35.062763, 34.100273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.755329, 34.915306, 33.941422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271460, -0.347843, 0.897393,
		-0.468957, -0.862037, -0.192279,
		0.840469, -0.368643, -0.397132,
		38.007469, 34.804714, 33.822281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.515038, 34.386559, 34.392681>,  <37.419140, 35.062763, 34.100273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.515038, 34.386559, 34.392681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.873981, 34.529987, 34.289787>,  <38.089348, 34.616043, 34.228050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.873981, 34.529987, 34.289787>,  <37.515038, 34.386559, 34.392681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.873981, 34.529987, 34.289787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375427, -0.313922, 0.872071,
		0.231945, -0.879137, -0.416318,
		0.897361, 0.358569, -0.257239,
		38.143188, 34.637558, 34.212616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.013523, 33.946438, 34.742142>,  <37.515038, 34.386559, 34.392681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.013523, 33.946438, 34.742142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.278370, 34.224808, 34.630943>,  <38.437279, 34.391830, 34.564224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.278370, 34.224808, 34.630943>,  <38.013523, 33.946438, 34.742142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.278370, 34.224808, 34.630943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586128, -0.249766, 0.770760,
		0.466959, -0.673277, -0.573277,
		0.662120, 0.695927, -0.277996,
		38.477005, 34.433586, 34.547543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.730045, 33.638321, 34.847088>,  <38.013523, 33.946438, 34.742142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.730045, 33.638321, 34.847088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.793087, 34.033203, 34.837383>,  <38.830914, 34.270134, 34.831558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.793087, 34.033203, 34.837383>,  <38.730045, 33.638321, 34.847088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.793087, 34.033203, 34.837383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736962, -0.101227, 0.668312,
		0.657304, -0.123211, -0.743486,
		0.157605, 0.987204, -0.024265,
		38.840370, 34.329365, 34.830105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.412960, 33.649391, 34.792850>,  <38.730045, 33.638321, 34.847088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.412960, 33.649391, 34.792850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.301170, 34.004410, 34.939358>,  <39.234097, 34.217422, 35.027264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.301170, 34.004410, 34.939358>,  <39.412960, 33.649391, 34.792850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.301170, 34.004410, 34.939358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671457, -0.092017, 0.735308,
		0.686325, 0.451432, -0.570235,
		-0.279470, 0.887548, 0.366271,
		39.217331, 34.270676, 35.049240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.915928, 33.858002, 35.158012>,  <39.412960, 33.649391, 34.792850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.915928, 33.858002, 35.158012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.653667, 34.120247, 35.307838>,  <39.496311, 34.277592, 35.397732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.653667, 34.120247, 35.307838>,  <39.915928, 33.858002, 35.158012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.653667, 34.120247, 35.307838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624487, 0.192000, 0.757068,
		0.424426, 0.730282, -0.535305,
		-0.655652, 0.655610, 0.374561,
		39.456970, 34.316929, 35.420208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.299442, 34.207859, 35.602577>,  <39.915928, 33.858002, 35.158012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.299442, 34.207859, 35.602577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.946033, 34.362816, 35.707890>,  <39.733990, 34.455791, 35.771076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.946033, 34.362816, 35.707890>,  <40.299442, 34.207859, 35.602577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.946033, 34.362816, 35.707890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397113, 0.321462, 0.859630,
		0.248380, 0.864053, -0.437857,
		-0.883521, 0.387394, 0.263282,
		39.680977, 34.479034, 35.786873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.385666, 34.926735, 35.766521>,  <40.299442, 34.207859, 35.602577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.385666, 34.926735, 35.766521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.062462, 34.803383, 35.967327>,  <39.868538, 34.729370, 36.087811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.062462, 34.803383, 35.967327>,  <40.385666, 34.926735, 35.766521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.062462, 34.803383, 35.967327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474699, 0.163919, 0.864749,
		-0.348962, 0.937033, 0.013940,
		-0.808014, -0.308382, 0.502010,
		39.820057, 34.710869, 36.117931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.226471, 35.477474, 36.237675>,  <40.385666, 34.926735, 35.766521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.226471, 35.477474, 36.237675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.102043, 35.120327, 36.367924>,  <40.027386, 34.906040, 36.446072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.102043, 35.120327, 36.367924>,  <40.226471, 35.477474, 36.237675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.102043, 35.120327, 36.367924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428449, 0.174082, 0.886638,
		-0.848332, 0.415320, 0.328395,
		-0.311071, -0.892864, 0.325622,
		40.008720, 34.852467, 36.465611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.988163, 35.689236, 36.936085>,  <40.226471, 35.477474, 36.237675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.988163, 35.689236, 36.936085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.062805, 35.296295, 36.941238>,  <40.107590, 35.060532, 36.944332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.062805, 35.296295, 36.941238>,  <39.988163, 35.689236, 36.936085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.062805, 35.296295, 36.941238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319189, 0.073028, 0.944873,
		-0.929138, -0.172202, 0.327183,
		0.186602, -0.982351, 0.012888,
		40.118786, 35.001591, 36.945107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.655041, 35.511539, 37.592731>,  <39.988163, 35.689236, 36.936085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.655041, 35.511539, 37.592731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.889267, 35.206596, 37.482510>,  <40.029800, 35.023632, 37.416374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.889267, 35.206596, 37.482510>,  <39.655041, 35.511539, 37.592731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.889267, 35.206596, 37.482510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382098, -0.040224, 0.923246,
		-0.714924, -0.645909, 0.267740,
		0.585563, -0.762354, -0.275557,
		40.064938, 34.977890, 37.399841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.654961, 35.115570, 38.153656>,  <39.655041, 35.511539, 37.592731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.654961, 35.115570, 38.153656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.959976, 34.952095, 37.953053>,  <40.142986, 34.854012, 37.832691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.959976, 34.952095, 37.953053>,  <39.654961, 35.115570, 38.153656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.959976, 34.952095, 37.953053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468669, -0.185404, 0.863698,
		-0.445960, -0.893647, 0.050159,
		0.762541, -0.408682, -0.501507,
		40.188740, 34.829491, 37.802601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.804916, 34.524517, 38.471058>,  <39.654961, 35.115570, 38.153656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.804916, 34.524517, 38.471058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.132946, 34.631039, 38.268452>,  <40.329765, 34.694950, 38.146889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.132946, 34.631039, 38.268452>,  <39.804916, 34.524517, 38.471058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.132946, 34.631039, 38.268452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572214, -0.370772, 0.731505,
		0.006999, -0.889726, -0.456443,
		0.820075, 0.266303, -0.506518,
		40.378967, 34.710930, 38.116497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.276218, 33.944107, 38.474598>,  <39.804916, 34.524517, 38.471058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.276218, 33.944107, 38.474598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.491581, 34.277874, 38.427490>,  <40.620796, 34.478134, 38.399227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.491581, 34.277874, 38.427490>,  <40.276218, 33.944107, 38.474598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.491581, 34.277874, 38.427490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586939, -0.271041, 0.762915,
		0.604670, -0.479878, -0.635682,
		0.538402, 0.834418, -0.117769,
		40.653103, 34.528198, 38.392159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.890583, 33.694042, 38.465031>,  <40.276218, 33.944107, 38.474598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.890583, 33.694042, 38.465031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.874718, 34.074993, 38.585964>,  <40.865196, 34.303562, 38.658524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.874718, 34.074993, 38.585964>,  <40.890583, 33.694042, 38.465031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.874718, 34.074993, 38.585964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494482, -0.244213, 0.834175,
		0.868282, 0.182586, -0.461247,
		-0.039667, 0.952377, 0.302331,
		40.862816, 34.360706, 38.676662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.579819, 34.048126, 38.573341>,  <40.890583, 33.694042, 38.465031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.579819, 34.048126, 38.573341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.293129, 34.199284, 38.807777>,  <41.121117, 34.289978, 38.948441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.293129, 34.199284, 38.807777>,  <41.579819, 34.048126, 38.573341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.293129, 34.199284, 38.807777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565859, -0.176042, 0.805489,
		0.407563, 0.908960, -0.087659,
		-0.716726, 0.377891, 0.586091,
		41.078110, 34.312653, 38.983604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.821503, 33.930023, 39.187904>,  <41.579819, 34.048126, 38.573341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.821503, 33.930023, 39.187904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.503597, 34.145611, 39.299522>,  <41.312855, 34.274963, 39.366493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.503597, 34.145611, 39.299522>,  <41.821503, 33.930023, 39.187904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.503597, 34.145611, 39.299522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228364, -0.160416, 0.960269,
		0.562317, 0.826910, 0.004412,
		-0.794764, 0.538968, 0.279041,
		41.265167, 34.307301, 39.383236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.049023, 34.244316, 39.768887>,  <41.821503, 33.930023, 39.187904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.049023, 34.244316, 39.768887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.651554, 34.267868, 39.807167>,  <41.413074, 34.281998, 39.830135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.651554, 34.267868, 39.807167>,  <42.049023, 34.244316, 39.768887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.651554, 34.267868, 39.807167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087937, -0.122651, 0.988546,
		0.069938, 0.990702, 0.116697,
		-0.993668, 0.058875, 0.095698,
		41.353455, 34.285530, 39.835876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.947193, 34.618156, 40.382999>,  <42.049023, 34.244316, 39.768887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.947193, 34.618156, 40.382999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.593430, 34.438423, 40.332527>,  <41.381172, 34.330582, 40.302242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.593430, 34.438423, 40.332527>,  <41.947193, 34.618156, 40.382999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.593430, 34.438423, 40.332527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095263, -0.090866, 0.991296,
		-0.456889, 0.888731, 0.037558,
		-0.884408, -0.449334, -0.126179,
		41.328106, 34.303623, 40.294674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.393078, 34.976139, 40.612915>,  <41.947193, 34.618156, 40.382999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.393078, 34.976139, 40.612915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.398273, 34.576473, 40.628368>,  <41.401390, 34.336674, 40.637642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.398273, 34.576473, 40.628368>,  <41.393078, 34.976139, 40.612915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.398273, 34.576473, 40.628368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086849, 0.039622, 0.995434,
		-0.996137, -0.009577, 0.087291,
		0.012992, -0.999169, 0.038638,
		41.402172, 34.276722, 40.639961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.832275, 34.677517, 40.984772>,  <41.393078, 34.976139, 40.612915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.832275, 34.677517, 40.984772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.158386, 34.447414, 41.011326>,  <41.354053, 34.309353, 41.027260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.158386, 34.447414, 41.011326>,  <40.832275, 34.677517, 40.984772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.158386, 34.447414, 41.011326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031069, 0.157928, 0.986962,
		-0.578243, -0.802580, 0.146627,
		0.815272, -0.575260, 0.066386,
		41.402969, 34.274837, 41.031242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.818703, 33.992832, 41.428627>,  <40.832275, 34.677517, 40.984772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.818703, 33.992832, 41.428627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.156170, 34.206028, 41.402878>,  <41.358650, 34.333946, 41.387428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.156170, 34.206028, 41.402878>,  <40.818703, 33.992832, 41.428627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.156170, 34.206028, 41.402878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159359, 0.363131, 0.918009,
		0.512666, -0.764237, 0.391299,
		0.843669, 0.532989, -0.064377,
		41.409271, 34.365925, 41.383564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.119507, 33.909271, 42.000988>,  <40.818703, 33.992832, 41.428627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.119507, 33.909271, 42.000988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.924732, 33.592567, 41.853466>,  <40.807869, 33.402546, 41.764954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.924732, 33.592567, 41.853466>,  <41.119507, 33.909271, 42.000988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.924732, 33.592567, 41.853466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145190, 0.342994, -0.928049,
		0.861287, -0.505444, -0.052059,
		-0.486933, -0.791758, -0.368802,
		40.778652, 33.355042, 41.742825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.591217, 33.629559, 41.427261>,  <41.119507, 33.909271, 42.000988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.591217, 33.629559, 41.427261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.206882, 33.530380, 41.377769>,  <40.976280, 33.470875, 41.348072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.206882, 33.530380, 41.377769>,  <41.591217, 33.629559, 41.427261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.206882, 33.530380, 41.377769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000246, 0.447287, -0.894390,
		0.277104, -0.859335, -0.429832,
		-0.960840, -0.247945, -0.123734,
		40.918633, 33.455997, 41.340649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.409290, 33.236668, 40.679111>,  <41.591217, 33.629559, 41.427261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.409290, 33.236668, 40.679111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.119194, 33.466274, 40.831177>,  <40.945137, 33.604038, 40.922417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.119194, 33.466274, 40.831177>,  <41.409290, 33.236668, 40.679111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.119194, 33.466274, 40.831177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094160, 0.464279, -0.880670,
		-0.682024, -0.674496, -0.282665,
		-0.725243, 0.574022, 0.380160,
		40.901623, 33.638481, 40.945225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.725117, 33.149883, 40.362946>,  <41.409290, 33.236668, 40.679111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.725117, 33.149883, 40.362946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.759323, 33.523567, 40.501472>,  <40.779846, 33.747780, 40.584587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.759323, 33.523567, 40.501472>,  <40.725117, 33.149883, 40.362946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.759323, 33.523567, 40.501472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034667, 0.350169, -0.936045,
		-0.995734, 0.068037, 0.062330,
		0.085512, 0.934212, 0.346316,
		40.784977, 33.803829, 40.605366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.163517, 33.674877, 40.166790>,  <40.725117, 33.149883, 40.362946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.163517, 33.674877, 40.166790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.507591, 33.872753, 40.216366>,  <40.714035, 33.991478, 40.246113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.507591, 33.872753, 40.216366>,  <40.163517, 33.674877, 40.166790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.507591, 33.872753, 40.216366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137076, 0.458367, -0.878129,
		-0.491212, 0.738365, 0.462091,
		0.860187, 0.494689, 0.123943,
		40.765648, 34.021160, 40.253548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.035065, 34.382679, 39.965126>,  <40.163517, 33.674877, 40.166790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.035065, 34.382679, 39.965126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.430679, 34.343689, 39.920753>,  <40.668049, 34.320297, 39.894131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.430679, 34.343689, 39.920753>,  <40.035065, 34.382679, 39.965126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.430679, 34.343689, 39.920753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042347, 0.532440, -0.845408,
		0.141468, 0.840837, 0.522475,
		0.989037, -0.097473, -0.110930,
		40.727390, 34.314445, 39.887474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.319103, 35.073509, 39.865105>,  <40.035065, 34.382679, 39.965126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.319103, 35.073509, 39.865105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.581985, 34.835175, 39.680473>,  <40.739716, 34.692173, 39.569695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.581985, 34.835175, 39.680473>,  <40.319103, 35.073509, 39.865105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.581985, 34.835175, 39.680473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083049, 0.665932, -0.741375,
		0.749122, 0.448902, 0.487139,
		0.657206, -0.595837, -0.461583,
		40.779148, 34.656425, 39.542000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.859295, 35.471428, 39.571964>,  <40.319103, 35.073509, 39.865105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.859295, 35.471428, 39.571964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.911831, 35.139927, 39.354370>,  <40.943352, 34.941029, 39.223812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.911831, 35.139927, 39.354370>,  <40.859295, 35.471428, 39.571964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.911831, 35.139927, 39.354370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113216, 0.532612, -0.838753,
		0.984851, 0.171753, -0.023872,
		0.131344, -0.828749, -0.543989,
		40.951233, 34.891304, 39.191174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.051556, 35.699062, 38.826141>,  <40.859295, 35.471428, 39.571964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.051556, 35.699062, 38.826141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.968483, 35.308933, 38.796162>,  <40.918640, 35.074856, 38.778175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.968483, 35.308933, 38.796162>,  <41.051556, 35.699062, 38.826141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.968483, 35.308933, 38.796162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265598, 0.129965, -0.955284,
		0.941449, -0.178487, -0.286034,
		-0.207680, -0.975321, -0.074950,
		40.906178, 35.016338, 38.773678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.603596, 35.230343, 38.801331>,  <41.051556, 35.699062, 38.826141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.603596, 35.230343, 38.801331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.358604, 34.932209, 38.695995>,  <41.211609, 34.753330, 38.632793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.358604, 34.932209, 38.695995>,  <41.603596, 35.230343, 38.801331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.358604, 34.932209, 38.695995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102930, 0.405490, -0.908286,
		0.783755, -0.529203, -0.325072,
		-0.612482, -0.745333, -0.263334,
		41.174858, 34.708611, 38.616997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.484787, 35.447689, 38.088356>,  <41.603596, 35.230343, 38.801331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.484787, 35.447689, 38.088356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.233135, 35.151302, 38.182308>,  <41.082146, 34.973469, 38.238678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.233135, 35.151302, 38.182308>,  <41.484787, 35.447689, 38.088356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.233135, 35.151302, 38.182308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425934, 0.075858, -0.901568,
		0.650214, -0.667244, -0.363327,
		-0.629128, -0.740966, 0.234878,
		41.044395, 34.929012, 38.252773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.455677, 35.125706, 37.463985>,  <41.484787, 35.447689, 38.088356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.455677, 35.125706, 37.463985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.140358, 34.987522, 37.667652>,  <40.951168, 34.904613, 37.789852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.140358, 34.987522, 37.667652>,  <41.455677, 35.125706, 37.463985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.140358, 34.987522, 37.667652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512665, -0.088837, -0.853981,
		0.340245, -0.934221, -0.107073,
		-0.788295, -0.345455, 0.509169,
		40.903870, 34.883884, 37.820404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.194511, 34.571323, 37.119865>,  <41.455677, 35.125706, 37.463985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.194511, 34.571323, 37.119865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.901001, 34.666695, 37.374336>,  <40.724895, 34.723919, 37.527020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.901001, 34.666695, 37.374336>,  <41.194511, 34.571323, 37.119865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.901001, 34.666695, 37.374336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674371, -0.369231, -0.639447,
		0.082435, -0.898232, 0.431722,
		-0.733777, 0.238428, 0.636179,
		40.680866, 34.738224, 37.565189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.882732, 33.919395, 37.221886>,  <41.194511, 34.571323, 37.119865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.882732, 33.919395, 37.221886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.648102, 34.242649, 37.243233>,  <40.507324, 34.436600, 37.256039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.648102, 34.242649, 37.243233>,  <40.882732, 33.919395, 37.221886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.648102, 34.242649, 37.243233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605420, -0.393764, -0.691676,
		-0.537956, -0.438026, 0.720234,
		-0.586574, 0.808136, 0.053362,
		40.472130, 34.485088, 37.259243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.253593, 33.758862, 36.956146>,  <40.882732, 33.919395, 37.221886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.253593, 33.758862, 36.956146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.121780, 34.135201, 36.987667>,  <40.042690, 34.361004, 37.006580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.121780, 34.135201, 36.987667>,  <40.253593, 33.758862, 36.956146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.121780, 34.135201, 36.987667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660616, -0.170145, -0.731189,
		-0.674531, -0.293010, 0.677609,
		-0.329537, 0.940849, 0.078799,
		40.022919, 34.417454, 37.011307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.527416, 33.733223, 36.842773>,  <40.253593, 33.758862, 36.956146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.527416, 33.733223, 36.842773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.643429, 34.108223, 36.765862>,  <39.713036, 34.333221, 36.719715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.643429, 34.108223, 36.765862>,  <39.527416, 33.733223, 36.842773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.643429, 34.108223, 36.765862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454316, -0.041952, -0.889852,
		-0.842304, 0.345443, 0.413754,
		0.290036, 0.937501, -0.192276,
		39.730438, 34.389473, 36.708179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.859650, 34.150719, 36.700249>,  <39.527416, 33.733223, 36.842773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.859650, 34.150719, 36.700249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.161873, 34.347641, 36.527382>,  <39.343204, 34.465794, 36.423660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.161873, 34.347641, 36.527382>,  <38.859650, 34.150719, 36.700249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.161873, 34.347641, 36.527382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474917, -0.042754, -0.878991,
		-0.451210, 0.869371, 0.201501,
		0.755555, 0.492306, -0.432170,
		39.388538, 34.495335, 36.397732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.462635, 34.555756, 36.253487>,  <38.859650, 34.150719, 36.700249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.462635, 34.555756, 36.253487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.838200, 34.539673, 36.116768>,  <39.063538, 34.530025, 36.034737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.838200, 34.539673, 36.116768>,  <38.462635, 34.555756, 36.253487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.838200, 34.539673, 36.116768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343529, -0.169438, -0.923731,
		-0.020776, 0.984720, -0.172899,
		0.938912, -0.040204, -0.341800,
		39.119873, 34.527611, 36.014229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.439991, 34.960552, 35.607269>,  <38.462635, 34.555756, 36.253487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.439991, 34.960552, 35.607269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.781002, 34.751503, 35.610214>,  <38.985611, 34.626072, 35.611980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.781002, 34.751503, 35.610214>,  <38.439991, 34.960552, 35.607269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.781002, 34.751503, 35.610214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052318, 0.071306, -0.996081,
		0.520053, 0.849575, 0.088133,
		0.852530, -0.522626, 0.007365,
		39.036762, 34.594715, 35.612423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.820496, 35.482906, 35.312832>,  <38.439991, 34.960552, 35.607269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.820496, 35.482906, 35.312832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.913509, 35.097168, 35.262295>,  <38.969318, 34.865726, 35.231972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.913509, 35.097168, 35.262295>,  <38.820496, 35.482906, 35.312832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.913509, 35.097168, 35.262295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074562, 0.111849, -0.990924,
		0.969725, 0.239847, -0.045895,
		0.232537, -0.964346, -0.126347,
		38.983269, 34.807865, 35.224392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.484322, 35.342323, 34.878490>,  <38.820496, 35.482906, 35.312832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.484322, 35.342323, 34.878490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.188686, 35.073654, 34.858078>,  <39.011307, 34.912453, 34.845829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.188686, 35.073654, 34.858078>,  <39.484322, 35.342323, 34.878490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.188686, 35.073654, 34.858078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185124, 0.275376, -0.943344,
		0.647675, -0.687763, -0.327870,
		-0.739085, -0.671677, -0.051033,
		38.966961, 34.872150, 34.842770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.225136, 35.432625, 34.163231>,  <39.484322, 35.342323, 34.878490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.225136, 35.432625, 34.163231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.005695, 35.120758, 34.284000>,  <38.874031, 34.933640, 34.356461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.005695, 35.120758, 34.284000>,  <39.225136, 35.432625, 34.163231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.005695, 35.120758, 34.284000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414778, -0.059750, -0.907959,
		0.725942, -0.623341, -0.290608,
		-0.548604, -0.779664, 0.301923,
		38.841114, 34.886860, 34.374577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.342907, 34.796459, 33.667080>,  <39.225136, 35.432625, 34.163231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.342907, 34.796459, 33.667080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.982582, 34.763515, 33.837608>,  <38.766388, 34.743748, 33.939926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.982582, 34.763515, 33.837608>,  <39.342907, 34.796459, 33.667080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.982582, 34.763515, 33.837608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423919, -0.045640, -0.904549,
		0.093961, -0.995557, 0.006197,
		-0.900813, -0.082365, 0.426324,
		38.712337, 34.738808, 33.965504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.042015, 34.382607, 33.227146>,  <39.342907, 34.796459, 33.667080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.042015, 34.382607, 33.227146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.730083, 34.542469, 33.419868>,  <38.542923, 34.638386, 33.535503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.730083, 34.542469, 33.419868>,  <39.042015, 34.382607, 33.227146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.730083, 34.542469, 33.419868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525014, 0.001604, -0.851092,
		-0.340915, -0.916665, 0.208572,
		-0.779832, 0.399653, 0.481809,
		38.496132, 34.662365, 33.564411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.476196, 33.962151, 33.089043>,  <39.042015, 34.382607, 33.227146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.476196, 33.962151, 33.089043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.683758, 34.304081, 33.087543>,  <39.808292, 34.509239, 33.086643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.683758, 34.304081, 33.087543>,  <39.476196, 33.962151, 33.089043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.683758, 34.304081, 33.087543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850168, -0.515605, 0.106613,
		0.089204, -0.058507, -0.994293,
		0.518900, 0.854827, -0.003747,
		39.839428, 34.560528, 33.086418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.098721, 33.755764, 32.770618>,  <39.476196, 33.962151, 33.089043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.098721, 33.755764, 32.770618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.152115, 34.094540, 32.976486>,  <40.184151, 34.297806, 33.100006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.152115, 34.094540, 32.976486>,  <40.098721, 33.755764, 32.770618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.152115, 34.094540, 32.976486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920401, -0.298502, 0.252504,
		0.367484, 0.439996, -0.819365,
		0.133481, 0.846936, 0.514668,
		40.192158, 34.348621, 33.130886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.838512, 34.147491, 32.617413>,  <40.098721, 33.755764, 32.770618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.838512, 34.147491, 32.617413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.691208, 34.241772, 32.977150>,  <40.602825, 34.298340, 33.192993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.691208, 34.241772, 32.977150>,  <40.838512, 34.147491, 32.617413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.691208, 34.241772, 32.977150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909420, -0.109718, 0.401144,
		0.193225, 0.965612, -0.173946,
		-0.368264, 0.235702, 0.899348,
		40.580730, 34.312481, 33.246956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.194382, 34.738392, 32.963039>,  <40.838512, 34.147491, 32.617413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.194382, 34.738392, 32.963039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.058189, 34.506916, 33.259468>,  <40.976475, 34.368031, 33.437325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.058189, 34.506916, 33.259468>,  <41.194382, 34.738392, 32.963039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.058189, 34.506916, 33.259468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916004, -0.026317, 0.400304,
		-0.212150, 0.815121, 0.539045,
		-0.340482, -0.578692, 0.741071,
		40.956043, 34.333309, 33.481789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.564816, 34.937744, 33.471020>,  <41.194382, 34.738392, 32.963039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.564816, 34.937744, 33.471020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.420773, 34.598038, 33.625458>,  <41.334347, 34.394215, 33.718121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.420773, 34.598038, 33.625458>,  <41.564816, 34.937744, 33.471020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.420773, 34.598038, 33.625458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854325, -0.133946, 0.502183,
		-0.374771, 0.510691, 0.773784,
		-0.360105, -0.849266, 0.386097,
		41.312740, 34.343258, 33.741287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.561275, 35.044098, 34.186424>,  <41.564816, 34.937744, 33.471020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.561275, 35.044098, 34.186424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.586987, 34.652779, 34.107624>,  <41.602413, 34.417988, 34.060345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.586987, 34.652779, 34.107624>,  <41.561275, 35.044098, 34.186424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.586987, 34.652779, 34.107624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923217, -0.016646, 0.383917,
		-0.378863, -0.206553, 0.902108,
		0.064282, -0.978294, -0.197000,
		41.606270, 34.359291, 34.048523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.677311, 34.474266, 34.712120>,  <41.561275, 35.044098, 34.186424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.677311, 34.474266, 34.712120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.842812, 34.438271, 34.349747>,  <41.942112, 34.416672, 34.132324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.842812, 34.438271, 34.349747>,  <41.677311, 34.474266, 34.712120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.842812, 34.438271, 34.349747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906990, -0.045196, 0.418721,
		-0.078625, -0.994917, 0.062918,
		0.413749, -0.089988, -0.905933,
		41.966938, 34.411274, 34.077969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.226810, 33.890602, 34.760452>,  <41.677311, 34.474266, 34.712120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.226810, 33.890602, 34.760452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.323006, 34.155937, 34.477001>,  <42.380722, 34.315136, 34.306931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.323006, 34.155937, 34.477001>,  <42.226810, 33.890602, 34.760452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.323006, 34.155937, 34.477001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933456, 0.042115, 0.356212,
		0.266131, -0.747138, -0.609064,
		0.240488, 0.663333, -0.708628,
		42.395153, 34.354939, 34.264412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.730640, 33.646576, 34.255505>,  <42.226810, 33.890602, 34.760452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.730640, 33.646576, 34.255505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.773655, 34.033627, 34.346844>,  <42.799465, 34.265858, 34.401646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.773655, 34.033627, 34.346844>,  <42.730640, 33.646576, 34.255505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.773655, 34.033627, 34.346844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992349, -0.118480, 0.034724,
		0.060655, 0.222868, -0.972960,
		0.107538, 0.967622, 0.228349,
		42.805916, 34.323914, 34.415348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.272675, 34.023510, 33.751625>,  <42.730640, 33.646576, 34.255505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.272675, 34.023510, 33.751625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.245003, 34.184368, 34.116806>,  <43.228397, 34.280884, 34.335915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.245003, 34.184368, 34.116806>,  <43.272675, 34.023510, 33.751625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.245003, 34.184368, 34.116806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996145, 0.077330, 0.041423,
		-0.053940, 0.912303, -0.405948,
		-0.069182, 0.402149, 0.912957,
		43.224247, 34.305012, 34.390694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.631508, 34.728161, 33.849483>,  <43.272675, 34.023510, 33.751625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.631508, 34.728161, 33.849483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.662834, 34.515144, 34.186592>,  <43.681629, 34.387333, 34.388859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.662834, 34.515144, 34.186592>,  <43.631508, 34.728161, 33.849483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.662834, 34.515144, 34.186592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992738, 0.119090, -0.017000,
		-0.091313, 0.837985, 0.537999,
		0.078316, -0.532540, 0.842774,
		43.686329, 34.355381, 34.439423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.066040, 35.135201, 34.276962>,  <43.631508, 34.728161, 33.849483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.066040, 35.135201, 34.276962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.067112, 34.772972, 34.446640>,  <44.067753, 34.555637, 34.548447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.067112, 34.772972, 34.446640>,  <44.066040, 35.135201, 34.276962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.067112, 34.772972, 34.446640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970794, 0.104117, 0.216144,
		-0.239899, 0.411228, 0.879397,
		0.002676, -0.905567, 0.424195,
		44.067913, 34.501301, 34.573898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.276707, 35.187675, 34.861141>,  <44.066040, 35.135201, 34.276962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.276707, 35.187675, 34.861141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.383076, 34.827820, 34.722614>,  <44.446896, 34.611904, 34.639500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.383076, 34.827820, 34.722614>,  <44.276707, 35.187675, 34.861141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.383076, 34.827820, 34.722614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936719, 0.156290, 0.313257,
		-0.227694, -0.407699, 0.884272,
		0.265918, -0.899641, -0.346314,
		44.462852, 34.557926, 34.618721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.614910, 34.855640, 35.396812>,  <44.276707, 35.187675, 34.861141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.614910, 34.855640, 35.396812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.753494, 34.789242, 35.027508>,  <44.836647, 34.749405, 34.805927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.753494, 34.789242, 35.027508>,  <44.614910, 34.855640, 35.396812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.753494, 34.789242, 35.027508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931689, 0.175436, 0.318086,
		0.109172, -0.970396, 0.215437,
		0.346465, -0.165994, -0.923260,
		44.857433, 34.739445, 34.750530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.167168, 34.393024, 35.436947>,  <44.614910, 34.855640, 35.396812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.167168, 34.393024, 35.436947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.230705, 34.532146, 35.067341>,  <45.268829, 34.615620, 34.845577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.230705, 34.532146, 35.067341>,  <45.167168, 34.393024, 35.436947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.230705, 34.532146, 35.067341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975094, 0.091461, 0.202055,
		0.154787, -0.933095, -0.324615,
		0.158847, 0.347806, -0.924013,
		45.278358, 34.636490, 34.790138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.877472, 34.131721, 35.223522>,  <45.167168, 34.393024, 35.436947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.877472, 34.131721, 35.223522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.772411, 34.454056, 35.011242>,  <45.709373, 34.647457, 34.883873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.772411, 34.454056, 35.011242>,  <45.877472, 34.131721, 35.223522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.772411, 34.454056, 35.011242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956838, 0.288434, -0.035580,
		0.124400, -0.517137, -0.846814,
		-0.262650, 0.805838, -0.530698,
		45.693615, 34.695808, 34.852032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.281502, 34.207054, 34.583942>,  <45.877472, 34.131721, 35.223522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.281502, 34.207054, 34.583942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.143047, 34.559509, 34.712811>,  <46.059975, 34.770981, 34.790131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.143047, 34.559509, 34.712811>,  <46.281502, 34.207054, 34.583942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.143047, 34.559509, 34.712811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937803, 0.315147, 0.145627,
		0.026785, 0.352539, -0.935414,
		-0.346132, 0.881135, 0.322171,
		46.039207, 34.823849, 34.809464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.547672, 34.719307, 34.112869>,  <46.281502, 34.207054, 34.583942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.547672, 34.719307, 34.112869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.514114, 34.818192, 34.499001>,  <46.493980, 34.877522, 34.730679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.514114, 34.818192, 34.499001>,  <46.547672, 34.719307, 34.112869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.514114, 34.818192, 34.499001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975867, 0.216377, 0.029395,
		-0.201607, 0.944494, -0.259394,
		-0.083890, 0.247207, 0.965324,
		46.488949, 34.892353, 34.788597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.815414, 35.388618, 34.221935>,  <46.547672, 34.719307, 34.112869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.815414, 35.388618, 34.221935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.874477, 35.165924, 34.548920>,  <46.909916, 35.032307, 34.745110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.874477, 35.165924, 34.548920>,  <46.815414, 35.388618, 34.221935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.874477, 35.165924, 34.548920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979088, 0.199227, -0.041163,
		-0.139943, 0.806444, 0.574513,
		0.147654, -0.556738, 0.817460,
		46.918774, 34.998901, 34.794159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.218742, 35.724064, 34.762115>,  <46.815414, 35.388618, 34.221935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.218742, 35.724064, 34.762115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.266083, 35.326988, 34.752701>,  <47.294487, 35.088741, 34.747051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.266083, 35.326988, 34.752701>,  <47.218742, 35.724064, 34.762115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.266083, 35.326988, 34.752701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933801, 0.119325, -0.337308,
		0.337651, 0.017945, 0.941100,
		0.118350, -0.992693, -0.023533,
		47.301586, 35.029179, 34.745640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.900986, 35.447060, 35.101665>,  <47.218742, 35.724064, 34.762115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.900986, 35.447060, 35.101665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.757191, 35.254566, 34.781868>,  <47.670914, 35.139072, 34.589989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.757191, 35.254566, 34.781868>,  <47.900986, 35.447060, 35.101665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.757191, 35.254566, 34.781868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867928, 0.142248, -0.475885,
		0.342736, -0.864976, 0.366536,
		-0.359490, -0.481230, -0.799490,
		47.649345, 35.110199, 34.542023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<38.709694, 27.970711, 25.300081> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.356892, 27.785381, 25.265673>,  <38.145210, 27.674185, 25.245028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.356892, 27.785381, 25.265673>,  <38.709694, 27.970711, 25.300081>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.356892, 27.785381, 25.265673> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360877, 0.546709, 0.755563,
		-0.303041, 0.697454, -0.649403,
		-0.882005, -0.463322, -0.086019,
		38.092289, 27.646385, 25.239866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.096493, 28.479042, 25.319750>,  <38.709694, 27.970711, 25.300081>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.096493, 28.479042, 25.319750> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.930847, 28.129278, 25.420881>,  <37.831459, 27.919420, 25.481560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.930847, 28.129278, 25.420881>,  <38.096493, 28.479042, 25.319750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.930847, 28.129278, 25.420881> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510819, 0.453154, 0.730558,
		-0.753377, 0.173382, -0.634320,
		-0.414111, -0.874408, 0.252829,
		37.806614, 27.866955, 25.496729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.426342, 28.636753, 25.207874>,  <38.096493, 28.479042, 25.319750>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.426342, 28.636753, 25.207874> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.437168, 28.310110, 25.438499>,  <37.443665, 28.114124, 25.576874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.437168, 28.310110, 25.438499>,  <37.426342, 28.636753, 25.207874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.437168, 28.310110, 25.438499> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635114, 0.431352, 0.640754,
		-0.771944, -0.383524, -0.506964,
		0.027065, -0.816606, 0.576561,
		37.445286, 28.065128, 25.611467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.725578, 28.457161, 25.394657>,  <37.426342, 28.636753, 25.207874>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.725578, 28.457161, 25.394657> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.947495, 28.304277, 25.690258>,  <37.080643, 28.212547, 25.867619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.947495, 28.304277, 25.690258>,  <36.725578, 28.457161, 25.394657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.947495, 28.304277, 25.690258> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619156, 0.403650, 0.673582,
		-0.555747, -0.831254, -0.012706,
		0.554789, -0.382208, 0.739003,
		37.113930, 28.189615, 25.911959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.247547, 28.174028, 25.849577>,  <36.725578, 28.457161, 25.394657>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.247547, 28.174028, 25.849577> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.581177, 28.273046, 26.046772>,  <36.781357, 28.332458, 26.165089>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.581177, 28.273046, 26.046772>,  <36.247547, 28.174028, 25.849577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.581177, 28.273046, 26.046772> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551641, 0.369570, 0.747737,
		0.002907, -0.895622, 0.444807,
		0.834076, 0.247547, 0.492988,
		36.831398, 28.347311, 26.194668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.043591, 28.217934, 26.525126>,  <36.247547, 28.174028, 25.849577>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.043591, 28.217934, 26.525126> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.395134, 28.408291, 26.538630>,  <36.606060, 28.522505, 26.546732>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.395134, 28.408291, 26.538630>,  <36.043591, 28.217934, 26.525126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.395134, 28.408291, 26.538630> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315134, 0.525931, 0.789992,
		0.358193, -0.704929, 0.612187,
		0.878856, 0.475891, 0.033762,
		36.658791, 28.551058, 26.548758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.349766, 28.061071, 27.175173>,  <36.043591, 28.217934, 26.525126>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.349766, 28.061071, 27.175173> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.545601, 28.392971, 27.067978>,  <36.663101, 28.592112, 27.003662>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.545601, 28.392971, 27.067978>,  <36.349766, 28.061071, 27.175173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.545601, 28.392971, 27.067978> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149791, 0.382805, 0.911605,
		0.858990, -0.406170, 0.311707,
		0.489590, 0.829751, -0.267985,
		36.692478, 28.641895, 26.987583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.700733, 28.225037, 27.779030>,  <36.349766, 28.061071, 27.175173>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.700733, 28.225037, 27.779030> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.742531, 28.549728, 27.549185>,  <36.767609, 28.744543, 27.411278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.742531, 28.549728, 27.549185>,  <36.700733, 28.225037, 27.779030>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.742531, 28.549728, 27.549185> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161023, 0.583961, 0.795652,
		0.981404, 0.009388, 0.191725,
		0.104490, 0.811728, -0.574613,
		36.773876, 28.793247, 27.376801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.244041, 28.606186, 28.078115>,  <36.700733, 28.225037, 27.779030>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.244041, 28.606186, 28.078115> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.053047, 28.881241, 27.859333>,  <36.938450, 29.046274, 27.728064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.053047, 28.881241, 27.859333>,  <37.244041, 28.606186, 28.078115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.053047, 28.881241, 27.859333> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114373, 0.568563, 0.814651,
		0.871163, 0.451542, -0.192834,
		-0.477487, 0.687638, -0.546955,
		36.909801, 29.087532, 27.695246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.610249, 29.252041, 28.159937>,  <37.244041, 28.606186, 28.078115>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.610249, 29.252041, 28.159937> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.235710, 29.345984, 28.055557>,  <37.010986, 29.402349, 27.992929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.235710, 29.345984, 28.055557>,  <37.610249, 29.252041, 28.159937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.235710, 29.345984, 28.055557> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096902, 0.541522, 0.835083,
		0.337433, 0.807215, -0.484296,
		-0.936349, 0.234855, -0.260949,
		36.954807, 29.416441, 27.977272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.633888, 29.959030, 28.259241>,  <37.610249, 29.252041, 28.159937>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.633888, 29.959030, 28.259241> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.253593, 29.835779, 28.272886>,  <37.025417, 29.761827, 28.281073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.253593, 29.835779, 28.272886>,  <37.633888, 29.959030, 28.259241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.253593, 29.835779, 28.272886> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166238, 0.599590, 0.782851,
		-0.261672, 0.738612, -0.621273,
		-0.950733, -0.308129, 0.034111,
		36.968372, 29.743340, 28.283119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.263191, 30.574829, 28.418905>,  <37.633888, 29.959030, 28.259241>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.263191, 30.574829, 28.418905> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.026897, 30.269796, 28.524357>,  <36.885120, 30.086777, 28.587627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.026897, 30.269796, 28.524357>,  <37.263191, 30.574829, 28.418905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.026897, 30.269796, 28.524357> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323876, 0.523362, 0.788160,
		-0.739010, 0.380211, -0.556151,
		-0.590735, -0.762582, 0.263629,
		36.849678, 30.041021, 28.603445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.748932, 30.896603, 28.778379>,  <37.263191, 30.574829, 28.418905>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.748932, 30.896603, 28.778379> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.703873, 30.510046, 28.870813>,  <36.676838, 30.278112, 28.926273>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.703873, 30.510046, 28.870813>,  <36.748932, 30.896603, 28.778379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.703873, 30.510046, 28.870813> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230091, 0.251616, 0.940079,
		-0.966628, 0.052726, -0.250701,
		-0.112647, -0.966390, 0.231087,
		36.670078, 30.220129, 28.940140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.136978, 30.893541, 29.128529>,  <36.748932, 30.896603, 28.778379>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.136978, 30.893541, 29.128529> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.322735, 30.558567, 29.243801>,  <36.434189, 30.357582, 29.312965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.322735, 30.558567, 29.243801>,  <36.136978, 30.893541, 29.128529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.322735, 30.558567, 29.243801> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051767, 0.299172, 0.952794,
		-0.884118, -0.457384, 0.095580,
		0.464387, -0.837435, 0.288181,
		36.462051, 30.307337, 29.330256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.622520, 30.621950, 29.552080>,  <36.136978, 30.893541, 29.128529>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.622520, 30.621950, 29.552080> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.999622, 30.510574, 29.625496>,  <36.225883, 30.443748, 29.669546>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.999622, 30.510574, 29.625496>,  <35.622520, 30.621950, 29.552080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.999622, 30.510574, 29.625496> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065267, 0.385670, 0.920326,
		-0.327040, -0.879620, 0.345419,
		0.942754, -0.278439, 0.183540,
		36.282448, 30.427042, 29.680557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.610260, 30.609892, 30.279280>,  <35.622520, 30.621950, 29.552080>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.610260, 30.609892, 30.279280> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.002083, 30.553564, 30.221827>,  <36.237179, 30.519768, 30.187355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.002083, 30.553564, 30.221827>,  <35.610260, 30.609892, 30.279280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.002083, 30.553564, 30.221827> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183940, 0.338111, 0.922955,
		-0.081407, -0.930511, 0.357103,
		0.979561, -0.140820, -0.143633,
		36.295952, 30.511318, 30.178736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.941635, 30.160299, 30.875984>,  <35.610260, 30.609892, 30.279280>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.941635, 30.160299, 30.875984> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.213688, 30.406670, 30.716959>,  <36.376919, 30.554491, 30.621544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.213688, 30.406670, 30.716959>,  <35.941635, 30.160299, 30.875984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.213688, 30.406670, 30.716959> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305434, 0.254918, 0.917457,
		0.666430, -0.745422, -0.014747,
		0.680134, 0.615925, -0.397562,
		36.417728, 30.591446, 30.597691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.476048, 29.879030, 31.172716>,  <35.941635, 30.160299, 30.875984>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.476048, 29.879030, 31.172716> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.555244, 30.242506, 31.025700>,  <36.602764, 30.460590, 30.937490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.555244, 30.242506, 31.025700>,  <36.476048, 29.879030, 31.172716>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.555244, 30.242506, 31.025700> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487647, 0.233955, 0.841110,
		0.850294, -0.345764, -0.396797,
		0.197993, 0.908687, -0.367541,
		36.614643, 30.515112, 30.915438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.188702, 29.864124, 31.338224>,  <36.476048, 29.879030, 31.172716>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.188702, 29.864124, 31.338224> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.021221, 30.223190, 31.283257>,  <36.920731, 30.438629, 31.250277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.021221, 30.223190, 31.283257>,  <37.188702, 29.864124, 31.338224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.021221, 30.223190, 31.283257> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349805, 0.299072, 0.887802,
		0.838047, 0.323657, -0.439231,
		-0.418705, 0.897665, -0.137420,
		36.895611, 30.492489, 31.242031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.576103, 30.244822, 31.685215>,  <37.188702, 29.864124, 31.338224>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.576103, 30.244822, 31.685215> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.281513, 30.508181, 31.623098>,  <37.104759, 30.666195, 31.585829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.281513, 30.508181, 31.623098>,  <37.576103, 30.244822, 31.685215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.281513, 30.508181, 31.623098> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146072, 0.378934, 0.913823,
		0.660502, 0.650326, -0.375250,
		-0.736478, 0.658396, -0.155292,
		37.060570, 30.705700, 31.576511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.827190, 30.873068, 31.903431>,  <37.576103, 30.244822, 31.685215>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.827190, 30.873068, 31.903431> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.431145, 30.929068, 31.900101>,  <37.193516, 30.962667, 31.898102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.431145, 30.929068, 31.900101>,  <37.827190, 30.873068, 31.903431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.431145, 30.929068, 31.900101> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057652, 0.460410, 0.885833,
		0.127848, 0.876598, -0.463930,
		-0.990117, 0.139998, -0.008325,
		37.134109, 30.971067, 31.897604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695240, 31.597862, 31.978548>,  <37.827190, 30.873068, 31.903431>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.695240, 31.597862, 31.978548> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.375912, 31.403646, 32.121056>,  <37.184315, 31.287117, 32.206562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.375912, 31.403646, 32.121056>,  <37.695240, 31.597862, 31.978548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.375912, 31.403646, 32.121056> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119841, 0.451671, 0.884099,
		-0.590183, 0.748494, -0.302392,
		-0.798324, -0.485542, 0.356269,
		37.136414, 31.257984, 32.227936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698280, 32.358749, 32.091187>,  <37.695240, 31.597862, 31.978548>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.698280, 32.358749, 32.091187> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.084259, 32.436268, 32.161983>,  <38.315845, 32.482777, 32.204464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.084259, 32.436268, 32.161983>,  <37.698280, 32.358749, 32.091187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.084259, 32.436268, 32.161983> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188884, -0.044537, -0.980989,
		-0.182227, 0.980031, -0.079580,
		0.964944, 0.193794, 0.176997,
		38.373741, 32.494408, 32.215084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.950840, 32.747753, 31.511587>,  <37.698280, 32.358749, 32.091187>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.950840, 32.747753, 31.511587> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.303059, 32.626381, 31.657232>,  <38.514389, 32.553558, 31.744619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.303059, 32.626381, 31.657232>,  <37.950840, 32.747753, 31.511587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.303059, 32.626381, 31.657232> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325133, -0.172281, -0.929843,
		0.344868, 0.937151, -0.053046,
		0.880542, -0.303427, 0.364112,
		38.567223, 32.535355, 31.766466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.496944, 32.992741, 31.096031>,  <37.950840, 32.747753, 31.511587>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.496944, 32.992741, 31.096031> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.701336, 32.704636, 31.283703>,  <38.823971, 32.531773, 31.396305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.701336, 32.704636, 31.283703>,  <38.496944, 32.992741, 31.096031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.701336, 32.704636, 31.283703> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585781, -0.107689, -0.803283,
		0.629098, 0.685294, 0.366888,
		0.510975, -0.720260, 0.469180,
		38.854630, 32.488556, 31.424458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.187550, 33.081928, 30.875963>,  <38.496944, 32.992741, 31.096031>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.187550, 33.081928, 30.875963> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.198368, 32.701149, 30.997992>,  <39.204857, 32.472683, 31.071209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.198368, 32.701149, 30.997992>,  <39.187550, 33.081928, 30.875963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.198368, 32.701149, 30.997992> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473898, -0.256502, -0.842394,
		0.880164, 0.167354, 0.444189,
		0.027043, -0.951945, 0.305073,
		39.206482, 32.415565, 31.089514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.766323, 32.865379, 30.706579>,  <39.187550, 33.081928, 30.875963>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.766323, 32.865379, 30.706579> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.603065, 32.503010, 30.751699>,  <39.505112, 32.285587, 30.778772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.603065, 32.503010, 30.751699>,  <39.766323, 32.865379, 30.706579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.603065, 32.503010, 30.751699> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563649, -0.347264, -0.749471,
		0.718134, -0.242313, 0.652356,
		-0.408146, -0.905921, 0.112803,
		39.480621, 32.231232, 30.785540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.263817, 32.413448, 30.449642>,  <39.766323, 32.865379, 30.706579>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.263817, 32.413448, 30.449642> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.961414, 32.152637, 30.472689>,  <39.779972, 31.996151, 30.486517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.961414, 32.152637, 30.472689>,  <40.263817, 32.413448, 30.449642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.961414, 32.152637, 30.472689> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441655, -0.573081, -0.690304,
		0.483115, -0.496426, 0.721222,
		-0.756004, -0.652027, 0.057615,
		39.734612, 31.957029, 30.489973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.539177, 31.724691, 30.452562>,  <40.263817, 32.413448, 30.449642>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.539177, 31.724691, 30.452562> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.159325, 31.666149, 30.341721>,  <39.931416, 31.631023, 30.275215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.159325, 31.666149, 30.341721>,  <40.539177, 31.724691, 30.452562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.159325, 31.666149, 30.341721> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302368, -0.660238, -0.687503,
		-0.082333, -0.736659, 0.671234,
		-0.949629, -0.146356, -0.277102,
		39.874435, 31.622242, 30.258591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.324142, 31.024847, 30.449875>,  <40.539177, 31.724691, 30.452562>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.324142, 31.024847, 30.449875> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.094009, 31.201262, 30.174345>,  <39.955929, 31.307110, 30.009027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.094009, 31.201262, 30.174345>,  <40.324142, 31.024847, 30.449875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.094009, 31.201262, 30.174345> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445210, -0.537612, -0.716074,
		-0.686136, -0.718651, 0.112950,
		-0.575330, 0.441038, -0.688826,
		39.921410, 31.333572, 29.967697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.111721, 30.468842, 30.019257>,  <40.324142, 31.024847, 30.449875>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.111721, 30.468842, 30.019257> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.022404, 30.777462, 29.780979>,  <39.968811, 30.962633, 29.638014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.022404, 30.777462, 29.780979>,  <40.111721, 30.468842, 30.019257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.022404, 30.777462, 29.780979> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078703, -0.594857, -0.799969,
		-0.971568, -0.225513, 0.072106,
		-0.223296, 0.771550, -0.595693,
		39.955414, 31.008926, 29.602272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.718170, 30.158678, 29.503094>,  <40.111721, 30.468842, 30.019257>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.718170, 30.158678, 29.503094> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.837997, 30.501831, 29.336096>,  <39.909893, 30.707722, 29.235897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.837997, 30.501831, 29.336096>,  <39.718170, 30.158678, 29.503094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.837997, 30.501831, 29.336096> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056751, -0.420792, -0.905380,
		-0.952386, 0.294915, -0.077370,
		0.299567, 0.857880, -0.417493,
		39.927868, 30.759195, 29.210848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.181114, 30.313351, 29.056347>,  <39.718170, 30.158678, 29.503094>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.181114, 30.313351, 29.056347> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.500694, 30.529474, 28.950716>,  <39.692444, 30.659149, 28.887339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.500694, 30.529474, 28.950716>,  <39.181114, 30.313351, 29.056347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.500694, 30.529474, 28.950716> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069338, -0.353420, -0.932892,
		-0.597381, 0.763649, -0.244902,
		0.798955, 0.540311, -0.264076,
		39.740379, 30.691568, 28.871492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.972664, 30.460093, 28.455591>,  <39.181114, 30.313351, 29.056347>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.972664, 30.460093, 28.455591> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.365185, 30.535467, 28.439903>,  <39.600697, 30.580692, 28.430490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.365185, 30.535467, 28.439903>,  <38.972664, 30.460093, 28.455591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.365185, 30.535467, 28.439903> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002188, -0.214686, -0.976681,
		-0.192464, 0.958332, -0.211084,
		0.981301, 0.188438, -0.039222,
		39.659576, 30.591999, 28.428137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.134159, 30.777996, 27.791162>,  <38.972664, 30.460093, 28.455591>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.134159, 30.777996, 27.791162> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.499466, 30.664110, 27.907698>,  <39.718651, 30.595779, 27.977619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.499466, 30.664110, 27.907698>,  <39.134159, 30.777996, 27.791162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.499466, 30.664110, 27.907698> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219627, -0.258199, -0.940796,
		0.343082, 0.923185, -0.173274,
		0.913268, -0.284715, 0.291340,
		39.773445, 30.578695, 27.995100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.603821, 31.090603, 27.317688>,  <39.134159, 30.777996, 27.791162>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.603821, 31.090603, 27.317688> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.801285, 30.789707, 27.492245>,  <39.919762, 30.609169, 27.596979>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.801285, 30.789707, 27.492245>,  <39.603821, 31.090603, 27.317688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.801285, 30.789707, 27.492245> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391057, -0.256190, -0.883991,
		0.776772, 0.607045, 0.167697,
		0.493660, -0.752239, 0.436390,
		39.949383, 30.564035, 27.623161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.309437, 31.007967, 27.063967>,  <39.603821, 31.090603, 27.317688>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.309437, 31.007967, 27.063967> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.277256, 30.645304, 27.229618>,  <40.257946, 30.427706, 27.329008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.277256, 30.645304, 27.229618>,  <40.309437, 31.007967, 27.063967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.277256, 30.645304, 27.229618> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342395, -0.415331, -0.842773,
		0.936105, 0.073992, 0.343849,
		-0.080453, -0.906656, 0.414128,
		40.253120, 30.373306, 27.353857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.898079, 30.576441, 26.874710>,  <40.309437, 31.007967, 27.063967>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.898079, 30.576441, 26.874710> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.613300, 30.316893, 26.982115>,  <40.442432, 30.161163, 27.046558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.613300, 30.316893, 26.982115>,  <40.898079, 30.576441, 26.874710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.613300, 30.316893, 26.982115> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189916, -0.546030, -0.815956,
		0.676067, -0.529921, 0.511974,
		-0.711945, -0.648873, 0.268512,
		40.399715, 30.122231, 27.062668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.102249, 29.912170, 26.637384>,  <40.898079, 30.576441, 26.874710>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.102249, 29.912170, 26.637384> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.709209, 29.869429, 26.698158>,  <40.473385, 29.843782, 26.734623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.709209, 29.869429, 26.698158>,  <41.102249, 29.912170, 26.637384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.709209, 29.869429, 26.698158> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074372, -0.523207, -0.848954,
		0.170209, -0.845480, 0.506155,
		-0.982597, -0.106856, 0.151935,
		40.414429, 29.837372, 26.743738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.949352, 29.225195, 26.545168>,  <41.102249, 29.912170, 26.637384>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.949352, 29.225195, 26.545168> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.587627, 29.387869, 26.493282>,  <40.370594, 29.485474, 26.462151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.587627, 29.387869, 26.493282>,  <40.949352, 29.225195, 26.545168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.587627, 29.387869, 26.493282> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078749, -0.457593, -0.885668,
		-0.419541, -0.790707, 0.445834,
		-0.904314, 0.406682, -0.129712,
		40.316334, 29.509874, 26.454369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<40.190914, 28.598234, 26.426807> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.096889, 28.950941, 26.263231>,  <40.040474, 29.162565, 26.165085>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.096889, 28.950941, 26.263231>,  <40.190914, 28.598234, 26.426807>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.096889, 28.950941, 26.263231> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471352, -0.471361, -0.745417,
		-0.850042, 0.017533, 0.526423,
		-0.235065, 0.881766, -0.408941,
		40.026371, 29.215471, 26.140549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.551624, 28.546736, 26.232445>,  <40.190914, 28.598234, 26.426807>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.551624, 28.546736, 26.232445> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.665749, 28.865002, 26.018711>,  <39.734222, 29.055962, 25.890471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.665749, 28.865002, 26.018711>,  <39.551624, 28.546736, 26.232445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.665749, 28.865002, 26.018711> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509770, -0.346129, -0.787610,
		-0.811622, 0.497104, 0.306851,
		0.285313, 0.795665, -0.534335,
		39.751343, 29.103701, 25.858410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.989662, 28.647108, 25.780716>,  <39.551624, 28.546736, 26.232445>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.989662, 28.647108, 25.780716> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.293842, 28.835278, 25.601646>,  <39.476353, 28.948179, 25.494204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.293842, 28.835278, 25.601646>,  <38.989662, 28.647108, 25.780716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.293842, 28.835278, 25.601646> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206707, -0.478171, -0.853595,
		-0.615616, 0.741657, -0.266387,
		0.760453, 0.470423, -0.447676,
		39.521976, 28.976404, 25.467344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.772305, 28.868828, 25.147013>,  <38.989662, 28.647108, 25.780716>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.772305, 28.868828, 25.147013> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.168339, 28.856888, 25.092115>,  <39.405960, 28.849724, 25.059177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.168339, 28.856888, 25.092115>,  <38.772305, 28.868828, 25.147013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.168339, 28.856888, 25.092115> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140240, -0.263867, -0.954310,
		-0.007729, 0.964097, -0.265438,
		0.990087, -0.029849, -0.137244,
		39.465366, 28.847933, 25.050941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.901840, 29.341114, 24.601742>,  <38.772305, 28.868828, 25.147013>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.901840, 29.341114, 24.601742> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.228107, 29.109716, 24.599443>,  <39.423866, 28.970879, 24.598064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.228107, 29.109716, 24.599443>,  <38.901840, 29.341114, 24.601742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.228107, 29.109716, 24.599443> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186792, -0.253944, -0.949011,
		0.547535, 0.775151, -0.315192,
		0.815668, -0.578492, -0.005748,
		39.472809, 28.936169, 24.597719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.284771, 29.536787, 24.007637>,  <38.901840, 29.341114, 24.601742>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.284771, 29.536787, 24.007637> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.441334, 29.178648, 24.092638>,  <39.535271, 28.963764, 24.143639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.441334, 29.178648, 24.092638>,  <39.284771, 29.536787, 24.007637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.441334, 29.178648, 24.092638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070033, -0.259241, -0.963270,
		0.917550, 0.362146, -0.164172,
		0.391405, -0.895346, 0.212504,
		39.558754, 28.910044, 24.156389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.994205, 29.440794, 23.708090>,  <39.284771, 29.536787, 24.007637>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.994205, 29.440794, 23.708090> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.893021, 29.059826, 23.776091>,  <39.832310, 28.831245, 23.816891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.893021, 29.059826, 23.776091>,  <39.994205, 29.440794, 23.708090>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.893021, 29.059826, 23.776091> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139567, -0.209806, -0.967731,
		0.957356, -0.221076, 0.186000,
		-0.252966, -0.952422, 0.170004,
		39.817131, 28.774099, 23.827091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.587044, 29.095469, 23.591417>,  <39.994205, 29.440794, 23.708090>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.587044, 29.095469, 23.591417> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.292187, 28.826740, 23.562374>,  <40.115273, 28.665503, 23.544949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.292187, 28.826740, 23.562374>,  <40.587044, 29.095469, 23.591417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.292187, 28.826740, 23.562374> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169167, -0.079446, -0.982380,
		0.654217, -0.736439, 0.172214,
		-0.737145, -0.671823, -0.072607,
		40.071045, 28.625193, 23.540592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.811398, 28.411049, 23.309908>,  <40.587044, 29.095469, 23.591417>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.811398, 28.411049, 23.309908> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.421387, 28.415234, 23.221176>,  <40.187378, 28.417744, 23.167936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.421387, 28.415234, 23.221176>,  <40.811398, 28.411049, 23.309908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.421387, 28.415234, 23.221176> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212127, -0.251758, -0.944256,
		-0.065725, -0.967734, 0.243253,
		-0.975030, 0.010461, -0.221829,
		40.128880, 28.418373, 23.154627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.606823, 27.832905, 23.036577>,  <40.811398, 28.411049, 23.309908>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.606823, 27.832905, 23.036577> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.359894, 28.117189, 22.901640>,  <40.211735, 28.287760, 22.820679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.359894, 28.117189, 22.901640>,  <40.606823, 27.832905, 23.036577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.359894, 28.117189, 22.901640> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308223, -0.176024, -0.934887,
		-0.723817, -0.681103, -0.110395,
		-0.617322, 0.710714, -0.337341,
		40.174698, 28.330404, 22.800438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.450085, 27.673630, 22.195419>,  <40.606823, 27.832905, 23.036577>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.450085, 27.673630, 22.195419> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.271549, 28.030075, 22.228155>,  <40.164429, 28.243942, 22.247797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.271549, 28.030075, 22.228155>,  <40.450085, 27.673630, 22.195419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.271549, 28.030075, 22.228155> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063026, 0.122533, -0.990461,
		-0.892640, -0.436927, -0.110855,
		-0.446342, 0.891112, 0.081840,
		40.137646, 28.297409, 22.252707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.760696, 27.826777, 21.738478>,  <40.450085, 27.673630, 22.195419>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.760696, 27.826777, 21.738478> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.941360, 28.171520, 21.830742>,  <40.049759, 28.378366, 21.886101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.941360, 28.171520, 21.830742>,  <39.760696, 27.826777, 21.738478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.941360, 28.171520, 21.830742> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010227, 0.263515, -0.964601,
		-0.892133, 0.433309, 0.127833,
		0.451656, 0.861860, 0.230659,
		40.076859, 28.430079, 21.899939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.424644, 28.307695, 21.235022>,  <39.760696, 27.826777, 21.738478>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.424644, 28.307695, 21.235022> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.759827, 28.482193, 21.366182>,  <39.960938, 28.586891, 21.444878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.759827, 28.482193, 21.366182>,  <39.424644, 28.307695, 21.235022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.759827, 28.482193, 21.366182> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242728, 0.240215, -0.939883,
		-0.488786, 0.867172, 0.095401,
		0.837957, 0.436245, 0.327901,
		40.011215, 28.613066, 21.464552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.462440, 28.873871, 20.754860>,  <39.424644, 28.307695, 21.235022>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.462440, 28.873871, 20.754860> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.833725, 28.857944, 20.902830>,  <40.056496, 28.848389, 20.991611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.833725, 28.857944, 20.902830>,  <39.462440, 28.873871, 20.754860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.833725, 28.857944, 20.902830> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345465, 0.461399, -0.817168,
		-0.138147, 0.886298, 0.442030,
		0.928208, -0.039816, 0.369926,
		40.112186, 28.845999, 21.013807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.674610, 29.539230, 20.550596>,  <39.462440, 28.873871, 20.754860>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.674610, 29.539230, 20.550596> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.023212, 29.364332, 20.639404>,  <40.232376, 29.259394, 20.692688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.023212, 29.364332, 20.639404>,  <39.674610, 29.539230, 20.550596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.023212, 29.364332, 20.639404> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407892, 0.395034, -0.823148,
		0.272211, 0.807939, 0.522624,
		0.871507, -0.437244, 0.222019,
		40.284664, 29.233158, 20.706011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.226887, 29.999874, 20.409964>,  <39.674610, 29.539230, 20.550596>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.226887, 29.999874, 20.409964> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.412804, 29.645912, 20.397882>,  <40.524353, 29.433535, 20.390635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.412804, 29.645912, 20.397882>,  <40.226887, 29.999874, 20.409964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.412804, 29.645912, 20.397882> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333701, 0.206669, -0.919746,
		0.820128, 0.417414, 0.391351,
		0.464795, -0.884903, -0.030203,
		40.552242, 29.380442, 20.388821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.951115, 30.189112, 20.172245>,  <40.226887, 29.999874, 20.409964>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.951115, 30.189112, 20.172245> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.853077, 29.808260, 20.099169>,  <40.794254, 29.579748, 20.055323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.853077, 29.808260, 20.099169>,  <40.951115, 30.189112, 20.172245>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.853077, 29.808260, 20.099169> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426456, 0.063353, -0.902287,
		0.870670, -0.299053, 0.390515,
		-0.245091, -0.952131, -0.182693,
		40.779549, 29.522621, 20.044361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.518295, 30.013929, 19.818874>,  <40.951115, 30.189112, 20.172245>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.518295, 30.013929, 19.818874> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.240898, 29.733156, 19.753941>,  <41.074459, 29.564692, 19.714979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.240898, 29.733156, 19.753941>,  <41.518295, 30.013929, 19.818874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.240898, 29.733156, 19.753941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263456, -0.037357, -0.963948,
		0.670565, -0.711260, 0.210835,
		-0.693494, -0.701935, -0.162335,
		41.032848, 29.522575, 19.705240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.806171, 29.415583, 19.287830>,  <41.518295, 30.013929, 19.818874>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.806171, 29.415583, 19.287830> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.408283, 29.409357, 19.247244>,  <41.169552, 29.405622, 19.222893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.408283, 29.409357, 19.247244>,  <41.806171, 29.415583, 19.287830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.408283, 29.409357, 19.247244> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101534, -0.003609, -0.994826,
		0.015124, -0.999872, 0.005171,
		-0.994717, -0.015571, -0.101466,
		41.109867, 29.404688, 19.216805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.861931, 28.897810, 18.854536>,  <41.806171, 29.415583, 19.287830>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.861931, 28.897810, 18.854536> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.501938, 29.071774, 18.842592>,  <41.285942, 29.176151, 18.835426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.501938, 29.071774, 18.842592>,  <41.861931, 28.897810, 18.854536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.501938, 29.071774, 18.842592> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078850, 0.095041, -0.992346,
		-0.428741, -0.895445, -0.119828,
		-0.899980, 0.434908, -0.029858,
		41.231945, 29.202246, 18.833635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.614185, 28.624155, 18.200111>,  <41.861931, 28.897810, 18.854536>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.614185, 28.624155, 18.200111> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.370197, 28.934481, 18.264679>,  <41.223804, 29.120676, 18.303419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.370197, 28.934481, 18.264679>,  <41.614185, 28.624155, 18.200111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.370197, 28.934481, 18.264679> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113492, 0.287127, -0.951145,
		-0.784259, -0.561847, -0.263186,
		-0.609966, 0.775814, 0.161417,
		41.187206, 29.167225, 18.313105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.925243, 28.591551, 17.768202>,  <41.614185, 28.624155, 18.200111>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.925243, 28.591551, 17.768202> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.988289, 28.979778, 17.841040>,  <41.026115, 29.212715, 17.884743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.988289, 28.979778, 17.841040>,  <40.925243, 28.591551, 17.768202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.988289, 28.979778, 17.841040> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116271, 0.164877, -0.979437,
		-0.980632, 0.175541, -0.086863,
		0.157609, 0.970567, 0.182094,
		41.035572, 29.270948, 17.895668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.437149, 29.045933, 17.489769>,  <40.925243, 28.591551, 17.768202>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.437149, 29.045933, 17.489769> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.795815, 29.223007, 17.488134>,  <41.011017, 29.329252, 17.487154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.795815, 29.223007, 17.488134>,  <40.437149, 29.045933, 17.489769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.795815, 29.223007, 17.488134> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002651, -0.014603, -0.999890,
		-0.442695, 0.896559, -0.014267,
		0.896668, 0.442684, -0.004088,
		41.064816, 29.355812, 17.486908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.908146, 28.625170, 17.220383>,  <40.437149, 29.045933, 17.489769>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.908146, 28.625170, 17.220383> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.905682, 28.914459, 16.944147>,  <39.904202, 29.088034, 16.778406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.905682, 28.914459, 16.944147>,  <39.908146, 28.625170, 17.220383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.905682, 28.914459, 16.944147> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621070, 0.544023, 0.564191,
		0.783731, -0.425425, -0.452525,
		-0.006163, 0.723223, -0.690587,
		39.903831, 29.131426, 16.736971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.315384, 28.352671, 17.817625>,  <39.908146, 28.625170, 17.220383>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.315384, 28.352671, 17.817625> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.121147, 28.085331, 17.592236>,  <39.004604, 27.924927, 17.457001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.121147, 28.085331, 17.592236>,  <39.315384, 28.352671, 17.817625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.121147, 28.085331, 17.592236> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606420, -0.206721, 0.767803,
		-0.629643, 0.714545, -0.304919,
		-0.485597, -0.668351, -0.563475,
		38.975468, 27.884827, 17.423193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.640594, 28.504396, 17.910112>,  <39.315384, 28.352671, 17.817625>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.640594, 28.504396, 17.910112> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.636459, 28.114908, 17.819107>,  <38.633980, 27.881216, 17.764503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.636459, 28.114908, 17.819107>,  <38.640594, 28.504396, 17.910112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.636459, 28.114908, 17.819107> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554855, -0.183700, 0.811412,
		-0.831883, 0.134622, -0.538375,
		-0.010334, -0.973720, -0.227513,
		38.633358, 27.822792, 17.750853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.974510, 28.323433, 17.945370>,  <38.640594, 28.504396, 17.910112>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.974510, 28.323433, 17.945370> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.165062, 27.973288, 17.978350>,  <38.279392, 27.763201, 17.998137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.165062, 27.973288, 17.978350>,  <37.974510, 28.323433, 17.945370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.165062, 27.973288, 17.978350> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545596, -0.220772, 0.808446,
		-0.689483, -0.430111, -0.582767,
		0.476380, -0.875365, 0.082449,
		38.307976, 27.710678, 18.003084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.438301, 27.744654, 18.070780>,  <37.974510, 28.323433, 17.945370>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.438301, 27.744654, 18.070780> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.796524, 27.620455, 18.198257>,  <38.011459, 27.545935, 18.274744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.796524, 27.620455, 18.198257>,  <37.438301, 27.744654, 18.070780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.796524, 27.620455, 18.198257> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396540, -0.232091, 0.888195,
		-0.201807, -0.921809, -0.330973,
		0.895561, -0.310488, 0.318697,
		38.065193, 27.527306, 18.293865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.306362, 27.040596, 18.418125>,  <37.438301, 27.744654, 18.070780>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.306362, 27.040596, 18.418125> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.662376, 27.167093, 18.549469>,  <37.875984, 27.242992, 18.628275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.662376, 27.167093, 18.549469>,  <37.306362, 27.040596, 18.418125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.662376, 27.167093, 18.549469> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310987, -0.105482, 0.944543,
		0.333343, -0.942795, 0.004465,
		0.890039, 0.316246, 0.328358,
		37.929390, 27.261967, 18.647976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.364269, 26.575848, 18.916580>,  <37.306362, 27.040596, 18.418125>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.364269, 26.575848, 18.916580> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.629139, 26.869358, 18.977377>,  <37.788059, 27.045465, 19.013855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.629139, 26.869358, 18.977377>,  <37.364269, 26.575848, 18.916580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.629139, 26.869358, 18.977377> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164284, -0.055742, 0.984837,
		0.731124, -0.677099, 0.083637,
		0.662170, 0.733778, 0.151991,
		37.827789, 27.089491, 19.022974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.859516, 26.292204, 19.457659>,  <37.364269, 26.575848, 18.916580>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.859516, 26.292204, 19.457659> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.872280, 26.690903, 19.487259>,  <37.879940, 26.930122, 19.505018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.872280, 26.690903, 19.487259>,  <37.859516, 26.292204, 19.457659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.872280, 26.690903, 19.487259> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109390, -0.070109, 0.991523,
		0.993487, -0.039736, 0.106797,
		0.031912, 0.996748, 0.073999,
		37.881855, 26.989927, 19.509459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.317715, 26.316916, 19.935493>,  <37.859516, 26.292204, 19.457659>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.317715, 26.316916, 19.935493> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.148048, 26.678804, 19.919691>,  <38.046249, 26.895939, 19.910210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.148048, 26.678804, 19.919691>,  <38.317715, 26.316916, 19.935493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.148048, 26.678804, 19.919691> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096915, -0.001978, 0.995291,
		0.900385, 0.425994, 0.088520,
		-0.424163, 0.904724, -0.039505,
		38.020798, 26.950222, 19.907839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.662144, 26.718359, 20.346756>,  <38.317715, 26.316916, 19.935493>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.662144, 26.718359, 20.346756> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.322666, 26.926718, 20.310122>,  <38.118980, 27.051733, 20.288141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.322666, 26.926718, 20.310122>,  <38.662144, 26.718359, 20.346756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.322666, 26.926718, 20.310122> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024892, 0.212320, 0.976883,
		0.528299, 0.826795, -0.193161,
		-0.848693, 0.520895, -0.091588,
		38.068058, 27.082987, 20.282646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.853104, 27.327909, 20.766230>,  <38.662144, 26.718359, 20.346756>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.853104, 27.327909, 20.766230> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.457783, 27.279799, 20.728731>,  <38.220589, 27.250931, 20.706232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.457783, 27.279799, 20.728731>,  <38.853104, 27.327909, 20.766230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.457783, 27.279799, 20.728731> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116112, 0.194984, 0.973909,
		-0.098862, 0.973403, -0.206670,
		-0.988304, -0.120279, -0.093747,
		38.161293, 27.243715, 20.700607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.596245, 27.806393, 21.224184>,  <38.853104, 27.327909, 20.766230>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.596245, 27.806393, 21.224184> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.307446, 27.536623, 21.162388>,  <38.134167, 27.374762, 21.125309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.307446, 27.536623, 21.162388>,  <38.596245, 27.806393, 21.224184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.307446, 27.536623, 21.162388> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124212, -0.093317, 0.987858,
		-0.680652, 0.732423, -0.016397,
		-0.722000, -0.674424, -0.154492,
		38.090847, 27.334295, 21.116039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.082020, 28.039858, 21.508129>,  <38.596245, 27.806393, 21.224184>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.082020, 28.039858, 21.508129> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.025768, 27.644140, 21.492523>,  <37.992016, 27.406710, 21.483160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.025768, 27.644140, 21.492523>,  <38.082020, 28.039858, 21.508129>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.025768, 27.644140, 21.492523> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181279, -0.013012, 0.983345,
		-0.973324, 0.145363, -0.177509,
		-0.140633, -0.989293, -0.039016,
		37.983578, 27.347353, 21.480818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.472538, 27.986679, 21.856462>,  <38.082020, 28.039858, 21.508129>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.472538, 27.986679, 21.856462> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.652657, 27.629864, 21.871927>,  <37.760727, 27.415773, 21.881207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.652657, 27.629864, 21.871927>,  <37.472538, 27.986679, 21.856462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.652657, 27.629864, 21.871927> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119617, -0.017361, 0.992668,
		-0.884828, -0.451623, -0.114520,
		0.450300, -0.892040, 0.038660,
		37.787746, 27.362251, 21.883526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.066498, 27.636738, 22.240721>,  <37.472538, 27.986679, 21.856462>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.066498, 27.636738, 22.240721> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.399269, 27.416159, 22.265390>,  <37.598930, 27.283812, 22.280191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.399269, 27.416159, 22.265390>,  <37.066498, 27.636738, 22.240721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.399269, 27.416159, 22.265390> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180737, -0.164212, 0.969726,
		-0.524626, -0.817888, -0.236279,
		0.831927, -0.551448, 0.061672,
		37.648846, 27.250725, 22.283892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.936058, 27.079929, 22.669373>,  <37.066498, 27.636738, 22.240721>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.936058, 27.079929, 22.669373> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.333065, 27.033648, 22.653740>,  <37.571270, 27.005878, 22.644360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.333065, 27.033648, 22.653740>,  <36.936058, 27.079929, 22.669373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.333065, 27.033648, 22.653740> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035850, -0.029895, 0.998910,
		-0.116750, -0.992833, -0.025523,
		0.992514, -0.115708, -0.039084,
		37.630821, 26.998936, 22.642015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.169090, 26.412571, 22.978611>,  <36.936058, 27.079929, 22.669373>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.169090, 26.412571, 22.978611> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.454144, 26.689125, 23.026175>,  <37.625175, 26.855057, 23.054712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.454144, 26.689125, 23.026175>,  <37.169090, 26.412571, 22.978611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.454144, 26.689125, 23.026175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004635, -0.164854, 0.986307,
		0.701519, -0.703429, -0.114276,
		0.712636, 0.691383, 0.118908,
		37.667934, 26.896540, 23.061848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.461823, 26.224712, 23.624163>,  <37.169090, 26.412571, 22.978611>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.461823, 26.224712, 23.624163> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.608761, 26.594143, 23.580233>,  <37.696922, 26.815802, 23.553875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.608761, 26.594143, 23.580233>,  <37.461823, 26.224712, 23.624163>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.608761, 26.594143, 23.580233> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111474, 0.073511, 0.991045,
		0.923381, -0.376297, -0.075951,
		0.367344, 0.923578, -0.109826,
		37.718964, 26.871216, 23.547285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.114567, 26.278193, 24.127327>,  <37.461823, 26.224712, 23.624163>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.114567, 26.278193, 24.127327> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.998211, 26.651218, 24.041811>,  <37.928398, 26.875034, 23.990501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.998211, 26.651218, 24.041811>,  <38.114567, 26.278193, 24.127327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.998211, 26.651218, 24.041811> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045431, 0.209736, 0.976702,
		0.955677, 0.293825, -0.018643,
		-0.290890, 0.932565, -0.213789,
		37.910946, 26.930988, 23.977674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.530056, 26.640194, 24.652754>,  <38.114567, 26.278193, 24.127327>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.530056, 26.640194, 24.652754> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.280796, 26.926828, 24.527414>,  <38.131241, 27.098810, 24.452211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.280796, 26.926828, 24.527414>,  <38.530056, 26.640194, 24.652754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.280796, 26.926828, 24.527414> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097035, 0.326715, 0.940129,
		0.776060, 0.616246, -0.134058,
		-0.623149, 0.716588, -0.313348,
		38.093853, 27.141806, 24.433411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.830837, 27.317783, 24.909960>,  <38.530056, 26.640194, 24.652754>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.830837, 27.317783, 24.909960> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.433723, 27.330362, 24.863667>,  <38.195457, 27.337910, 24.835892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.433723, 27.330362, 24.863667>,  <38.830837, 27.317783, 24.909960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.433723, 27.330362, 24.863667> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099824, 0.318133, 0.942776,
		0.066465, 0.947524, -0.312698,
		-0.992783, 0.031447, -0.115731,
		38.135887, 27.339796, 24.828947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<40.958202, 30.773890, 28.443159> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.563145, 30.711798, 28.434551>,  <40.326111, 30.674541, 28.429386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.563145, 30.711798, 28.434551>,  <40.958202, 30.773890, 28.443159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.563145, 30.711798, 28.434551> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125617, 0.702050, 0.700960,
		-0.093703, 0.695002, -0.712875,
		-0.987644, -0.155232, -0.021520,
		40.266853, 30.665228, 28.428095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.707779, 31.434673, 28.585718>,  <40.958202, 30.773890, 28.443159>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.707779, 31.434673, 28.585718> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.396263, 31.192490, 28.651329>,  <40.209354, 31.047180, 28.690697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.396263, 31.192490, 28.651329>,  <40.707779, 31.434673, 28.585718>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.396263, 31.192490, 28.651329> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252029, 0.541469, 0.802055,
		-0.574428, 0.583293, -0.574284,
		-0.778790, -0.605459, 0.164028,
		40.162624, 31.010851, 28.700537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.295849, 31.924744, 28.700531>,  <40.707779, 31.434673, 28.585718>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.295849, 31.924744, 28.700531> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.179546, 31.568583, 28.840611>,  <40.109764, 31.354885, 28.924658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.179546, 31.568583, 28.840611>,  <40.295849, 31.924744, 28.700531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.179546, 31.568583, 28.840611> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225390, 0.419454, 0.879351,
		-0.929870, 0.176748, -0.322648,
		-0.290759, -0.890403, 0.350201,
		40.092319, 31.301462, 28.945671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.655693, 31.992294, 28.859230>,  <40.295849, 31.924744, 28.700531>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.655693, 31.992294, 28.859230> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.758053, 31.683796, 29.092363>,  <39.819469, 31.498697, 29.232243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.758053, 31.683796, 29.092363>,  <39.655693, 31.992294, 28.859230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.758053, 31.683796, 29.092363> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322984, 0.500050, 0.803512,
		-0.911152, -0.393863, -0.121139,
		0.255898, -0.771248, 0.582832,
		39.834824, 31.452421, 29.267214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.009056, 31.815760, 29.263830>,  <39.655693, 31.992294, 28.859230>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.009056, 31.815760, 29.263830> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.328838, 31.674194, 29.457989>,  <39.520710, 31.589254, 29.574484>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.328838, 31.674194, 29.457989>,  <39.009056, 31.815760, 29.263830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.328838, 31.674194, 29.457989> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365319, 0.355004, 0.860531,
		-0.476873, -0.865284, 0.154519,
		0.799459, -0.353915, 0.485396,
		39.568676, 31.568020, 29.603607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.669777, 31.470196, 29.829876>,  <39.009056, 31.815760, 29.263830>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.669777, 31.470196, 29.829876> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.046768, 31.492620, 29.961691>,  <39.272961, 31.506075, 30.040779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.046768, 31.492620, 29.961691>,  <38.669777, 31.470196, 29.829876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.046768, 31.492620, 29.961691> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332614, 0.255346, 0.907836,
		-0.033252, -0.965223, 0.259304,
		0.942476, 0.056061, 0.329538,
		39.329510, 31.509439, 30.060553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.774456, 31.141672, 30.434406>,  <38.669777, 31.470196, 29.829876>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.774456, 31.141672, 30.434406> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.075932, 31.404009, 30.451504>,  <39.256817, 31.561411, 30.461761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.075932, 31.404009, 30.451504>,  <38.774456, 31.141672, 30.434406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.075932, 31.404009, 30.451504> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198404, 0.165040, 0.966125,
		0.626570, -0.736638, 0.254509,
		0.753688, 0.655841, 0.042743,
		39.302036, 31.600761, 30.464327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.940460, 31.154995, 31.093760>,  <38.774456, 31.141672, 30.434406>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.940460, 31.154995, 31.093760> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.127472, 31.488628, 30.976648>,  <39.239681, 31.688808, 30.906382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.127472, 31.488628, 30.976648>,  <38.940460, 31.154995, 31.093760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.127472, 31.488628, 30.976648> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065983, 0.363212, 0.929367,
		0.881510, -0.415190, 0.224849,
		0.467532, 0.834083, -0.292780,
		39.267731, 31.738853, 30.888815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.428680, 31.173328, 31.526100>,  <38.940460, 31.154995, 31.093760>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.428680, 31.173328, 31.526100> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.334709, 31.543505, 31.407196>,  <39.278324, 31.765612, 31.335854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.334709, 31.543505, 31.407196>,  <39.428680, 31.173328, 31.526100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.334709, 31.543505, 31.407196> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206206, 0.251409, 0.945660,
		0.949888, 0.283461, 0.131768,
		-0.234931, 0.925442, -0.297262,
		39.264229, 31.821136, 31.318018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.480129, 31.547440, 32.131031>,  <39.428680, 31.173328, 31.526100>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.480129, 31.547440, 32.131031> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.302795, 31.822296, 31.900799>,  <39.196396, 31.987209, 31.762659>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.302795, 31.822296, 31.900799>,  <39.480129, 31.547440, 32.131031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.302795, 31.822296, 31.900799> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437929, 0.394236, 0.807958,
		0.782095, 0.610259, 0.126140,
		-0.443335, 0.687141, -0.575580,
		39.169796, 32.028439, 31.728125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.640690, 32.159653, 32.430386>,  <39.480129, 31.547440, 32.131031>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.640690, 32.159653, 32.430386> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.325447, 32.273926, 32.212292>,  <39.136303, 32.342487, 32.081436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.325447, 32.273926, 32.212292>,  <39.640690, 32.159653, 32.430386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.325447, 32.273926, 32.212292> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371039, 0.486281, 0.791113,
		0.491141, 0.825783, -0.277242,
		-0.788105, 0.285680, -0.545231,
		39.089016, 32.359631, 32.048721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.546227, 32.832718, 32.561382>,  <39.640690, 32.159653, 32.430386>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.546227, 32.832718, 32.561382> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.172989, 32.744270, 32.447937>,  <38.949047, 32.691204, 32.379868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.172989, 32.744270, 32.447937>,  <39.546227, 32.832718, 32.561382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.172989, 32.744270, 32.447937> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359590, 0.562325, 0.744638,
		-0.005166, 0.796805, -0.604215,
		-0.933096, -0.221116, -0.283618,
		38.893059, 32.677937, 32.362850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.116425, 33.359734, 32.687126>,  <39.546227, 32.832718, 32.561382>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.116425, 33.359734, 32.687126> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.804283, 33.111385, 32.657288>,  <38.616997, 32.962376, 32.639385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.804283, 33.111385, 32.657288>,  <39.116425, 33.359734, 32.687126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.804283, 33.111385, 32.657288> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506995, 0.558338, 0.656670,
		-0.366056, 0.550256, -0.750480,
		-0.780358, -0.620868, -0.074594,
		38.570175, 32.925125, 32.634911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.409695, 33.438431, 32.348305>,  <39.116425, 33.359734, 32.687126>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.409695, 33.438431, 32.348305> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.328632, 33.202057, 32.660645>,  <38.279995, 33.060230, 32.848049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.328632, 33.202057, 32.660645>,  <38.409695, 33.438431, 32.348305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.328632, 33.202057, 32.660645> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752160, 0.604531, 0.262293,
		-0.627045, -0.534168, -0.566991,
		-0.202655, -0.590937, 0.780849,
		38.267838, 33.024776, 32.894897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.158527, 33.770378, 33.021854>,  <38.409695, 33.438431, 32.348305>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.158527, 33.770378, 33.021854> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.118038, 34.153080, 33.130943>,  <38.093746, 34.382702, 33.196396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.118038, 34.153080, 33.130943>,  <38.158527, 33.770378, 33.021854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.118038, 34.153080, 33.130943> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286156, 0.234545, -0.929033,
		-0.952822, -0.172079, 0.250040,
		-0.101222, 0.956754, 0.272721,
		38.087673, 34.440105, 33.212761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.494019, 33.926155, 32.831348>,  <38.158527, 33.770378, 33.021854>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.494019, 33.926155, 32.831348> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.684280, 34.276516, 32.863708>,  <37.798439, 34.486732, 32.883125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.684280, 34.276516, 32.863708>,  <37.494019, 33.926155, 32.831348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.684280, 34.276516, 32.863708> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371592, 0.283450, -0.884068,
		-0.797288, 0.390452, 0.460304,
		0.475659, 0.875902, 0.080902,
		37.826977, 34.539288, 32.887978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.993927, 34.357983, 32.752720>,  <37.494019, 33.926155, 32.831348>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.993927, 34.357983, 32.752720> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.328911, 34.560074, 32.669388>,  <37.529903, 34.681328, 32.619389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.328911, 34.560074, 32.669388>,  <36.993927, 34.357983, 32.752720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.328911, 34.560074, 32.669388> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431051, 0.376335, -0.820102,
		-0.335933, 0.776607, 0.532945,
		0.837463, 0.505226, -0.208333,
		37.580151, 34.711643, 32.606888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.698742, 34.785130, 32.279182>,  <36.993927, 34.357983, 32.752720>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.698742, 34.785130, 32.279182> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.095356, 34.836380, 32.270798>,  <37.333324, 34.867130, 32.265766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.095356, 34.836380, 32.270798>,  <36.698742, 34.785130, 32.279182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.095356, 34.836380, 32.270798> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063603, 0.338633, -0.938766,
		-0.113186, 0.932154, 0.343916,
		0.991536, 0.128129, -0.020959,
		37.392818, 34.874821, 32.264511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.856853, 35.358070, 31.912247>,  <36.698742, 34.785130, 32.279182>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.856853, 35.358070, 31.912247> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.192612, 35.145065, 31.868713>,  <37.394066, 35.017262, 31.842592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.192612, 35.145065, 31.868713>,  <36.856853, 35.358070, 31.912247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.192612, 35.145065, 31.868713> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105048, 0.355412, -0.928788,
		0.533274, 0.768187, 0.354270,
		0.839395, -0.532514, -0.108835,
		37.444431, 34.985310, 31.836063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.268291, 35.793777, 31.528482>,  <36.856853, 35.358070, 31.912247>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.268291, 35.793777, 31.528482> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.430687, 35.431622, 31.478783>,  <37.528126, 35.214329, 31.448963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.430687, 35.431622, 31.478783>,  <37.268291, 35.793777, 31.528482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.430687, 35.431622, 31.478783> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184163, 0.214226, -0.959266,
		0.895128, 0.366571, 0.253714,
		0.405991, -0.905391, -0.124251,
		37.552483, 35.160004, 31.441507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.057331, 35.800125, 31.147200>,  <37.268291, 35.793777, 31.528482>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.057331, 35.800125, 31.147200> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.870014, 35.451668, 31.088123>,  <37.757626, 35.242592, 31.052677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.870014, 35.451668, 31.088123>,  <38.057331, 35.800125, 31.147200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.870014, 35.451668, 31.088123> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140567, 0.091570, -0.985828,
		0.872322, -0.482414, 0.079572,
		-0.468291, -0.871144, -0.147690,
		37.729527, 35.190323, 31.043816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.467533, 35.453465, 30.674416>,  <38.057331, 35.800125, 31.147200>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.467533, 35.453465, 30.674416> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.103718, 35.287548, 30.663971>,  <37.885429, 35.188000, 30.657703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.103718, 35.287548, 30.663971>,  <38.467533, 35.453465, 30.674416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.103718, 35.287548, 30.663971> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055420, -0.058780, -0.996731,
		0.411900, -0.908016, 0.076450,
		-0.909542, -0.414790, -0.026111,
		37.830856, 35.163113, 30.656137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.595943, 35.164814, 30.124542>,  <38.467533, 35.453465, 30.674416>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.595943, 35.164814, 30.124542> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.204601, 35.090710, 30.161404>,  <37.969795, 35.046249, 30.183521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.204601, 35.090710, 30.161404>,  <38.595943, 35.164814, 30.124542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.204601, 35.090710, 30.161404> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097708, 0.021060, -0.994992,
		0.182391, -0.982464, -0.038705,
		-0.978359, -0.185259, 0.092154,
		37.911095, 35.035133, 30.189051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.392273, 34.488838, 29.764414>,  <38.595943, 35.164814, 30.124542>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.392273, 34.488838, 29.764414> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.096710, 34.757641, 29.784090>,  <37.919373, 34.918922, 29.795897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.096710, 34.757641, 29.784090>,  <38.392273, 34.488838, 29.764414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.096710, 34.757641, 29.784090> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124838, -0.064793, -0.990059,
		-0.662139, -0.737705, 0.131768,
		-0.738909, 0.672007, 0.049192,
		37.875038, 34.959244, 29.798847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.915165, 34.144787, 29.369942>,  <38.392273, 34.488838, 29.764414>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.915165, 34.144787, 29.369942> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.732025, 34.500340, 29.376419>,  <37.622139, 34.713673, 29.380306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.732025, 34.500340, 29.376419>,  <37.915165, 34.144787, 29.369942>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.732025, 34.500340, 29.376419> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267930, -0.120591, -0.955861,
		-0.847694, -0.441981, 0.293371,
		-0.457851, 0.888881, 0.016196,
		37.594669, 34.767002, 29.381277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.191956, 34.113609, 29.209471>,  <37.915165, 34.144787, 29.369942>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.191956, 34.113609, 29.209471> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.302460, 34.484837, 29.109570>,  <37.368763, 34.707573, 29.049629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.302460, 34.484837, 29.109570>,  <37.191956, 34.113609, 29.209471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.302460, 34.484837, 29.109570> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075996, -0.237958, -0.968298,
		-0.958074, 0.286481, 0.004791,
		0.276259, 0.928065, -0.249752,
		37.385338, 34.763256, 29.034643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.819599, 34.276546, 28.593676>,  <37.191956, 34.113609, 29.209471>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.819599, 34.276546, 28.593676> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.095963, 34.564487, 28.566956>,  <37.261780, 34.737251, 28.550924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.095963, 34.564487, 28.566956>,  <36.819599, 34.276546, 28.593676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.095963, 34.564487, 28.566956> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057410, -0.037476, -0.997647,
		-0.720658, 0.693119, 0.015434,
		0.690910, 0.719848, -0.066800,
		37.303234, 34.780441, 28.546915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.557957, 34.596745, 27.911493>,  <36.819599, 34.276546, 28.593676>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.557957, 34.596745, 27.911493> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.937290, 34.683689, 28.003942>,  <37.164890, 34.735855, 28.059412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.937290, 34.683689, 28.003942>,  <36.557957, 34.596745, 27.911493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.937290, 34.683689, 28.003942> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277460, -0.214835, -0.936409,
		-0.153886, 0.952155, -0.264044,
		0.948333, 0.217362, 0.231125,
		37.221790, 34.748898, 28.073280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.114967, 35.153687, 27.705084>,  <36.557957, 34.596745, 27.911493>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.114967, 35.153687, 27.705084> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.743496, 35.155434, 27.556740>,  <35.520615, 35.156483, 27.467733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.743496, 35.155434, 27.556740>,  <36.114967, 35.153687, 27.705084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.743496, 35.155434, 27.556740> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370876, -0.002885, 0.928678,
		0.002988, 0.999986, 0.004300,
		-0.928678, 0.004370, -0.370862,
		35.464893, 35.156746, 27.445480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.714027, 35.681011, 28.077785>,  <36.114967, 35.153687, 27.705084>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.714027, 35.681011, 28.077785> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.435635, 35.433487, 27.932081>,  <35.268600, 35.284973, 27.844658>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.435635, 35.433487, 27.932081>,  <35.714027, 35.681011, 28.077785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.435635, 35.433487, 27.932081> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517786, 0.081025, 0.851664,
		-0.497506, 0.781349, -0.376805,
		-0.695978, -0.618813, -0.364261,
		35.226841, 35.247845, 27.822803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.008526, 36.090206, 28.085505>,  <35.714027, 35.681011, 28.077785>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.008526, 36.090206, 28.085505> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.919739, 35.700264, 28.077652>,  <34.866467, 35.466297, 28.072941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.919739, 35.700264, 28.077652>,  <35.008526, 36.090206, 28.085505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.919739, 35.700264, 28.077652> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622552, 0.126201, 0.772335,
		-0.750438, 0.183656, -0.634912,
		-0.221971, -0.974856, -0.019629,
		34.853149, 35.407806, 28.071764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.311008, 36.038105, 28.188086>,  <35.008526, 36.090206, 28.085505>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.311008, 36.038105, 28.188086> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.431305, 35.681400, 28.323326>,  <34.503483, 35.467377, 28.404470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.431305, 35.681400, 28.323326>,  <34.311008, 36.038105, 28.188086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.431305, 35.681400, 28.323326> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608635, 0.093474, 0.787925,
		-0.734247, -0.442743, -0.514646,
		0.300742, -0.891763, 0.338102,
		34.521526, 35.413872, 28.424757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.699268, 35.739357, 28.440588>,  <34.311008, 36.038105, 28.188086>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.699268, 35.739357, 28.440588> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.006699, 35.548424, 28.610970>,  <34.191158, 35.433865, 28.713198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.006699, 35.548424, 28.610970>,  <33.699268, 35.739357, 28.440588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.006699, 35.548424, 28.610970> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482452, 0.004809, 0.875909,
		-0.420152, -0.878707, -0.226596,
		0.768578, -0.477337, 0.425954,
		34.237270, 35.405224, 28.738756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.348717, 35.231007, 28.840050>,  <33.699268, 35.739357, 28.440588>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.348717, 35.231007, 28.840050> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.716450, 35.269802, 28.992582>,  <33.937092, 35.293079, 29.084101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.716450, 35.269802, 28.992582>,  <33.348717, 35.231007, 28.840050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.716450, 35.269802, 28.992582> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392120, 0.145617, 0.908316,
		0.032567, -0.984576, 0.171902,
		0.919337, 0.096987, 0.381330,
		33.992252, 35.298901, 29.106981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.286270, 34.920082, 29.435116>,  <33.348717, 35.231007, 28.840050>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.286270, 34.920082, 29.435116> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.615833, 35.137459, 29.499420>,  <33.813572, 35.267883, 29.538002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.615833, 35.137459, 29.499420>,  <33.286270, 34.920082, 29.435116>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.615833, 35.137459, 29.499420> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332204, 0.233302, 0.913898,
		0.459147, -0.806374, 0.372754,
		0.823908, 0.543444, 0.160761,
		33.863007, 35.300491, 29.547649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.678371, 34.627575, 29.926403>,  <33.286270, 34.920082, 29.435116>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.678371, 34.627575, 29.926403> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.797630, 35.009262, 29.935970>,  <33.869186, 35.238274, 29.941711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.797630, 35.009262, 29.935970>,  <33.678371, 34.627575, 29.926403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.797630, 35.009262, 29.935970> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259687, 0.056977, 0.964011,
		0.918515, -0.293631, 0.264786,
		0.298151, 0.954219, 0.023918,
		33.887077, 35.295528, 29.943146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.002193, 34.675007, 30.581308>,  <33.678371, 34.627575, 29.926403>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.002193, 34.675007, 30.581308> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.945446, 35.051857, 30.459801>,  <33.911396, 35.277966, 30.386896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.945446, 35.051857, 30.459801>,  <34.002193, 34.675007, 30.581308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.945446, 35.051857, 30.459801> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239147, 0.265161, 0.934076,
		0.960563, 0.205166, 0.187687,
		-0.141873, 0.942124, -0.303769,
		33.902885, 35.334496, 30.368670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.191666, 35.205978, 31.275011>,  <34.002193, 34.675007, 30.581308>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.191666, 35.205978, 31.275011> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.991932, 35.434803, 31.014732>,  <33.872093, 35.572098, 30.858564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.991932, 35.434803, 31.014732>,  <34.191666, 35.205978, 31.275011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.991932, 35.434803, 31.014732> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471937, 0.450248, 0.757993,
		0.726595, 0.685581, 0.045153,
		-0.499335, 0.572063, -0.650698,
		33.842133, 35.606422, 30.819523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.268478, 35.836517, 31.539185>,  <34.191666, 35.205978, 31.275011>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.268478, 35.836517, 31.539185> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.929661, 35.829227, 31.326700>,  <33.726372, 35.824852, 31.199209>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.929661, 35.829227, 31.326700>,  <34.268478, 35.836517, 31.539185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.929661, 35.829227, 31.326700> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491044, 0.409375, 0.768953,
		0.203449, 0.912185, -0.355708,
		-0.847045, -0.018225, -0.531209,
		33.675549, 35.823761, 31.167337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.960606, 36.485989, 31.641863>,  <34.268478, 35.836517, 31.539185>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.960606, 36.485989, 31.641863> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.647053, 36.276325, 31.508726>,  <33.458920, 36.150528, 31.428844>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.647053, 36.276325, 31.508726>,  <33.960606, 36.485989, 31.641863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.647053, 36.276325, 31.508726> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573049, 0.404356, 0.712819,
		-0.239044, 0.749502, -0.617337,
		-0.783884, -0.524159, -0.332842,
		33.411888, 36.119076, 31.408873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.864090, 35.417923, 24.191305> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.578140, 35.147583, 24.119555>,  <36.406570, 34.985378, 24.076504>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.578140, 35.147583, 24.119555>,  <36.864090, 35.417923, 24.191305>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.578140, 35.147583, 24.119555> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247783, 0.004961, 0.968803,
		-0.653875, 0.737023, -0.171011,
		-0.714879, -0.675849, -0.179378,
		36.363678, 34.944828, 24.065741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.330093, 35.698902, 24.370661>,  <36.864090, 35.417923, 24.191305>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.330093, 35.698902, 24.370661> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.263947, 35.305153, 24.394867>,  <36.224258, 35.068905, 24.409391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.263947, 35.305153, 24.394867>,  <36.330093, 35.698902, 24.370661>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.263947, 35.305153, 24.394867> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421980, 0.126084, 0.897795,
		-0.891396, 0.122930, -0.436236,
		-0.165368, -0.984374, 0.060517,
		36.214336, 35.009842, 24.413021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.668423, 35.669937, 24.417944>,  <36.330093, 35.698902, 24.370661>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.668423, 35.669937, 24.417944> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.811363, 35.326748, 24.565559>,  <35.897129, 35.120834, 24.654129>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.811363, 35.326748, 24.565559>,  <35.668423, 35.669937, 24.417944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.811363, 35.326748, 24.565559> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589605, 0.099205, 0.801576,
		-0.724338, -0.504032, -0.470411,
		0.357353, -0.857969, 0.369037,
		35.918568, 35.069359, 24.676271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.141602, 35.322262, 24.802631>,  <35.668423, 35.669937, 24.417944>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.141602, 35.322262, 24.802631> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.449570, 35.143467, 24.984806>,  <35.634350, 35.036190, 25.094110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.449570, 35.143467, 24.984806>,  <35.141602, 35.322262, 24.802631>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.449570, 35.143467, 24.984806> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488563, 0.046240, 0.871303,
		-0.410520, -0.893345, -0.182780,
		0.769922, -0.446986, 0.455437,
		35.680546, 35.009373, 25.121437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.891705, 34.718006, 25.104803>,  <35.141602, 35.322262, 24.802631>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.891705, 34.718006, 25.104803> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.232056, 34.828331, 25.283661>,  <35.436268, 34.894527, 25.390976>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.232056, 34.828331, 25.283661>,  <34.891705, 34.718006, 25.104803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.232056, 34.828331, 25.283661> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461996, -0.012410, 0.886795,
		0.250138, -0.961131, 0.116865,
		0.850877, 0.275812, 0.447143,
		35.487320, 34.911076, 25.417803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.762177, 34.365322, 25.640722>,  <34.891705, 34.718006, 25.104803>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.762177, 34.365322, 25.640722> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.073215, 34.600342, 25.730282>,  <35.259838, 34.741352, 25.784018>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.073215, 34.600342, 25.730282>,  <34.762177, 34.365322, 25.640722>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.073215, 34.600342, 25.730282> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341510, 0.095677, 0.934996,
		0.527930, -0.803515, 0.275051,
		0.777599, 0.587545, 0.223898,
		35.306496, 34.776604, 25.797451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.175884, 34.018654, 26.315958>,  <34.762177, 34.365322, 25.640722>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.175884, 34.018654, 26.315958> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.224773, 34.414337, 26.283649>,  <35.254105, 34.651749, 26.264263>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.224773, 34.414337, 26.283649>,  <35.175884, 34.018654, 26.315958>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.224773, 34.414337, 26.283649> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120137, 0.095529, 0.988150,
		0.985205, -0.111068, 0.130516,
		0.122220, 0.989211, -0.080773,
		35.261440, 34.711102, 26.259418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.747799, 34.091587, 26.838512>,  <35.175884, 34.018654, 26.315958>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.747799, 34.091587, 26.838512> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.592907, 34.452251, 26.761518>,  <35.499969, 34.668652, 26.715322>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.592907, 34.452251, 26.761518>,  <35.747799, 34.091587, 26.838512>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.592907, 34.452251, 26.761518> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004358, 0.206980, 0.978335,
		0.921971, 0.379684, -0.076220,
		-0.387234, 0.901665, -0.192484,
		35.476738, 34.722752, 26.703773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.113636, 34.614323, 27.219458>,  <35.747799, 34.091587, 26.838512>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.113636, 34.614323, 27.219458> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.783573, 34.821358, 27.128929>,  <35.585537, 34.945580, 27.074612>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.783573, 34.821358, 27.128929>,  <36.113636, 34.614323, 27.219458>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.783573, 34.821358, 27.128929> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176536, 0.144306, 0.973659,
		0.536610, 0.843375, -0.027703,
		-0.825157, 0.517585, -0.226322,
		35.536026, 34.976635, 27.061033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.852844, 34.867870, 27.311510>,  <36.113636, 34.614323, 27.219458>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.852844, 34.867870, 27.311510> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.190678, 34.811832, 27.518221>,  <37.393375, 34.778210, 27.642248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.190678, 34.811832, 27.518221>,  <36.852844, 34.867870, 27.311510>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.190678, 34.811832, 27.518221> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451238, -0.333301, -0.827825,
		0.288220, 0.932353, -0.218281,
		0.844579, -0.140099, 0.516777,
		37.444050, 34.769802, 27.673254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.436474, 35.264908, 27.007536>,  <36.852844, 34.867870, 27.311510>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.436474, 35.264908, 27.007536> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.585556, 34.963215, 27.223768>,  <37.675003, 34.782200, 27.353508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.585556, 34.963215, 27.223768>,  <37.436474, 35.264908, 27.007536>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.585556, 34.963215, 27.223768> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430334, -0.375642, -0.820796,
		0.822135, 0.538542, 0.184569,
		0.372701, -0.754232, 0.540581,
		37.697365, 34.736946, 27.385942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.224983, 35.253574, 26.877558>,  <37.436474, 35.264908, 27.007536>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.224983, 35.253574, 26.877558> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.103748, 34.904556, 27.030821>,  <38.031010, 34.695145, 27.122780>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.103748, 34.904556, 27.030821>,  <38.224983, 35.253574, 26.877558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.103748, 34.904556, 27.030821> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608012, -0.486656, -0.627285,
		0.733800, 0.042845, 0.678014,
		-0.303083, -0.872542, 0.383159,
		38.012825, 34.642792, 27.145769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.810692, 34.833851, 26.920841>,  <38.224983, 35.253574, 26.877558>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.810692, 34.833851, 26.920841> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.522076, 34.558174, 26.894306>,  <38.348907, 34.392769, 26.878386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.522076, 34.558174, 26.894306>,  <38.810692, 34.833851, 26.920841>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.522076, 34.558174, 26.894306> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345021, -0.274832, -0.897456,
		0.600286, -0.670436, 0.436087,
		-0.721537, -0.689190, -0.066336,
		38.305614, 34.351418, 26.874405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.119495, 34.158890, 26.841841>,  <38.810692, 34.833851, 26.920841>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.119495, 34.158890, 26.841841> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.745247, 34.050308, 26.751572>,  <38.520699, 33.985161, 26.697411>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.745247, 34.050308, 26.751572>,  <39.119495, 34.158890, 26.841841>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.745247, 34.050308, 26.751572> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323610, -0.404156, -0.855532,
		0.141028, -0.873483, 0.465981,
		-0.935622, -0.271450, -0.225671,
		38.464561, 33.968872, 26.683870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.146709, 33.423450, 26.681829>,  <39.119495, 34.158890, 26.841841>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.146709, 33.423450, 26.681829> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.829880, 33.577507, 26.492397>,  <38.639782, 33.669941, 26.378738>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.829880, 33.577507, 26.492397>,  <39.146709, 33.423450, 26.681829>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.829880, 33.577507, 26.492397> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326936, -0.387502, -0.861948,
		-0.515490, -0.837558, 0.181013,
		-0.792075, 0.385146, -0.473581,
		38.592258, 33.693050, 26.350323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.042542, 32.918808, 26.335945>,  <39.146709, 33.423450, 26.681829>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.042542, 32.918808, 26.335945> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.812542, 33.200722, 26.169737>,  <38.674541, 33.369869, 26.070011>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.812542, 33.200722, 26.169737>,  <39.042542, 32.918808, 26.335945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.812542, 33.200722, 26.169737> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021776, -0.494515, -0.868896,
		-0.817864, -0.508663, 0.268998,
		-0.574999, 0.704782, -0.415523,
		38.640041, 33.412155, 26.045080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.555859, 32.547569, 25.771593>,  <39.042542, 32.918808, 26.335945>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.555859, 32.547569, 25.771593> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.574154, 32.939926, 25.695946>,  <38.585129, 33.175339, 25.650557>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.574154, 32.939926, 25.695946>,  <38.555859, 32.547569, 25.771593>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.574154, 32.939926, 25.695946> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187660, -0.194384, -0.962808,
		-0.981169, 0.008543, -0.192964,
		0.045735, 0.980888, -0.189120,
		38.587875, 33.234192, 25.639210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.141239, 32.623035, 25.236921>,  <38.555859, 32.547569, 25.771593>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.141239, 32.623035, 25.236921> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.387142, 32.938515, 25.239473>,  <38.534683, 33.127800, 25.241005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.387142, 32.938515, 25.239473>,  <38.141239, 32.623035, 25.236921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.387142, 32.938515, 25.239473> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346104, -0.262488, -0.900729,
		-0.708725, 0.555933, -0.434336,
		0.614753, 0.788694, 0.006379,
		38.571568, 33.175121, 25.241386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198597, 32.756950, 24.577110>,  <38.141239, 32.623035, 25.236921>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.198597, 32.756950, 24.577110> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.515644, 32.964291, 24.705530>,  <38.705872, 33.088696, 24.782583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.515644, 32.964291, 24.705530>,  <38.198597, 32.756950, 24.577110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.515644, 32.964291, 24.705530> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416336, -0.075429, -0.906076,
		-0.445445, 0.851838, -0.275593,
		0.792618, 0.518346, 0.321051,
		38.753429, 33.119793, 24.801846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.302460, 33.364799, 24.152903>,  <38.198597, 32.756950, 24.577110>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.302460, 33.364799, 24.152903> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.672264, 33.316193, 24.297407>,  <38.894146, 33.287029, 24.384109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.672264, 33.316193, 24.297407>,  <38.302460, 33.364799, 24.152903>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.672264, 33.316193, 24.297407> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362542, -0.012166, -0.931888,
		0.117632, 0.992515, 0.032806,
		0.924514, -0.121513, 0.361260,
		38.949619, 33.279739, 24.405785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.736729, 33.781815, 23.785530>,  <38.302460, 33.364799, 24.152903>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.736729, 33.781815, 23.785530> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.964104, 33.482136, 23.921518>,  <39.100529, 33.302330, 24.003111>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.964104, 33.482136, 23.921518>,  <38.736729, 33.781815, 23.785530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.964104, 33.482136, 23.921518> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377693, -0.129474, -0.916834,
		0.730905, 0.649571, 0.209368,
		0.568441, -0.749196, 0.339972,
		39.134636, 33.257378, 24.023510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.306446, 33.872261, 23.310934>,  <38.736729, 33.781815, 23.785530>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.306446, 33.872261, 23.310934> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.333004, 33.504219, 23.465336>,  <39.348938, 33.283394, 23.557978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.333004, 33.504219, 23.465336>,  <39.306446, 33.872261, 23.310934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.333004, 33.504219, 23.465336> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393571, -0.331342, -0.857505,
		0.916893, 0.208854, 0.340127,
		0.066395, -0.920105, 0.386004,
		39.352921, 33.228188, 23.581137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.013058, 33.827057, 23.234425>,  <39.306446, 33.872261, 23.310934>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.013058, 33.827057, 23.234425> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.827477, 33.474678, 23.271677>,  <39.716129, 33.263248, 23.294029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.827477, 33.474678, 23.271677>,  <40.013058, 33.827057, 23.234425>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.827477, 33.474678, 23.271677> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360951, -0.284002, -0.888289,
		0.808989, -0.378508, 0.449743,
		-0.463952, -0.880951, 0.093132,
		39.688290, 33.210392, 23.299616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<33.932926, 27.552839, 22.974926> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.298740, 27.713856, 22.990889>,  <34.518227, 27.810467, 23.000465>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.298740, 27.713856, 22.990889>,  <33.932926, 27.552839, 22.974926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.298740, 27.713856, 22.990889> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075172, 0.072187, 0.994554,
		0.397471, -0.912550, 0.096277,
		0.914531, 0.402544, 0.039906,
		34.573101, 27.834620, 23.002861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.136990, 27.308519, 23.574751>,  <33.932926, 27.552839, 22.974926>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.136990, 27.308519, 23.574751> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.413692, 27.590363, 23.511497>,  <34.579712, 27.759468, 23.473545>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.413692, 27.590363, 23.511497>,  <34.136990, 27.308519, 23.574751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.413692, 27.590363, 23.511497> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084775, 0.296706, 0.951198,
		0.717140, -0.644590, 0.264981,
		0.691754, 0.704606, -0.158134,
		34.621220, 27.801744, 23.464058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.554226, 27.224421, 24.127504>,  <34.136990, 27.308519, 23.574751>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.554226, 27.224421, 24.127504> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.625477, 27.591537, 23.985559>,  <34.668228, 27.811808, 23.900393>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.625477, 27.591537, 23.985559>,  <34.554226, 27.224421, 24.127504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.625477, 27.591537, 23.985559> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138862, 0.333577, 0.932440,
		0.974161, -0.215368, -0.068028,
		0.178125, 0.917793, -0.354864,
		34.678913, 27.866875, 23.879101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.181740, 27.542278, 24.485178>,  <34.554226, 27.224421, 24.127504>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.181740, 27.542278, 24.485178> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.992764, 27.848810, 24.311033>,  <34.879379, 28.032730, 24.206547>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.992764, 27.848810, 24.311033>,  <35.181740, 27.542278, 24.485178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.992764, 27.848810, 24.311033> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067243, 0.523866, 0.849142,
		0.878794, 0.371893, -0.299025,
		-0.472439, 0.766329, -0.435364,
		34.851032, 28.078709, 24.180424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.582012, 28.183750, 24.559191>,  <35.181740, 27.542278, 24.485178>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.582012, 28.183750, 24.559191> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.209309, 28.311235, 24.489630>,  <34.985687, 28.387726, 24.447893>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.209309, 28.311235, 24.489630>,  <35.582012, 28.183750, 24.559191>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.209309, 28.311235, 24.489630> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011930, 0.505593, 0.862690,
		0.362874, 0.801747, -0.474895,
		-0.931762, 0.318713, -0.173902,
		34.929779, 28.406849, 24.437460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.608315, 28.855923, 24.726156>,  <35.582012, 28.183750, 24.559191>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.608315, 28.855923, 24.726156> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.218166, 28.767715, 24.724443>,  <34.984077, 28.714792, 24.723415>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.218166, 28.767715, 24.724443>,  <35.608315, 28.855923, 24.726156>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.218166, 28.767715, 24.724443> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118594, 0.507981, 0.853165,
		-0.185962, 0.832663, -0.521623,
		-0.975374, -0.220517, -0.004284,
		34.925552, 28.701561, 24.723158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.182938, 29.477882, 24.952433>,  <35.608315, 28.855923, 24.726156>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.182938, 29.477882, 24.952433> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.963490, 29.148090, 25.007927>,  <34.831821, 28.950214, 25.041224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.963490, 29.148090, 25.007927>,  <35.182938, 29.477882, 24.952433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.963490, 29.148090, 25.007927> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309107, 0.354200, 0.882607,
		-0.776835, 0.441329, -0.449173,
		-0.548618, -0.824482, 0.138737,
		34.798904, 28.900745, 25.049549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484577, 29.764187, 25.185349>,  <35.182938, 29.477882, 24.952433>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.484577, 29.764187, 25.185349> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.528351, 29.386318, 25.309036>,  <34.554615, 29.159597, 25.383249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.528351, 29.386318, 25.309036>,  <34.484577, 29.764187, 25.185349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.528351, 29.386318, 25.309036> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316163, 0.261852, 0.911852,
		-0.942372, -0.197552, -0.270015,
		0.109434, -0.944673, 0.309221,
		34.561180, 29.102917, 25.401802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.838470, 29.632229, 25.634838>,  <34.484577, 29.764187, 25.185349>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.838470, 29.632229, 25.634838> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.095741, 29.335884, 25.712233>,  <34.250107, 29.158077, 25.758669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.095741, 29.335884, 25.712233>,  <33.838470, 29.632229, 25.634838>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.095741, 29.335884, 25.712233> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121236, 0.150972, 0.981075,
		-0.756055, -0.654467, 0.007283,
		0.643181, -0.740864, 0.193488,
		34.288696, 29.113625, 25.770279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.477226, 29.180237, 26.110430>,  <33.838470, 29.632229, 25.634838>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.477226, 29.180237, 26.110430> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.874165, 29.141493, 26.141052>,  <34.112328, 29.118246, 26.159426>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.874165, 29.141493, 26.141052>,  <33.477226, 29.180237, 26.110430>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.874165, 29.141493, 26.141052> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051310, 0.240430, 0.969309,
		-0.112295, -0.965822, 0.233620,
		0.992349, -0.096862, 0.076555,
		34.171871, 29.112434, 26.164019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.532013, 28.855473, 26.742834>,  <33.477226, 29.180237, 26.110430>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.532013, 28.855473, 26.742834> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.898731, 29.007589, 26.694054>,  <34.118763, 29.098860, 26.664785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.898731, 29.007589, 26.694054>,  <33.532013, 28.855473, 26.742834>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.898731, 29.007589, 26.694054> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019909, 0.348500, 0.937098,
		0.398873, -0.856694, 0.327072,
		0.916790, 0.380295, -0.121951,
		34.173767, 29.121677, 26.657469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.833542, 28.580357, 27.420269>,  <33.532013, 28.855473, 26.742834>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.833542, 28.580357, 27.420269> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.081673, 28.846247, 27.253738>,  <34.230553, 29.005781, 27.153820>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.081673, 28.846247, 27.253738>,  <33.833542, 28.580357, 27.420269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.081673, 28.846247, 27.253738> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087486, 0.468845, 0.878937,
		0.779445, -0.581655, 0.232686,
		0.620331, 0.664727, -0.416326,
		34.267773, 29.045666, 27.128841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.422356, 28.675533, 27.866224>,  <33.833542, 28.580357, 27.420269>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.422356, 28.675533, 27.866224> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.418018, 28.997898, 27.629452>,  <34.415417, 29.191317, 27.487389>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.418018, 28.997898, 27.629452>,  <34.422356, 28.675533, 27.866224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.418018, 28.997898, 27.629452> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291194, 0.568856, 0.769161,
		0.956603, -0.164027, -0.240845,
		-0.010843, 0.805914, -0.591933,
		34.414764, 29.239672, 27.451872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.150524, 29.097139, 27.864498>,  <34.422356, 28.675533, 27.866224>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.150524, 29.097139, 27.864498> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.834648, 29.333338, 27.797928>,  <34.645123, 29.475058, 27.757986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.834648, 29.333338, 27.797928>,  <35.150524, 29.097139, 27.864498>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.834648, 29.333338, 27.797928> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284247, 0.592562, 0.753707,
		0.543679, 0.547891, -0.635790,
		-0.789694, 0.590496, -0.166427,
		34.597740, 29.510487, 27.747999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.747845, 29.561356, 27.580900>,  <35.150524, 29.097139, 27.864498>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.747845, 29.561356, 27.580900> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.133591, 29.555794, 27.686583>,  <36.365040, 29.552456, 27.749992>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.133591, 29.555794, 27.686583>,  <35.747845, 29.561356, 27.580900>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.133591, 29.555794, 27.686583> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249606, -0.283297, -0.925980,
		0.087725, 0.958931, -0.269731,
		0.964366, -0.013905, 0.264208,
		36.422901, 29.551622, 27.765844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.175449, 30.016447, 27.092318>,  <35.747845, 29.561356, 27.580900>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.175449, 30.016447, 27.092318> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.394169, 29.734640, 27.273281>,  <36.525398, 29.565556, 27.381859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.394169, 29.734640, 27.273281>,  <36.175449, 30.016447, 27.092318>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.394169, 29.734640, 27.273281> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279547, -0.355713, -0.891808,
		0.789220, 0.614105, 0.002443,
		0.546795, -0.704516, 0.452408,
		36.558208, 29.523285, 27.409004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.812042, 29.965260, 26.693396>,  <36.175449, 30.016447, 27.092318>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.812042, 29.965260, 26.693396> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.793095, 29.618309, 26.891554>,  <36.781727, 29.410139, 27.010448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.793095, 29.618309, 26.891554>,  <36.812042, 29.965260, 26.693396>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.793095, 29.618309, 26.891554> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395911, -0.471637, -0.787917,
		0.917067, 0.158809, 0.365744,
		-0.047370, -0.867374, 0.495397,
		36.778885, 29.358097, 27.040173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.337170, 29.668804, 26.448750>,  <36.812042, 29.965260, 26.693396>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.337170, 29.668804, 26.448750> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.155464, 29.362389, 26.630663>,  <37.046440, 29.178539, 26.739811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.155464, 29.362389, 26.630663>,  <37.337170, 29.668804, 26.448750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.155464, 29.362389, 26.630663> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441359, -0.636964, -0.632044,
		0.773851, -0.086392, 0.627448,
		-0.454265, -0.766038, 0.454785,
		37.019184, 29.132578, 26.767099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.870331, 29.165691, 26.737051>,  <37.337170, 29.668804, 26.448750>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.870331, 29.165691, 26.737051> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.527134, 28.969570, 26.675802>,  <37.321217, 28.851898, 26.639053>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.527134, 28.969570, 26.675802>,  <37.870331, 29.165691, 26.737051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.527134, 28.969570, 26.675802> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467544, -0.622017, -0.628091,
		0.212709, -0.610491, 0.762925,
		-0.857996, -0.490302, -0.153123,
		37.269733, 28.822479, 26.629866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.910576, 28.484592, 26.847149>,  <37.870331, 29.165691, 26.737051>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.910576, 28.484592, 26.847149> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.574402, 28.458435, 26.631969>,  <37.372696, 28.442741, 26.502863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.574402, 28.458435, 26.631969>,  <37.910576, 28.484592, 26.847149>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.574402, 28.458435, 26.631969> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320360, -0.860607, -0.395885,
		-0.437073, -0.505054, 0.744237,
		-0.840438, -0.065393, -0.537947,
		37.322269, 28.438818, 26.470585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.897072, 27.680828, 26.811474>,  <37.910576, 28.484592, 26.847149>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.897072, 27.680828, 26.811474> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.654495, 27.843187, 26.537983>,  <37.508949, 27.940603, 26.373888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.654495, 27.843187, 26.537983>,  <37.897072, 27.680828, 26.811474>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.654495, 27.843187, 26.537983> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257788, -0.713078, -0.651970,
		-0.752185, -0.571634, 0.327799,
		-0.606435, 0.405899, -0.683727,
		37.472565, 27.964956, 26.332865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.557625, 27.086548, 26.502291>,  <37.897072, 27.680828, 26.811474>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.557625, 27.086548, 26.502291> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.520386, 27.383078, 26.236427>,  <37.498043, 27.560995, 26.076908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.520386, 27.383078, 26.236427>,  <37.557625, 27.086548, 26.502291>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.520386, 27.383078, 26.236427> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226677, -0.634248, -0.739153,
		-0.969510, -0.219478, -0.108992,
		-0.093100, 0.741322, -0.664660,
		37.492455, 27.605474, 26.037029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.127659, 26.858810, 25.900518>,  <37.557625, 27.086548, 26.502291>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.127659, 26.858810, 25.900518> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.347046, 27.160627, 25.756382>,  <37.478680, 27.341719, 25.669899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.347046, 27.160627, 25.756382>,  <37.127659, 26.858810, 25.900518>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.347046, 27.160627, 25.756382> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103678, -0.488985, -0.866109,
		-0.829719, 0.437674, -0.346422,
		0.548468, 0.754544, -0.360343,
		37.511585, 27.386990, 25.648279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.995880, 27.022240, 25.237621>,  <37.127659, 26.858810, 25.900518>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.995880, 27.022240, 25.237621> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.331287, 27.238386, 25.209641>,  <37.532532, 27.368074, 25.192852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.331287, 27.238386, 25.209641>,  <36.995880, 27.022240, 25.237621>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.331287, 27.238386, 25.209641> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031904, -0.079474, -0.996326,
		-0.543940, 0.837669, -0.049401,
		0.838517, 0.540366, -0.069954,
		37.582844, 27.400496, 25.188654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.882751, 27.528231, 24.683899>,  <36.995880, 27.022240, 25.237621>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.882751, 27.528231, 24.683899> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.278912, 27.485006, 24.718393>,  <37.516605, 27.459072, 24.739090>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.278912, 27.485006, 24.718393>,  <36.882751, 27.528231, 24.683899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.278912, 27.485006, 24.718393> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086540, -0.001901, -0.996247,
		0.107819, 0.994143, 0.007469,
		0.990397, -0.108060, 0.086238,
		37.576031, 27.452589, 24.744265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.056557, 27.894793, 24.141922>,  <36.882751, 27.528231, 24.683899>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.056557, 27.894793, 24.141922> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.392521, 27.694271, 24.225100>,  <37.594101, 27.573957, 24.275007>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.392521, 27.694271, 24.225100>,  <37.056557, 27.894793, 24.141922>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.392521, 27.694271, 24.225100> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216938, -0.041100, -0.975320,
		0.497478, 0.864295, 0.074231,
		0.839913, -0.501304, 0.207945,
		37.644493, 27.543880, 24.287483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.658848, 28.156759, 23.634951>,  <37.056557, 27.894793, 24.141922>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.658848, 28.156759, 23.634951> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.729794, 27.781570, 23.754114>,  <37.772362, 27.556458, 23.825613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.729794, 27.781570, 23.754114>,  <37.658848, 28.156759, 23.634951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.729794, 27.781570, 23.754114> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339125, -0.225919, -0.913211,
		0.923871, 0.262998, 0.278021,
		0.177362, -0.937973, 0.297909,
		37.783001, 27.500179, 23.843487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.369278, 27.972689, 23.466537>,  <37.658848, 28.156759, 23.634951>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.369278, 27.972689, 23.466537> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.162056, 27.631401, 23.490681>,  <38.037724, 27.426628, 23.505167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.162056, 27.631401, 23.490681>,  <38.369278, 27.972689, 23.466537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.162056, 27.631401, 23.490681> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161615, -0.166936, -0.972632,
		0.839942, -0.494119, 0.224375,
		-0.518052, -0.853217, 0.060359,
		38.006641, 27.375437, 23.508789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.091805, 27.812243, 23.517672>,  <38.369278, 27.972689, 23.466537>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.091805, 27.812243, 23.517672> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.416332, 28.045891, 23.508205>,  <39.611050, 28.186081, 23.502525>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.416332, 28.045891, 23.508205>,  <39.091805, 27.812243, 23.517672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.416332, 28.045891, 23.508205> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009533, 0.027260, 0.999583,
		0.584524, -0.811208, 0.016548,
		0.811321, 0.584122, -0.023667,
		39.659729, 28.221127, 23.501104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.539822, 27.515879, 23.992134>,  <39.091805, 27.812243, 23.517672>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.539822, 27.515879, 23.992134> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.615128, 27.906740, 23.952679>,  <39.660313, 28.141256, 23.929007>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.615128, 27.906740, 23.952679>,  <39.539822, 27.515879, 23.992134>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.615128, 27.906740, 23.952679> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022661, 0.096084, 0.995115,
		0.981856, -0.189585, -0.004054,
		0.188269, 0.977152, -0.098637,
		39.671608, 28.199886, 23.923088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.917755, 27.723202, 24.536970>,  <39.539822, 27.515879, 23.992134>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.917755, 27.723202, 24.536970> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.839867, 28.097391, 24.419006>,  <39.793133, 28.321905, 24.348228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.839867, 28.097391, 24.419006>,  <39.917755, 27.723202, 24.536970>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.839867, 28.097391, 24.419006> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065764, 0.312441, 0.947658,
		0.978651, 0.165137, -0.122360,
		-0.194724, 0.935473, -0.294910,
		39.781448, 28.378033, 24.330534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.474350, 28.156673, 24.819174>,  <39.917755, 27.723202, 24.536970>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.474350, 28.156673, 24.819174> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.179920, 28.409981, 24.723536>,  <40.003262, 28.561964, 24.666153>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.179920, 28.409981, 24.723536>,  <40.474350, 28.156673, 24.819174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.179920, 28.409981, 24.723536> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093787, 0.445228, 0.890492,
		0.670372, 0.633044, -0.387114,
		-0.736075, 0.633267, -0.239097,
		39.959099, 28.599960, 24.651806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.675106, 28.887508, 24.816299>,  <40.474350, 28.156673, 24.819174>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.675106, 28.887508, 24.816299> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.285355, 28.862972, 24.902847>,  <40.051502, 28.848251, 24.954777>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.285355, 28.862972, 24.902847>,  <40.675106, 28.887508, 24.816299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.285355, 28.862972, 24.902847> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145336, 0.562462, 0.813950,
		-0.171628, 0.824545, -0.539138,
		-0.974382, -0.061340, 0.216371,
		39.993038, 28.844570, 24.967758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.464561, 29.617121, 24.818409>,  <40.675106, 28.887508, 24.816299>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.464561, 29.617121, 24.818409> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.182228, 29.429386, 25.030643>,  <40.012829, 29.316746, 25.157984>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.182228, 29.429386, 25.030643>,  <40.464561, 29.617121, 24.818409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.182228, 29.429386, 25.030643> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142651, 0.639498, 0.755442,
		-0.693867, 0.608904, -0.384427,
		-0.705832, -0.469338, 0.530587,
		39.970478, 29.288586, 25.189819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.949368, 30.190866, 25.161011>,  <40.464561, 29.617121, 24.818409>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.949368, 30.190866, 25.161011> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.912868, 29.850523, 25.367973>,  <39.890968, 29.646317, 25.492151>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.912868, 29.850523, 25.367973>,  <39.949368, 30.190866, 25.161011>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.912868, 29.850523, 25.367973> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064668, 0.513416, 0.855700,
		-0.993727, 0.111537, 0.008177,
		-0.091244, -0.850860, 0.517408,
		39.885494, 29.595264, 25.523195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.577888, 30.359028, 25.766117>,  <39.949368, 30.190866, 25.161011>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.577888, 30.359028, 25.766117> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.741257, 30.006224, 25.860142>,  <39.839275, 29.794540, 25.916557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.741257, 30.006224, 25.860142>,  <39.577888, 30.359028, 25.766117>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.741257, 30.006224, 25.860142> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056595, 0.281492, 0.957893,
		-0.911040, -0.377915, 0.164883,
		0.408416, -0.882011, 0.235062,
		39.863781, 29.741621, 25.930660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.160503, 30.048679, 26.308369>,  <39.577888, 30.359028, 25.766117>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.160503, 30.048679, 26.308369> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.523529, 29.884199, 26.342422>,  <39.741344, 29.785511, 26.362854>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.523529, 29.884199, 26.342422>,  <39.160503, 30.048679, 26.308369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.523529, 29.884199, 26.342422> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004546, 0.193102, 0.981168,
		-0.419899, -0.890855, 0.173383,
		0.907560, -0.411203, 0.085133,
		39.795795, 29.760838, 26.367962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.135612, 29.611454, 26.865738>,  <39.160503, 30.048679, 26.308369>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.135612, 29.611454, 26.865738> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.526970, 29.685724, 26.829374>,  <39.761784, 29.730286, 26.807556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.526970, 29.685724, 26.829374>,  <39.135612, 29.611454, 26.865738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.526970, 29.685724, 26.829374> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043639, 0.244348, 0.968705,
		0.202074, -0.951746, 0.230966,
		0.978397, 0.185671, -0.090910,
		39.820488, 29.741426, 26.802101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.509521, 29.194857, 27.441759>,  <39.135612, 29.611454, 26.865738>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.509521, 29.194857, 27.441759> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.768650, 29.472042, 27.315184>,  <39.924126, 29.638353, 27.239239>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.768650, 29.472042, 27.315184>,  <39.509521, 29.194857, 27.441759>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.768650, 29.472042, 27.315184> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190410, 0.254913, 0.948031,
		0.737615, -0.674406, 0.033190,
		0.647818, 0.692962, -0.316441,
		39.962997, 29.679930, 27.220251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.965866, 29.173933, 27.935289>,  <39.509521, 29.194857, 27.441759>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.965866, 29.173933, 27.935289> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.047176, 29.522243, 27.756210>,  <40.095963, 29.731230, 27.648764>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.047176, 29.522243, 27.756210>,  <39.965866, 29.173933, 27.935289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.047176, 29.522243, 27.756210> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122865, 0.430944, 0.893975,
		0.971383, -0.236727, -0.019389,
		0.203272, 0.870774, -0.447697,
		40.108158, 29.783476, 27.621901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.476391, 29.521017, 28.285744>,  <39.965866, 29.173933, 27.935289>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.476391, 29.521017, 28.285744> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.325100, 29.826504, 28.076487>,  <40.234325, 30.009796, 27.950933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.325100, 29.826504, 28.076487>,  <40.476391, 29.521017, 28.285744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.325100, 29.826504, 28.076487> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132441, 0.514666, 0.847100,
		0.916189, 0.389683, -0.093514,
		-0.378229, 0.763719, -0.523141,
		40.211632, 30.055620, 27.919544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.855000, 30.084934, 28.518717>,  <40.476391, 29.521017, 28.285744>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.855000, 30.084934, 28.518717> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.504856, 30.195377, 28.359966>,  <40.294769, 30.261642, 28.264715>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.504856, 30.195377, 28.359966>,  <40.855000, 30.084934, 28.518717>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.504856, 30.195377, 28.359966> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234441, 0.475508, 0.847897,
		0.422828, 0.835259, -0.351509,
		-0.875359, 0.276107, -0.396877,
		40.242249, 30.278210, 28.240904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<40.602600, 33.372425, 23.080139> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.252701, 33.187050, 23.023521>,  <40.042759, 33.075825, 22.989550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.252701, 33.187050, 23.023521>,  <40.602600, 33.372425, 23.080139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.252701, 33.187050, 23.023521> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301984, -0.292922, -0.907195,
		0.378966, -0.836315, 0.396185,
		-0.874752, -0.463437, -0.141546,
		39.990276, 33.048019, 22.981058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.848724, 32.702717, 22.875027>,  <40.602600, 33.372425, 23.080139>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.848724, 32.702717, 22.875027> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.469616, 32.745270, 22.754747>,  <40.242153, 32.770802, 22.682579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.469616, 32.745270, 22.754747>,  <40.848724, 32.702717, 22.875027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.469616, 32.745270, 22.754747> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216772, -0.476741, -0.851897,
		-0.233981, -0.872583, 0.428779,
		-0.947767, 0.106380, -0.300700,
		40.185287, 32.777184, 22.664537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.477238, 32.035355, 22.711842>,  <40.848724, 32.702717, 22.875027>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.477238, 32.035355, 22.711842> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.279827, 32.319427, 22.511009>,  <40.161381, 32.489872, 22.390511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.279827, 32.319427, 22.511009>,  <40.477238, 32.035355, 22.711842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.279827, 32.319427, 22.511009> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156856, -0.495136, -0.854539,
		-0.855472, -0.500488, 0.132964,
		-0.493522, 0.710178, -0.502079,
		40.131771, 32.532482, 22.360386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.414230, 31.685511, 22.187531>,  <40.477238, 32.035355, 22.711842>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.414230, 31.685511, 22.187531> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.294880, 32.043278, 22.054274>,  <40.223270, 32.257938, 21.974319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.294880, 32.043278, 22.054274>,  <40.414230, 31.685511, 22.187531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.294880, 32.043278, 22.054274> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213567, -0.277628, -0.936649,
		-0.930248, -0.350623, -0.108181,
		-0.298377, 0.894420, -0.333144,
		40.205368, 32.311604, 21.954330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.975861, 31.578711, 21.588547>,  <40.414230, 31.685511, 22.187531>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.975861, 31.578711, 21.588547> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.116726, 31.952980, 21.579599>,  <40.201244, 32.177540, 21.574230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.116726, 31.952980, 21.579599>,  <39.975861, 31.578711, 21.588547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.116726, 31.952980, 21.579599> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371494, -0.161678, -0.914250,
		-0.859054, 0.313654, -0.404534,
		0.352162, 0.935672, -0.022369,
		40.222374, 32.233681, 21.572889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.810616, 31.856030, 20.922623>,  <39.975861, 31.578711, 21.588547>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.810616, 31.856030, 20.922623> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.102268, 32.117313, 21.004295>,  <40.277260, 32.274082, 21.053299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.102268, 32.117313, 21.004295>,  <39.810616, 31.856030, 20.922623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.102268, 32.117313, 21.004295> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207419, 0.073396, -0.975495,
		-0.652189, 0.753612, -0.081973,
		0.729128, 0.653209, 0.204181,
		40.321007, 32.313274, 21.065550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.775219, 32.491230, 20.441368>,  <39.810616, 31.856030, 20.922623>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.775219, 32.491230, 20.441368> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.146236, 32.431759, 20.578520>,  <40.368847, 32.396076, 20.660810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.146236, 32.431759, 20.578520>,  <39.775219, 32.491230, 20.441368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.146236, 32.431759, 20.578520> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332558, -0.090246, -0.938755,
		0.170512, 0.984760, -0.034264,
		0.927540, -0.148674, 0.342878,
		40.424500, 32.387157, 20.681383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.180954, 32.876640, 20.013599>,  <39.775219, 32.491230, 20.441368>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.180954, 32.876640, 20.013599> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.445572, 32.628384, 20.181961>,  <40.604343, 32.479431, 20.282978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.445572, 32.628384, 20.181961>,  <40.180954, 32.876640, 20.013599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.445572, 32.628384, 20.181961> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497328, -0.056984, -0.865689,
		0.561264, 0.782024, 0.270963,
		0.661550, -0.620638, 0.420905,
		40.644035, 32.442192, 20.308233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.880280, 33.101048, 19.829803>,  <40.180954, 32.876640, 20.013599>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.880280, 33.101048, 19.829803> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.890823, 32.713799, 19.929438>,  <40.897152, 32.481449, 19.989218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.890823, 32.713799, 19.929438>,  <40.880280, 33.101048, 19.829803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.890823, 32.713799, 19.929438> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524908, -0.198649, -0.827654,
		0.850751, 0.152565, 0.502939,
		0.026362, -0.968123, 0.249083,
		40.898731, 32.423363, 20.004162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.435905, 32.929390, 19.488375>,  <40.880280, 33.101048, 19.829803>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.435905, 32.929390, 19.488375> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.310432, 32.559277, 19.573650>,  <41.235149, 32.337208, 19.624815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.310432, 32.559277, 19.573650>,  <41.435905, 32.929390, 19.488375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.310432, 32.559277, 19.573650> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554141, -0.360713, -0.750209,
		0.771057, -0.117193, 0.625889,
		-0.313686, -0.925285, 0.213189,
		41.216328, 32.281693, 19.637608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.020901, 32.572086, 19.370054>,  <41.435905, 32.929390, 19.488375>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.020901, 32.572086, 19.370054> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.725845, 32.302673, 19.351067>,  <41.548813, 32.141026, 19.339674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.725845, 32.302673, 19.351067>,  <42.020901, 32.572086, 19.370054>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.725845, 32.302673, 19.351067> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393612, -0.371822, -0.840725,
		0.548603, -0.638832, 0.539378,
		-0.737635, -0.673529, -0.047470,
		41.504555, 32.100616, 19.336826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.316761, 31.904484, 19.238514>,  <42.020901, 32.572086, 19.370054>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.316761, 31.904484, 19.238514> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.943134, 31.870890, 19.099682>,  <41.718960, 31.850733, 19.016382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.943134, 31.870890, 19.099682>,  <42.316761, 31.904484, 19.238514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.943134, 31.870890, 19.099682> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356143, -0.148019, -0.922634,
		0.026114, -0.985412, 0.168171,
		-0.934067, -0.083987, -0.347082,
		41.662914, 31.845694, 18.995558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.221203, 31.225279, 18.975498>,  <42.316761, 31.904484, 19.238514>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.221203, 31.225279, 18.975498> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.979767, 31.491838, 18.800417>,  <41.834904, 31.651773, 18.695368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.979767, 31.491838, 18.800417>,  <42.221203, 31.225279, 18.975498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.979767, 31.491838, 18.800417> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331154, -0.289850, -0.897955,
		-0.725266, -0.686949, -0.045729,
		-0.603595, 0.666399, -0.437705,
		41.798687, 31.691759, 18.669106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.851528, 31.006809, 18.424780>,  <42.221203, 31.225279, 18.975498>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.851528, 31.006809, 18.424780> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.854774, 31.392994, 18.320614>,  <41.856724, 31.624704, 18.258114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.854774, 31.392994, 18.320614>,  <41.851528, 31.006809, 18.424780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.854774, 31.392994, 18.320614> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349243, -0.246760, -0.903957,
		-0.936997, -0.083611, -0.339184,
		0.008116, 0.965463, -0.260414,
		41.857208, 31.682632, 18.242489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.311783, 30.516409, 18.233370>,  <41.851528, 31.006809, 18.424780>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.311783, 30.516409, 18.233370> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.210167, 30.147051, 18.118265>,  <41.149197, 29.925436, 18.049202>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.210167, 30.147051, 18.118265>,  <41.311783, 30.516409, 18.233370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.210167, 30.147051, 18.118265> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212405, -0.236994, 0.948008,
		-0.943581, 0.301958, -0.135927,
		-0.254045, -0.923394, -0.287760,
		41.133953, 29.870033, 18.031937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.689648, 30.317326, 18.609438>,  <41.311783, 30.516409, 18.233370>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.689648, 30.317326, 18.609438> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.783775, 29.943867, 18.501421>,  <40.840252, 29.719791, 18.436611>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.783775, 29.943867, 18.501421>,  <40.689648, 30.317326, 18.609438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.783775, 29.943867, 18.501421> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424218, -0.348652, 0.835752,
		-0.874450, -0.082114, -0.478116,
		0.235323, -0.933648, -0.270044,
		40.854374, 29.663773, 18.420408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.085056, 29.788328, 18.674074>,  <40.689648, 30.317326, 18.609438>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.085056, 29.788328, 18.674074> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.436592, 29.605404, 18.728491>,  <40.647514, 29.495649, 18.761141>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.436592, 29.605404, 18.728491>,  <40.085056, 29.788328, 18.674074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.436592, 29.605404, 18.728491> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350091, -0.424365, 0.835075,
		-0.324155, -0.781526, -0.533049,
		0.878840, -0.457309, 0.136045,
		40.700245, 29.468210, 18.769304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.887917, 29.110710, 18.950130>,  <40.085056, 29.788328, 18.674074>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.887917, 29.110710, 18.950130> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.266937, 29.188210, 19.051796>,  <40.494350, 29.234709, 19.112795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.266937, 29.188210, 19.051796>,  <39.887917, 29.110710, 18.950130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.266937, 29.188210, 19.051796> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212872, -0.210546, 0.954126,
		0.238376, -0.958191, -0.158260,
		0.947556, 0.193751, 0.254162,
		40.551205, 29.246334, 19.128044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.144844, 28.589226, 19.421030>,  <39.887917, 29.110710, 18.950130>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.144844, 28.589226, 19.421030> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.392349, 28.892155, 19.504549>,  <40.540852, 29.073912, 19.554661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.392349, 28.892155, 19.504549>,  <40.144844, 28.589226, 19.421030>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.392349, 28.892155, 19.504549> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032958, -0.290583, 0.956282,
		0.784887, -0.584829, -0.204761,
		0.618761, 0.757322, 0.208800,
		40.577976, 29.119352, 19.567188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.700668, 28.268200, 19.703463>,  <40.144844, 28.589226, 19.421030>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.700668, 28.268200, 19.703463> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.699039, 28.652653, 19.813889>,  <40.698063, 28.883324, 19.880144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.699039, 28.652653, 19.813889>,  <40.700668, 28.268200, 19.703463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.699039, 28.652653, 19.813889> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014034, -0.276097, 0.961028,
		0.999893, 0.000043, 0.014613,
		-0.004076, 0.961130, 0.276067,
		40.697815, 28.940992, 19.896709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.086235, 28.168060, 20.291706>,  <40.700668, 28.268200, 19.703463>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.086235, 28.168060, 20.291706> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.908768, 28.525711, 20.316027>,  <40.802288, 28.740301, 20.330620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.908768, 28.525711, 20.316027>,  <41.086235, 28.168060, 20.291706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.908768, 28.525711, 20.316027> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175913, -0.153410, 0.972378,
		0.878757, 0.420716, 0.225352,
		-0.443667, 0.894127, 0.060801,
		40.775669, 28.793949, 20.334267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.339760, 28.515232, 20.945261>,  <41.086235, 28.168060, 20.291706>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.339760, 28.515232, 20.945261> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.002308, 28.698956, 20.834038>,  <40.799835, 28.809191, 20.767303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.002308, 28.698956, 20.834038>,  <41.339760, 28.515232, 20.945261>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.002308, 28.698956, 20.834038> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379912, -0.144701, 0.913635,
		0.379406, 0.876411, 0.296571,
		-0.843634, 0.459309, -0.278059,
		40.749218, 28.836748, 20.750620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.283279, 28.884012, 21.437424>,  <41.339760, 28.515232, 20.945261>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.283279, 28.884012, 21.437424> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.905071, 28.895512, 21.307707>,  <40.678146, 28.902411, 21.229877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.905071, 28.895512, 21.307707>,  <41.283279, 28.884012, 21.437424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.905071, 28.895512, 21.307707> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323994, -0.180773, 0.928627,
		-0.031926, 0.983105, 0.180239,
		-0.945520, 0.028749, -0.324292,
		40.621414, 28.904137, 21.210419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.946850, 29.412643, 21.806847>,  <41.283279, 28.884012, 21.437424>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.946850, 29.412643, 21.806847> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.664612, 29.145243, 21.712837>,  <40.495270, 28.984802, 21.656431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.664612, 29.145243, 21.712837>,  <40.946850, 29.412643, 21.806847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.664612, 29.145243, 21.712837> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340402, 0.028873, 0.939837,
		-0.621499, 0.743148, -0.247932,
		-0.705596, -0.668504, -0.235025,
		40.452934, 28.944691, 21.642330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.353607, 29.632044, 22.288822>,  <40.946850, 29.412643, 21.806847>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.353607, 29.632044, 22.288822> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.281178, 29.262032, 22.155239>,  <40.237720, 29.040024, 22.075089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.281178, 29.262032, 22.155239>,  <40.353607, 29.632044, 22.288822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.281178, 29.262032, 22.155239> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405511, -0.239136, 0.882255,
		-0.895975, 0.295181, -0.331808,
		-0.181078, -0.925030, -0.333960,
		40.226852, 28.984522, 22.055052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.620289, 29.423502, 22.515644>,  <40.353607, 29.632044, 22.288822>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.620289, 29.423502, 22.515644> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.802746, 29.073500, 22.450773>,  <39.912220, 28.863499, 22.411850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.802746, 29.073500, 22.450773>,  <39.620289, 29.423502, 22.515644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.802746, 29.073500, 22.450773> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415543, -0.370581, 0.830659,
		-0.786931, -0.311504, -0.532639,
		0.456140, -0.875005, -0.162178,
		39.939587, 28.810999, 22.402121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.040783, 28.859066, 22.495825>,  <39.620289, 29.423502, 22.515644>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.040783, 28.859066, 22.495825> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.404053, 28.732149, 22.605030>,  <39.622017, 28.655998, 22.670553>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.404053, 28.732149, 22.605030>,  <39.040783, 28.859066, 22.495825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.404053, 28.732149, 22.605030> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399678, -0.463533, 0.790819,
		-0.124371, -0.827322, -0.547786,
		0.908179, -0.317293, 0.273013,
		39.676506, 28.636961, 22.686934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.802608, 28.411264, 22.948381>,  <39.040783, 28.859066, 22.495825>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.802608, 28.411264, 22.948381> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.196495, 28.406437, 23.017872>,  <39.432827, 28.403542, 23.059566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.196495, 28.406437, 23.017872>,  <38.802608, 28.411264, 22.948381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.196495, 28.406437, 23.017872> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166691, -0.354067, 0.920245,
		0.050407, -0.935143, -0.350668,
		0.984720, -0.012066, 0.173727,
		39.491913, 28.402817, 23.069990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.705658, 27.656462, 22.905975>,  <38.802608, 28.411264, 22.948381>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.705658, 27.656462, 22.905975> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.389309, 27.430590, 23.000347>,  <38.199501, 27.295067, 23.056971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.389309, 27.430590, 23.000347>,  <38.705658, 27.656462, 22.905975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.389309, 27.430590, 23.000347> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108347, -0.250231, -0.962105,
		0.602316, -0.786462, 0.136719,
		-0.790870, -0.564678, 0.235929,
		38.152046, 27.261187, 23.071125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.911743, 27.044098, 22.635977>,  <38.705658, 27.656462, 22.905975>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.911743, 27.044098, 22.635977> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.514168, 27.015059, 22.669022>,  <38.275623, 26.997635, 22.688848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.514168, 27.015059, 22.669022>,  <38.911743, 27.044098, 22.635977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.514168, 27.015059, 22.669022> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059054, -0.281389, -0.957775,
		0.092781, -0.956844, 0.275395,
		-0.993934, -0.072600, 0.082613,
		38.215988, 26.993279, 22.693806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.700165, 26.470800, 22.266443>,  <38.911743, 27.044098, 22.635977>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.700165, 26.470800, 22.266443> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.388618, 26.721430, 22.277548>,  <38.201691, 26.871807, 22.284210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.388618, 26.721430, 22.277548>,  <38.700165, 26.470800, 22.266443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.388618, 26.721430, 22.277548> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070236, -0.043151, -0.996597,
		-0.623243, -0.778167, 0.077617,
		-0.778868, 0.626573, 0.027762,
		38.154957, 26.909401, 22.285877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.348358, 26.224382, 21.680143>,  <38.700165, 26.470800, 22.266443>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.348358, 26.224382, 21.680143> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.123409, 26.547617, 21.750261>,  <37.988438, 26.741558, 21.792332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.123409, 26.547617, 21.750261>,  <38.348358, 26.224382, 21.680143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.123409, 26.547617, 21.750261> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215687, 0.061296, -0.974537,
		-0.798256, -0.585865, 0.139823,
		-0.562376, 0.808087, 0.175293,
		37.954697, 26.790043, 21.802849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.671307, 26.132370, 21.247206>,  <38.348358, 26.224382, 21.680143>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.671307, 26.132370, 21.247206> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.726528, 26.522528, 21.315964>,  <37.759663, 26.756622, 21.357218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.726528, 26.522528, 21.315964>,  <37.671307, 26.132370, 21.247206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.726528, 26.522528, 21.315964> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336438, 0.209421, -0.918124,
		-0.931531, 0.068922, 0.357071,
		0.138057, 0.975394, 0.171894,
		37.767944, 26.815145, 21.367533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.082153, 26.522036, 20.977161>,  <37.671307, 26.132370, 21.247206>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.082153, 26.522036, 20.977161> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.382019, 26.786474, 20.989489>,  <37.561939, 26.945137, 20.996885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.382019, 26.786474, 20.989489>,  <37.082153, 26.522036, 20.977161>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.382019, 26.786474, 20.989489> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223498, 0.296722, -0.928442,
		-0.622934, 0.689136, 0.370197,
		0.749668, 0.661096, 0.030818,
		37.606918, 26.984802, 20.998734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.850964, 27.104187, 20.634575>,  <37.082153, 26.522036, 20.977161>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.850964, 27.104187, 20.634575> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.250748, 27.117268, 20.635424>,  <37.490620, 27.125116, 20.635933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.250748, 27.117268, 20.635424>,  <36.850964, 27.104187, 20.634575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.250748, 27.117268, 20.635424> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005541, 0.232415, -0.972601,
		-0.032300, 0.972067, 0.232471,
		0.999463, 0.032703, 0.002121,
		37.550587, 27.127079, 20.636061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.247650, 27.612152, 20.409994>,  <36.850964, 27.104187, 20.634575>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.247650, 27.612152, 20.409994> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.969872, 27.894503, 20.354174>,  <35.803204, 28.063913, 20.320681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.969872, 27.894503, 20.354174>,  <36.247650, 27.612152, 20.409994>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.969872, 27.894503, 20.354174> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196533, 0.000492, 0.980497,
		0.692180, 0.708334, 0.138386,
		-0.694451, 0.705878, -0.139551,
		35.761536, 28.106266, 20.312309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.404778, 28.080833, 20.840988>,  <36.247650, 27.612152, 20.409994>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.404778, 28.080833, 20.840988> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.015530, 28.122555, 20.758865>,  <35.781979, 28.147587, 20.709593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.015530, 28.122555, 20.758865>,  <36.404778, 28.080833, 20.840988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.015530, 28.122555, 20.758865> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207867, -0.014189, 0.978054,
		0.099101, 0.994444, 0.035489,
		-0.973124, 0.104303, -0.205306,
		35.723591, 28.153845, 20.697273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.163673, 28.571760, 21.333891>,  <36.404778, 28.080833, 20.840988>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.163673, 28.571760, 21.333891> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.822784, 28.389929, 21.230299>,  <35.618252, 28.280830, 21.168144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.822784, 28.389929, 21.230299>,  <36.163673, 28.571760, 21.333891>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.822784, 28.389929, 21.230299> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252319, -0.076519, 0.964614,
		-0.458308, 0.887415, -0.049487,
		-0.852226, -0.454577, -0.258981,
		35.567116, 28.253555, 21.152605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.635265, 28.884031, 21.660002>,  <36.163673, 28.571760, 21.333891>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.635265, 28.884031, 21.660002> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.446510, 28.544376, 21.565104>,  <35.333256, 28.340584, 21.508165>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.446510, 28.544376, 21.565104>,  <35.635265, 28.884031, 21.660002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.446510, 28.544376, 21.565104> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256867, -0.125004, 0.958328,
		-0.843411, 0.513163, -0.159128,
		-0.471887, -0.849139, -0.237244,
		35.304943, 28.289635, 21.493931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.996891, 28.961966, 21.917280>,  <35.635265, 28.884031, 21.660002>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.996891, 28.961966, 21.917280> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.039745, 28.566877, 21.871798>,  <35.065460, 28.329824, 21.844507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.039745, 28.566877, 21.871798>,  <34.996891, 28.961966, 21.917280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.039745, 28.566877, 21.871798> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352624, -0.144682, 0.924513,
		-0.929612, -0.058956, -0.363795,
		0.107140, -0.987720, -0.113708,
		35.071888, 28.270561, 21.837685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.400562, 28.705530, 22.223429>,  <34.996891, 28.961966, 21.917280>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.400562, 28.705530, 22.223429> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.632191, 28.379423, 22.221781>,  <34.771168, 28.183760, 22.220793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.632191, 28.379423, 22.221781>,  <34.400562, 28.705530, 22.223429>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.632191, 28.379423, 22.221781> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391222, -0.282305, 0.875928,
		-0.715279, -0.505611, -0.482425,
		0.579070, -0.815268, -0.004120,
		34.805912, 28.134844, 22.220545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.970001, 28.080126, 22.377327>,  <34.400562, 28.705530, 22.223429>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.970001, 28.080126, 22.377327> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.351608, 28.026806, 22.484713>,  <34.580574, 27.994814, 22.549145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.351608, 28.026806, 22.484713>,  <33.970001, 28.080126, 22.377327>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.351608, 28.026806, 22.484713> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288887, -0.170135, 0.942124,
		-0.079905, -0.976364, -0.200820,
		0.954022, -0.133295, 0.268464,
		34.637814, 27.986816, 22.565252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<38.051697, 32.663471, 17.523727> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.379749, 32.516861, 17.699472>,  <38.576580, 32.428894, 17.804918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.379749, 32.516861, 17.699472>,  <38.051697, 32.663471, 17.523727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.379749, 32.516861, 17.699472> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318760, 0.344995, 0.882820,
		-0.475155, -0.864081, 0.166107,
		0.820134, -0.366528, 0.439360,
		38.625790, 32.406902, 17.831280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.880146, 32.144897, 18.193161>,  <38.051697, 32.663471, 17.523727>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.880146, 32.144897, 18.193161> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.238556, 32.318802, 18.229233>,  <38.453602, 32.423145, 18.250875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.238556, 32.318802, 18.229233>,  <37.880146, 32.144897, 18.193161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.238556, 32.318802, 18.229233> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249719, 0.325494, 0.911973,
		0.367139, -0.839663, 0.400218,
		0.896018, 0.434763, 0.090178,
		38.507362, 32.449230, 18.256287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.093113, 31.909563, 18.852745>,  <37.880146, 32.144897, 18.193161>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.093113, 31.909563, 18.852745> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.318474, 32.230495, 18.773916>,  <38.453690, 32.423054, 18.726620>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.318474, 32.230495, 18.773916>,  <38.093113, 31.909563, 18.852745>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.318474, 32.230495, 18.773916> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256577, 0.396659, 0.881379,
		0.785330, -0.446009, 0.429340,
		0.563405, 0.802332, -0.197073,
		38.487495, 32.471195, 18.714794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.564152, 32.049809, 19.396263>,  <38.093113, 31.909563, 18.852745>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.564152, 32.049809, 19.396263> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.523712, 32.405594, 19.217993>,  <38.499447, 32.619064, 19.111031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.523712, 32.405594, 19.217993>,  <38.564152, 32.049809, 19.396263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.523712, 32.405594, 19.217993> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212748, 0.418277, 0.883053,
		0.971862, 0.184095, 0.146944,
		-0.101102, 0.889468, -0.445674,
		38.493382, 32.672436, 19.084291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.046043, 32.445690, 19.728626>,  <38.564152, 32.049809, 19.396263>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.046043, 32.445690, 19.728626> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.751183, 32.665798, 19.571751>,  <38.574268, 32.797863, 19.477625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.751183, 32.665798, 19.571751>,  <39.046043, 32.445690, 19.728626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.751183, 32.665798, 19.571751> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133795, 0.450041, 0.882928,
		0.662351, 0.703323, -0.258124,
		-0.737150, 0.550272, -0.392187,
		38.530037, 32.830879, 19.454094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.140686, 33.023376, 20.084085>,  <39.046043, 32.445690, 19.728626>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.140686, 33.023376, 20.084085> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.769234, 33.044807, 19.937235>,  <38.546364, 33.057667, 19.849125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.769234, 33.044807, 19.937235>,  <39.140686, 33.023376, 20.084085>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.769234, 33.044807, 19.937235> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308633, 0.437614, 0.844535,
		0.205908, 0.897565, -0.389844,
		-0.928627, 0.053578, -0.367127,
		38.490646, 33.060883, 19.827097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.845627, 33.636185, 20.425812>,  <39.140686, 33.023376, 20.084085>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.845627, 33.636185, 20.425812> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.525642, 33.452461, 20.271360>,  <38.333652, 33.342228, 20.178690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.525642, 33.452461, 20.271360>,  <38.845627, 33.636185, 20.425812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.525642, 33.452461, 20.271360> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561320, 0.345361, 0.752094,
		-0.212092, 0.818388, -0.534096,
		-0.799960, -0.459312, -0.386129,
		38.285656, 33.314667, 20.155521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.363533, 34.161488, 20.413105>,  <38.845627, 33.636185, 20.425812>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.363533, 34.161488, 20.413105> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.178841, 33.806679, 20.412296>,  <38.068027, 33.593796, 20.411810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.178841, 33.806679, 20.412296>,  <38.363533, 34.161488, 20.413105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.178841, 33.806679, 20.412296> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573901, 0.296996, 0.763171,
		-0.676347, 0.353539, -0.646193,
		-0.461728, -0.887019, -0.002024,
		38.040321, 33.540573, 20.411690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.661583, 34.388264, 20.462217>,  <38.363533, 34.161488, 20.413105>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.661583, 34.388264, 20.462217> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.612598, 33.994534, 20.512981>,  <37.583206, 33.758297, 20.543440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.612598, 33.994534, 20.512981>,  <37.661583, 34.388264, 20.462217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.612598, 33.994534, 20.512981> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540264, 0.173384, 0.823440,
		-0.832537, 0.032277, -0.553029,
		-0.122464, -0.984325, 0.126910,
		37.575859, 33.699234, 20.551054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.926731, 34.313255, 20.532476>,  <37.661583, 34.388264, 20.462217>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.926731, 34.313255, 20.532476> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.110451, 34.006058, 20.711021>,  <37.220680, 33.821739, 20.818148>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.110451, 34.006058, 20.711021>,  <36.926731, 34.313255, 20.532476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.110451, 34.006058, 20.711021> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574402, 0.126523, 0.808736,
		-0.677576, -0.627840, -0.383023,
		0.459296, -0.767990, 0.446362,
		37.248238, 33.775661, 20.844931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.509331, 33.730545, 20.737978>,  <36.926731, 34.313255, 20.532476>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.509331, 33.730545, 20.737978> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.827675, 33.702972, 20.978598>,  <37.018681, 33.686428, 21.122969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.827675, 33.702972, 20.978598>,  <36.509331, 33.730545, 20.737978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.827675, 33.702972, 20.978598> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602889, 0.001698, 0.797823,
		-0.056012, -0.997620, -0.040203,
		0.795857, -0.068925, 0.601549,
		37.066433, 33.682293, 21.159061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.322281, 33.517979, 21.285559>,  <36.509331, 33.730545, 20.737978>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.322281, 33.517979, 21.285559> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.654724, 33.668671, 21.449184>,  <36.854191, 33.759087, 21.547359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.654724, 33.668671, 21.449184>,  <36.322281, 33.517979, 21.285559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.654724, 33.668671, 21.449184> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495650, 0.168254, 0.852069,
		0.252176, -0.910913, 0.326565,
		0.831107, 0.376733, 0.409065,
		36.904057, 33.781689, 21.571903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.937412, 32.820290, 21.350601>,  <36.322281, 33.517979, 21.285559>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.937412, 32.820290, 21.350601> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.547291, 32.808220, 21.263084>,  <35.313217, 32.800980, 21.210575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.547291, 32.808220, 21.263084>,  <35.937412, 32.820290, 21.350601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.547291, 32.808220, 21.263084> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217837, 0.031993, -0.975461,
		0.036478, -0.999031, -0.024620,
		-0.975303, -0.030219, -0.218793,
		35.254700, 32.799168, 21.197447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.935181, 32.223820, 21.025747>,  <35.937412, 32.820290, 21.350601>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.935181, 32.223820, 21.025747> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.585011, 32.389599, 20.926258>,  <35.374908, 32.489067, 20.866564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.585011, 32.389599, 20.926258>,  <35.935181, 32.223820, 21.025747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.585011, 32.389599, 20.926258> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157469, -0.241965, -0.957422,
		-0.456986, -0.877316, 0.146560,
		-0.875424, 0.414449, -0.248725,
		35.322384, 32.513935, 20.851641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.583199, 31.746136, 20.705175>,  <35.935181, 32.223820, 21.025747>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.583199, 31.746136, 20.705175> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.368813, 32.060749, 20.582466>,  <35.240181, 32.249516, 20.508841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.368813, 32.060749, 20.582466>,  <35.583199, 31.746136, 20.705175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.368813, 32.060749, 20.582466> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138585, -0.440406, -0.887038,
		-0.832788, -0.432907, 0.345043,
		-0.535964, 0.786533, -0.306771,
		35.208023, 32.296707, 20.490435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.866734, 31.559866, 20.305031>,  <35.583199, 31.746136, 20.705175>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.866734, 31.559866, 20.305031> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.016312, 31.895576, 20.147156>,  <35.106060, 32.097004, 20.052431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.016312, 31.895576, 20.147156>,  <34.866734, 31.559866, 20.305031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.016312, 31.895576, 20.147156> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249986, -0.318598, -0.914332,
		-0.893123, 0.440580, 0.090668,
		0.373950, 0.839276, -0.394686,
		35.128498, 32.147358, 20.028749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.412987, 31.684361, 19.755020>,  <34.866734, 31.559866, 20.305031>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.412987, 31.684361, 19.755020> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.748684, 31.889473, 19.682648>,  <34.950100, 32.012539, 19.639223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.748684, 31.889473, 19.682648>,  <34.412987, 31.684361, 19.755020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.748684, 31.889473, 19.682648> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021878, -0.364314, -0.931019,
		-0.543323, 0.777388, -0.316965,
		0.839238, 0.512779, -0.180933,
		35.000454, 32.043308, 19.628368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.233814, 31.844032, 19.165987>,  <34.412987, 31.684361, 19.755020>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.233814, 31.844032, 19.165987> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.625607, 31.924294, 19.173468>,  <34.860683, 31.972450, 19.177956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.625607, 31.924294, 19.173468>,  <34.233814, 31.844032, 19.165987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.625607, 31.924294, 19.173468> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115473, -0.482780, -0.868095,
		-0.165156, 0.852445, -0.496045,
		0.979484, 0.200651, 0.018700,
		34.919453, 31.984489, 19.179077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.327812, 32.200794, 18.529507>,  <34.233814, 31.844032, 19.165987>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.327812, 32.200794, 18.529507> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.687801, 32.055443, 18.625849>,  <34.903793, 31.968231, 18.683653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.687801, 32.055443, 18.625849>,  <34.327812, 32.200794, 18.529507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.687801, 32.055443, 18.625849> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112592, -0.727471, -0.676837,
		0.421162, 0.582015, -0.695616,
		0.899970, -0.363379, 0.240853,
		34.957794, 31.946428, 18.698105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.772713, 32.219467, 18.002407>,  <34.327812, 32.200794, 18.529507>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.772713, 32.219467, 18.002407> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.973621, 31.936253, 18.200966>,  <35.094166, 31.766325, 18.320101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.973621, 31.936253, 18.200966>,  <34.772713, 32.219467, 18.002407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.973621, 31.936253, 18.200966> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037694, -0.555589, -0.830602,
		0.863887, 0.435901, -0.252369,
		0.502273, -0.708034, 0.496397,
		35.124302, 31.723843, 18.349886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.424263, 32.063709, 17.632298>,  <34.772713, 32.219467, 18.002407>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.424263, 32.063709, 17.632298> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.326401, 31.747330, 17.856634>,  <35.267685, 31.557503, 17.991236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.326401, 31.747330, 17.856634>,  <35.424263, 32.063709, 17.632298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.326401, 31.747330, 17.856634> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102249, -0.596241, -0.796267,
		0.964203, -0.137467, 0.226748,
		-0.244657, -0.790948, 0.560842,
		35.253002, 31.510046, 18.024887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.941303, 31.538244, 17.507160>,  <35.424263, 32.063709, 17.632298>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.941303, 31.538244, 17.507160> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.645405, 31.314964, 17.657465>,  <35.467865, 31.180996, 17.747648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.645405, 31.314964, 17.657465>,  <35.941303, 31.538244, 17.507160>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.645405, 31.314964, 17.657465> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232539, -0.736092, -0.635684,
		0.631433, -0.382862, 0.674321,
		-0.739742, -0.558198, 0.375762,
		35.423481, 31.147505, 17.770193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.235554, 30.904634, 17.656605>,  <35.941303, 31.538244, 17.507160>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.235554, 30.904634, 17.656605> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.841869, 30.840834, 17.625925>,  <35.605659, 30.802553, 17.607517>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.841869, 30.840834, 17.625925>,  <36.235554, 30.904634, 17.656605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.841869, 30.840834, 17.625925> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167268, -0.696673, -0.697616,
		0.057838, -0.699432, 0.712355,
		-0.984213, -0.159503, -0.076699,
		35.546604, 30.792982, 17.602915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.183018, 30.177959, 17.675993>,  <36.235554, 30.904634, 17.656605>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.183018, 30.177959, 17.675993> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.845467, 30.307402, 17.504805>,  <35.642937, 30.385067, 17.402092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.845467, 30.307402, 17.504805>,  <36.183018, 30.177959, 17.675993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.845467, 30.307402, 17.504805> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234354, -0.495225, -0.836559,
		-0.482627, -0.806257, 0.342083,
		-0.843889, 0.323578, -0.427958,
		35.592304, 30.404482, 17.376413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.620998, 30.007959, 17.079710>,  <36.183018, 30.177959, 17.675993>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.620998, 30.007959, 17.079710> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.543144, 29.633068, 16.963968>,  <36.496433, 29.408134, 16.894524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.543144, 29.633068, 16.963968>,  <36.620998, 30.007959, 17.079710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.543144, 29.633068, 16.963968> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691097, 0.340368, -0.637600,
		0.696062, 0.075874, -0.713961,
		-0.194632, -0.937226, -0.289354,
		36.484753, 29.351900, 16.877163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.901863, 30.145208, 17.780483>,  <36.620998, 30.007959, 17.079710>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.901863, 30.145208, 17.780483> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.667553, 29.843517, 17.661819>,  <36.526966, 29.662502, 17.590622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.667553, 29.843517, 17.661819>,  <36.901863, 30.145208, 17.780483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.667553, 29.843517, 17.661819> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398634, -0.050573, 0.915715,
		-0.705660, 0.654663, -0.271036,
		-0.585777, -0.754227, -0.296658,
		36.491821, 29.617249, 17.572823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.511345, 30.015196, 18.370789>,  <36.901863, 30.145208, 17.780483>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.511345, 30.015196, 18.370789> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.432079, 29.691288, 18.149879>,  <36.384521, 29.496943, 18.017334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.432079, 29.691288, 18.149879>,  <36.511345, 30.015196, 18.370789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.432079, 29.691288, 18.149879> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530505, -0.385176, 0.755119,
		-0.824195, 0.442618, -0.353260,
		-0.198161, -0.809771, -0.552271,
		36.372631, 29.448357, 17.984198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.716969, 29.863714, 18.403440>,  <36.511345, 30.015196, 18.370789>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.716969, 29.863714, 18.403440> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.931610, 29.536633, 18.320095>,  <36.060394, 29.340384, 18.270088>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.931610, 29.536633, 18.320095>,  <35.716969, 29.863714, 18.403440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.931610, 29.536633, 18.320095> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405657, -0.466493, 0.786020,
		-0.739932, -0.337258, -0.582030,
		0.536604, -0.817705, -0.208362,
		36.092590, 29.291321, 18.257587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.234859, 29.352222, 18.368282>,  <35.716969, 29.863714, 18.403440>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.234859, 29.352222, 18.368282> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.584003, 29.168234, 18.433456>,  <35.793488, 29.057840, 18.472561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.584003, 29.168234, 18.433456>,  <35.234859, 29.352222, 18.368282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.584003, 29.168234, 18.433456> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419547, -0.536877, 0.731945,
		-0.249197, -0.707242, -0.661596,
		0.872858, -0.459969, 0.162934,
		35.845860, 29.030243, 18.482336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.043255, 28.644766, 18.581423>,  <35.234859, 29.352222, 18.368282>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.043255, 28.644766, 18.581423> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.427486, 28.669113, 18.689922>,  <35.658028, 28.683722, 18.755022>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.427486, 28.669113, 18.689922>,  <35.043255, 28.644766, 18.581423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.427486, 28.669113, 18.689922> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199885, -0.526890, 0.826095,
		0.193199, -0.847751, -0.493955,
		0.960583, 0.060867, 0.271247,
		35.715660, 28.687374, 18.771297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.163315, 28.022110, 18.856892>,  <35.043255, 28.644766, 18.581423>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.163315, 28.022110, 18.856892> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.448978, 28.267292, 18.992104>,  <35.620377, 28.414402, 19.073231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.448978, 28.267292, 18.992104>,  <35.163315, 28.022110, 18.856892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.448978, 28.267292, 18.992104> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039094, -0.447229, 0.893565,
		0.698892, -0.651361, -0.295429,
		0.714158, 0.612956, 0.338029,
		35.663227, 28.451180, 19.093512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.632904, 27.597881, 19.276848>,  <35.163315, 28.022110, 18.856892>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.632904, 27.597881, 19.276848> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.686359, 27.972445, 19.406639>,  <35.718433, 28.197182, 19.484514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.686359, 27.972445, 19.406639>,  <35.632904, 27.597881, 19.276848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.686359, 27.972445, 19.406639> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000644, -0.327495, 0.944853,
		0.991030, -0.126058, -0.044368,
		0.133637, 0.936406, 0.324476,
		35.726452, 28.253366, 19.503983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.198265, 27.506384, 19.697109>,  <35.632904, 27.597881, 19.276848>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.198265, 27.506384, 19.697109> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.007263, 27.846561, 19.785418>,  <35.892662, 28.050667, 19.838402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.007263, 27.846561, 19.785418>,  <36.198265, 27.506384, 19.697109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.007263, 27.846561, 19.785418> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030401, -0.235122, 0.971490,
		0.878105, 0.470600, 0.086417,
		-0.477502, 0.850443, 0.220769,
		35.864014, 28.101694, 19.851648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.868710, 27.558100, 20.060335>,  <36.198265, 27.506384, 19.697109>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.868710, 27.558100, 20.060335> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.234985, 27.425358, 20.151012>,  <37.454750, 27.345713, 20.205418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.234985, 27.425358, 20.151012>,  <36.868710, 27.558100, 20.060335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.234985, 27.425358, 20.151012> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257807, 0.052322, -0.964779,
		0.308308, 0.941878, 0.133466,
		0.915687, -0.331857, 0.226692,
		37.509693, 27.325800, 20.219021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.367378, 28.113188, 19.748014>,  <36.868710, 27.558100, 20.060335>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.367378, 28.113188, 19.748014> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.564796, 27.773159, 19.821539>,  <37.683247, 27.569141, 19.865654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.564796, 27.773159, 19.821539>,  <37.367378, 28.113188, 19.748014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.564796, 27.773159, 19.821539> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415408, 0.044731, -0.908535,
		0.764097, 0.524764, 0.375204,
		0.493550, -0.850072, 0.183812,
		37.712860, 27.518137, 19.876682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.019993, 28.266684, 19.563828>,  <37.367378, 28.113188, 19.748014>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.019993, 28.266684, 19.563828> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.972755, 27.869528, 19.557850>,  <37.944412, 27.631235, 19.554264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.972755, 27.869528, 19.557850>,  <38.019993, 28.266684, 19.563828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.972755, 27.869528, 19.557850> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497755, -0.046170, -0.866088,
		0.859240, -0.109719, 0.499668,
		-0.118096, -0.992890, -0.014942,
		37.937328, 27.571661, 19.553368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.690876, 28.070505, 19.324688>,  <38.019993, 28.266684, 19.563828>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.690876, 28.070505, 19.324688> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.441620, 27.766981, 19.248896>,  <38.292065, 27.584867, 19.203421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.441620, 27.766981, 19.248896>,  <38.690876, 28.070505, 19.324688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.441620, 27.766981, 19.248896> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329907, -0.035358, -0.943351,
		0.709124, -0.650352, 0.272369,
		-0.623141, -0.758809, -0.189482,
		38.254677, 27.539339, 19.192051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.087109, 27.500614, 19.123842>,  <38.690876, 28.070505, 19.324688>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.087109, 27.500614, 19.123842> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.722893, 27.443848, 18.968525>,  <38.504364, 27.409788, 18.875336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.722893, 27.443848, 18.968525>,  <39.087109, 27.500614, 19.123842>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.722893, 27.443848, 18.968525> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388189, 0.029555, -0.921106,
		0.142199, -0.989437, 0.028180,
		-0.910543, -0.141920, -0.388292,
		38.449730, 27.401272, 18.852037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.108387, 26.945105, 18.582998>,  <39.087109, 27.500614, 19.123842>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.108387, 26.945105, 18.582998> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.774536, 27.146816, 18.494371>,  <38.574226, 27.267843, 18.441195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.774536, 27.146816, 18.494371>,  <39.108387, 26.945105, 18.582998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.774536, 27.146816, 18.494371> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277515, 0.037518, -0.959988,
		-0.475791, -0.862725, -0.171259,
		-0.834631, 0.504280, -0.221568,
		38.524147, 27.298100, 18.427900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.975525, 26.592739, 17.957081>,  <39.108387, 26.945105, 18.582998>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.975525, 26.592739, 17.957081> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.754635, 26.924948, 17.986158>,  <38.622101, 27.124273, 18.003605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.754635, 26.924948, 17.986158>,  <38.975525, 26.592739, 17.957081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.754635, 26.924948, 17.986158> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250952, 0.248743, -0.935495,
		-0.795028, -0.498362, -0.345783,
		-0.552225, 0.830519, 0.072693,
		38.588966, 27.174103, 18.007967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.587517, 26.629906, 17.320278>,  <38.975525, 26.592739, 17.957081>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.587517, 26.629906, 17.320278> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.605606, 27.005684, 17.456160>,  <38.616459, 27.231152, 17.537687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.605606, 27.005684, 17.456160>,  <38.587517, 26.629906, 17.320278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.605606, 27.005684, 17.456160> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177944, 0.327036, -0.928108,
		-0.983001, 0.102425, -0.152378,
		0.045228, 0.939445, 0.339703,
		38.619175, 27.287518, 17.558071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.163853, 27.068596, 16.864033>,  <38.587517, 26.629906, 17.320278>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.163853, 27.068596, 16.864033> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.450665, 27.275599, 17.050819>,  <38.622749, 27.399799, 17.162891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.450665, 27.275599, 17.050819>,  <38.163853, 27.068596, 16.864033>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.450665, 27.275599, 17.050819> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505163, 0.075810, -0.859688,
		-0.480295, 0.852314, -0.207068,
		0.717026, 0.517507, 0.466969,
		38.665771, 27.430851, 17.190910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.140835, 30.551058, 32.627312> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.428062, 30.804239, 32.511555>,  <36.600399, 30.956148, 32.442101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.428062, 30.804239, 32.511555>,  <36.140835, 30.551058, 32.627312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.428062, 30.804239, 32.511555> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174319, -0.238988, -0.955247,
		-0.673789, 0.736379, -0.061273,
		0.718067, 0.632954, -0.289392,
		36.643482, 30.994125, 32.424736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.839462, 30.995031, 32.076839>,  <36.140835, 30.551058, 32.627312>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.839462, 30.995031, 32.076839> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.234894, 30.998278, 32.016636>,  <36.472153, 31.000225, 31.980515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.234894, 30.998278, 32.016636>,  <35.839462, 30.995031, 32.076839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.234894, 30.998278, 32.016636> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138005, -0.352781, -0.925473,
		-0.060605, 0.935671, -0.347631,
		0.988575, 0.008114, -0.150508,
		36.531467, 31.000711, 31.971483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.952194, 31.318405, 31.547400>,  <35.839462, 30.995031, 32.076839>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.952194, 31.318405, 31.547400> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.312943, 31.146164, 31.533468>,  <36.529392, 31.042820, 31.525110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.312943, 31.146164, 31.533468>,  <35.952194, 31.318405, 31.547400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.312943, 31.146164, 31.533468> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141587, -0.218455, -0.965521,
		0.408146, 0.875706, -0.257985,
		0.901870, -0.430601, -0.034827,
		36.583504, 31.016983, 31.523020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.329258, 31.631538, 31.028223>,  <35.952194, 31.318405, 31.547400>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.329258, 31.631538, 31.028223> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.512989, 31.280005, 31.079868>,  <36.623226, 31.069084, 31.110855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.512989, 31.280005, 31.079868>,  <36.329258, 31.631538, 31.028223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.512989, 31.280005, 31.079868> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047958, -0.169677, -0.984332,
		0.886973, 0.445935, -0.120083,
		0.459323, -0.878835, 0.129113,
		36.650787, 31.016354, 31.118603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.935223, 31.657240, 30.536390>,  <36.329258, 31.631538, 31.028223>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.935223, 31.657240, 30.536390> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.820076, 31.288157, 30.638954>,  <36.750988, 31.066708, 30.700493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.820076, 31.288157, 30.638954>,  <36.935223, 31.657240, 30.536390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.820076, 31.288157, 30.638954> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038835, -0.278767, -0.959573,
		0.956883, -0.266270, 0.116080,
		-0.287864, -0.922707, 0.256407,
		36.733715, 31.011345, 30.715876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.406849, 31.230999, 30.116369>,  <36.935223, 31.657240, 30.536390>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.406849, 31.230999, 30.116369> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.102013, 31.021582, 30.268747>,  <36.919109, 30.895931, 30.360174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.102013, 31.021582, 30.268747>,  <37.406849, 31.230999, 30.116369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.102013, 31.021582, 30.268747> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054973, -0.533912, -0.843751,
		0.645132, -0.663956, 0.378109,
		-0.762091, -0.523545, 0.380944,
		36.873386, 30.864517, 30.383030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.561394, 30.539457, 29.926386>,  <37.406849, 31.230999, 30.116369>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.561394, 30.539457, 29.926386> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.167332, 30.531210, 29.994566>,  <36.930897, 30.526262, 30.035473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.167332, 30.531210, 29.994566>,  <37.561394, 30.539457, 29.926386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.167332, 30.531210, 29.994566> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115741, -0.653526, -0.748003,
		0.126815, -0.756623, 0.641435,
		-0.985151, -0.020618, 0.170449,
		36.871788, 30.525024, 30.045700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.447289, 29.775398, 30.018351>,  <37.561394, 30.539457, 29.926386>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.447289, 29.775398, 30.018351> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.105213, 29.962151, 29.928308>,  <36.899967, 30.074202, 29.874283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.105213, 29.962151, 29.928308>,  <37.447289, 29.775398, 30.018351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.105213, 29.962151, 29.928308> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142216, -0.628999, -0.764287,
		-0.498420, -0.621598, 0.604312,
		-0.855191, 0.466879, -0.225105,
		36.848656, 30.102215, 29.860777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.016571, 29.241974, 29.800205>,  <37.447289, 29.775398, 30.018351>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.016571, 29.241974, 29.800205> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.854347, 29.572081, 29.643002>,  <36.757011, 29.770144, 29.548679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.854347, 29.572081, 29.643002>,  <37.016571, 29.241974, 29.800205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.854347, 29.572081, 29.643002> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136965, -0.479969, -0.866528,
		-0.903747, -0.297603, 0.307690,
		-0.405563, 0.825265, -0.393010,
		36.732677, 29.819660, 29.525099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.498768, 29.027523, 29.399136>,  <37.016571, 29.241974, 29.800205>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.498768, 29.027523, 29.399136> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.579807, 29.395184, 29.264011>,  <36.628429, 29.615780, 29.182938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.579807, 29.395184, 29.264011>,  <36.498768, 29.027523, 29.399136>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.579807, 29.395184, 29.264011> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188135, -0.302004, -0.934558,
		-0.961019, 0.252895, 0.111739,
		0.202600, 0.919151, -0.337810,
		36.640587, 29.670929, 29.162668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.063255, 29.031515, 28.916271>,  <36.498768, 29.027523, 29.399136>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.063255, 29.031515, 28.916271> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.299431, 29.341057, 28.824591>,  <36.441135, 29.526781, 28.769583>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.299431, 29.341057, 28.824591>,  <36.063255, 29.031515, 28.916271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.299431, 29.341057, 28.824591> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107157, -0.206306, -0.972602,
		-0.799936, 0.598824, -0.038887,
		0.590440, 0.773852, -0.229200,
		36.476562, 29.573212, 28.755831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.779030, 29.214289, 28.248960>,  <36.063255, 29.031515, 28.916271>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.779030, 29.214289, 28.248960> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.134686, 29.397202, 28.256218>,  <36.348080, 29.506950, 28.260572>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.134686, 29.397202, 28.256218>,  <35.779030, 29.214289, 28.248960>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.134686, 29.397202, 28.256218> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193992, -0.340695, -0.919942,
		-0.414494, 0.821473, -0.391634,
		0.889135, 0.457284, 0.018143,
		36.401424, 29.534388, 28.261662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.209064, 29.663445, 28.384008>,  <35.779030, 29.214289, 28.248960>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.209064, 29.663445, 28.384008> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.844261, 29.755127, 28.247950>,  <34.625378, 29.810137, 28.166313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.844261, 29.755127, 28.247950>,  <35.209064, 29.663445, 28.384008>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.844261, 29.755127, 28.247950> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108023, 0.665793, 0.738275,
		0.395686, 0.710059, -0.582451,
		-0.912011, 0.229207, -0.340148,
		34.570660, 29.823889, 28.145905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.209305, 30.325155, 28.503071>,  <35.209064, 29.663445, 28.384008>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.209305, 30.325155, 28.503071> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.821568, 30.236795, 28.460032>,  <34.588924, 30.183779, 28.434208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.821568, 30.236795, 28.460032>,  <35.209305, 30.325155, 28.503071>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.821568, 30.236795, 28.460032> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231424, 0.673648, 0.701884,
		-0.082564, 0.705267, -0.704118,
		-0.969343, -0.220900, -0.107597,
		34.530766, 30.170525, 28.427753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.783493, 30.973372, 28.475956>,  <35.209305, 30.325155, 28.503071>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.783493, 30.973372, 28.475956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.533108, 30.681820, 28.586884>,  <34.382877, 30.506889, 28.653440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.533108, 30.681820, 28.586884>,  <34.783493, 30.973372, 28.475956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.533108, 30.681820, 28.586884> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464114, 0.633956, 0.618626,
		-0.626711, 0.258531, -0.735116,
		-0.625965, -0.728877, 0.277319,
		34.345318, 30.463158, 28.670080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.152096, 31.354097, 28.448606>,  <34.783493, 30.973372, 28.475956>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.152096, 31.354097, 28.448606> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.116745, 31.033049, 28.684568>,  <34.095535, 30.840420, 28.826145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.116745, 31.033049, 28.684568>,  <34.152096, 31.354097, 28.448606>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.116745, 31.033049, 28.684568> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450833, 0.560323, 0.694829,
		-0.888223, -0.204545, -0.411366,
		-0.088374, -0.802620, 0.589907,
		34.090233, 30.792263, 28.861540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.428841, 31.337420, 28.656672>,  <34.152096, 31.354097, 28.448606>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.428841, 31.337420, 28.656672> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.626572, 31.111303, 28.920820>,  <33.745209, 30.975634, 29.079309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.626572, 31.111303, 28.920820>,  <33.428841, 31.337420, 28.656672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.626572, 31.111303, 28.920820> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475960, 0.459675, 0.749774,
		-0.727396, -0.684942, -0.041827,
		0.494325, -0.565290, 0.660370,
		33.774868, 30.941715, 29.118931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.907120, 31.112381, 29.206379>,  <33.428841, 31.337420, 28.656672>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.907120, 31.112381, 29.206379> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.237156, 31.031105, 29.417259>,  <33.435177, 30.982340, 29.543787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.237156, 31.031105, 29.417259>,  <32.907120, 31.112381, 29.206379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.237156, 31.031105, 29.417259> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399510, 0.449998, 0.798682,
		-0.399523, -0.869606, 0.290112,
		0.825089, -0.203189, 0.527202,
		33.484684, 30.970148, 29.575420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.732601, 30.790545, 29.841124>,  <32.907120, 31.112381, 29.206379>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.732601, 30.790545, 29.841124> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.081367, 30.978086, 29.897602>,  <33.290627, 31.090612, 29.931488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.081367, 30.978086, 29.897602>,  <32.732601, 30.790545, 29.841124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.081367, 30.978086, 29.897602> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386604, 0.482213, 0.786135,
		0.300495, -0.740031, 0.601711,
		0.871917, 0.468854, 0.141196,
		33.342941, 31.118744, 29.939960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.945702, 30.628033, 30.448151>,  <32.732601, 30.790545, 29.841124>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.945702, 30.628033, 30.448151> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.181927, 30.946495, 30.395432>,  <33.323662, 31.137573, 30.363800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.181927, 30.946495, 30.395432>,  <32.945702, 30.628033, 30.448151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.181927, 30.946495, 30.395432> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319267, 0.380497, 0.867923,
		0.741152, -0.470483, 0.478894,
		0.590561, 0.796158, -0.131796,
		33.359097, 31.185343, 30.355892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.258484, 30.735334, 31.098392>,  <32.945702, 30.628033, 30.448151>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.258484, 30.735334, 31.098392> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.315807, 31.075569, 30.896021>,  <33.350201, 31.279711, 30.774599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.315807, 31.075569, 30.896021>,  <33.258484, 30.735334, 31.098392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.315807, 31.075569, 30.896021> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227852, 0.525829, 0.819504,
		0.963091, -0.002169, 0.269166,
		0.143313, 0.850587, -0.505928,
		33.358803, 31.330746, 30.744242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.603832, 31.205748, 31.570578>,  <33.258484, 30.735334, 31.098392>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.603832, 31.205748, 31.570578> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.387592, 31.417009, 31.308647>,  <33.257847, 31.543766, 31.151489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.387592, 31.417009, 31.308647>,  <33.603832, 31.205748, 31.570578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.387592, 31.417009, 31.308647> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478815, 0.446836, 0.755694,
		0.691724, 0.722073, 0.011328,
		-0.540604, 0.528156, -0.654827,
		33.225410, 31.575457, 31.112200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.464104, 31.874372, 31.923979>,  <33.603832, 31.205748, 31.570578>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.464104, 31.874372, 31.923979> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.191956, 31.859802, 31.631195>,  <33.028667, 31.851061, 31.455524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.191956, 31.859802, 31.631195>,  <33.464104, 31.874372, 31.923979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.191956, 31.859802, 31.631195> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657621, 0.471161, 0.587829,
		0.323460, 0.881295, -0.344519,
		-0.680374, -0.036424, -0.731959,
		32.987843, 31.848875, 31.411608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.177174, 32.571499, 31.900532>,  <33.464104, 31.874372, 31.923979>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.177174, 32.571499, 31.900532> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.906311, 32.369926, 31.686052>,  <32.743793, 32.248981, 31.557364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.906311, 32.369926, 31.686052>,  <33.177174, 32.571499, 31.900532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.906311, 32.369926, 31.686052> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725485, 0.579023, 0.372026,
		0.122997, 0.640926, -0.757685,
		-0.677158, -0.503931, -0.536200,
		32.703163, 32.218746, 31.525192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.790936, 33.125286, 31.751926>,  <33.177174, 32.571499, 31.900532>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.790936, 33.125286, 31.751926> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.572948, 32.793320, 31.704180>,  <32.442154, 32.594139, 31.675531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.572948, 32.793320, 31.704180>,  <32.790936, 33.125286, 31.751926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.572948, 32.793320, 31.704180> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743730, 0.412745, 0.525840,
		-0.387134, 0.375344, -0.842166,
		-0.544970, -0.829915, -0.119367,
		32.409458, 32.544346, 31.668369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.078934, 33.323776, 31.555054>,  <32.790936, 33.125286, 31.751926>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.078934, 33.323776, 31.555054> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.039310, 32.958847, 31.713976>,  <32.015537, 32.739891, 31.809330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.039310, 32.958847, 31.713976>,  <32.078934, 33.323776, 31.555054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.039310, 32.958847, 31.713976> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.786099, 0.316552, 0.530890,
		-0.610111, -0.259733, -0.748534,
		-0.099060, -0.912323, 0.397308,
		32.009594, 32.685150, 31.833168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.523037, 33.436768, 30.897190>,  <32.078934, 33.323776, 31.555054>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.523037, 33.436768, 30.897190> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.799374, 33.148487, 30.920254>,  <31.965176, 32.975517, 30.934092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.799374, 33.148487, 30.920254>,  <31.523037, 33.436768, 30.897190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.799374, 33.148487, 30.920254> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110338, -0.026278, 0.993547,
		-0.714537, -0.692746, -0.097674,
		0.690842, -0.720703, 0.057660,
		32.006626, 32.932278, 30.937551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.020359, 33.915668, 31.075310>,  <31.523037, 33.436768, 30.897190>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.020359, 33.915668, 31.075310> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.184847, 34.278999, 31.044744>,  <31.283539, 34.496998, 31.026405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.184847, 34.278999, 31.044744>,  <31.020359, 33.915668, 31.075310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.184847, 34.278999, 31.044744> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414843, -0.261134, -0.871616,
		-0.811668, 0.326725, -0.484196,
		0.411219, 0.908328, -0.076414,
		31.308212, 34.551498, 31.021820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.807699, 34.281776, 30.464212>,  <31.020359, 33.915668, 31.075310>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.807699, 34.281776, 30.464212> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.185648, 34.360657, 30.568769>,  <31.412418, 34.407986, 30.631504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.185648, 34.360657, 30.568769>,  <30.807699, 34.281776, 30.464212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.185648, 34.360657, 30.568769> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289737, -0.131649, -0.948009,
		-0.152535, 0.971484, -0.181528,
		0.944873, 0.197200, 0.261393,
		31.469110, 34.419815, 30.647188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.994032, 34.570793, 29.845097>,  <30.807699, 34.281776, 30.464212>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.994032, 34.570793, 29.845097> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.335978, 34.546600, 30.051222>,  <31.541145, 34.532085, 30.174896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.335978, 34.546600, 30.051222>,  <30.994032, 34.570793, 29.845097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.335978, 34.546600, 30.051222> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516595, 0.006718, -0.856204,
		0.048326, 0.998146, 0.036990,
		0.854865, -0.060486, 0.515313,
		31.592438, 34.528454, 30.205816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.490620, 35.086853, 29.567553>,  <30.994032, 34.570793, 29.845097>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.490620, 35.086853, 29.567553> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.671701, 34.770393, 29.732061>,  <31.780352, 34.580517, 29.830767>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.671701, 34.770393, 29.732061>,  <31.490620, 35.086853, 29.567553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.671701, 34.770393, 29.732061> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600510, -0.070436, -0.796509,
		0.659124, 0.607557, 0.443205,
		0.452707, -0.791147, 0.411270,
		31.807514, 34.533051, 29.855442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.064201, 35.007153, 29.203165>,  <31.490620, 35.086853, 29.567553>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.064201, 35.007153, 29.203165> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.074051, 34.640705, 29.363226>,  <32.079960, 34.420837, 29.459263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.074051, 34.640705, 29.363226>,  <32.064201, 35.007153, 29.203165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.074051, 34.640705, 29.363226> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463454, -0.344200, -0.816539,
		0.885779, 0.205555, 0.416105,
		0.024620, -0.916119, 0.400151,
		32.081436, 34.365868, 29.483271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.686054, 34.796982, 29.010460>,  <32.064201, 35.007153, 29.203165>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.686054, 34.796982, 29.010460> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.469475, 34.471043, 29.093277>,  <32.339527, 34.275478, 29.142967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.469475, 34.471043, 29.093277>,  <32.686054, 34.796982, 29.010460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.469475, 34.471043, 29.093277> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402468, -0.467426, -0.787104,
		0.738144, -0.342846, 0.581034,
		-0.541445, -0.814843, 0.207043,
		32.307041, 34.226589, 29.155390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.163227, 34.313637, 28.949614>,  <32.686054, 34.796982, 29.010460>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.163227, 34.313637, 28.949614> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.800404, 34.151440, 28.904335>,  <32.582710, 34.054123, 28.877167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.800404, 34.151440, 28.904335>,  <33.163227, 34.313637, 28.949614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.800404, 34.151440, 28.904335> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285953, -0.396081, -0.872554,
		0.308977, -0.823831, 0.475222,
		-0.907063, -0.405490, -0.113198,
		32.528286, 34.029793, 28.870377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.247845, 33.716019, 28.550871>,  <33.163227, 34.313637, 28.949614>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.247845, 33.716019, 28.550871> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.854332, 33.767555, 28.500952>,  <32.618225, 33.798477, 28.471001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.854332, 33.767555, 28.500952>,  <33.247845, 33.716019, 28.550871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.854332, 33.767555, 28.500952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071432, -0.356784, -0.931452,
		-0.164537, -0.925259, 0.341794,
		-0.983781, 0.128843, -0.124797,
		32.559196, 33.806210, 28.463512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.078541, 33.074314, 28.207277>,  <33.247845, 33.716019, 28.550871>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.078541, 33.074314, 28.207277> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.774101, 33.323692, 28.135666>,  <32.591438, 33.473320, 28.092699>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.774101, 33.323692, 28.135666>,  <33.078541, 33.074314, 28.207277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.774101, 33.323692, 28.135666> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075581, -0.188885, -0.979087,
		-0.644223, -0.758708, 0.096639,
		-0.761094, 0.623446, -0.179028,
		32.545773, 33.510727, 28.081957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.587811, 32.708817, 27.752714>,  <33.078541, 33.074314, 28.207277>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.587811, 32.708817, 27.752714> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.499176, 33.096584, 27.710516>,  <32.445995, 33.329247, 27.685198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.499176, 33.096584, 27.710516>,  <32.587811, 32.708817, 27.752714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.499176, 33.096584, 27.710516> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042035, -0.098587, -0.994240,
		-0.974235, -0.224741, -0.018904,
		-0.221583, 0.969418, -0.105494,
		32.432701, 33.387409, 27.678867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.147434, 32.739704, 27.244143>,  <32.587811, 32.708817, 27.752714>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.147434, 32.739704, 27.244143> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.264130, 33.122238, 27.237190>,  <32.334148, 33.351761, 27.233019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.264130, 33.122238, 27.237190>,  <32.147434, 32.739704, 27.244143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.264130, 33.122238, 27.237190> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103776, -0.049714, -0.993358,
		-0.950851, 0.287998, -0.113749,
		0.291740, 0.956340, -0.017383,
		32.351650, 33.409142, 27.231976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.669073, 33.154030, 26.745869>,  <32.147434, 32.739704, 27.244143>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.669073, 33.154030, 26.745869> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.019138, 33.342926, 26.787973>,  <32.229179, 33.456264, 26.813236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.019138, 33.342926, 26.787973>,  <31.669073, 33.154030, 26.745869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.019138, 33.342926, 26.787973> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125707, -0.011849, -0.991997,
		-0.467210, 0.881392, -0.069733,
		0.875165, 0.472236, 0.105261,
		32.281689, 33.484596, 26.819551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.649229, 33.674961, 26.160969>,  <31.669073, 33.154030, 26.745869>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.649229, 33.674961, 26.160969> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.024776, 33.609463, 26.282103>,  <32.250107, 33.570164, 26.354782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.024776, 33.609463, 26.282103>,  <31.649229, 33.674961, 26.160969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.024776, 33.609463, 26.282103> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282474, -0.136436, -0.949523,
		0.196801, 0.977022, -0.081841,
		0.938870, -0.163749, 0.302834,
		32.306438, 33.560337, 26.372953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.067490, 34.048759, 25.685356>,  <31.649229, 33.674961, 26.160969>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.067490, 34.048759, 25.685356> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.314217, 33.803596, 25.882893>,  <32.462254, 33.656498, 26.001413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.314217, 33.803596, 25.882893>,  <32.067490, 34.048759, 25.685356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.314217, 33.803596, 25.882893> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599866, -0.040158, -0.799092,
		0.509601, 0.789134, 0.342891,
		0.616821, -0.612907, 0.493839,
		32.499264, 33.619724, 26.031044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.751923, 34.324894, 25.542429>,  <32.067490, 34.048759, 25.685356>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.751923, 34.324894, 25.542429> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.783958, 33.937126, 25.635214>,  <32.803181, 33.704464, 25.690886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.783958, 33.937126, 25.635214>,  <32.751923, 34.324894, 25.542429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.783958, 33.937126, 25.635214> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554899, -0.149957, -0.818291,
		0.828054, 0.194252, 0.525922,
		0.080089, -0.969422, 0.231962,
		32.807983, 33.646301, 25.704803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.449474, 34.222767, 25.529089>,  <32.751923, 34.324894, 25.542429>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.449474, 34.222767, 25.529089> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.270618, 33.871407, 25.461599>,  <33.163303, 33.660591, 25.421106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.270618, 33.871407, 25.461599>,  <33.449474, 34.222767, 25.529089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.270618, 33.871407, 25.461599> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595201, -0.151395, -0.789187,
		0.667682, -0.453303, 0.590523,
		-0.447143, -0.878405, -0.168722,
		33.136475, 33.607883, 25.410982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.962185, 33.831467, 25.276745>,  <33.449474, 34.222767, 25.529089>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.962185, 33.831467, 25.276745> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.648842, 33.607151, 25.169518>,  <33.460835, 33.472561, 25.105181>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.648842, 33.607151, 25.169518>,  <33.962185, 33.831467, 25.276745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.648842, 33.607151, 25.169518> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488908, -0.289604, -0.822860,
		0.383817, -0.775658, 0.501038,
		-0.783360, -0.560790, -0.268071,
		33.413834, 33.438915, 25.089096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.181648, 33.052334, 25.216669>,  <33.962185, 33.831467, 25.276745>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.181648, 33.052334, 25.216669> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.844917, 33.110661, 25.008802>,  <33.642876, 33.145657, 24.884083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.844917, 33.110661, 25.008802>,  <34.181648, 33.052334, 25.216669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.844917, 33.110661, 25.008802> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494211, -0.178788, -0.850759,
		-0.216965, -0.973022, 0.078446,
		-0.841832, 0.145816, -0.519669,
		33.592369, 33.154408, 24.852901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.146191, 32.543652, 24.673082>,  <34.181648, 33.052334, 25.216669>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.146191, 32.543652, 24.673082> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.865368, 32.791519, 24.532722>,  <33.696873, 32.940239, 24.448507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.865368, 32.791519, 24.532722>,  <34.146191, 32.543652, 24.673082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.865368, 32.791519, 24.532722> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411117, -0.049658, -0.910229,
		-0.581463, -0.783293, -0.219892,
		-0.702057, 0.619666, -0.350900,
		33.654751, 32.977417, 24.427452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.885391, 32.210480, 24.107244>,  <34.146191, 32.543652, 24.673082>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.885391, 32.210480, 24.107244> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.829941, 32.606190, 24.088818>,  <33.796669, 32.843616, 24.077763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.829941, 32.606190, 24.088818>,  <33.885391, 32.210480, 24.107244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.829941, 32.606190, 24.088818> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346777, 0.004919, -0.937935,
		-0.927646, -0.145999, -0.343739,
		-0.138629, 0.989272, -0.046066,
		33.788353, 32.902973, 24.074999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.521183, 32.229244, 23.370281>,  <33.885391, 32.210480, 24.107244>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.521183, 32.229244, 23.370281> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.602154, 32.601341, 23.492702>,  <33.650738, 32.824600, 23.566154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.602154, 32.601341, 23.492702>,  <33.521183, 32.229244, 23.370281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.602154, 32.601341, 23.492702> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335940, 0.227594, -0.913972,
		-0.919873, 0.287832, -0.266434,
		0.202431, 0.930244, 0.306051,
		33.662884, 32.880413, 23.584518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.265202, 32.743301, 22.815395>,  <33.521183, 32.229244, 23.370281>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.265202, 32.743301, 22.815395> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.553951, 32.913399, 23.033779>,  <33.727200, 33.015457, 23.164808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.553951, 32.913399, 23.033779>,  <33.265202, 32.743301, 22.815395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.553951, 32.913399, 23.033779> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401884, 0.384655, -0.830981,
		-0.563371, 0.819275, 0.106776,
		0.721874, 0.425239, 0.545957,
		33.770515, 33.040970, 23.197567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.302795, 33.417728, 22.487034>,  <33.265202, 32.743301, 22.815395>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.302795, 33.417728, 22.487034> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.631771, 33.364994, 22.708380>,  <33.829155, 33.333355, 22.841188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.631771, 33.364994, 22.708380>,  <33.302795, 33.417728, 22.487034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.631771, 33.364994, 22.708380> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568097, 0.140199, -0.810932,
		0.029327, 0.981307, 0.190199,
		0.822439, -0.131833, 0.553366,
		33.878502, 33.325443, 22.874390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.819504, 34.010414, 22.345407>,  <33.302795, 33.417728, 22.487034>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.819504, 34.010414, 22.345407> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.991108, 33.676273, 22.482891>,  <34.094070, 33.475788, 22.565380>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.991108, 33.676273, 22.482891>,  <33.819504, 34.010414, 22.345407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.991108, 33.676273, 22.482891> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635542, 0.008749, -0.772017,
		0.641899, 0.549646, 0.534655,
		0.429014, -0.835352, 0.343707,
		34.119812, 33.425667, 22.586002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.420158, 34.052948, 22.018026>,  <33.819504, 34.010414, 22.345407>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.420158, 34.052948, 22.018026> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.431049, 33.678623, 22.158604>,  <34.437584, 33.454029, 22.242950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.431049, 33.678623, 22.158604>,  <34.420158, 34.052948, 22.018026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.431049, 33.678623, 22.158604> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684048, -0.238925, -0.689198,
		0.728929, 0.259169, 0.633636,
		0.027228, -0.935813, 0.351443,
		34.439217, 33.397881, 22.264036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.108467, 33.934486, 22.025537>,  <34.420158, 34.052948, 22.018026>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.108467, 33.934486, 22.025537> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.924576, 33.580395, 21.997190>,  <34.814240, 33.367939, 21.980183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.924576, 33.580395, 21.997190>,  <35.108467, 33.934486, 22.025537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.924576, 33.580395, 21.997190> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568288, -0.231930, -0.789467,
		0.682421, -0.403214, 0.609689,
		-0.459729, -0.885227, -0.070868,
		34.786655, 33.314827, 21.975929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.635349, 33.365334, 21.918591>,  <35.108467, 33.934486, 22.025537>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.635349, 33.365334, 21.918591> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.281822, 33.231369, 21.787935>,  <35.069706, 33.150990, 21.709541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.281822, 33.231369, 21.787935>,  <35.635349, 33.365334, 21.918591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.281822, 33.231369, 21.787935> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376852, -0.095969, -0.921288,
		0.277201, -0.937350, 0.211031,
		-0.883822, -0.334910, -0.326640,
		35.016674, 33.130898, 21.689943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.317009, 33.328938, 22.060246>,  <35.635349, 33.365334, 21.918591>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.317009, 33.328938, 22.060246> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.582745, 33.627861, 22.054737>,  <36.742184, 33.807217, 22.051432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.582745, 33.627861, 22.054737>,  <36.317009, 33.328938, 22.060246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.582745, 33.627861, 22.054737> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275568, 0.262016, 0.924884,
		0.694781, -0.610638, 0.380000,
		0.664335, 0.747308, -0.013771,
		36.782043, 33.852055, 22.050606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.638462, 33.275223, 22.731756>,  <36.317009, 33.328938, 22.060246>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.638462, 33.275223, 22.731756> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.770153, 33.641064, 22.637859>,  <36.849167, 33.860569, 22.581520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.770153, 33.641064, 22.637859>,  <36.638462, 33.275223, 22.731756>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.770153, 33.641064, 22.637859> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024627, 0.256835, 0.966141,
		0.943929, -0.312301, 0.107081,
		0.329229, 0.914606, -0.234743,
		36.868923, 33.915447, 22.567436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.168663, 33.496593, 23.250854>,  <36.638462, 33.275223, 22.731756>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.168663, 33.496593, 23.250854> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.052834, 33.860584, 23.132132>,  <36.983337, 34.078979, 23.060898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.052834, 33.860584, 23.132132>,  <37.168663, 33.496593, 23.250854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.052834, 33.860584, 23.132132> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109094, 0.276696, 0.954745,
		0.950920, 0.308845, 0.019150,
		-0.289569, 0.909975, -0.296808,
		36.965961, 34.133575, 23.043089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.575291, 34.057255, 23.582775>,  <37.168663, 33.496593, 23.250854>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.575291, 34.057255, 23.582775> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.219952, 34.203045, 23.471062>,  <37.006748, 34.290520, 23.404034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.219952, 34.203045, 23.471062>,  <37.575291, 34.057255, 23.582775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.219952, 34.203045, 23.471062> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239598, 0.150919, 0.959070,
		0.391704, 0.918903, -0.046742,
		-0.888347, 0.364473, -0.279283,
		36.953449, 34.312386, 23.387278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.497288, 34.633034, 23.930288>,  <37.575291, 34.057255, 23.582775>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.497288, 34.633034, 23.930288> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.118698, 34.519085, 23.869583>,  <36.891544, 34.450714, 23.833160>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.118698, 34.519085, 23.869583>,  <37.497288, 34.633034, 23.930288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.118698, 34.519085, 23.869583> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212158, 0.194702, 0.957643,
		-0.243260, 0.938583, -0.244719,
		-0.946474, -0.284875, -0.151764,
		36.834755, 34.433624, 23.824055>
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
