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
	<24.166567, 35.061245, 35.299206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.223900, 34.846909, 34.966381>,  <24.258299, 34.718307, 34.766685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.223900, 34.846909, 34.966381>,  <24.166567, 35.061245, 35.299206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.223900, 34.846909, 34.966381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685467, -0.552680, 0.474005,
		-0.713857, -0.638290, 0.288087,
		0.143332, -0.535846, -0.832061,
		24.266899, 34.686153, 34.716763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.888235, 34.766712, 35.116302>,  <24.166567, 35.061245, 35.299206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.888235, 34.766712, 35.116302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.235250, 34.606476, 35.234222>,  <25.443460, 34.510334, 35.304974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.235250, 34.606476, 35.234222>,  <24.888235, 34.766712, 35.116302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.235250, 34.606476, 35.234222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431641, -0.900867, 0.046088,
		0.247112, -0.167230, -0.954448,
		0.867538, -0.400590, 0.294798,
		25.495512, 34.486298, 35.322662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.149786, 34.222961, 34.659061>,  <24.888235, 34.766712, 35.116302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.149786, 34.222961, 34.659061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.308289, 34.128052, 35.013844>,  <25.403389, 34.071106, 35.226711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.308289, 34.128052, 35.013844>,  <25.149786, 34.222961, 34.659061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.308289, 34.128052, 35.013844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382778, -0.920766, -0.075307,
		0.834544, -0.309665, -0.455680,
		0.396255, -0.237271, 0.886952,
		25.427166, 34.056870, 35.279930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.536589, 33.624195, 34.542809>,  <25.149786, 34.222961, 34.659061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.536589, 33.624195, 34.542809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.428890, 33.647152, 34.927353>,  <25.364271, 33.660927, 35.158081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.428890, 33.647152, 34.927353>,  <25.536589, 33.624195, 34.542809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.428890, 33.647152, 34.927353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212689, -0.977119, -0.001231,
		0.939292, -0.204802, 0.275294,
		-0.269247, 0.057395, 0.961359,
		25.348116, 33.664371, 35.215759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.689236, 33.023853, 34.771820>,  <25.536589, 33.624195, 34.542809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.689236, 33.023853, 34.771820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.459528, 33.150791, 35.073685>,  <25.321703, 33.226952, 35.254803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.459528, 33.150791, 35.073685>,  <25.689236, 33.023853, 34.771820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.459528, 33.150791, 35.073685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302626, -0.938808, 0.164491,
		0.760680, -0.133918, 0.635164,
		-0.574268, 0.317342, 0.754659,
		25.287247, 33.245995, 35.300083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.006577, 32.901463, 35.436172>,  <25.689236, 33.023853, 34.771820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.006577, 32.901463, 35.436172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.609428, 32.870148, 35.400227>,  <25.371140, 32.851357, 35.378658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.609428, 32.870148, 35.400227>,  <26.006577, 32.901463, 35.436172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.609428, 32.870148, 35.400227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046989, -0.950054, 0.308527,
		-0.109530, 0.302105, 0.946961,
		-0.992872, -0.078290, -0.089864,
		25.311567, 32.846661, 35.373268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.764620, 32.567329, 36.052845>,  <26.006577, 32.901463, 35.436172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.764620, 32.567329, 36.052845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.492205, 32.504547, 35.766754>,  <25.328756, 32.466877, 35.595100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.492205, 32.504547, 35.766754>,  <25.764620, 32.567329, 36.052845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.492205, 32.504547, 35.766754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004310, -0.977600, 0.210429,
		-0.732235, 0.140228, 0.666459,
		-0.681038, -0.156956, -0.715228,
		25.287893, 32.457458, 35.552185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.200485, 32.207188, 36.374584>,  <25.764620, 32.567329, 36.052845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.200485, 32.207188, 36.374584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.258125, 32.143948, 35.983845>,  <25.292709, 32.106003, 35.749401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.258125, 32.143948, 35.983845>,  <25.200485, 32.207188, 36.374584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.258125, 32.143948, 35.983845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015334, -0.986680, 0.161949,
		-0.989444, -0.038316, -0.139757,
		0.144101, -0.158096, -0.976853,
		25.301355, 32.096519, 35.690788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.718958, 31.760450, 36.125347>,  <25.200485, 32.207188, 36.374584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.718958, 31.760450, 36.125347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.017252, 31.724575, 35.861275>,  <25.196228, 31.703049, 35.702831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.017252, 31.724575, 35.861275>,  <24.718958, 31.760450, 36.125347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.017252, 31.724575, 35.861275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044026, -0.982098, 0.183156,
		-0.664785, -0.165651, -0.728437,
		0.745737, -0.089689, -0.660176,
		25.240973, 31.697668, 35.663223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.687916, 31.044855, 35.918304>,  <24.718958, 31.760450, 36.125347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.687916, 31.044855, 35.918304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.049252, 31.142754, 35.777409>,  <25.266054, 31.201492, 35.692871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.049252, 31.142754, 35.777409>,  <24.687916, 31.044855, 35.918304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.049252, 31.142754, 35.777409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303257, -0.945198, 0.120977,
		-0.303329, -0.216103, -0.928057,
		0.903342, 0.244744, -0.352241,
		25.320253, 31.216177, 35.671738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.845407, 30.604034, 35.374573>,  <24.687916, 31.044855, 35.918304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.845407, 30.604034, 35.374573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.185869, 30.752319, 35.523224>,  <25.390146, 30.841290, 35.612415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.185869, 30.752319, 35.523224>,  <24.845407, 30.604034, 35.374573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.185869, 30.752319, 35.523224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322646, -0.927930, 0.186669,
		0.414044, -0.038981, -0.909422,
		0.851157, 0.370710, 0.371627,
		25.441216, 30.863533, 35.634712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.367931, 30.420782, 34.985237>,  <24.845407, 30.604034, 35.374573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.367931, 30.420782, 34.985237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.493681, 30.484970, 35.359493>,  <25.569132, 30.523483, 35.584045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.493681, 30.484970, 35.359493>,  <25.367931, 30.420782, 34.985237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.493681, 30.484970, 35.359493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156286, -0.980909, 0.115722,
		0.936346, 0.109847, -0.333452,
		0.314375, 0.160470, 0.935638,
		25.587994, 30.533112, 35.640186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.095308, 30.084028, 35.187275>,  <25.367931, 30.420782, 34.985237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.095308, 30.084028, 35.187275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.864103, 30.123148, 35.511333>,  <25.725380, 30.146620, 35.705769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.864103, 30.123148, 35.511333>,  <26.095308, 30.084028, 35.187275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.864103, 30.123148, 35.511333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041916, -0.987924, 0.149164,
		0.814950, 0.120177, 0.566934,
		-0.578014, 0.097797, 0.810145,
		25.690699, 30.152487, 35.754375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.367397, 29.769987, 35.852238>,  <26.095308, 30.084028, 35.187275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.367397, 29.769987, 35.852238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.976635, 29.766489, 35.937630>,  <25.742178, 29.764391, 35.988865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.976635, 29.766489, 35.937630>,  <26.367397, 29.769987, 35.852238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.976635, 29.766489, 35.937630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063323, -0.966124, 0.250190,
		0.204063, 0.257931, 0.944367,
		-0.976907, -0.008746, 0.213483,
		25.683563, 29.763865, 36.001675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.469692, 30.194799, 36.468166>,  <26.367397, 29.769987, 35.852238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.469692, 30.194799, 36.468166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.318998, 30.318430, 36.817463>,  <26.228582, 30.392609, 37.027039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.318998, 30.318430, 36.817463>,  <26.469692, 30.194799, 36.468166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.318998, 30.318430, 36.817463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431688, 0.892649, -0.129707,
		-0.819583, 0.328100, -0.469717,
		-0.376735, 0.309077, 0.873237,
		26.205978, 30.411154, 37.079433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.214460, 31.038355, 36.636417>,  <26.469692, 30.194799, 36.468166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.214460, 31.038355, 36.636417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.105783, 30.855106, 36.297878>,  <26.040577, 30.745157, 36.094753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.105783, 30.855106, 36.297878>,  <26.214460, 31.038355, 36.636417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.105783, 30.855106, 36.297878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098562, 0.888051, -0.449056,
		0.957325, -0.038586, -0.286427,
		-0.271689, -0.458123, -0.846349,
		26.024277, 30.717669, 36.043972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.577106, 31.327190, 36.041908>,  <26.214460, 31.038355, 36.636417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.577106, 31.327190, 36.041908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.232944, 31.180281, 35.900593>,  <26.026447, 31.092134, 35.815804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.232944, 31.180281, 35.900593>,  <26.577106, 31.327190, 36.041908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.232944, 31.180281, 35.900593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170299, 0.860617, -0.479934,
		0.480316, -0.352772, -0.803024,
		-0.860404, -0.367274, -0.353291,
		25.974823, 31.070099, 35.794605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.539438, 31.508951, 35.352036>,  <26.577106, 31.327190, 36.041908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.539438, 31.508951, 35.352036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.160185, 31.427057, 35.449303>,  <25.932632, 31.377920, 35.507664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.160185, 31.427057, 35.449303>,  <26.539438, 31.508951, 35.352036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.160185, 31.427057, 35.449303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281675, 0.895651, -0.344191,
		-0.147323, -0.394832, -0.906865,
		-0.948132, -0.204734, 0.243165,
		25.875746, 31.365637, 35.522251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.161789, 31.584164, 34.731293>,  <26.539438, 31.508951, 35.352036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.161789, 31.584164, 34.731293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.893293, 31.613512, 35.026333>,  <25.732197, 31.631121, 35.203358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.893293, 31.613512, 35.026333>,  <26.161789, 31.584164, 34.731293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.893293, 31.613512, 35.026333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305560, 0.879218, -0.365526,
		-0.675332, -0.470737, -0.567744,
		-0.671237, 0.073371, 0.737602,
		25.691921, 31.635523, 35.247612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.520018, 31.833195, 34.400181>,  <26.161789, 31.584164, 34.731293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.520018, 31.833195, 34.400181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.497730, 31.920679, 34.789860>,  <25.484358, 31.973169, 35.023666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.497730, 31.920679, 34.789860>,  <25.520018, 31.833195, 34.400181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.497730, 31.920679, 34.789860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372013, 0.900910, -0.223532,
		-0.926554, -0.374869, 0.031168,
		-0.055716, 0.218709, 0.974198,
		25.481016, 31.986292, 35.082119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.835962, 31.804270, 34.572887>,  <25.520018, 31.833195, 34.400181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.835962, 31.804270, 34.572887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.872271, 31.899088, 34.959785>,  <24.894054, 31.955978, 35.191925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.872271, 31.899088, 34.959785>,  <24.835962, 31.804270, 34.572887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.872271, 31.899088, 34.959785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182195, 0.958818, -0.217883,
		-0.979064, -0.156451, 0.130220,
		0.090769, 0.237046, 0.967249,
		24.899502, 31.970201, 35.249962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.228754, 32.311600, 34.816795>,  <24.835962, 31.804270, 34.572887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.228754, 32.311600, 34.816795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.543253, 32.353172, 35.060440>,  <24.731953, 32.378117, 35.206627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.543253, 32.353172, 35.060440>,  <24.228754, 32.311600, 34.816795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.543253, 32.353172, 35.060440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015688, 0.988792, -0.148470,
		-0.617713, 0.107179, 0.779065,
		0.786247, 0.103934, 0.609109,
		24.779127, 32.384354, 35.243172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.024391, 32.788532, 35.269863>,  <24.228754, 32.311600, 34.816795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.024391, 32.788532, 35.269863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.424246, 32.791122, 35.280346>,  <24.664158, 32.792679, 35.286636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.424246, 32.791122, 35.280346>,  <24.024391, 32.788532, 35.269863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.424246, 32.791122, 35.280346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000023, 0.970584, -0.240764,
		-0.026995, 0.240677, 0.970230,
		0.999636, 0.006477, 0.026206,
		24.724136, 32.793064, 35.288208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.151186, 33.304420, 35.647224>,  <24.024391, 32.788532, 35.269863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.151186, 33.304420, 35.647224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.467127, 33.230968, 35.413162>,  <24.656693, 33.186897, 35.272724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.467127, 33.230968, 35.413162>,  <24.151186, 33.304420, 35.647224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.467127, 33.230968, 35.413162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024403, 0.943957, -0.329166,
		0.612809, 0.274273, 0.741107,
		0.789854, -0.183631, -0.585158,
		24.704082, 33.175880, 35.237614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.518740, 33.702663, 36.210285>,  <24.151186, 33.304420, 35.647224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.518740, 33.702663, 36.210285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.784031, 33.556461, 35.949047>,  <24.943207, 33.468742, 35.792305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.784031, 33.556461, 35.949047>,  <24.518740, 33.702663, 36.210285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.784031, 33.556461, 35.949047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504277, 0.863052, 0.029097,
		0.553020, -0.348639, 0.756716,
		0.663230, -0.365503, -0.653096,
		24.983000, 33.446812, 35.753117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.168022, 33.723213, 36.512444>,  <24.518740, 33.702663, 36.210285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.168022, 33.723213, 36.512444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.217123, 33.705349, 36.115871>,  <25.246584, 33.694630, 35.877930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.217123, 33.705349, 36.115871>,  <25.168022, 33.723213, 36.512444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.217123, 33.705349, 36.115871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486222, 0.873587, 0.020850,
		0.865170, -0.484615, 0.128950,
		0.122753, -0.044660, -0.991432,
		25.253948, 33.691952, 35.818443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.831919, 33.806980, 36.477032>,  <25.168022, 33.723213, 36.512444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.831919, 33.806980, 36.477032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.687048, 33.891193, 36.113823>,  <25.600126, 33.941719, 35.895897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.687048, 33.891193, 36.113823>,  <25.831919, 33.806980, 36.477032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.687048, 33.891193, 36.113823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468626, 0.883216, 0.017861,
		0.805740, -0.419055, -0.418540,
		-0.362177, 0.210530, -0.908023,
		25.578396, 33.954353, 35.841415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.399183, 34.039692, 35.945854>,  <25.831919, 33.806980, 36.477032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.399183, 34.039692, 35.945854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.051191, 34.207691, 35.842518>,  <25.842396, 34.308491, 35.780518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.051191, 34.207691, 35.842518>,  <26.399183, 34.039692, 35.945854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.051191, 34.207691, 35.842518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438533, 0.898574, -0.015942,
		0.225440, -0.127158, -0.965923,
		-0.869980, 0.419996, -0.258337,
		25.790197, 34.333691, 35.765018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.496418, 34.709614, 35.623272>,  <26.399183, 34.039692, 35.945854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.496418, 34.709614, 35.623272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.115322, 34.715923, 35.744621>,  <25.886663, 34.719711, 35.817432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.115322, 34.715923, 35.744621>,  <26.496418, 34.709614, 35.623272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.115322, 34.715923, 35.744621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118185, 0.939225, 0.322316,
		-0.279850, 0.342938, -0.896704,
		-0.952742, 0.015777, 0.303372,
		25.829500, 34.720657, 35.835632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.068668, 35.310928, 35.295338>,  <26.496418, 34.709614, 35.623272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.068668, 35.310928, 35.295338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.882723, 35.202232, 35.632397>,  <25.771154, 35.137016, 35.834633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.882723, 35.202232, 35.632397>,  <26.068668, 35.310928, 35.295338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.882723, 35.202232, 35.632397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219347, 0.886721, 0.406955,
		-0.857781, 0.374012, -0.352601,
		-0.464865, -0.271737, 0.842650,
		25.743263, 35.120712, 35.885193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.541981, 35.672646, 35.229561>,  <26.068668, 35.310928, 35.295338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.541981, 35.672646, 35.229561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.686243, 35.561928, 35.585835>,  <25.772800, 35.495495, 35.799599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.686243, 35.561928, 35.585835>,  <25.541981, 35.672646, 35.229561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.686243, 35.561928, 35.585835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198809, 0.955817, 0.216539,
		-0.911265, 0.098980, 0.399750,
		0.360654, -0.276798, 0.890680,
		25.794439, 35.478889, 35.853039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.258102, 36.070332, 35.831394>,  <25.541981, 35.672646, 35.229561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.258102, 36.070332, 35.831394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.630438, 35.952362, 35.917702>,  <25.853840, 35.881580, 35.969486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.630438, 35.952362, 35.917702>,  <25.258102, 36.070332, 35.831394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.630438, 35.952362, 35.917702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210862, 0.915732, 0.342013,
		-0.298452, -0.272863, 0.914589,
		0.930841, -0.294926, 0.215766,
		25.909691, 35.863884, 35.982430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.444174, 36.341518, 36.462952>,  <25.258102, 36.070332, 35.831394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.444174, 36.341518, 36.462952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.793804, 36.239666, 36.297466>,  <26.003582, 36.178555, 36.198177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.793804, 36.239666, 36.297466>,  <25.444174, 36.341518, 36.462952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.793804, 36.239666, 36.297466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405401, 0.851564, 0.332398,
		0.267663, -0.458259, 0.847558,
		0.874074, -0.254631, -0.413711,
		26.056026, 36.163277, 36.173351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.916166, 36.351994, 37.002827>,  <25.444174, 36.341518, 36.462952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.916166, 36.351994, 37.002827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.033825, 36.414574, 36.625679>,  <26.104420, 36.452122, 36.399391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.033825, 36.414574, 36.625679>,  <25.916166, 36.351994, 37.002827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.033825, 36.414574, 36.625679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205880, 0.952981, 0.222354,
		0.933322, -0.259523, 0.248107,
		0.294148, 0.156447, -0.942869,
		26.122068, 36.461510, 36.342819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.847315, 36.775009, 37.687065>,  <25.916166, 36.351994, 37.002827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.847315, 36.775009, 37.687065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.199598, 36.956779, 37.633621>,  <26.410969, 37.065842, 37.601555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.199598, 36.956779, 37.633621>,  <25.847315, 36.775009, 37.687065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.199598, 36.956779, 37.633621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441546, -0.685559, 0.578832,
		0.171442, -0.568775, -0.804427,
		0.880707, 0.454427, -0.133607,
		26.463810, 37.093109, 37.593540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.370691, 36.307373, 37.564274>,  <25.847315, 36.775009, 37.687065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.370691, 36.307373, 37.564274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.540081, 36.618042, 37.750801>,  <26.641716, 36.804443, 37.862717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.540081, 36.618042, 37.750801>,  <26.370691, 36.307373, 37.564274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.540081, 36.618042, 37.750801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405576, -0.622825, 0.669027,
		0.810048, -0.094190, -0.578750,
		0.423475, 0.776671, 0.466317,
		26.667124, 36.851044, 37.890697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.566557, 36.934269, 37.012028>,  <26.370691, 36.307373, 37.564274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.566557, 36.934269, 37.012028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.460606, 36.902416, 36.627632>,  <26.397036, 36.883305, 36.396996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.460606, 36.902416, 36.627632>,  <26.566557, 36.934269, 37.012028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.460606, 36.902416, 36.627632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205002, 0.969153, -0.136812,
		0.942238, -0.233243, -0.240384,
		-0.264879, -0.079630, -0.960988,
		26.381142, 36.878529, 36.339336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.127563, 37.259819, 36.698067>,  <26.566557, 36.934269, 37.012028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.127563, 37.259819, 36.698067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.823942, 37.257687, 36.437664>,  <26.641769, 37.256409, 36.281422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.823942, 37.257687, 36.437664>,  <27.127563, 37.259819, 36.698067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.823942, 37.257687, 36.437664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037315, 0.997967, -0.051675,
		0.649959, -0.063516, -0.757310,
		-0.759052, -0.005328, -0.651007,
		26.596226, 37.256088, 36.242363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.322721, 37.693935, 36.240959>,  <27.127563, 37.259819, 36.698067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.322721, 37.693935, 36.240959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.924143, 37.703068, 36.208530>,  <26.684996, 37.708546, 36.189075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.924143, 37.703068, 36.208530>,  <27.322721, 37.693935, 36.240959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.924143, 37.703068, 36.208530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013849, 0.993873, 0.109656,
		0.083077, 0.108144, -0.990658,
		-0.996447, 0.022829, -0.081070,
		26.625208, 37.709915, 36.184208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.259531, 38.268211, 35.757896>,  <27.322721, 37.693935, 36.240959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.259531, 38.268211, 35.757896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.963175, 38.158859, 36.003284>,  <26.785362, 38.093246, 36.150517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.963175, 38.158859, 36.003284>,  <27.259531, 38.268211, 35.757896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.963175, 38.158859, 36.003284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154717, 0.958313, 0.240207,
		-0.653564, 0.083053, -0.752301,
		-0.740890, -0.273385, 0.613469,
		26.740908, 38.076843, 36.187325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.932768, 37.981483, 35.135971>,  <27.259531, 38.268211, 35.757896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.932768, 37.981483, 35.135971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.604521, 37.766346, 35.058716>,  <26.407572, 37.637264, 35.012363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.604521, 37.766346, 35.058716>,  <26.932768, 37.981483, 35.135971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.604521, 37.766346, 35.058716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018369, -0.362619, 0.931756,
		-0.571180, 0.761070, 0.307452,
		-0.820620, -0.537848, -0.193140,
		26.358335, 37.604992, 35.000774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.423660, 38.138649, 35.610867>,  <26.932768, 37.981483, 35.135971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.423660, 38.138649, 35.610867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.381945, 37.766132, 35.471256>,  <26.356915, 37.542622, 35.387489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.381945, 37.766132, 35.471256>,  <26.423660, 38.138649, 35.610867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.381945, 37.766132, 35.471256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202253, -0.323750, 0.924272,
		-0.973764, 0.166985, -0.154592,
		-0.104291, -0.931291, -0.349029,
		26.350657, 37.486744, 35.366547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.649591, 38.190662, 35.556053>,  <26.423660, 38.138649, 35.610867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.649591, 38.190662, 35.556053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.383888, 38.431965, 35.732616>,  <25.224466, 38.576748, 35.838554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.383888, 38.431965, 35.732616>,  <25.649591, 38.190662, 35.556053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.383888, 38.431965, 35.732616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696533, -0.285199, -0.658409,
		-0.271287, -0.744823, 0.609625,
		-0.664262, 0.603242, 0.441423,
		25.184610, 38.612942, 35.865040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.362095, 37.662815, 36.004223>,  <25.649591, 38.190662, 35.556053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.362095, 37.662815, 36.004223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.760717, 37.693039, 36.017891>,  <25.999891, 37.711174, 36.026093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.760717, 37.693039, 36.017891>,  <25.362095, 37.662815, 36.004223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.760717, 37.693039, 36.017891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081686, -0.965393, -0.247677,
		0.014271, 0.249615, -0.968240,
		0.996556, 0.075557, 0.034167,
		26.059685, 37.715706, 36.028141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.582808, 37.513634, 35.362606>,  <25.362095, 37.662815, 36.004223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.582808, 37.513634, 35.362606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.872696, 37.422955, 35.622879>,  <26.046629, 37.368546, 35.779041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.872696, 37.422955, 35.622879>,  <25.582808, 37.513634, 35.362606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.872696, 37.422955, 35.622879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072943, -0.964262, -0.254712,
		0.685169, 0.137133, -0.715358,
		0.724722, -0.226701, 0.650680,
		26.090113, 37.354946, 35.818085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.889700, 36.928078, 35.160446>,  <25.582808, 37.513634, 35.362606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.889700, 36.928078, 35.160446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.035215, 36.912552, 35.532715>,  <26.122524, 36.903236, 35.756077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.035215, 36.912552, 35.532715>,  <25.889700, 36.928078, 35.160446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.035215, 36.912552, 35.532715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116176, -0.989440, -0.086673,
		0.924208, 0.139652, -0.355438,
		0.363789, -0.038811, 0.930673,
		26.144352, 36.900909, 35.811916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.520370, 36.493084, 35.123955>,  <25.889700, 36.928078, 35.160446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.520370, 36.493084, 35.123955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.379211, 36.487354, 35.498177>,  <26.294516, 36.483917, 35.722710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.379211, 36.487354, 35.498177>,  <26.520370, 36.493084, 35.123955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.379211, 36.487354, 35.498177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209218, -0.975774, 0.063981,
		0.911971, 0.218313, 0.347346,
		-0.352898, -0.014323, 0.935552,
		26.273342, 36.483059, 35.778843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.952379, 36.067303, 35.309792>,  <26.520370, 36.493084, 35.123955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.952379, 36.067303, 35.309792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.702927, 36.085526, 35.621948>,  <26.553255, 36.096458, 35.809242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.702927, 36.085526, 35.621948>,  <26.952379, 36.067303, 35.309792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.702927, 36.085526, 35.621948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012637, -0.997582, 0.068340,
		0.781618, 0.052480, 0.621546,
		-0.623629, 0.045561, 0.780391,
		26.515839, 36.099194, 35.856064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.147659, 35.614525, 35.911900>,  <26.952379, 36.067303, 35.309792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.147659, 35.614525, 35.911900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.749908, 35.645195, 35.941128>,  <26.511259, 35.663597, 35.958664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.749908, 35.645195, 35.941128>,  <27.147659, 35.614525, 35.911900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.749908, 35.645195, 35.941128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061859, -0.980421, 0.186944,
		0.085972, 0.181373, 0.979649,
		-0.994375, 0.076672, 0.073069,
		26.451595, 35.668198, 35.963047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.771687, 35.233887, 36.170506>,  <27.147659, 35.614525, 35.911900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.771687, 35.233887, 36.170506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.610592, 34.895897, 36.311256>,  <27.513935, 34.693104, 36.395706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.610592, 34.895897, 36.311256>,  <27.771687, 35.233887, 36.170506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.610592, 34.895897, 36.311256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348436, 0.213961, 0.912586,
		-0.846401, 0.490140, 0.208250,
		-0.402737, -0.844976, 0.351879,
		27.489771, 34.642403, 36.416821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.311502, 35.286018, 36.840508>,  <27.771687, 35.233887, 36.170506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.311502, 35.286018, 36.840508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.493933, 34.930084, 36.834957>,  <27.603392, 34.716526, 36.831627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.493933, 34.930084, 36.834957>,  <27.311502, 35.286018, 36.840508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.493933, 34.930084, 36.834957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576480, 0.283523, 0.766345,
		-0.677985, -0.357511, 0.642279,
		0.456077, -0.889832, -0.013874,
		27.630756, 34.663136, 36.830795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.346493, 34.936962, 37.468105>,  <27.311502, 35.286018, 36.840508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.346493, 34.936962, 37.468105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.646711, 34.740829, 37.290905>,  <27.826843, 34.623150, 37.184586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.646711, 34.740829, 37.290905>,  <27.346493, 34.936962, 37.468105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.646711, 34.740829, 37.290905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613744, 0.268753, 0.742354,
		-0.244944, -0.829062, 0.502652,
		0.750547, -0.490334, -0.443003,
		27.871876, 34.593731, 37.158005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.647402, 34.330986, 37.965897>,  <27.346493, 34.936962, 37.468105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.647402, 34.330986, 37.965897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.897026, 34.478920, 37.690571>,  <28.046801, 34.567680, 37.525375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.897026, 34.478920, 37.690571>,  <27.647402, 34.330986, 37.965897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.897026, 34.478920, 37.690571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569297, 0.388170, 0.724723,
		0.535207, -0.844126, 0.031698,
		0.624062, 0.369831, -0.688310,
		28.084246, 34.589870, 37.484077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.381174, 34.427128, 38.336456>,  <27.647402, 34.330986, 37.965897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.381174, 34.427128, 38.336456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.503658, 34.091061, 38.157417>,  <28.577148, 33.889420, 38.049992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.503658, 34.091061, 38.157417>,  <28.381174, 34.427128, 38.336456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.503658, 34.091061, 38.157417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735723, 0.507239, -0.448799,
		0.604109, -0.191884, 0.773455,
		0.306209, -0.840172, -0.447601,
		28.595520, 33.839008, 38.023136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.990969, 34.185925, 38.560791>,  <28.381174, 34.427128, 38.336456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.990969, 34.185925, 38.560791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.958927, 34.067043, 38.180210>,  <28.939701, 33.995716, 37.951862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.958927, 34.067043, 38.180210>,  <28.990969, 34.185925, 38.560791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.958927, 34.067043, 38.180210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796265, 0.555113, -0.240441,
		0.599621, -0.776865, 0.192185,
		-0.080106, -0.297204, -0.951448,
		28.934895, 33.977882, 37.894775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.635017, 33.961994, 38.795418>,  <28.990969, 34.185925, 38.560791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.635017, 33.961994, 38.795418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.885836, 34.258167, 38.892223>,  <30.036327, 34.435871, 38.950306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.885836, 34.258167, 38.892223>,  <29.635017, 33.961994, 38.795418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.885836, 34.258167, 38.892223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706171, -0.409157, -0.577853,
		-0.328841, 0.533242, -0.779433,
		0.627046, 0.740435, 0.242013,
		30.073950, 34.480297, 38.964828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.945198, 34.355137, 38.164680>,  <29.635017, 33.961994, 38.795418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.945198, 34.355137, 38.164680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.190596, 34.357845, 38.480549>,  <30.337833, 34.359470, 38.670071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.190596, 34.357845, 38.480549>,  <29.945198, 34.355137, 38.164680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.190596, 34.357845, 38.480549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769032, -0.232392, -0.595470,
		0.179484, 0.972599, -0.147775,
		0.613495, 0.006766, 0.789670,
		30.374643, 34.359875, 38.717449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.507133, 34.868969, 37.991985>,  <29.945198, 34.355137, 38.164680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.507133, 34.868969, 37.991985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.642307, 34.579079, 38.232178>,  <30.723412, 34.405144, 38.376293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.642307, 34.579079, 38.232178>,  <30.507133, 34.868969, 37.991985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.642307, 34.579079, 38.232178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794066, -0.122946, -0.595267,
		0.505232, 0.677980, 0.533932,
		0.337934, -0.724725, 0.600478,
		30.743689, 34.361660, 38.412319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.207535, 34.869267, 37.894306>,  <30.507133, 34.868969, 37.991985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.207535, 34.869267, 37.894306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.149359, 34.503265, 38.044830>,  <31.114452, 34.283665, 38.135147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.149359, 34.503265, 38.044830>,  <31.207535, 34.869267, 37.894306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.149359, 34.503265, 38.044830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772846, -0.342547, -0.534202,
		0.617702, 0.213138, 0.756978,
		-0.145442, -0.915005, 0.376314,
		31.105726, 34.228764, 38.157726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.841408, 34.538433, 38.114971>,  <31.207535, 34.869267, 37.894306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.841408, 34.538433, 38.114971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.563860, 34.290123, 37.968994>,  <31.397331, 34.141136, 37.881409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.563860, 34.290123, 37.968994>,  <31.841408, 34.538433, 38.114971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.563860, 34.290123, 37.968994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695267, -0.445598, -0.563955,
		0.187474, -0.645043, 0.740792,
		-0.693871, -0.620776, -0.364939,
		31.355700, 34.103889, 37.859512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.261532, 33.877075, 37.970432>,  <31.841408, 34.538433, 38.114971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.261532, 33.877075, 37.970432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.914503, 33.858234, 37.772404>,  <31.706285, 33.846931, 37.653587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.914503, 33.858234, 37.772404>,  <32.261532, 33.877075, 37.970432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.914503, 33.858234, 37.772404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463273, -0.438506, -0.770124,
		-0.180818, -0.897493, 0.402257,
		-0.867573, -0.047103, -0.495074,
		31.654232, 33.844105, 37.623882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.953552, 33.165134, 37.910435>,  <32.261532, 33.877075, 37.970432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.953552, 33.165134, 37.910435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.923365, 33.406818, 37.593140>,  <31.905252, 33.551830, 37.402763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.923365, 33.406818, 37.593140>,  <31.953552, 33.165134, 37.910435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.923365, 33.406818, 37.593140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378361, -0.718667, -0.583404,
		-0.922577, -0.344160, -0.174374,
		-0.075468, 0.604211, -0.793242,
		31.900724, 33.588081, 37.355167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.954193, 32.666214, 37.360992>,  <31.953552, 33.165134, 37.910435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.954193, 32.666214, 37.360992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.022594, 33.014168, 37.175926>,  <32.063637, 33.222939, 37.064888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.022594, 33.014168, 37.175926>,  <31.954193, 32.666214, 37.360992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.022594, 33.014168, 37.175926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416748, -0.489366, -0.766056,
		-0.892793, -0.061817, -0.446205,
		0.171003, 0.869885, -0.462665,
		32.073895, 33.275135, 37.037128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.684912, 32.783833, 36.567741>,  <31.954193, 32.666214, 37.360992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.684912, 32.783833, 36.567741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.023212, 32.977158, 36.658169>,  <32.226192, 33.093155, 36.712425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.023212, 32.977158, 36.658169>,  <31.684912, 32.783833, 36.567741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.023212, 32.977158, 36.658169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496807, -0.558757, -0.664059,
		-0.194636, 0.673940, -0.712686,
		0.845754, 0.483317, 0.226064,
		32.276939, 33.122154, 36.725986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.052029, 33.109837, 35.981461>,  <31.684912, 32.783833, 36.567741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.052029, 33.109837, 35.981461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.312428, 32.987095, 36.259178>,  <32.468666, 32.913448, 36.425808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.312428, 32.987095, 36.259178>,  <32.052029, 33.109837, 35.981461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.312428, 32.987095, 36.259178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461299, -0.566455, -0.682885,
		0.602833, 0.764833, -0.227208,
		0.650996, -0.306855, 0.694294,
		32.507725, 32.895039, 36.467464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.799881, 33.280190, 35.878250>,  <32.052029, 33.109837, 35.981461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.799881, 33.280190, 35.878250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.773685, 32.929123, 36.068161>,  <32.757969, 32.718483, 36.182106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.773685, 32.929123, 36.068161>,  <32.799881, 33.280190, 35.878250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.773685, 32.929123, 36.068161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561896, -0.425627, -0.709306,
		0.824612, 0.220321, 0.521032,
		-0.065490, -0.877668, 0.474774,
		32.754040, 32.665821, 36.210594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.978588, 33.417385, 35.143890>,  <32.799881, 33.280190, 35.878250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.978588, 33.417385, 35.143890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.591446, 33.417881, 35.043285>,  <32.359161, 33.418179, 34.982922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.591446, 33.417881, 35.043285>,  <32.978588, 33.417385, 35.143890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.591446, 33.417881, 35.043285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026782, 0.994812, -0.098140,
		0.250087, -0.101721, -0.962865,
		-0.967853, 0.001244, -0.251514,
		32.301090, 33.418255, 34.967831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.882549, 34.136681, 35.219379>,  <32.978588, 33.417385, 35.143890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.882549, 34.136681, 35.219379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.842213, 34.498539, 35.385006>,  <32.818012, 34.715652, 35.484383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.842213, 34.498539, 35.385006>,  <32.882549, 34.136681, 35.219379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.842213, 34.498539, 35.385006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634311, 0.262173, -0.727265,
		-0.766473, -0.335982, 0.547389,
		-0.100837, 0.904644, 0.414065,
		32.811962, 34.769932, 35.509224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.231476, 34.226810, 35.500603>,  <32.882549, 34.136681, 35.219379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.231476, 34.226810, 35.500603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.368111, 34.596073, 35.430065>,  <32.450092, 34.817631, 35.387741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.368111, 34.596073, 35.430065>,  <32.231476, 34.226810, 35.500603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.368111, 34.596073, 35.430065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753645, 0.156937, -0.638271,
		-0.561550, 0.350927, 0.749341,
		0.341586, 0.923158, -0.176346,
		32.470585, 34.873020, 35.377163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.651903, 34.574989, 35.420208>,  <32.231476, 34.226810, 35.500603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.651903, 34.574989, 35.420208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.923229, 34.820026, 35.257912>,  <32.086025, 34.967049, 35.160534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.923229, 34.820026, 35.257912>,  <31.651903, 34.574989, 35.420208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.923229, 34.820026, 35.257912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599162, 0.141518, -0.788022,
		-0.425314, 0.777630, 0.463033,
		0.678317, 0.612588, -0.405737,
		32.126724, 35.003803, 35.136192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.265997, 35.097454, 35.140327>,  <31.651903, 34.574989, 35.420208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.265997, 35.097454, 35.140327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.613335, 35.117317, 34.942940>,  <31.821737, 35.129234, 34.824509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.613335, 35.117317, 34.942940>,  <31.265997, 35.097454, 35.140327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.613335, 35.117317, 34.942940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493099, -0.020294, -0.869736,
		-0.053199, 0.998560, 0.006862,
		0.868345, 0.049653, -0.493469,
		31.873838, 35.132214, 34.794899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.149509, 35.655483, 34.745506>,  <31.265997, 35.097454, 35.140327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.149509, 35.655483, 34.745506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.442471, 35.441521, 34.577000>,  <31.618248, 35.313145, 34.475895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.442471, 35.441521, 34.577000>,  <31.149509, 35.655483, 34.745506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.442471, 35.441521, 34.577000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408004, 0.150528, -0.900485,
		0.545084, 0.831397, -0.107995,
		0.732405, -0.534902, -0.421264,
		31.662191, 35.281052, 34.450619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.423861, 36.084423, 34.208736>,  <31.149509, 35.655483, 34.745506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.423861, 36.084423, 34.208736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.522999, 35.706795, 34.121746>,  <31.582481, 35.480217, 34.069550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.522999, 35.706795, 34.121746>,  <31.423861, 36.084423, 34.208736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.522999, 35.706795, 34.121746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354905, 0.120402, -0.927117,
		0.901452, 0.306965, -0.305216,
		0.247844, -0.944074, -0.217480,
		31.597351, 35.423573, 34.056503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.672112, 36.167294, 33.466034>,  <31.423861, 36.084423, 34.208736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.672112, 36.167294, 33.466034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.596590, 35.784847, 33.555656>,  <31.551277, 35.555382, 33.609428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.596590, 35.784847, 33.555656>,  <31.672112, 36.167294, 33.466034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.596590, 35.784847, 33.555656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496421, -0.103934, -0.861838,
		0.847302, -0.273941, -0.455012,
		-0.188801, -0.956114, 0.224054,
		31.539949, 35.498013, 33.622871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.013554, 35.801533, 32.955353>,  <31.672112, 36.167294, 33.466034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.013554, 35.801533, 32.955353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.696808, 35.596058, 33.087463>,  <31.506762, 35.472775, 33.166729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.696808, 35.596058, 33.087463>,  <32.013554, 35.801533, 32.955353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.696808, 35.596058, 33.087463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318464, -0.114126, -0.941040,
		0.521093, -0.850353, -0.073219,
		-0.791860, -0.513687, 0.330277,
		31.459249, 35.441952, 33.186546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.048336, 35.242920, 32.548283>,  <32.013554, 35.801533, 32.955353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.048336, 35.242920, 32.548283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.673721, 35.279808, 32.683575>,  <31.448954, 35.301941, 32.764751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.673721, 35.279808, 32.683575>,  <32.048336, 35.242920, 32.548283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.673721, 35.279808, 32.683575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347239, -0.111216, -0.931158,
		-0.048249, -0.989509, 0.136178,
		-0.936535, 0.092214, 0.338230,
		31.392761, 35.307472, 32.785042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.621075, 34.821419, 32.172028>,  <32.048336, 35.242920, 32.548283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.621075, 34.821419, 32.172028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.329041, 35.052376, 32.318233>,  <31.153820, 35.190948, 32.405956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.329041, 35.052376, 32.318233>,  <31.621075, 34.821419, 32.172028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.329041, 35.052376, 32.318233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492520, -0.073822, -0.867165,
		-0.473709, -0.813125, 0.338272,
		-0.730085, 0.577390, 0.365510,
		31.110016, 35.225594, 32.427887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.915358, 34.483959, 31.988243>,  <31.621075, 34.821419, 32.172028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.915358, 34.483959, 31.988243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.849648, 34.868534, 32.076477>,  <30.810221, 35.099277, 32.129417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.849648, 34.868534, 32.076477>,  <30.915358, 34.483959, 31.988243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.849648, 34.868534, 32.076477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558299, 0.093731, -0.824328,
		-0.813213, -0.258569, 0.521370,
		-0.164277, 0.961435, 0.220582,
		30.800364, 35.156963, 32.142651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.118149, 34.584076, 31.842964>,  <30.915358, 34.483959, 31.988243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.118149, 34.584076, 31.842964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.305841, 34.937183, 31.833632>,  <30.418457, 35.149048, 31.828032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.305841, 34.937183, 31.833632>,  <30.118149, 34.584076, 31.842964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.305841, 34.937183, 31.833632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450636, 0.216647, -0.866021,
		-0.759439, 0.416879, 0.499464,
		0.469233, 0.882766, -0.023331,
		30.446611, 35.202015, 31.826632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.544199, 35.036949, 31.624357>,  <30.118149, 34.584076, 31.842964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.544199, 35.036949, 31.624357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.881083, 35.240597, 31.553383>,  <30.083212, 35.362785, 31.510798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.881083, 35.240597, 31.553383>,  <29.544199, 35.036949, 31.624357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.881083, 35.240597, 31.553383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416812, 0.406078, -0.813246,
		-0.341987, 0.758879, 0.554209,
		0.842207, 0.509120, -0.177436,
		30.133745, 35.393333, 31.500153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.342920, 35.629147, 31.356068>,  <29.544199, 35.036949, 31.624357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.342920, 35.629147, 31.356068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.727556, 35.651184, 31.248503>,  <29.958338, 35.664406, 31.183964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.727556, 35.651184, 31.248503>,  <29.342920, 35.629147, 31.356068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.727556, 35.651184, 31.248503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253943, 0.550515, -0.795265,
		0.104223, 0.833005, 0.543360,
		0.961588, 0.055098, -0.268912,
		30.016033, 35.667713, 31.167830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.533268, 36.247391, 31.260956>,  <29.342920, 35.629147, 31.356068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.533268, 36.247391, 31.260956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.804449, 36.088684, 31.013422>,  <29.967157, 35.993462, 30.864902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.804449, 36.088684, 31.013422>,  <29.533268, 36.247391, 31.260956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.804449, 36.088684, 31.013422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215587, 0.697499, -0.683386,
		0.702780, 0.596718, 0.387336,
		0.677955, -0.396765, -0.618833,
		30.007835, 35.969654, 30.827772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.662550, 36.824524, 30.938723>,  <29.533268, 36.247391, 31.260956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.662550, 36.824524, 30.938723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.796778, 36.530552, 30.703005>,  <29.877316, 36.354168, 30.561575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.796778, 36.530552, 30.703005>,  <29.662550, 36.824524, 30.938723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.796778, 36.530552, 30.703005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184396, 0.562218, -0.806170,
		0.923791, 0.379190, 0.053146,
		0.335571, -0.734932, -0.589293,
		29.897449, 36.310074, 30.526217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.006557, 37.189690, 30.458591>,  <29.662550, 36.824524, 30.938723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.006557, 37.189690, 30.458591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.974731, 36.832882, 30.280619>,  <29.955637, 36.618797, 30.173836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.974731, 36.832882, 30.280619>,  <30.006557, 37.189690, 30.458591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.974731, 36.832882, 30.280619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311791, 0.446219, -0.838853,
		0.946813, 0.071983, -0.313628,
		-0.079564, -0.892024, -0.444930,
		29.950863, 36.565273, 30.147141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.227365, 37.307865, 29.714960>,  <30.006557, 37.189690, 30.458591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.227365, 37.307865, 29.714960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.017962, 36.967350, 29.700823>,  <29.892319, 36.763042, 29.692341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.017962, 36.967350, 29.700823>,  <30.227365, 37.307865, 29.714960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.017962, 36.967350, 29.700823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389286, 0.275883, -0.878832,
		0.757887, -0.446319, -0.475822,
		-0.523510, -0.851286, -0.035343,
		29.860909, 36.711964, 29.690220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.210632, 37.054153, 28.999842>,  <30.227365, 37.307865, 29.714960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.210632, 37.054153, 28.999842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.890539, 36.867851, 29.150942>,  <29.698483, 36.756069, 29.241602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.890539, 36.867851, 29.150942>,  <30.210632, 37.054153, 28.999842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.890539, 36.867851, 29.150942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531800, 0.260022, -0.805964,
		0.277162, -0.845846, -0.455769,
		-0.800231, -0.465761, 0.377753,
		29.650469, 36.728123, 29.264267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.954380, 36.541729, 28.483971>,  <30.210632, 37.054153, 28.999842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.954380, 36.541729, 28.483971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.645538, 36.634865, 28.720493>,  <29.460234, 36.690746, 28.862406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.645538, 36.634865, 28.720493>,  <29.954380, 36.541729, 28.483971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.645538, 36.634865, 28.720493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576162, 0.136102, -0.805924,
		-0.268129, -0.962944, 0.029069,
		-0.772104, 0.232840, 0.591304,
		29.413908, 36.704716, 28.897884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.323544, 36.335739, 28.109312>,  <29.954380, 36.541729, 28.483971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.323544, 36.335739, 28.109312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.192917, 36.572144, 28.404352>,  <29.114540, 36.713985, 28.581377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.192917, 36.572144, 28.404352>,  <29.323544, 36.335739, 28.109312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.192917, 36.572144, 28.404352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662657, 0.413304, -0.624552,
		-0.673973, -0.692734, 0.256669,
		-0.326567, 0.591015, 0.737601,
		29.094948, 36.749447, 28.625633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.648226, 36.431866, 27.915915>,  <29.323544, 36.335739, 28.109312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.648226, 36.431866, 27.915915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.710321, 36.724091, 28.181902>,  <28.747578, 36.899426, 28.341496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.710321, 36.724091, 28.181902>,  <28.648226, 36.431866, 27.915915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.710321, 36.724091, 28.181902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665869, 0.574620, -0.475848,
		-0.729740, -0.368913, 0.575659,
		0.155238, 0.730558, 0.664970,
		28.756893, 36.943256, 28.381393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.034803, 36.693172, 28.104460>,  <28.648226, 36.431866, 27.915915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.034803, 36.693172, 28.104460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.310278, 36.977905, 28.159611>,  <28.475563, 37.148746, 28.192701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.310278, 36.977905, 28.159611>,  <28.034803, 36.693172, 28.104460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.310278, 36.977905, 28.159611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499933, 0.603916, -0.620768,
		-0.525148, 0.358584, 0.771775,
		0.688685, 0.711831, 0.137877,
		28.516884, 37.191456, 28.200974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.602455, 37.197662, 28.199324>,  <28.034803, 36.693172, 28.104460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.602455, 37.197662, 28.199324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.956514, 37.364044, 28.115904>,  <28.168951, 37.463875, 28.065851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.956514, 37.364044, 28.115904>,  <27.602455, 37.197662, 28.199324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.956514, 37.364044, 28.115904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430342, 0.561352, -0.706887,
		-0.176963, 0.715448, 0.675883,
		0.885149, 0.415954, -0.208549,
		28.222059, 37.488831, 28.053339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.463949, 37.848705, 28.094887>,  <27.602455, 37.197662, 28.199324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.463949, 37.848705, 28.094887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.809002, 37.800625, 27.898352>,  <28.016033, 37.771774, 27.780430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.809002, 37.800625, 27.898352>,  <27.463949, 37.848705, 28.094887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.809002, 37.800625, 27.898352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327285, 0.607990, -0.723348,
		0.385679, 0.784793, 0.485132,
		0.862633, -0.120204, -0.491340,
		28.067793, 37.764565, 27.750950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.680624, 38.459751, 27.885504>,  <27.463949, 37.848705, 28.094887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.680624, 38.459751, 27.885504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.913454, 38.239796, 27.645901>,  <28.053152, 38.107822, 27.502138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.913454, 38.239796, 27.645901>,  <27.680624, 38.459751, 27.885504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.913454, 38.239796, 27.645901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129709, 0.664440, -0.736000,
		0.802724, 0.506103, 0.315428,
		0.582074, -0.549891, -0.599007,
		28.088076, 38.074829, 27.466198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.275871, 38.894356, 27.684631>,  <27.680624, 38.459751, 27.885504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.275871, 38.894356, 27.684631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.232086, 38.629177, 27.388382>,  <28.205814, 38.470070, 27.210632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.232086, 38.629177, 27.388382>,  <28.275871, 38.894356, 27.684631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.232086, 38.629177, 27.388382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007292, 0.745616, -0.666336,
		0.993964, -0.067538, -0.086451,
		-0.109462, -0.662944, -0.740623,
		28.199247, 38.430294, 27.166195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.602924, 39.220798, 27.228815>,  <28.275871, 38.894356, 27.684631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.602924, 39.220798, 27.228815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.462185, 38.933861, 26.988277>,  <28.377741, 38.761696, 26.843954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.462185, 38.933861, 26.988277>,  <28.602924, 39.220798, 27.228815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.462185, 38.933861, 26.988277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062936, 0.622840, -0.779813,
		0.933939, -0.312222, -0.173998,
		-0.351847, -0.717348, -0.601345,
		28.356630, 38.718655, 26.807875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.085703, 39.055134, 26.729862>,  <28.602924, 39.220798, 27.228815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.085703, 39.055134, 26.729862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.714508, 38.986214, 26.597710>,  <28.491791, 38.944862, 26.518419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.714508, 38.986214, 26.597710>,  <29.085703, 39.055134, 26.729862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.714508, 38.986214, 26.597710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108409, 0.723461, -0.681800,
		0.356489, -0.668519, -0.652685,
		-0.927989, -0.172297, -0.330379,
		28.436111, 38.934525, 26.498596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.200348, 39.203480, 26.041752>,  <29.085703, 39.055134, 26.729862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.200348, 39.203480, 26.041752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.802015, 39.176746, 26.066593>,  <28.563017, 39.160706, 26.081497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.802015, 39.176746, 26.066593>,  <29.200348, 39.203480, 26.041752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.802015, 39.176746, 26.066593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090955, 0.780542, -0.618451,
		-0.007139, -0.621520, -0.783366,
		-0.995829, -0.066836, 0.062102,
		28.503267, 39.156696, 26.085224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.847799, 39.320415, 25.259905>,  <29.200348, 39.203480, 26.041752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.847799, 39.320415, 25.259905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.569206, 39.387283, 25.539036>,  <28.402050, 39.427402, 25.706514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.569206, 39.387283, 25.539036>,  <28.847799, 39.320415, 25.259905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.569206, 39.387283, 25.539036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345355, 0.774356, -0.530191,
		-0.628999, -0.610268, -0.481594,
		-0.696484, 0.167168, 0.697828,
		28.360260, 39.437435, 25.748384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.103178, 39.341743, 24.891273>,  <28.847799, 39.320415, 25.259905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.103178, 39.341743, 24.891273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.083630, 39.553288, 25.230194>,  <28.071901, 39.680214, 25.433546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.083630, 39.553288, 25.230194>,  <28.103178, 39.341743, 24.891273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.083630, 39.553288, 25.230194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126093, 0.838260, -0.530490,
		-0.990814, -0.132764, 0.025721,
		-0.048869, 0.528861, 0.847301,
		28.068968, 39.711945, 25.484385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.606701, 39.821148, 24.846098>,  <28.103178, 39.341743, 24.891273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.606701, 39.821148, 24.846098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.801353, 40.003654, 25.144094>,  <27.918144, 40.113159, 25.322893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.801353, 40.003654, 25.144094>,  <27.606701, 39.821148, 24.846098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.801353, 40.003654, 25.144094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201092, 0.888380, -0.412726,
		-0.850149, 0.051032, 0.524063,
		0.486630, 0.456263, 0.744994,
		27.947342, 40.140533, 25.367592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.171019, 40.321453, 25.022259>,  <27.606701, 39.821148, 24.846098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.171019, 40.321453, 25.022259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.534761, 40.431362, 25.147205>,  <27.753006, 40.497307, 25.222174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.534761, 40.431362, 25.147205>,  <27.171019, 40.321453, 25.022259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.534761, 40.431362, 25.147205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173653, 0.933008, -0.315184,
		-0.378045, 0.232371, 0.896151,
		0.909355, 0.274773, 0.312367,
		27.807568, 40.513794, 25.240915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.051477, 40.937832, 25.309370>,  <27.171019, 40.321453, 25.022259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.051477, 40.937832, 25.309370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.448233, 40.955414, 25.261665>,  <27.686287, 40.965961, 25.233044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.448233, 40.955414, 25.261665>,  <27.051477, 40.937832, 25.309370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.448233, 40.955414, 25.261665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076554, 0.955613, -0.284505,
		0.101462, 0.291328, 0.951228,
		0.991890, 0.043954, -0.119260,
		27.745800, 40.968601, 25.225887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.239412, 41.500736, 25.689939>,  <27.051477, 40.937832, 25.309370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.239412, 41.500736, 25.689939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.511232, 41.410210, 25.410801>,  <27.674324, 41.355892, 25.243319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.511232, 41.410210, 25.410801>,  <27.239412, 41.500736, 25.689939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.511232, 41.410210, 25.410801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127080, 0.900533, -0.415802,
		0.722537, 0.371242, 0.583199,
		0.679552, -0.226319, -0.697846,
		27.715097, 41.342316, 25.201447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.543159, 42.101532, 25.626362>,  <27.239412, 41.500736, 25.689939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.543159, 42.101532, 25.626362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.645273, 41.919807, 25.284969>,  <27.706541, 41.810772, 25.080133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.645273, 41.919807, 25.284969>,  <27.543159, 42.101532, 25.626362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.645273, 41.919807, 25.284969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333955, 0.786969, -0.518801,
		0.907361, 0.417466, 0.049179,
		0.255284, -0.454316, -0.853479,
		27.721859, 41.783512, 25.028925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.964327, 42.440063, 25.225492>,  <27.543159, 42.101532, 25.626362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.964327, 42.440063, 25.225492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.834343, 42.208824, 24.926105>,  <27.756353, 42.070080, 24.746473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.834343, 42.208824, 24.926105>,  <27.964327, 42.440063, 25.225492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.834343, 42.208824, 24.926105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158733, 0.813530, -0.559440,
		0.932312, -0.062988, -0.356127,
		-0.324958, -0.578102, -0.748466,
		27.736856, 42.035393, 24.701567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.310217, 42.578739, 24.611326>,  <27.964327, 42.440063, 25.225492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.310217, 42.578739, 24.611326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.952749, 42.436012, 24.502487>,  <27.738270, 42.350376, 24.437183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.952749, 42.436012, 24.502487>,  <28.310217, 42.578739, 24.611326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.952749, 42.436012, 24.502487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206292, 0.865192, -0.457041,
		0.398499, -0.352310, -0.846803,
		-0.893668, -0.356819, -0.272099,
		27.684649, 42.328968, 24.420856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.200994, 42.840515, 23.921631>,  <28.310217, 42.578739, 24.611326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.200994, 42.840515, 23.921631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.833910, 42.705345, 24.005165>,  <27.613659, 42.624241, 24.055285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.833910, 42.705345, 24.005165>,  <28.200994, 42.840515, 23.921631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.833910, 42.705345, 24.005165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397200, 0.788803, -0.469064,
		-0.006219, -0.513414, -0.858118,
		-0.917711, -0.337928, 0.208834,
		27.558598, 42.603966, 24.067816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.773895, 42.705761, 23.298458>,  <28.200994, 42.840515, 23.921631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.773895, 42.705761, 23.298458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.540730, 42.779449, 23.615007>,  <27.400829, 42.823662, 23.804937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.540730, 42.779449, 23.615007>,  <27.773895, 42.705761, 23.298458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.540730, 42.779449, 23.615007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397516, 0.784784, -0.475495,
		-0.708655, -0.591757, -0.384230,
		-0.582915, 0.184224, 0.791374,
		27.365854, 42.834717, 23.852419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.168848, 43.081013, 23.019281>,  <27.773895, 42.705761, 23.298458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.168848, 43.081013, 23.019281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.160494, 43.151260, 23.412975>,  <27.155481, 43.193409, 23.649193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.160494, 43.151260, 23.412975>,  <27.168848, 43.081013, 23.019281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.160494, 43.151260, 23.412975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475762, 0.864097, -0.164275,
		-0.879326, -0.471693, 0.065505,
		-0.020885, 0.175616, 0.984237,
		27.154228, 43.203945, 23.708246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.505377, 43.293438, 23.130749>,  <27.168848, 43.081013, 23.019281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.505377, 43.293438, 23.130749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.721998, 43.441628, 23.432602>,  <26.851971, 43.530540, 23.613714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.721998, 43.441628, 23.432602>,  <26.505377, 43.293438, 23.130749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.721998, 43.441628, 23.432602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483944, 0.871389, -0.080495,
		-0.687399, -0.321608, 0.651192,
		0.541554, 0.370473, 0.754632,
		26.884464, 43.552769, 23.658991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.325554, 43.290718, 23.855642>,  <26.505377, 43.293438, 23.130749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.325554, 43.290718, 23.855642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.572742, 43.601200, 23.805666>,  <26.721056, 43.787491, 23.775681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.572742, 43.601200, 23.805666>,  <26.325554, 43.290718, 23.855642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.572742, 43.601200, 23.805666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776508, 0.627474, 0.057539,
		0.123058, 0.061458, 0.990495,
		0.617974, 0.776208, -0.124939,
		26.758135, 43.834061, 23.768185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.447289, 43.595444, 24.458170>,  <26.325554, 43.290718, 23.855642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.447289, 43.595444, 24.458170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.432009, 43.794865, 24.111763>,  <26.422842, 43.914516, 23.903919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.432009, 43.794865, 24.111763>,  <26.447289, 43.595444, 24.458170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.432009, 43.794865, 24.111763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822919, 0.475945, 0.310290,
		0.566872, 0.724515, 0.392088,
		-0.038198, 0.498552, -0.866018,
		26.420549, 43.944431, 23.851957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.275557, 44.236202, 24.623684>,  <26.447289, 43.595444, 24.458170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.275557, 44.236202, 24.623684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.152590, 44.236767, 24.243053>,  <26.078810, 44.237106, 24.014675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.152590, 44.236767, 24.243053>,  <26.275557, 44.236202, 24.623684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.152590, 44.236767, 24.243053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837845, 0.473679, 0.271374,
		0.451123, 0.880696, -0.144437,
		-0.307415, 0.001407, -0.951574,
		26.060366, 44.237190, 23.957581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.295963, 44.882332, 24.419628>,  <26.275557, 44.236202, 24.623684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.295963, 44.882332, 24.419628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.587151, 45.149944, 24.359684>,  <26.761864, 45.310513, 24.323717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.587151, 45.149944, 24.359684>,  <26.295963, 44.882332, 24.419628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.587151, 45.149944, 24.359684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442750, 0.291850, -0.847818,
		-0.523480, 0.683536, 0.508671,
		0.727970, 0.669030, -0.149858,
		26.805542, 45.350655, 24.314726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.848532, 45.483196, 24.394215>,  <26.295963, 44.882332, 24.419628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.848532, 45.483196, 24.394215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.205179, 45.515091, 24.215931>,  <26.419168, 45.534229, 24.108961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.205179, 45.515091, 24.215931>,  <25.848532, 45.483196, 24.394215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.205179, 45.515091, 24.215931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446729, 0.315389, -0.837236,
		0.073812, 0.945606, 0.316828,
		0.891619, 0.079738, -0.445709,
		26.472666, 45.539013, 24.082218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.983355, 46.193810, 24.085005>,  <25.848532, 45.483196, 24.394215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.983355, 46.193810, 24.085005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.205919, 45.929081, 23.884047>,  <26.339458, 45.770245, 23.763472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.205919, 45.929081, 23.884047>,  <25.983355, 46.193810, 24.085005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.205919, 45.929081, 23.884047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343264, 0.367542, -0.864340,
		0.756689, 0.653382, -0.022675,
		0.556410, -0.661819, -0.502397,
		26.372843, 45.730534, 23.733328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.427223, 46.439529, 23.525333>,  <25.983355, 46.193810, 24.085005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.427223, 46.439529, 23.525333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.360748, 46.065941, 23.398798>,  <26.320864, 45.841785, 23.322876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.360748, 46.065941, 23.398798>,  <26.427223, 46.439529, 23.525333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.360748, 46.065941, 23.398798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139618, 0.339855, -0.930057,
		0.976160, -0.110398, -0.186880,
		-0.166189, -0.933976, -0.316339,
		26.310892, 45.785748, 23.303896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.946413, 46.033012, 23.047075>,  <26.427223, 46.439529, 23.525333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.946413, 46.033012, 23.047075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.547838, 46.011845, 23.020802>,  <26.308693, 45.999146, 23.005037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.547838, 46.011845, 23.020802>,  <26.946413, 46.033012, 23.047075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.547838, 46.011845, 23.020802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045127, 0.323483, -0.945157,
		0.071261, -0.944754, -0.319942,
		-0.996436, -0.052915, -0.065686,
		26.248907, 45.995972, 23.001095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.548290, 45.875282, 23.459700>,  <26.946413, 46.033012, 23.047075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.548290, 45.875282, 23.459700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.216976, 45.812553, 23.674866>,  <27.018188, 45.774918, 23.803965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.216976, 45.812553, 23.674866>,  <27.548290, 45.875282, 23.459700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.216976, 45.812553, 23.674866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550538, -0.049288, 0.833354,
		-0.104172, 0.986397, 0.127159,
		-0.828285, -0.156818, 0.537915,
		26.968491, 45.765507, 23.836241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.785685, 46.150040, 24.075327>,  <27.548290, 45.875282, 23.459700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.785685, 46.150040, 24.075327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.487806, 45.897118, 24.160757>,  <27.309080, 45.745365, 24.212015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.487806, 45.897118, 24.160757>,  <27.785685, 46.150040, 24.075327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.487806, 45.897118, 24.160757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453641, -0.244840, 0.856891,
		-0.489528, 0.735010, 0.469173,
		-0.744696, -0.632308, 0.213575,
		27.264397, 45.707424, 24.224829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.607227, 46.205219, 24.733768>,  <27.785685, 46.150040, 24.075327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.607227, 46.205219, 24.733768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.510666, 45.828682, 24.639456>,  <27.452728, 45.602760, 24.582869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.510666, 45.828682, 24.639456>,  <27.607227, 46.205219, 24.733768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.510666, 45.828682, 24.639456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537580, -0.332002, 0.775101,
		-0.807918, 0.060362, 0.586196,
		-0.241405, -0.941345, -0.235781,
		27.438244, 45.546280, 24.568722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.379162, 45.955898, 25.364931>,  <27.607227, 46.205219, 24.733768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.379162, 45.955898, 25.364931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.483849, 45.642830, 25.139032>,  <27.546659, 45.454990, 25.003492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.483849, 45.642830, 25.139032>,  <27.379162, 45.955898, 25.364931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.483849, 45.642830, 25.139032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480273, -0.401939, 0.779604,
		-0.837164, -0.475266, 0.270700,
		0.261715, -0.782667, -0.564747,
		27.562363, 45.408031, 24.969608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.213549, 45.415623, 25.767017>,  <27.379162, 45.955898, 25.364931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.213549, 45.415623, 25.767017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.478958, 45.256748, 25.513411>,  <27.638205, 45.161423, 25.361246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.478958, 45.256748, 25.513411>,  <27.213549, 45.415623, 25.767017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.478958, 45.256748, 25.513411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444032, -0.472982, 0.761002,
		-0.602138, -0.786468, -0.137472,
		0.663525, -0.397186, -0.634017,
		27.678017, 45.137592, 25.323206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.337418, 44.760868, 25.994053>,  <27.213549, 45.415623, 25.767017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.337418, 44.760868, 25.994053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.655880, 44.781189, 25.752871>,  <27.846956, 44.793381, 25.608160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.655880, 44.781189, 25.752871>,  <27.337418, 44.760868, 25.994053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.655880, 44.781189, 25.752871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548798, -0.480340, 0.684174,
		-0.254869, -0.875610, -0.410303,
		0.796155, 0.050799, -0.602957,
		27.894726, 44.796429, 25.571983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.562897, 44.024635, 25.927738>,  <27.337418, 44.760868, 25.994053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.562897, 44.024635, 25.927738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.886074, 44.238953, 25.829636>,  <28.079981, 44.367542, 25.770775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.886074, 44.238953, 25.829636>,  <27.562897, 44.024635, 25.927738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.886074, 44.238953, 25.829636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557716, -0.560956, 0.611785,
		0.190214, -0.631071, -0.752042,
		0.807943, 0.535796, -0.245257,
		28.128456, 44.399693, 25.756058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.097254, 43.548786, 25.530180>,  <27.562897, 44.024635, 25.927738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.097254, 43.548786, 25.530180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.291304, 43.858131, 25.693430>,  <28.407734, 44.043739, 25.791380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.291304, 43.858131, 25.693430>,  <28.097254, 43.548786, 25.530180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.291304, 43.858131, 25.693430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466054, -0.623577, 0.627651,
		0.739899, -0.114280, -0.662940,
		0.485122, 0.773364, 0.408124,
		28.436840, 44.090141, 25.815866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.886673, 43.407921, 25.576710>,  <28.097254, 43.548786, 25.530180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.886673, 43.407921, 25.576710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.750443, 43.668720, 25.847679>,  <28.668705, 43.825199, 26.010262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.750443, 43.668720, 25.847679>,  <28.886673, 43.407921, 25.576710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.750443, 43.668720, 25.847679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414536, -0.542561, 0.730608,
		0.843901, 0.529644, -0.085495,
		-0.340575, 0.652001, 0.677424,
		28.648270, 43.864319, 26.050907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.437687, 43.494846, 25.984486>,  <28.886673, 43.407921, 25.576710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.437687, 43.494846, 25.984486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.147499, 43.643326, 26.216314>,  <28.973387, 43.732414, 26.355412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.147499, 43.643326, 26.216314>,  <29.437687, 43.494846, 25.984486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.147499, 43.643326, 26.216314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392944, -0.467964, 0.791584,
		0.565056, 0.802009, 0.193632,
		-0.725470, 0.371203, 0.579570,
		28.929857, 43.754688, 26.390184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.800917, 43.611084, 26.538401>,  <29.437687, 43.494846, 25.984486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.800917, 43.611084, 26.538401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.439438, 43.623009, 26.709255>,  <29.222551, 43.630165, 26.811768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.439438, 43.623009, 26.709255>,  <29.800917, 43.611084, 26.538401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.439438, 43.623009, 26.709255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398375, -0.307097, 0.864285,
		0.156942, 0.951211, 0.265645,
		-0.903696, 0.029816, 0.427135,
		29.168329, 43.631954, 26.837397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.967184, 43.853443, 27.188692>,  <29.800917, 43.611084, 26.538401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.967184, 43.853443, 27.188692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.589281, 43.733433, 27.241478>,  <29.362539, 43.661427, 27.273149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.589281, 43.733433, 27.241478>,  <29.967184, 43.853443, 27.188692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.589281, 43.733433, 27.241478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218159, -0.275133, 0.936327,
		-0.244616, 0.913392, 0.325388,
		-0.944759, -0.300027, 0.131963,
		29.305853, 43.643425, 27.281067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.727196, 44.250458, 27.775862>,  <29.967184, 43.853443, 27.188692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.727196, 44.250458, 27.775862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.504377, 43.918312, 27.770317>,  <29.370686, 43.719025, 27.766991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.504377, 43.918312, 27.770317>,  <29.727196, 44.250458, 27.775862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.504377, 43.918312, 27.770317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460309, -0.322603, 0.827069,
		-0.691241, 0.454336, 0.561930,
		-0.557048, -0.830365, -0.013861,
		29.337263, 43.669201, 27.766159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.415449, 44.239178, 28.434189>,  <29.727196, 44.250458, 27.775862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.415449, 44.239178, 28.434189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.414867, 43.865639, 28.291122>,  <29.414518, 43.641514, 28.205282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.414867, 43.865639, 28.291122>,  <29.415449, 44.239178, 28.434189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.414867, 43.865639, 28.291122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212675, -0.349772, 0.912375,
		-0.977122, -0.074741, 0.199115,
		-0.001453, -0.933849, -0.357666,
		29.414433, 43.585484, 28.183823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.301319, 43.852394, 29.050573>,  <29.415449, 44.239178, 28.434189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.301319, 43.852394, 29.050573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.402531, 43.578812, 28.776878>,  <29.463259, 43.414661, 28.612661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.402531, 43.578812, 28.776878>,  <29.301319, 43.852394, 29.050573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.402531, 43.578812, 28.776878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172201, -0.664121, 0.727523,
		-0.952010, -0.301912, -0.050265,
		0.253030, -0.683954, -0.684239,
		29.478439, 43.373627, 28.571608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.892544, 43.371094, 29.164646>,  <29.301319, 43.852394, 29.050573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.892544, 43.371094, 29.164646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.227152, 43.230888, 28.996183>,  <29.427917, 43.146767, 28.895105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.227152, 43.230888, 28.996183>,  <28.892544, 43.371094, 29.164646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.227152, 43.230888, 28.996183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176183, -0.555745, 0.812470,
		-0.518837, -0.753848, -0.403138,
		0.836521, -0.350514, -0.421156,
		29.478107, 43.125732, 28.869837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.764696, 42.627556, 29.218571>,  <28.892544, 43.371094, 29.164646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.764696, 42.627556, 29.218571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.156263, 42.692150, 29.168539>,  <29.391203, 42.730907, 29.138521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.156263, 42.692150, 29.168539>,  <28.764696, 42.627556, 29.218571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.156263, 42.692150, 29.168539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199843, -0.630522, 0.750003,
		0.042251, -0.759186, -0.649501,
		0.978917, 0.161487, -0.125078,
		29.449938, 42.740597, 29.131016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.094339, 42.021137, 29.211082>,  <28.764696, 42.627556, 29.218571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.094339, 42.021137, 29.211082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.377413, 42.281300, 29.321468>,  <29.547256, 42.437397, 29.387699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.377413, 42.281300, 29.321468>,  <29.094339, 42.021137, 29.211082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.377413, 42.281300, 29.321468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175576, -0.540234, 0.822995,
		0.684365, -0.533968, -0.496510,
		0.707685, 0.650404, 0.275965,
		29.589718, 42.476421, 29.404259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.461023, 41.636593, 29.607615>,  <29.094339, 42.021137, 29.211082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.461023, 41.636593, 29.607615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.593853, 41.999302, 29.711531>,  <29.673552, 42.216927, 29.773880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.593853, 41.999302, 29.711531>,  <29.461023, 41.636593, 29.607615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.593853, 41.999302, 29.711531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411928, -0.387181, 0.824867,
		0.848553, -0.166901, -0.502098,
		0.332074, 0.906771, 0.259793,
		29.693476, 42.271332, 29.789469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.188519, 41.590160, 29.839127>,  <29.461023, 41.636593, 29.607615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.188519, 41.590160, 29.839127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.035292, 41.926918, 29.991167>,  <29.943356, 42.128971, 30.082392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.035292, 41.926918, 29.991167>,  <30.188519, 41.590160, 29.839127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.035292, 41.926918, 29.991167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241287, -0.306007, 0.920945,
		0.891650, 0.444498, -0.085917,
		-0.383067, 0.841892, 0.380103,
		29.920372, 42.179485, 30.105198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.742697, 41.957222, 30.171261>,  <30.188519, 41.590160, 29.839127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.742697, 41.957222, 30.171261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.387041, 42.044094, 30.332392>,  <30.173649, 42.096218, 30.429070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.387041, 42.044094, 30.332392>,  <30.742697, 41.957222, 30.171261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.387041, 42.044094, 30.332392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282722, -0.431491, 0.856670,
		0.359864, 0.875585, 0.322255,
		-0.889138, 0.217176, 0.402825,
		30.120300, 42.109245, 30.453239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.804071, 42.241802, 30.880430>,  <30.742697, 41.957222, 30.171261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.804071, 42.241802, 30.880430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.415451, 42.147198, 30.885319>,  <30.182280, 42.090435, 30.888252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.415451, 42.147198, 30.885319>,  <30.804071, 42.241802, 30.880430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.415451, 42.147198, 30.885319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130875, -0.493157, 0.860040,
		-0.197385, 0.837172, 0.510081,
		-0.971551, -0.236516, 0.012223,
		30.123985, 42.076244, 30.888987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.576532, 42.276798, 31.622910>,  <30.804071, 42.241802, 30.880430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.576532, 42.276798, 31.622910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.289886, 42.043652, 31.469688>,  <30.117899, 41.903763, 31.377756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.289886, 42.043652, 31.469688>,  <30.576532, 42.276798, 31.622910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.289886, 42.043652, 31.469688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076718, -0.611745, 0.787326,
		-0.693236, 0.534823, 0.483103,
		-0.716616, -0.582865, -0.383053,
		30.074902, 41.868793, 31.354773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.978172, 42.167675, 32.126110>,  <30.576532, 42.276798, 31.622910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.978172, 42.167675, 32.126110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.996706, 41.866814, 31.863165>,  <30.007826, 41.686298, 31.705399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.996706, 41.866814, 31.863165>,  <29.978172, 42.167675, 32.126110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.996706, 41.866814, 31.863165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203606, -0.637140, 0.743368,
		-0.977956, -0.168287, 0.123620,
		0.046336, -0.752151, -0.657359,
		30.010607, 41.641167, 31.665956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.503344, 41.660263, 32.367683>,  <29.978172, 42.167675, 32.126110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.503344, 41.660263, 32.367683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.742975, 41.457958, 32.119389>,  <29.886755, 41.336575, 31.970411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.742975, 41.457958, 32.119389>,  <29.503344, 41.660263, 32.367683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.742975, 41.457958, 32.119389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196037, -0.659007, 0.726139,
		-0.776319, -0.556704, -0.295652,
		0.599081, -0.505757, -0.620735,
		29.922699, 41.306232, 31.933168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.188234, 40.986141, 32.363201>,  <29.503344, 41.660263, 32.367683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.188234, 40.986141, 32.363201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.570564, 40.982422, 32.245682>,  <29.799961, 40.980190, 32.175171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.570564, 40.982422, 32.245682>,  <29.188234, 40.986141, 32.363201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.570564, 40.982422, 32.245682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202678, -0.703059, 0.681637,
		-0.212891, -0.711071, -0.670116,
		0.955824, -0.009297, -0.293794,
		29.857311, 40.979633, 32.157543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.238115, 40.263012, 32.151810>,  <29.188234, 40.986141, 32.363201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.238115, 40.263012, 32.151810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.594240, 40.425751, 32.233608>,  <29.807915, 40.523396, 32.282688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.594240, 40.425751, 32.233608>,  <29.238115, 40.263012, 32.151810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.594240, 40.425751, 32.233608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215047, -0.771536, 0.598738,
		0.401370, -0.489088, -0.774400,
		0.890313, 0.406848, 0.204495,
		29.861334, 40.547806, 32.294956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.549150, 39.669498, 32.551605>,  <29.238115, 40.263012, 32.151810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.549150, 39.669498, 32.551605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.819731, 39.963013, 32.576839>,  <29.982079, 40.139122, 32.591980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.819731, 39.963013, 32.576839>,  <29.549150, 39.669498, 32.551605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.819731, 39.963013, 32.576839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616646, -0.611128, 0.496256,
		0.402696, -0.296792, -0.865882,
		0.676449, 0.733783, 0.063083,
		30.022665, 40.183147, 32.595764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.183796, 39.456409, 32.158527>,  <29.549150, 39.669498, 32.551605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.183796, 39.456409, 32.158527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.243462, 39.692127, 32.476139>,  <30.279261, 39.833557, 32.666706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.243462, 39.692127, 32.476139>,  <30.183796, 39.456409, 32.158527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.243462, 39.692127, 32.476139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552903, -0.715455, 0.427110,
		0.819786, 0.375312, -0.432542,
		0.149165, 0.589292, 0.794031,
		30.288212, 39.868916, 32.714348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.842213, 39.402317, 32.194912>,  <30.183796, 39.456409, 32.158527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.842213, 39.402317, 32.194912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.693998, 39.523571, 32.546097>,  <30.605070, 39.596325, 32.756805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.693998, 39.523571, 32.546097>,  <30.842213, 39.402317, 32.194912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.693998, 39.523571, 32.546097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536041, -0.702148, 0.468666,
		0.758527, 0.644279, 0.097677,
		-0.370536, 0.303137, 0.877959,
		30.582838, 39.614513, 32.809483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.458315, 39.252335, 32.647217>,  <30.842213, 39.402317, 32.194912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.458315, 39.252335, 32.647217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.176664, 39.338551, 32.917843>,  <31.007673, 39.390282, 33.080219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.176664, 39.338551, 32.917843>,  <31.458315, 39.252335, 32.647217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.176664, 39.338551, 32.917843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436841, -0.619676, 0.652052,
		0.559799, 0.754681, 0.342172,
		-0.704127, 0.215543, 0.676570,
		30.965425, 39.403214, 33.120815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.849627, 39.460548, 33.281773>,  <31.458315, 39.252335, 32.647217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.849627, 39.460548, 33.281773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.478781, 39.353611, 33.386833>,  <31.256273, 39.289448, 33.449871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.478781, 39.353611, 33.386833>,  <31.849627, 39.460548, 33.281773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.478781, 39.353611, 33.386833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367742, -0.513736, 0.775139,
		-0.072295, 0.815231, 0.574606,
		-0.927113, -0.267345, 0.262654,
		31.200647, 39.273407, 33.465630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.817575, 39.638393, 34.086220>,  <31.849627, 39.460548, 33.281773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.817575, 39.638393, 34.086220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.560669, 39.343494, 34.002354>,  <31.406525, 39.166553, 33.952034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.560669, 39.343494, 34.002354>,  <31.817575, 39.638393, 34.086220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.560669, 39.343494, 34.002354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304330, -0.496336, 0.813039,
		-0.703475, 0.458382, 0.543148,
		-0.642267, -0.737249, -0.209661,
		31.367989, 39.122318, 33.939457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.735081, 39.404228, 34.735424>,  <31.817575, 39.638393, 34.086220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.735081, 39.404228, 34.735424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.541237, 39.117287, 34.535202>,  <31.424931, 38.945122, 34.415070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.541237, 39.117287, 34.535202>,  <31.735081, 39.404228, 34.735424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.541237, 39.117287, 34.535202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238617, -0.658946, 0.713338,
		-0.841556, 0.226248, 0.490504,
		-0.484608, -0.717357, -0.500554,
		31.395855, 38.902081, 34.385036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.291265, 39.033394, 35.221790>,  <31.735081, 39.404228, 34.735424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.291265, 39.033394, 35.221790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.355646, 38.784607, 34.915260>,  <31.394276, 38.635334, 34.731342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.355646, 38.784607, 34.915260>,  <31.291265, 39.033394, 35.221790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.355646, 38.784607, 34.915260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386306, -0.674801, 0.628817,
		-0.908219, -0.397246, 0.131658,
		0.160952, -0.621964, -0.766326,
		31.403933, 38.598019, 34.685364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.134363, 38.387005, 35.500820>,  <31.291265, 39.033394, 35.221790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.134363, 38.387005, 35.500820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.331211, 38.303486, 35.162773>,  <31.449320, 38.253376, 34.959946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.331211, 38.303486, 35.162773>,  <31.134363, 38.387005, 35.500820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.331211, 38.303486, 35.162773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299018, -0.871199, 0.389358,
		-0.817561, -0.444316, -0.366303,
		0.492121, -0.208793, -0.845117,
		31.478848, 38.240849, 34.909237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.165392, 37.652706, 35.386295>,  <31.134363, 38.387005, 35.500820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.165392, 37.652706, 35.386295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.470169, 37.795368, 35.170059>,  <31.653036, 37.880966, 35.040318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.470169, 37.795368, 35.170059>,  <31.165392, 37.652706, 35.386295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.470169, 37.795368, 35.170059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555758, -0.788642, 0.263015,
		-0.332527, -0.500840, -0.799115,
		0.761944, 0.356655, -0.540591,
		31.698751, 37.902367, 35.007881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.370539, 37.124882, 34.919926>,  <31.165392, 37.652706, 35.386295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.370539, 37.124882, 34.919926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.693094, 37.349300, 34.994717>,  <31.886627, 37.483952, 35.039589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.693094, 37.349300, 34.994717>,  <31.370539, 37.124882, 34.919926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.693094, 37.349300, 34.994717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518990, -0.822949, 0.231094,
		0.283527, -0.089313, -0.954796,
		0.806388, 0.561051, 0.186975,
		31.935011, 37.517616, 35.050808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.007957, 36.716946, 34.738590>,  <31.370539, 37.124882, 34.919926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.007957, 36.716946, 34.738590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.133755, 37.019348, 34.968212>,  <32.209232, 37.200790, 35.105988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.133755, 37.019348, 34.968212>,  <32.007957, 36.716946, 34.738590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.133755, 37.019348, 34.968212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591802, -0.628985, 0.504131,
		0.742202, 0.181184, -0.645220,
		0.314493, 0.756009, 0.574059,
		32.228104, 37.246151, 35.140430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.694298, 36.693840, 34.584938>,  <32.007957, 36.716946, 34.738590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.694298, 36.693840, 34.584938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.659855, 36.882557, 34.935936>,  <32.639191, 36.995789, 35.146534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.659855, 36.882557, 34.935936>,  <32.694298, 36.693840, 34.584938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.659855, 36.882557, 34.935936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709272, -0.589503, 0.386549,
		0.699657, 0.655667, -0.283869,
		-0.086105, 0.471792, 0.877496,
		32.634022, 37.024094, 35.199184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.408699, 36.889191, 34.769341>,  <32.694298, 36.693840, 34.584938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.408699, 36.889191, 34.769341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.158649, 36.836346, 35.077045>,  <33.008617, 36.804638, 35.261669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.158649, 36.836346, 35.077045>,  <33.408699, 36.889191, 34.769341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.158649, 36.836346, 35.077045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683990, -0.567492, 0.458377,
		0.375994, 0.812711, 0.445116,
		-0.625129, -0.132108, 0.769261,
		32.971111, 36.796715, 35.307823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.072765, 36.857780, 35.007217>,  <33.408699, 36.889191, 34.769341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.072765, 36.857780, 35.007217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.444653, 37.003620, 34.986458>,  <34.667786, 37.091125, 34.974003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.444653, 37.003620, 34.986458>,  <34.072765, 36.857780, 35.007217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.444653, 37.003620, 34.986458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309074, 0.695840, -0.648291,
		-0.200251, 0.618768, 0.759622,
		0.929716, 0.364600, -0.051902,
		34.723568, 37.112999, 34.970886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.020077, 37.618687, 35.076565>,  <34.072765, 36.857780, 35.007217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.020077, 37.618687, 35.076565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.373310, 37.530899, 34.910679>,  <34.585251, 37.478226, 34.811146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.373310, 37.530899, 34.910679>,  <34.020077, 37.618687, 35.076565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.373310, 37.530899, 34.910679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187157, 0.645745, -0.740261,
		0.430270, 0.731331, 0.529172,
		0.883086, -0.219474, -0.414718,
		34.638237, 37.465057, 34.786263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.326912, 38.340424, 35.015228>,  <34.020077, 37.618687, 35.076565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.326912, 38.340424, 35.015228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.470303, 38.065639, 34.762383>,  <34.556339, 37.900768, 34.610676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.470303, 38.065639, 34.762383>,  <34.326912, 38.340424, 35.015228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.470303, 38.065639, 34.762383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005144, 0.675655, -0.737200,
		0.933523, 0.267524, 0.238676,
		0.358481, -0.686965, -0.632116,
		34.577847, 37.859550, 34.572746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.867363, 38.707485, 34.693260>,  <34.326912, 38.340424, 35.015228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.867363, 38.707485, 34.693260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.765923, 38.386730, 34.476864>,  <34.705059, 38.194279, 34.347027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.765923, 38.386730, 34.476864>,  <34.867363, 38.707485, 34.693260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.765923, 38.386730, 34.476864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102186, 0.578350, -0.809364,
		0.961895, -0.149976, -0.228613,
		-0.253604, -0.801884, -0.540987,
		34.689842, 38.146164, 34.314568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.377872, 38.737305, 34.222351>,  <34.867363, 38.707485, 34.693260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.377872, 38.737305, 34.222351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.055367, 38.542290, 34.088341>,  <34.861862, 38.425282, 34.007935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.055367, 38.542290, 34.088341>,  <35.377872, 38.737305, 34.222351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.055367, 38.542290, 34.088341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034739, 0.526353, -0.849556,
		0.590533, -0.696606, -0.407444,
		-0.806265, -0.487537, -0.335029,
		34.813488, 38.396030, 33.987831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.524868, 38.757767, 33.473377>,  <35.377872, 38.737305, 34.222351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.524868, 38.757767, 33.473377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.143978, 38.635609, 33.472004>,  <34.915443, 38.562313, 33.471180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.143978, 38.635609, 33.472004>,  <35.524868, 38.757767, 33.473377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.143978, 38.635609, 33.472004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139848, 0.445989, -0.884045,
		0.271509, -0.841327, -0.467389,
		-0.952221, -0.305390, -0.003432,
		34.858311, 38.543991, 33.470974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.335144, 38.663383, 32.839115>,  <35.524868, 38.757767, 33.473377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.335144, 38.663383, 32.839115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.980927, 38.692539, 33.022636>,  <34.768394, 38.710033, 33.132748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.980927, 38.692539, 33.022636>,  <35.335144, 38.663383, 32.839115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.980927, 38.692539, 33.022636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363421, 0.506486, -0.781919,
		-0.289369, -0.859162, -0.422027,
		-0.885546, 0.072890, 0.458799,
		34.715263, 38.714405, 33.160275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.805725, 38.459759, 32.382397>,  <35.335144, 38.663383, 32.839115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.805725, 38.459759, 32.382397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.562218, 38.652096, 32.634804>,  <34.416115, 38.767498, 32.786247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.562218, 38.652096, 32.634804>,  <34.805725, 38.459759, 32.382397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.562218, 38.652096, 32.634804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333746, 0.566365, -0.753555,
		-0.719732, -0.669341, -0.184305,
		-0.608769, 0.480846, 0.631021,
		34.379585, 38.796349, 32.824112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.106945, 38.498043, 32.067192>,  <34.805725, 38.459759, 32.382397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.106945, 38.498043, 32.067192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.132351, 38.802872, 32.324944>,  <34.147594, 38.985767, 32.479591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.132351, 38.802872, 32.324944>,  <34.106945, 38.498043, 32.067192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.132351, 38.802872, 32.324944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306037, 0.629442, -0.714244,
		-0.949898, -0.151836, 0.273200,
		0.063516, 0.762068, 0.644374,
		34.151405, 39.031490, 32.518257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.576618, 38.868279, 31.922737>,  <34.106945, 38.498043, 32.067192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.576618, 38.868279, 31.922737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.796265, 39.134583, 32.124817>,  <33.928055, 39.294365, 32.246067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.796265, 39.134583, 32.124817>,  <33.576618, 38.868279, 31.922737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.796265, 39.134583, 32.124817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298821, 0.720937, -0.625265,
		-0.780496, 0.192380, 0.594824,
		0.549119, 0.665763, 0.505202,
		33.960999, 39.334312, 32.276379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.258656, 39.462360, 31.911617>,  <33.576618, 38.868279, 31.922737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.258656, 39.462360, 31.911617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.623249, 39.597157, 32.005959>,  <33.842007, 39.678036, 32.062565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.623249, 39.597157, 32.005959>,  <33.258656, 39.462360, 31.911617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.623249, 39.597157, 32.005959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095257, 0.730750, -0.675966,
		-0.400144, 0.593669, 0.698171,
		0.911488, 0.336989, 0.235854,
		33.896694, 39.698254, 32.076714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.254169, 40.278988, 32.054489>,  <33.258656, 39.462360, 31.911617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.254169, 40.278988, 32.054489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.619240, 40.157803, 31.944775>,  <33.838284, 40.085091, 31.878946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.619240, 40.157803, 31.944775>,  <33.254169, 40.278988, 32.054489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.619240, 40.157803, 31.944775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004726, 0.678931, -0.734187,
		0.408653, 0.668779, 0.621077,
		0.912677, -0.302963, -0.274287,
		33.893044, 40.066914, 31.862488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.664761, 40.842495, 32.029877>,  <33.254169, 40.278988, 32.054489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.664761, 40.842495, 32.029877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.834297, 40.580223, 31.779936>,  <33.936020, 40.422859, 31.629971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.834297, 40.580223, 31.779936>,  <33.664761, 40.842495, 32.029877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.834297, 40.580223, 31.779936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085230, 0.715700, -0.693188,
		0.901716, 0.240547, 0.359228,
		0.423844, -0.655676, -0.624857,
		33.961449, 40.383522, 31.592480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.345722, 41.097443, 31.830444>,  <33.664761, 40.842495, 32.029877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.345722, 41.097443, 31.830444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.196720, 40.864029, 31.541800>,  <34.107319, 40.723980, 31.368612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.196720, 40.864029, 31.541800>,  <34.345722, 41.097443, 31.830444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.196720, 40.864029, 31.541800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061287, 0.760410, -0.646545,
		0.926003, -0.285069, -0.247496,
		-0.372509, -0.583534, -0.721613,
		34.084969, 40.688969, 31.325315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.592594, 41.282032, 31.200493>,  <34.345722, 41.097443, 31.830444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.592594, 41.282032, 31.200493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.300480, 41.055237, 31.048069>,  <34.125210, 40.919159, 30.956615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.300480, 41.055237, 31.048069>,  <34.592594, 41.282032, 31.200493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.300480, 41.055237, 31.048069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138338, 0.668988, -0.730286,
		0.668988, -0.480603, -0.566989,
		0.730286, 0.566989, 0.381059,
		34.081394, 40.885139, 30.933752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.696289, 41.206642, 30.423201>,  <34.592594, 41.282032, 31.200493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.696289, 41.206642, 30.423201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.310493, 41.136230, 30.501957>,  <34.079014, 41.093983, 30.549212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.310493, 41.136230, 30.501957>,  <34.696289, 41.206642, 30.423201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.310493, 41.136230, 30.501957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264092, 0.634380, -0.726511,
		0.002986, -0.752712, -0.658343,
		-0.964493, -0.176032, 0.196891,
		34.021145, 41.083420, 30.561024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.333672, 41.066761, 29.802706>,  <34.696289, 41.206642, 30.423201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.333672, 41.066761, 29.802706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.028011, 41.181606, 30.033751>,  <33.844616, 41.250515, 30.172377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.028011, 41.181606, 30.033751>,  <34.333672, 41.066761, 29.802706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.028011, 41.181606, 30.033751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296876, 0.638445, -0.710108,
		-0.572658, -0.714109, -0.402630,
		-0.764151, 0.287118, 0.577613,
		33.798767, 41.267742, 30.207035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.886402, 41.360058, 29.352341>,  <34.333672, 41.066761, 29.802706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.886402, 41.360058, 29.352341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.706955, 41.480316, 29.688995>,  <33.599285, 41.552471, 29.890989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.706955, 41.480316, 29.688995>,  <33.886402, 41.360058, 29.352341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.706955, 41.480316, 29.688995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637618, 0.552212, -0.537127,
		-0.626247, -0.777608, -0.056034,
		-0.448617, 0.300646, 0.841638,
		33.572369, 41.570511, 29.941486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.202457, 41.129150, 29.180820>,  <33.886402, 41.360058, 29.352341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.202457, 41.129150, 29.180820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.215328, 41.399830, 29.475042>,  <33.223049, 41.562237, 29.651575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.215328, 41.399830, 29.475042>,  <33.202457, 41.129150, 29.180820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.215328, 41.399830, 29.475042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706188, 0.536182, -0.462394,
		-0.707293, -0.504563, 0.495129,
		0.032172, 0.676702, 0.735554,
		33.224979, 41.602840, 29.695709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.568672, 41.221294, 29.417925>,  <33.202457, 41.129150, 29.180820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.568672, 41.221294, 29.417925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.759876, 41.561119, 29.507147>,  <32.874599, 41.765015, 29.560680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.759876, 41.561119, 29.507147>,  <32.568672, 41.221294, 29.417925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.759876, 41.561119, 29.507147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684000, 0.519356, -0.512262,
		-0.551041, 0.092299, 0.829358,
		0.478014, 0.849558, 0.223054,
		32.903282, 41.815987, 29.574062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.089565, 41.588776, 29.644491>,  <32.568672, 41.221294, 29.417925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.089565, 41.588776, 29.644491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.369839, 41.852001, 29.534222>,  <32.538002, 42.009937, 29.468060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.369839, 41.852001, 29.534222>,  <32.089565, 41.588776, 29.644491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.369839, 41.852001, 29.534222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602973, 0.339624, -0.721858,
		-0.381402, 0.672019, 0.634763,
		0.700683, 0.658063, -0.275676,
		32.580044, 42.049419, 29.451519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.704645, 42.136654, 29.563908>,  <32.089565, 41.588776, 29.644491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.704645, 42.136654, 29.563908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.046257, 42.199963, 29.365683>,  <32.251225, 42.237949, 29.246748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.046257, 42.199963, 29.365683>,  <31.704645, 42.136654, 29.563908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.046257, 42.199963, 29.365683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492148, 0.554525, -0.671038,
		0.168597, 0.816977, 0.551474,
		0.854029, 0.158272, -0.495564,
		32.302467, 42.247444, 29.217012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.674257, 42.779465, 29.374146>,  <31.704645, 42.136654, 29.563908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.674257, 42.779465, 29.374146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.930534, 42.623009, 29.109865>,  <32.084301, 42.529137, 28.951298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.930534, 42.623009, 29.109865>,  <31.674257, 42.779465, 29.374146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.930534, 42.623009, 29.109865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523578, 0.406829, -0.748570,
		0.561585, 0.825531, 0.055862,
		0.640694, -0.391137, -0.660699,
		32.122742, 42.505669, 28.911655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.861456, 43.314175, 28.984476>,  <31.674257, 42.779465, 29.374146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.861456, 43.314175, 28.984476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.944902, 43.012299, 28.735662>,  <31.994970, 42.831173, 28.586374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.944902, 43.012299, 28.735662>,  <31.861456, 43.314175, 28.984476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.944902, 43.012299, 28.735662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218414, 0.584010, -0.781810,
		0.953297, 0.298957, -0.043002,
		0.208614, -0.754690, -0.622032,
		32.007488, 42.785892, 28.549053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.207291, 43.695946, 28.496298>,  <31.861456, 43.314175, 28.984476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.207291, 43.695946, 28.496298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.118996, 43.346561, 28.322702>,  <32.066017, 43.136932, 28.218546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.118996, 43.346561, 28.322702>,  <32.207291, 43.695946, 28.496298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.118996, 43.346561, 28.322702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215742, 0.477668, -0.851639,
		0.951173, -0.094362, -0.293882,
		-0.220740, -0.873459, -0.433987,
		32.052773, 43.084522, 28.192507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.516357, 43.659672, 27.783844>,  <32.207291, 43.695946, 28.496298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.516357, 43.659672, 27.783844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.194012, 43.422871, 27.788107>,  <32.000603, 43.280788, 27.790665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.194012, 43.422871, 27.788107>,  <32.516357, 43.659672, 27.783844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.194012, 43.422871, 27.788107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189537, 0.240872, -0.951870,
		0.560945, -0.769097, -0.306317,
		-0.805864, -0.592005, 0.010656,
		31.952253, 43.245270, 27.791304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.602798, 43.264725, 27.126125>,  <32.516357, 43.659672, 27.783844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.602798, 43.264725, 27.126125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.224136, 43.251419, 27.254333>,  <31.996939, 43.243435, 27.331259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.224136, 43.251419, 27.254333>,  <32.602798, 43.264725, 27.126125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.224136, 43.251419, 27.254333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321842, 0.146977, -0.935316,
		-0.016001, -0.988581, -0.149841,
		-0.946658, -0.033259, 0.320518,
		31.940140, 43.241440, 27.350489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.294022, 42.999737, 26.520525>,  <32.602798, 43.264725, 27.126125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.294022, 42.999737, 26.520525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.997082, 43.152504, 26.740725>,  <31.818916, 43.244164, 26.872845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.997082, 43.152504, 26.740725>,  <32.294022, 42.999737, 26.520525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.997082, 43.152504, 26.740725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530619, 0.166541, -0.831088,
		-0.409092, -0.909065, 0.079023,
		-0.742352, 0.381922, 0.550498,
		31.774376, 43.267082, 26.905874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.747173, 42.684155, 26.225470>,  <32.294022, 42.999737, 26.520525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.747173, 42.684155, 26.225470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.593203, 43.000851, 26.415195>,  <31.500820, 43.190868, 26.529032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.593203, 43.000851, 26.415195>,  <31.747173, 42.684155, 26.225470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.593203, 43.000851, 26.415195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488031, 0.261585, -0.832706,
		-0.783363, -0.552011, 0.285704,
		-0.384927, 0.791743, 0.474314,
		31.477724, 43.238373, 26.557489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.007147, 42.685234, 26.000334>,  <31.747173, 42.684155, 26.225470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.007147, 42.685234, 26.000334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.100979, 43.045502, 26.146631>,  <31.157278, 43.261662, 26.234409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.100979, 43.045502, 26.146631>,  <31.007147, 42.685234, 26.000334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.100979, 43.045502, 26.146631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444601, 0.433988, -0.783572,
		-0.864466, 0.021203, 0.502244,
		0.234582, 0.900669, 0.365741,
		31.171352, 43.315704, 26.256353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.367199, 43.116364, 26.005262>,  <31.007147, 42.685234, 26.000334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.367199, 43.116364, 26.005262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.669035, 43.378258, 25.987747>,  <30.850136, 43.535393, 25.977238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.669035, 43.378258, 25.987747>,  <30.367199, 43.116364, 26.005262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.669035, 43.378258, 25.987747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445083, 0.461650, -0.767320,
		-0.482177, 0.598501, 0.639768,
		0.754590, 0.654734, -0.043786,
		30.895412, 43.574677, 25.974611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.151176, 43.818012, 25.933067>,  <30.367199, 43.116364, 26.005262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.151176, 43.818012, 25.933067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.518091, 43.843349, 25.775805>,  <30.738239, 43.858551, 25.681448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.518091, 43.843349, 25.775805>,  <30.151176, 43.818012, 25.933067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.518091, 43.843349, 25.775805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330093, 0.673200, -0.661695,
		0.222761, 0.736743, 0.638426,
		0.917287, 0.063340, -0.393156,
		30.793278, 43.862350, 25.657858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.097166, 44.552734, 25.616049>,  <30.151176, 43.818012, 25.933067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.097166, 44.552734, 25.616049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.425449, 44.380859, 25.465416>,  <30.622419, 44.277737, 25.375036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.425449, 44.380859, 25.465416>,  <30.097166, 44.552734, 25.616049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.425449, 44.380859, 25.465416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197621, 0.404939, -0.892732,
		0.536085, 0.807091, 0.247421,
		0.820706, -0.429685, -0.376580,
		30.671661, 44.251953, 25.352442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.436556, 45.050610, 25.364990>,  <30.097166, 44.552734, 25.616049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.436556, 45.050610, 25.364990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.567215, 44.732803, 25.160229>,  <30.645611, 44.542118, 25.037373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.567215, 44.732803, 25.160229>,  <30.436556, 45.050610, 25.364990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.567215, 44.732803, 25.160229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047546, 0.527113, -0.848464,
		0.943949, 0.301488, 0.134405,
		0.326648, -0.794517, -0.511902,
		30.665209, 44.494450, 25.006659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.881605, 45.400494, 24.833275>,  <30.436556, 45.050610, 25.364990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.881605, 45.400494, 24.833275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.815842, 45.029305, 24.699503>,  <30.776382, 44.806591, 24.619240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.815842, 45.029305, 24.699503>,  <30.881605, 45.400494, 24.833275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.815842, 45.029305, 24.699503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110127, 0.354193, -0.928666,
		0.980225, -0.115852, -0.160427,
		-0.164410, -0.927969, -0.334430,
		30.766520, 44.750916, 24.599174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.315022, 45.258270, 24.262709>,  <30.881605, 45.400494, 24.833275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.315022, 45.258270, 24.262709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.059237, 44.955330, 24.209787>,  <30.905766, 44.773563, 24.178036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.059237, 44.955330, 24.209787>,  <31.315022, 45.258270, 24.262709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.059237, 44.955330, 24.209787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191894, 0.323861, -0.926440,
		0.744491, -0.567034, -0.352428,
		-0.639460, -0.757355, -0.132301,
		30.867397, 44.728123, 24.170097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.601652, 44.931892, 23.641970>,  <31.315022, 45.258270, 24.262709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.601652, 44.931892, 23.641970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.213741, 44.840744, 23.676863>,  <30.980995, 44.786057, 23.697800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.213741, 44.840744, 23.676863>,  <31.601652, 44.931892, 23.641970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.213741, 44.840744, 23.676863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140353, 0.228521, -0.963369,
		0.199580, -0.946497, -0.253596,
		-0.969778, -0.227862, 0.087235,
		30.922808, 44.772385, 23.703033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.447416, 44.536869, 23.086823>,  <31.601652, 44.931892, 23.641970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.447416, 44.536869, 23.086823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.086039, 44.654232, 23.211849>,  <30.869211, 44.724651, 23.286865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.086039, 44.654232, 23.211849>,  <31.447416, 44.536869, 23.086823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.086039, 44.654232, 23.211849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243558, 0.248720, -0.937453,
		-0.352800, -0.923065, -0.153243,
		-0.903445, 0.293409, 0.312568,
		30.815004, 44.742256, 23.305620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.062668, 44.034420, 22.759159>,  <31.447416, 44.536869, 23.086823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.062668, 44.034420, 22.759159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.355816, 43.864273, 22.546757>,  <31.531704, 43.762184, 22.419315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.355816, 43.864273, 22.546757>,  <31.062668, 44.034420, 22.759159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.355816, 43.864273, 22.546757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328087, -0.462781, 0.823524,
		-0.596040, -0.777751, -0.199601,
		0.732868, -0.425367, -0.531006,
		31.575676, 43.736664, 22.387455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.101816, 43.236095, 22.905399>,  <31.062668, 44.034420, 22.759159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.101816, 43.236095, 22.905399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.462549, 43.318943, 22.753714>,  <31.678989, 43.368652, 22.662703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.462549, 43.318943, 22.753714>,  <31.101816, 43.236095, 22.905399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.462549, 43.318943, 22.753714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428978, -0.324050, 0.843190,
		0.051758, -0.923089, -0.381088,
		0.901830, 0.207121, -0.379213,
		31.733099, 43.381081, 22.639950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.511988, 42.745239, 23.302666>,  <31.101816, 43.236095, 22.905399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.511988, 42.745239, 23.302666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.778849, 42.986618, 23.127964>,  <31.938965, 43.131447, 23.023144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.778849, 42.986618, 23.127964>,  <31.511988, 42.745239, 23.302666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.778849, 42.986618, 23.127964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697088, -0.299036, 0.651649,
		0.262634, -0.739205, -0.620161,
		0.667152, 0.603452, -0.436754,
		31.978994, 43.167652, 22.996939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.152660, 42.386032, 23.016045>,  <31.511988, 42.745239, 23.302666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.152660, 42.386032, 23.016045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.260696, 42.768421, 23.061932>,  <32.325520, 42.997856, 23.089464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.260696, 42.768421, 23.061932>,  <32.152660, 42.386032, 23.016045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.260696, 42.768421, 23.061932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747174, -0.283249, 0.601250,
		0.607274, -0.076678, -0.790784,
		0.270091, 0.955976, 0.114717,
		32.341724, 43.055214, 23.096346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.881721, 42.321548, 22.907198>,  <32.152660, 42.386032, 23.016045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.881721, 42.321548, 22.907198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.810719, 42.666286, 23.097235>,  <32.768116, 42.873131, 23.211256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.810719, 42.666286, 23.097235>,  <32.881721, 42.321548, 22.907198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.810719, 42.666286, 23.097235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720967, -0.214709, 0.658868,
		0.669850, 0.459478, -0.583251,
		-0.177506, 0.861847, 0.475091,
		32.757465, 42.924839, 23.239761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.559448, 42.616268, 22.930647>,  <32.881721, 42.321548, 22.907198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.559448, 42.616268, 22.930647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.339802, 42.766167, 23.229454>,  <33.208015, 42.856106, 23.408739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.339802, 42.766167, 23.229454>,  <33.559448, 42.616268, 22.930647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.339802, 42.766167, 23.229454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760329, -0.147061, 0.632671,
		0.346951, 0.915388, -0.204180,
		-0.549113, 0.374750, 0.747019,
		33.175068, 42.878593, 23.453560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.004990, 43.150585, 23.439404>,  <33.559448, 42.616268, 22.930647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.004990, 43.150585, 23.439404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.661396, 43.066990, 23.626366>,  <33.455238, 43.016830, 23.738543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.661396, 43.066990, 23.626366>,  <34.004990, 43.150585, 23.439404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.661396, 43.066990, 23.626366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502376, -0.167856, 0.848200,
		-0.098811, 0.963404, 0.249178,
		-0.858985, -0.208993, 0.467404,
		33.403702, 43.004292, 23.766586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.094952, 43.331367, 24.077629>,  <34.004990, 43.150585, 23.439404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.094952, 43.331367, 24.077629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.780739, 43.089565, 24.130566>,  <33.592209, 42.944485, 24.162327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.780739, 43.089565, 24.130566>,  <34.094952, 43.331367, 24.077629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.780739, 43.089565, 24.130566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418721, -0.361764, 0.832946,
		-0.455642, 0.709721, 0.537296,
		-0.785534, -0.604502, 0.132340,
		33.545078, 42.908215, 24.170267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.158482, 43.271885, 24.863291>,  <34.094952, 43.331367, 24.077629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.158482, 43.271885, 24.863291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.928074, 42.968613, 24.741068>,  <33.789829, 42.786648, 24.667734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.928074, 42.968613, 24.741068>,  <34.158482, 43.271885, 24.863291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.928074, 42.968613, 24.741068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350237, -0.566657, 0.745811,
		-0.738608, 0.322581, 0.591946,
		-0.576015, -0.758183, -0.305557,
		33.755268, 42.741158, 24.649401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.878593, 42.993057, 25.506035>,  <34.158482, 43.271885, 24.863291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.878593, 42.993057, 25.506035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.823780, 42.713539, 25.225206>,  <33.790890, 42.545830, 25.056709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.823780, 42.713539, 25.225206>,  <33.878593, 42.993057, 25.506035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.823780, 42.713539, 25.225206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300127, -0.704735, 0.642862,
		-0.944005, -0.122615, 0.306302,
		-0.137037, -0.698795, -0.702073,
		33.782669, 42.503902, 25.014584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.406372, 42.576130, 25.754183>,  <33.878593, 42.993057, 25.506035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.406372, 42.576130, 25.754183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.630474, 42.373341, 25.492165>,  <33.764935, 42.251667, 25.334953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.630474, 42.373341, 25.492165>,  <33.406372, 42.576130, 25.754183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.630474, 42.373341, 25.492165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131298, -0.726462, 0.674547,
		-0.817846, -0.463926, -0.340441,
		0.560258, -0.506977, -0.655047,
		33.798553, 42.221249, 25.295650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.221951, 41.806610, 25.815851>,  <33.406372, 42.576130, 25.754183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.221951, 41.806610, 25.815851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.587803, 41.824814, 25.655163>,  <33.807316, 41.835735, 25.558750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.587803, 41.824814, 25.655163>,  <33.221951, 41.806610, 25.815851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.587803, 41.824814, 25.655163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260291, -0.826589, 0.498998,
		-0.309350, -0.560963, -0.767870,
		0.914632, 0.045505, -0.401719,
		33.862194, 41.838467, 25.534647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.480179, 41.104324, 25.392879>,  <33.221951, 41.806610, 25.815851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.480179, 41.104324, 25.392879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.762527, 41.320652, 25.575861>,  <33.931934, 41.450447, 25.685650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.762527, 41.320652, 25.575861>,  <33.480179, 41.104324, 25.392879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.762527, 41.320652, 25.575861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195479, -0.769457, 0.608049,
		0.680837, -0.339779, -0.648854,
		0.705868, 0.540820, 0.457455,
		33.974289, 41.482899, 25.713097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.071323, 40.574501, 25.602381>,  <33.480179, 41.104324, 25.392879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.071323, 40.574501, 25.602381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.149940, 40.903637, 25.815662>,  <34.197109, 41.101120, 25.943632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.149940, 40.903637, 25.815662>,  <34.071323, 40.574501, 25.602381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.149940, 40.903637, 25.815662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311505, -0.568038, 0.761773,
		0.929697, 0.016376, -0.367961,
		0.196542, 0.822839, 0.533204,
		34.208904, 41.150490, 25.975624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.586876, 40.398975, 25.987097>,  <34.071323, 40.574501, 25.602381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.586876, 40.398975, 25.987097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.451546, 40.723289, 26.178165>,  <34.370346, 40.917877, 26.292807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.451546, 40.723289, 26.178165>,  <34.586876, 40.398975, 25.987097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.451546, 40.723289, 26.178165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244914, -0.414245, 0.876595,
		0.908599, 0.413562, -0.058422,
		-0.338326, 0.810782, 0.477670,
		34.350048, 40.966522, 26.321466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.164963, 40.735737, 26.393787>,  <34.586876, 40.398975, 25.987097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.164963, 40.735737, 26.393787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.805988, 40.825897, 26.545473>,  <34.590603, 40.879993, 26.636484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.805988, 40.825897, 26.545473>,  <35.164963, 40.735737, 26.393787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.805988, 40.825897, 26.545473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286244, -0.356544, 0.889349,
		0.335667, 0.906681, 0.255455,
		-0.897436, 0.225403, 0.379212,
		34.536758, 40.893517, 26.659237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.343319, 41.040222, 27.031210>,  <35.164963, 40.735737, 26.393787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.343319, 41.040222, 27.031210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.955791, 40.947609, 27.066504>,  <34.723274, 40.892040, 27.087679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.955791, 40.947609, 27.066504>,  <35.343319, 41.040222, 27.031210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.955791, 40.947609, 27.066504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150921, -0.269009, 0.951240,
		-0.196505, 0.934895, 0.295563,
		-0.968818, -0.231530, 0.088233,
		34.665146, 40.878151, 27.092974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.188553, 41.283230, 27.626337>,  <35.343319, 41.040222, 27.031210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.188553, 41.283230, 27.626337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.897991, 41.016636, 27.559235>,  <34.723656, 40.856682, 27.518972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.897991, 41.016636, 27.559235>,  <35.188553, 41.283230, 27.626337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.897991, 41.016636, 27.559235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182878, -0.422733, 0.887610,
		-0.662493, 0.614082, 0.428959,
		-0.726401, -0.666483, -0.167756,
		34.680073, 40.816692, 27.508907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.619366, 41.438534, 28.076153>,  <35.188553, 41.283230, 27.626337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.619366, 41.438534, 28.076153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.587769, 41.053085, 27.974024>,  <34.568810, 40.821815, 27.912746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.587769, 41.053085, 27.974024>,  <34.619366, 41.438534, 28.076153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.587769, 41.053085, 27.974024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116017, -0.263268, 0.957721,
		-0.990101, 0.046032, 0.132593,
		-0.078993, -0.963624, -0.255321,
		34.564072, 40.764000, 27.897427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.371498, 41.168030, 28.654938>,  <34.619366, 41.438534, 28.076153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.371498, 41.168030, 28.654938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.457413, 40.825352, 28.467344>,  <34.508961, 40.619747, 28.354788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.457413, 40.825352, 28.467344>,  <34.371498, 41.168030, 28.654938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.457413, 40.825352, 28.467344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161806, -0.442339, 0.882131,
		-0.963164, -0.265357, 0.043608,
		0.214790, -0.856692, -0.468981,
		34.521851, 40.568344, 28.326651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.038464, 40.583481, 28.942848>,  <34.371498, 41.168030, 28.654938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.038464, 40.583481, 28.942848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.362225, 40.428600, 28.766237>,  <34.556480, 40.335670, 28.660271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.362225, 40.428600, 28.766237>,  <34.038464, 40.583481, 28.942848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.362225, 40.428600, 28.766237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388302, -0.211164, 0.897012,
		-0.440560, -0.897488, -0.020565,
		0.809400, -0.387203, -0.441527,
		34.605045, 40.312439, 28.633780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.111801, 39.913769, 29.289690>,  <34.038464, 40.583481, 28.942848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.111801, 39.913769, 29.289690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.466171, 39.983826, 29.117897>,  <34.678795, 40.025860, 29.014822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.466171, 39.983826, 29.117897>,  <34.111801, 39.913769, 29.289690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.466171, 39.983826, 29.117897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453019, -0.128061, 0.882255,
		0.099526, -0.976178, -0.192799,
		0.885928, 0.175148, -0.429482,
		34.731949, 40.036369, 28.989052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.482418, 39.283752, 29.412844>,  <34.111801, 39.913769, 29.289690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.482418, 39.283752, 29.412844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.763161, 39.544060, 29.296982>,  <34.931606, 39.700245, 29.227465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.763161, 39.544060, 29.296982>,  <34.482418, 39.283752, 29.412844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.763161, 39.544060, 29.296982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661257, -0.444056, 0.604610,
		0.264837, -0.615886, -0.741988,
		0.701855, 0.650768, -0.289657,
		34.973717, 39.739288, 29.210085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.108196, 38.874378, 29.314928>,  <34.482418, 39.283752, 29.412844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.108196, 38.874378, 29.314928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.233555, 39.252098, 29.355080>,  <35.308769, 39.478729, 29.379171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.233555, 39.252098, 29.355080>,  <35.108196, 38.874378, 29.314928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.233555, 39.252098, 29.355080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558937, -0.268883, 0.784405,
		0.767706, -0.189722, -0.612072,
		0.313395, 0.944303, 0.100380,
		35.327572, 39.535389, 29.385193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.898125, 38.896397, 29.350864>,  <35.108196, 38.874378, 29.314928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.898125, 38.896397, 29.350864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.753380, 39.231773, 29.513870>,  <35.666534, 39.432999, 29.611673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.753380, 39.231773, 29.513870>,  <35.898125, 38.896397, 29.350864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.753380, 39.231773, 29.513870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628703, -0.103274, 0.770757,
		0.688323, 0.535112, -0.489762,
		-0.361862, 0.838445, 0.407512,
		35.644821, 39.483307, 29.636124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.528126, 39.086914, 29.623642>,  <35.898125, 38.896397, 29.350864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.528126, 39.086914, 29.623642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.241444, 39.288223, 29.816742>,  <36.069435, 39.409008, 29.932602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.241444, 39.288223, 29.816742>,  <36.528126, 39.086914, 29.623642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.241444, 39.288223, 29.816742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535829, -0.045639, 0.843092,
		0.446339, 0.862920, -0.236960,
		-0.716707, 0.503275, 0.482748,
		36.026432, 39.439205, 29.961567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.888771, 39.514889, 29.931622>,  <36.528126, 39.086914, 29.623642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.888771, 39.514889, 29.931622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.542511, 39.501404, 30.131428>,  <36.334755, 39.493313, 30.251312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.542511, 39.501404, 30.131428>,  <36.888771, 39.514889, 29.931622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.542511, 39.501404, 30.131428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500306, -0.095382, 0.860579,
		0.018630, 0.994870, 0.099435,
		-0.865648, -0.033716, 0.499516,
		36.282818, 39.491287, 30.281282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.025909, 39.863548, 30.580536>,  <36.888771, 39.514889, 29.931622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.025909, 39.863548, 30.580536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.689796, 39.662388, 30.661535>,  <36.488129, 39.541691, 30.710135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.689796, 39.662388, 30.661535>,  <37.025909, 39.863548, 30.580536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.689796, 39.662388, 30.661535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332138, -0.182319, 0.925443,
		-0.428490, 0.844895, 0.320234,
		-0.840286, -0.502904, 0.202500,
		36.437710, 39.511517, 30.722284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.778755, 40.089046, 31.239538>,  <37.025909, 39.863548, 30.580536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.778755, 40.089046, 31.239538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.602253, 39.735012, 31.180328>,  <36.496353, 39.522591, 31.144802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.602253, 39.735012, 31.180328>,  <36.778755, 40.089046, 31.239538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.602253, 39.735012, 31.180328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389160, -0.337368, 0.857168,
		-0.808608, 0.320626, 0.493307,
		-0.441256, -0.885089, -0.148024,
		36.469875, 39.469486, 31.135921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.332214, 39.857666, 31.934345>,  <36.778755, 40.089046, 31.239538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.332214, 39.857666, 31.934345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.406109, 39.531559, 31.714817>,  <36.450447, 39.335896, 31.583099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.406109, 39.531559, 31.714817>,  <36.332214, 39.857666, 31.934345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.406109, 39.531559, 31.714817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130929, -0.533041, 0.835898,
		-0.974028, -0.226277, 0.008271,
		0.184736, -0.815271, -0.548822,
		36.461529, 39.286976, 31.550171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.025787, 39.292912, 32.295246>,  <36.332214, 39.857666, 31.934345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.025787, 39.292912, 32.295246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.291924, 39.135681, 32.041374>,  <36.451603, 39.041344, 31.889051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.291924, 39.135681, 32.041374>,  <36.025787, 39.292912, 32.295246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.291924, 39.135681, 32.041374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292211, -0.645206, 0.705919,
		-0.686979, -0.655135, -0.314419,
		0.665336, -0.393074, -0.634681,
		36.491524, 39.017757, 31.850969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.875671, 38.604832, 32.275059>,  <36.025787, 39.292912, 32.295246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.875671, 38.604832, 32.275059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.257763, 38.618149, 32.157467>,  <36.487019, 38.626141, 32.086914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.257763, 38.618149, 32.157467>,  <35.875671, 38.604832, 32.275059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.257763, 38.618149, 32.157467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181317, -0.851058, 0.492772,
		-0.233784, -0.524015, -0.818996,
		0.955233, 0.033295, -0.293976,
		36.544334, 38.628136, 32.069275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.041332, 37.931278, 31.979956>,  <35.875671, 38.604832, 32.275059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.041332, 37.931278, 31.979956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.363613, 38.123272, 32.118786>,  <36.556980, 38.238468, 32.202084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.363613, 38.123272, 32.118786>,  <36.041332, 37.931278, 31.979956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.363613, 38.123272, 32.118786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286809, -0.828818, 0.480417,
		0.518255, -0.287529, -0.805443,
		0.805700, 0.479987, 0.347073,
		36.605324, 38.267269, 32.222908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.510307, 37.361031, 31.922619>,  <36.041332, 37.931278, 31.979956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.510307, 37.361031, 31.922619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.703117, 37.622719, 32.155739>,  <36.818802, 37.779732, 32.295612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.703117, 37.622719, 32.155739>,  <36.510307, 37.361031, 31.922619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.703117, 37.622719, 32.155739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272775, -0.744170, 0.609758,
		0.832616, -0.134944, -0.537160,
		0.482021, 0.654218, 0.582799,
		36.847725, 37.818985, 32.330578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.146832, 37.101578, 32.044418>,  <36.510307, 37.361031, 31.922619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.146832, 37.101578, 32.044418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.065697, 37.347324, 32.349419>,  <37.017014, 37.494774, 32.532417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.065697, 37.347324, 32.349419>,  <37.146832, 37.101578, 32.044418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.065697, 37.347324, 32.349419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216890, -0.731159, 0.646812,
		0.954890, 0.296578, 0.015058,
		-0.202840, 0.614369, 0.762501,
		37.004845, 37.531635, 32.578167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.793915, 37.329815, 32.237919>,  <37.146832, 37.101578, 32.044418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.793915, 37.329815, 32.237919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.533981, 37.364170, 32.540005>,  <37.378021, 37.384785, 32.721256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.533981, 37.364170, 32.540005>,  <37.793915, 37.329815, 32.237919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.533981, 37.364170, 32.540005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478931, -0.725264, 0.494588,
		0.590209, 0.683092, 0.430162,
		-0.649830, 0.085892, 0.755211,
		37.339031, 37.389938, 32.766567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.179604, 37.300545, 32.750599>,  <37.793915, 37.329815, 32.237919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.179604, 37.300545, 32.750599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.821678, 37.196022, 32.895390>,  <37.606922, 37.133308, 32.982265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.821678, 37.196022, 32.895390>,  <38.179604, 37.300545, 32.750599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.821678, 37.196022, 32.895390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442616, -0.625166, 0.642852,
		0.058317, 0.735450, 0.675064,
		-0.894813, -0.261305, 0.361980,
		37.553234, 37.117630, 33.003983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.330566, 37.261894, 33.558601>,  <38.179604, 37.300545, 32.750599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.330566, 37.261894, 33.558601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.989628, 37.067436, 33.481483>,  <37.785065, 36.950764, 33.435211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.989628, 37.067436, 33.481483>,  <38.330566, 37.261894, 33.558601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.989628, 37.067436, 33.481483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214657, -0.661371, 0.718687,
		-0.476893, 0.571186, 0.668071,
		-0.852347, -0.486143, -0.192795,
		37.733925, 36.921593, 33.423645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.019741, 37.183769, 34.210587>,  <38.330566, 37.261894, 33.558601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.019741, 37.183769, 34.210587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.871601, 36.914494, 33.954571>,  <37.782719, 36.752926, 33.800961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.871601, 36.914494, 33.954571>,  <38.019741, 37.183769, 34.210587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.871601, 36.914494, 33.954571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207620, -0.731595, 0.649355,
		-0.905393, 0.107602, 0.410714,
		-0.370348, -0.673194, -0.640041,
		37.760498, 36.712536, 33.762558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.696583, 36.764980, 34.585876>,  <38.019741, 37.183769, 34.210587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.696583, 36.764980, 34.585876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.696617, 36.525669, 34.265362>,  <37.696636, 36.382084, 34.073051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.696617, 36.525669, 34.265362>,  <37.696583, 36.764980, 34.585876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.696617, 36.525669, 34.265362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071749, -0.799219, 0.596743,
		-0.997423, -0.057543, 0.042858,
		0.000085, -0.598279, -0.801287,
		37.696644, 36.346184, 34.024975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.157082, 36.285786, 34.697865>,  <37.696583, 36.764980, 34.585876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.157082, 36.285786, 34.697865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.417889, 36.119465, 34.444256>,  <37.574371, 36.019672, 34.292091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.417889, 36.119465, 34.444256>,  <37.157082, 36.285786, 34.697865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.417889, 36.119465, 34.444256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070115, -0.799566, 0.596471,
		-0.754957, -0.433363, -0.492176,
		0.652016, -0.415801, -0.634023,
		37.613491, 35.994724, 34.254047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.936108, 35.548367, 34.637035>,  <37.157082, 36.285786, 34.697865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.936108, 35.548367, 34.637035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.314945, 35.585258, 34.514072>,  <37.542248, 35.607395, 34.440292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.314945, 35.585258, 34.514072>,  <36.936108, 35.548367, 34.637035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.314945, 35.585258, 34.514072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222941, -0.878073, 0.423419,
		-0.230877, -0.469554, -0.852182,
		0.947097, 0.092229, -0.307410,
		37.599075, 35.612926, 34.421848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.175419, 34.889595, 34.404755>,  <36.936108, 35.548367, 34.637035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.175419, 34.889595, 34.404755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.507111, 35.096455, 34.489552>,  <37.706127, 35.220570, 34.540428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.507111, 35.096455, 34.489552>,  <37.175419, 34.889595, 34.404755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.507111, 35.096455, 34.489552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384333, -0.802995, 0.455508,
		0.405791, -0.296245, -0.864623,
		0.829229, 0.517144, 0.211992,
		37.755878, 35.251598, 34.553150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.781925, 34.403198, 34.397034>,  <37.175419, 34.889595, 34.404755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.781925, 34.403198, 34.397034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.920441, 34.708286, 34.615517>,  <38.003551, 34.891338, 34.746605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.920441, 34.708286, 34.615517>,  <37.781925, 34.403198, 34.397034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.920441, 34.708286, 34.615517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466312, -0.645152, 0.605254,
		0.814024, 0.045107, -0.579077,
		0.346291, 0.762722, 0.546203,
		38.024326, 34.937103, 34.779377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.472412, 34.248348, 34.521706>,  <37.781925, 34.403198, 34.397034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.472412, 34.248348, 34.521706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.390938, 34.527550, 34.796310>,  <38.342052, 34.695072, 34.961075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.390938, 34.527550, 34.796310>,  <38.472412, 34.248348, 34.521706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.390938, 34.527550, 34.796310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484762, -0.537320, 0.690140,
		0.850599, 0.473368, -0.228921,
		-0.203686, 0.698004, 0.686515,
		38.329830, 34.736950, 35.002266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.167625, 34.469475, 34.912266>,  <38.472412, 34.248348, 34.521706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.167625, 34.469475, 34.912266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.849667, 34.544529, 35.143066>,  <38.658890, 34.589561, 35.281548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.849667, 34.544529, 35.143066>,  <39.167625, 34.469475, 34.912266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.849667, 34.544529, 35.143066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357474, -0.623569, 0.695251,
		0.490254, 0.758916, 0.428599,
		-0.794898, 0.187637, 0.577000,
		38.611198, 34.600819, 35.316166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.490276, 34.554787, 35.609013>,  <39.167625, 34.469475, 34.912266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.490276, 34.554787, 35.609013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.098843, 34.481068, 35.645679>,  <38.863983, 34.436836, 35.667679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.098843, 34.481068, 35.645679>,  <39.490276, 34.554787, 35.609013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.098843, 34.481068, 35.645679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200414, -0.751605, 0.628430,
		-0.046918, 0.633345, 0.772446,
		-0.978587, -0.184293, 0.091668,
		38.805267, 34.425781, 35.673180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.492348, 34.217175, 36.312042>,  <39.490276, 34.554787, 35.609013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.492348, 34.217175, 36.312042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.127586, 34.135117, 36.169857>,  <38.908730, 34.085884, 36.084545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.127586, 34.135117, 36.169857>,  <39.492348, 34.217175, 36.312042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.127586, 34.135117, 36.169857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024888, -0.892162, 0.451029,
		-0.409654, 0.402448, 0.818669,
		-0.911901, -0.205141, -0.355462,
		38.854015, 34.073574, 36.063217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.120190, 33.904324, 36.896564>,  <39.492348, 34.217175, 36.312042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.120190, 33.904324, 36.896564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.942860, 33.798038, 36.554134>,  <38.836464, 33.734268, 36.348675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.942860, 33.798038, 36.554134>,  <39.120190, 33.904324, 36.896564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.942860, 33.798038, 36.554134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058482, -0.944445, 0.323424,
		-0.894453, 0.193446, 0.403153,
		-0.443321, -0.265711, -0.856075,
		38.809864, 33.718327, 36.297314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.650394, 33.548920, 37.185867>,  <39.120190, 33.904324, 36.896564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.650394, 33.548920, 37.185867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.673622, 33.442299, 36.801041>,  <38.687561, 33.378326, 36.570145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.673622, 33.442299, 36.801041>,  <38.650394, 33.548920, 37.185867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.673622, 33.442299, 36.801041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177137, -0.951156, 0.252832,
		-0.982471, 0.155735, -0.102453,
		0.058074, -0.266549, -0.962070,
		38.691044, 33.362335, 36.512421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.121265, 33.148705, 37.190189>,  <38.650394, 33.548920, 37.185867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.121265, 33.148705, 37.190189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.315117, 33.036957, 36.858627>,  <38.431427, 32.969910, 36.659691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.315117, 33.036957, 36.858627>,  <38.121265, 33.148705, 37.190189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.315117, 33.036957, 36.858627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230845, -0.954880, 0.186855,
		-0.843709, 0.100794, -0.527253,
		0.484629, -0.279365, -0.828909,
		38.460506, 32.953148, 36.609955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.638424, 32.769051, 36.824467>,  <38.121265, 33.148705, 37.190189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.638424, 32.769051, 36.824467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.015228, 32.664032, 36.740860>,  <38.241310, 32.601021, 36.690697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.015228, 32.664032, 36.740860>,  <37.638424, 32.769051, 36.824467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.015228, 32.664032, 36.740860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247701, -0.964189, 0.094786,
		-0.226418, -0.037515, -0.973308,
		0.942008, -0.262551, -0.209017,
		38.297832, 32.585266, 36.678154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.678871, 32.178310, 36.362442>,  <37.638424, 32.769051, 36.824467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.678871, 32.178310, 36.362442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.000610, 32.189323, 36.599850>,  <38.193653, 32.195930, 36.742294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.000610, 32.189323, 36.599850>,  <37.678871, 32.178310, 36.362442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.000610, 32.189323, 36.599850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121049, -0.970382, 0.209060,
		0.581695, -0.240002, -0.777193,
		0.804349, 0.027531, 0.593519,
		38.241917, 32.197582, 36.777905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.149364, 31.646091, 36.241367>,  <37.678871, 32.178310, 36.362442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.149364, 31.646091, 36.241367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.215027, 31.726927, 36.627571>,  <38.254425, 31.775429, 36.859295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.215027, 31.726927, 36.627571>,  <38.149364, 31.646091, 36.241367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.215027, 31.726927, 36.627571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116064, -0.968034, 0.222349,
		0.979582, -0.148561, -0.135456,
		0.164158, 0.202088, 0.965512,
		38.264275, 31.787554, 36.917225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.625534, 31.177813, 36.450733>,  <38.149364, 31.646091, 36.241367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.625534, 31.177813, 36.450733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.439678, 31.302849, 36.782131>,  <38.328167, 31.377871, 36.980968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.439678, 31.302849, 36.782131>,  <38.625534, 31.177813, 36.450733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.439678, 31.302849, 36.782131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120018, -0.949217, 0.290831,
		0.877330, 0.035697, 0.478558,
		-0.464637, 0.312590, 0.828493,
		38.300285, 31.396626, 37.030678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.878090, 30.718559, 36.993420>,  <38.625534, 31.177813, 36.450733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.878090, 30.718559, 36.993420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.548283, 30.877344, 37.154713>,  <38.350399, 30.972614, 37.251488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.548283, 30.877344, 37.154713>,  <38.878090, 30.718559, 36.993420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.548283, 30.877344, 37.154713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272152, -0.902995, 0.332466,
		0.496091, 0.164384, 0.852568,
		-0.824517, 0.396961, 0.403230,
		38.300926, 30.996433, 37.275681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.827244, 30.431486, 37.653492>,  <38.878090, 30.718559, 36.993420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.827244, 30.431486, 37.653492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.457531, 30.574163, 37.599140>,  <38.235703, 30.659771, 37.566528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.457531, 30.574163, 37.599140>,  <38.827244, 30.431486, 37.653492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.457531, 30.574163, 37.599140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381571, -0.854158, 0.353294,
		0.009953, 0.378394, 0.925591,
		-0.924286, 0.356695, -0.135883,
		38.180244, 30.681171, 37.558376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.563293, 30.293514, 38.231068>,  <38.827244, 30.431486, 37.653492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.563293, 30.293514, 38.231068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.252129, 30.325737, 37.981792>,  <38.065430, 30.345072, 37.832226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.252129, 30.325737, 37.981792>,  <38.563293, 30.293514, 38.231068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.252129, 30.325737, 37.981792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377824, -0.852415, 0.361438,
		-0.502100, 0.516622, 0.693539,
		-0.777910, 0.080558, -0.623190,
		38.018757, 30.349905, 37.794834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.974003, 30.228521, 38.615059>,  <38.563293, 30.293514, 38.231068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.974003, 30.228521, 38.615059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.854717, 30.141336, 38.243347>,  <37.783146, 30.089025, 38.020321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.854717, 30.141336, 38.243347>,  <37.974003, 30.228521, 38.615059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.854717, 30.141336, 38.243347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367076, -0.872515, 0.322449,
		-0.881092, 0.437275, 0.180187,
		-0.298215, -0.217964, -0.929279,
		37.765251, 30.075947, 37.964565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.345909, 30.400240, 38.473396>,  <37.974003, 30.228521, 38.615059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.345909, 30.400240, 38.473396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.228294, 30.125462, 38.207569>,  <37.157726, 29.960594, 38.048073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.228294, 30.125462, 38.207569>,  <37.345909, 30.400240, 38.473396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.228294, 30.125462, 38.207569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754965, -0.593326, 0.279272,
		-0.586150, -0.419611, 0.693076,
		-0.294034, -0.686944, -0.664569,
		37.140083, 29.919378, 38.008198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.341022, 29.781151, 38.794945>,  <37.345909, 30.400240, 38.473396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.341022, 29.781151, 38.794945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.357578, 29.663984, 38.412849>,  <37.367512, 29.593685, 38.183590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.357578, 29.663984, 38.412849>,  <37.341022, 29.781151, 38.794945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.357578, 29.663984, 38.412849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834145, -0.516143, 0.194417,
		-0.549989, -0.804858, 0.222970,
		0.041394, -0.292917, -0.955242,
		37.369995, 29.576109, 38.126278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.465397, 29.070690, 38.816544>,  <37.341022, 29.781151, 38.794945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.465397, 29.070690, 38.816544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.657719, 29.235783, 38.507099>,  <37.773113, 29.334839, 38.321434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.657719, 29.235783, 38.507099>,  <37.465397, 29.070690, 38.816544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.657719, 29.235783, 38.507099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856254, -0.411007, 0.312894,
		-0.188818, -0.812850, -0.551020,
		0.480809, 0.412733, -0.773611,
		37.801960, 29.359602, 38.275017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.699265, 28.498653, 38.261639>,  <37.465397, 29.070690, 38.816544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.699265, 28.498653, 38.261639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.927715, 28.809551, 38.367249>,  <38.064785, 28.996090, 38.430614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.927715, 28.809551, 38.367249>,  <37.699265, 28.498653, 38.261639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.927715, 28.809551, 38.367249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739804, -0.626743, 0.244712,
		0.355678, 0.055567, -0.932955,
		0.571125, 0.777243, 0.264027,
		38.099052, 29.042725, 38.446457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.964653, 28.417095, 37.545689>,  <37.699265, 28.498653, 38.261639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.964653, 28.417095, 37.545689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.347904, 28.468243, 37.648174>,  <38.577854, 28.498932, 37.709667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.347904, 28.468243, 37.648174>,  <37.964653, 28.417095, 37.545689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.347904, 28.468243, 37.648174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282702, -0.564753, -0.775328,
		0.045557, 0.815293, -0.577253,
		0.958126, 0.127869, 0.256213,
		38.635342, 28.506603, 37.725037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.039104, 29.188662, 37.668362>,  <37.964653, 28.417095, 37.545689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.039104, 29.188662, 37.668362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.663414, 29.224361, 37.535763>,  <37.438000, 29.245781, 37.456203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.663414, 29.224361, 37.535763>,  <38.039104, 29.188662, 37.668362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.663414, 29.224361, 37.535763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063615, 0.994139, 0.087410,
		0.337356, 0.061010, -0.939398,
		-0.939225, 0.089249, -0.331498,
		37.381645, 29.251137, 37.436314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.975975, 29.622877, 37.030819>,  <38.039104, 29.188662, 37.668362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.975975, 29.622877, 37.030819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.669674, 29.628309, 37.288017>,  <37.485893, 29.631569, 37.442337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.669674, 29.628309, 37.288017>,  <37.975975, 29.622877, 37.030819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.669674, 29.628309, 37.288017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004867, 0.999871, -0.015321,
		-0.643118, -0.008602, -0.765718,
		-0.765751, 0.013580, 0.642993,
		37.439949, 29.632383, 37.480915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.409184, 29.849934, 36.762180>,  <37.975975, 29.622877, 37.030819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.409184, 29.849934, 36.762180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.453724, 29.948147, 37.147369>,  <37.480450, 30.007074, 37.378483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.453724, 29.948147, 37.147369>,  <37.409184, 29.849934, 36.762180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.453724, 29.948147, 37.147369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204722, 0.942546, -0.264001,
		-0.972465, 0.226539, 0.054691,
		0.111356, 0.245535, 0.962971,
		37.487129, 30.021807, 37.436260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.991280, 30.444355, 36.992897>,  <37.409184, 29.849934, 36.762180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.991280, 30.444355, 36.992897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.304310, 30.424685, 37.241142>,  <37.492126, 30.412882, 37.390091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.304310, 30.424685, 37.241142>,  <36.991280, 30.444355, 36.992897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.304310, 30.424685, 37.241142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186648, 0.969551, -0.158533,
		-0.593923, 0.239900, 0.767921,
		0.782571, -0.049174, 0.620616,
		37.539082, 30.409933, 37.427326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.935059, 31.003220, 37.501980>,  <36.991280, 30.444355, 36.992897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.935059, 31.003220, 37.501980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.319248, 30.894651, 37.477283>,  <37.549763, 30.829510, 37.462467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.319248, 30.894651, 37.477283>,  <36.935059, 31.003220, 37.501980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.319248, 30.894651, 37.477283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248714, 0.936421, -0.247501,
		0.124991, 0.222364, 0.966919,
		0.960478, -0.271421, -0.061739,
		37.607391, 30.813225, 37.458763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.337517, 31.453239, 37.896343>,  <36.935059, 31.003220, 37.501980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.337517, 31.453239, 37.896343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.662521, 31.294035, 37.725975>,  <37.857525, 31.198513, 37.623753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.662521, 31.294035, 37.725975>,  <37.337517, 31.453239, 37.896343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.662521, 31.294035, 37.725975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370876, 0.916641, -0.149063,
		0.449744, -0.036848, 0.892397,
		0.812515, -0.398009, -0.425920,
		37.906277, 31.174633, 37.598198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.964706, 31.670998, 38.247807>,  <37.337517, 31.453239, 37.896343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.964706, 31.670998, 38.247807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.078373, 31.598459, 37.871220>,  <38.146572, 31.554937, 37.645267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.078373, 31.598459, 37.871220>,  <37.964706, 31.670998, 38.247807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.078373, 31.598459, 37.871220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291128, 0.951907, -0.095484,
		0.913507, -0.246955, 0.323292,
		0.284164, -0.181344, -0.941470,
		38.163624, 31.544056, 37.588779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.510010, 32.099613, 38.152084>,  <37.964706, 31.670998, 38.247807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.510010, 32.099613, 38.152084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.422611, 32.009476, 37.772301>,  <38.370174, 31.955393, 37.544430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.422611, 32.009476, 37.772301>,  <38.510010, 32.099613, 38.152084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.422611, 32.009476, 37.772301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295835, 0.911887, -0.284506,
		0.929915, -0.343047, -0.132577,
		-0.218495, -0.225345, -0.949463,
		38.357063, 31.941872, 37.487461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.164692, 32.174816, 37.768673>,  <38.510010, 32.099613, 38.152084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.164692, 32.174816, 37.768673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.828056, 32.241833, 37.563286>,  <38.626076, 32.282043, 37.440052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.828056, 32.241833, 37.563286>,  <39.164692, 32.174816, 37.768673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.828056, 32.241833, 37.563286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321320, 0.919448, -0.226647,
		0.434138, -0.355734, -0.827634,
		-0.841592, 0.167539, -0.513472,
		38.575581, 32.292095, 37.409245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.386261, 32.218399, 37.003796>,  <39.164692, 32.174816, 37.768673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.386261, 32.218399, 37.003796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.035503, 32.145988, 36.825676>,  <38.825050, 32.102543, 36.718803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.035503, 32.145988, 36.825676>,  <39.386261, 32.218399, 37.003796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.035503, 32.145988, 36.825676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018300, 0.938277, -0.345400,
		0.480338, -0.294730, -0.826081,
		-0.876892, -0.181026, -0.445296,
		38.772434, 32.091682, 36.692085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.495323, 32.347210, 36.301422>,  <39.386261, 32.218399, 37.003796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.495323, 32.347210, 36.301422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.114456, 32.414856, 36.403221>,  <38.885937, 32.455444, 36.464298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.114456, 32.414856, 36.403221>,  <39.495323, 32.347210, 36.301422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.114456, 32.414856, 36.403221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053839, 0.912696, -0.405076,
		-0.300783, -0.372000, -0.878149,
		-0.952172, 0.169118, 0.254496,
		38.828804, 32.465591, 36.479568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.244274, 32.596672, 35.649281>,  <39.495323, 32.347210, 36.301422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.244274, 32.596672, 35.649281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.987789, 32.703758, 35.936939>,  <38.833897, 32.768009, 36.109535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.987789, 32.703758, 35.936939>,  <39.244274, 32.596672, 35.649281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.987789, 32.703758, 35.936939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029731, 0.927798, -0.371896,
		-0.766787, -0.259845, -0.586957,
		-0.641213, 0.267714, 0.719149,
		38.795425, 32.784073, 36.152683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.010071, 33.094189, 35.315723>,  <39.244274, 32.596672, 35.649281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.010071, 33.094189, 35.315723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.819374, 33.133003, 35.665192>,  <38.704956, 33.156292, 35.874874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.819374, 33.133003, 35.665192>,  <39.010071, 33.094189, 35.315723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.819374, 33.133003, 35.665192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234643, 0.943777, -0.232868,
		-0.847147, -0.316019, -0.427170,
		-0.476744, 0.097041, 0.873669,
		38.676350, 33.162117, 35.927292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.301983, 33.303127, 35.228470>,  <39.010071, 33.094189, 35.315723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.301983, 33.303127, 35.228470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.432171, 33.436996, 35.582207>,  <38.510284, 33.517319, 35.794449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.432171, 33.436996, 35.582207>,  <38.301983, 33.303127, 35.228470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.432171, 33.436996, 35.582207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325620, 0.917732, -0.227464,
		-0.887715, -0.213926, 0.407673,
		0.325474, 0.334669, 0.884343,
		38.529812, 33.537395, 35.847511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.716934, 33.715893, 35.558922>,  <38.301983, 33.303127, 35.228470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.716934, 33.715893, 35.558922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.073517, 33.822189, 35.705719>,  <38.287468, 33.885967, 35.793797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.073517, 33.822189, 35.705719>,  <37.716934, 33.715893, 35.558922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.073517, 33.822189, 35.705719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182094, 0.951787, -0.246867,
		-0.414897, 0.153246, 0.896870,
		0.891461, 0.265738, 0.366989,
		38.340954, 33.901913, 35.815815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.568966, 34.305569, 35.932186>,  <37.716934, 33.715893, 35.558922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.568966, 34.305569, 35.932186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.958309, 34.332573, 35.844540>,  <38.191914, 34.348774, 35.791950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.958309, 34.332573, 35.844540>,  <37.568966, 34.305569, 35.932186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.958309, 34.332573, 35.844540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153886, 0.900803, -0.406046,
		0.169972, 0.428948, 0.887194,
		0.973360, 0.067510, -0.219120,
		38.250317, 34.352825, 35.778805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.654831, 34.959232, 36.143009>,  <37.568966, 34.305569, 35.932186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.654831, 34.959232, 36.143009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.943317, 34.851746, 35.887627>,  <38.116409, 34.787254, 35.734398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.943317, 34.851746, 35.887627>,  <37.654831, 34.959232, 36.143009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.943317, 34.851746, 35.887627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007428, 0.924637, -0.380778,
		0.692666, 0.269882, 0.668863,
		0.721220, -0.268720, -0.638460,
		38.159683, 34.771130, 35.696087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.128307, 35.586052, 35.923695>,  <37.654831, 34.959232, 36.143009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.128307, 35.586052, 35.923695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.185440, 35.309708, 35.640202>,  <38.219719, 35.143902, 35.470104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.185440, 35.309708, 35.640202>,  <38.128307, 35.586052, 35.923695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.185440, 35.309708, 35.640202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114557, 0.699727, -0.705166,
		0.983095, 0.181913, 0.020803,
		0.142835, -0.690862, -0.708737,
		38.228291, 35.102448, 35.427582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.588375, 35.964615, 35.461918>,  <38.128307, 35.586052, 35.923695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.588375, 35.964615, 35.461918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.387840, 35.682247, 35.261784>,  <38.267517, 35.512825, 35.141705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.387840, 35.682247, 35.261784>,  <38.588375, 35.964615, 35.461918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.387840, 35.682247, 35.261784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176497, 0.649527, -0.739570,
		0.847059, -0.282468, -0.450226,
		-0.501339, -0.705923, -0.500333,
		38.237438, 35.470470, 35.111683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.856232, 36.003960, 34.824162>,  <38.588375, 35.964615, 35.461918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.856232, 36.003960, 34.824162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.524303, 35.789585, 34.761967>,  <38.325146, 35.660961, 34.724648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.524303, 35.789585, 34.761967>,  <38.856232, 36.003960, 34.824162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.524303, 35.789585, 34.761967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240090, 0.594409, -0.767486,
		0.503747, -0.599542, -0.621924,
		-0.829817, -0.535936, -0.155488,
		38.275360, 35.628803, 34.715321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.850452, 35.723995, 34.118126>,  <38.856232, 36.003960, 34.824162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.850452, 35.723995, 34.118126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.461281, 35.690426, 34.204254>,  <38.227779, 35.670284, 34.255932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.461281, 35.690426, 34.204254>,  <38.850452, 35.723995, 34.118126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.461281, 35.690426, 34.204254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217286, 0.649506, -0.728648,
		-0.078697, -0.755710, -0.650161,
		-0.972931, -0.083928, 0.215319,
		38.169403, 35.665249, 34.268848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.521656, 35.502064, 33.471825>,  <38.850452, 35.723995, 34.118126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.521656, 35.502064, 33.471825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.239147, 35.649937, 33.713322>,  <38.069641, 35.738663, 33.858219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.239147, 35.649937, 33.713322>,  <38.521656, 35.502064, 33.471825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.239147, 35.649937, 33.713322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303153, 0.612740, -0.729827,
		-0.639746, -0.698486, -0.320692,
		-0.706275, 0.369685, 0.603746,
		38.027264, 35.760841, 33.894447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.262001, 35.594963, 33.054363>,  <38.521656, 35.502064, 33.471825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.262001, 35.594963, 33.054363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.660774, 35.598114, 33.085526>,  <39.900036, 35.600002, 33.104221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.660774, 35.598114, 33.085526>,  <39.262001, 35.594963, 33.054363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.660774, 35.598114, 33.085526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036444, 0.927272, 0.372611,
		-0.069307, -0.374306, 0.924712,
		0.996929, 0.007876, 0.077907,
		39.959854, 35.600475, 33.108898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.470829, 35.824722, 33.768219>,  <39.262001, 35.594963, 33.054363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.470829, 35.824722, 33.768219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.722610, 35.914516, 33.470654>,  <39.873680, 35.968391, 33.292114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.722610, 35.914516, 33.470654>,  <39.470829, 35.824722, 33.768219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.722610, 35.914516, 33.470654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162452, 0.974222, 0.156528,
		0.759870, 0.022324, 0.649691,
		0.629449, 0.224485, -0.743909,
		39.911446, 35.981861, 33.247482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.181904, 35.585880, 34.100857>,  <39.470829, 35.824722, 33.768219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.181904, 35.585880, 34.100857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.359505, 35.230358, 34.055462>,  <40.466064, 35.017044, 34.028225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.359505, 35.230358, 34.055462>,  <40.181904, 35.585880, 34.100857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.359505, 35.230358, 34.055462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743941, 0.295076, 0.599568,
		-0.499414, -0.350639, 0.792236,
		0.444002, -0.888809, -0.113490,
		40.492706, 34.963715, 34.021416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.600510, 35.490082, 34.617596>,  <40.181904, 35.585880, 34.100857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.600510, 35.490082, 34.617596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.793896, 35.212772, 34.403820>,  <40.909927, 35.046387, 34.275555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.793896, 35.212772, 34.403820>,  <40.600510, 35.490082, 34.617596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.793896, 35.212772, 34.403820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872771, 0.334830, 0.355189,
		-0.067296, -0.638169, 0.766950,
		0.483469, -0.693274, -0.534442,
		40.938938, 35.004791, 34.243488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.312618, 35.052963, 34.961063>,  <40.600510, 35.490082, 34.617596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.312618, 35.052963, 34.961063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.333134, 35.047424, 34.561626>,  <41.345444, 35.044102, 34.321964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.333134, 35.047424, 34.561626>,  <41.312618, 35.052963, 34.961063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.333134, 35.047424, 34.561626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984388, 0.169283, 0.048210,
		0.168376, -0.985470, 0.022309,
		0.051286, -0.013843, -0.998588,
		41.348518, 35.043270, 34.262051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.850437, 34.566463, 34.776108>,  <41.312618, 35.052963, 34.961063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.850437, 34.566463, 34.776108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.817852, 34.855762, 34.501801>,  <41.798302, 35.029343, 34.337215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.817852, 34.855762, 34.501801>,  <41.850437, 34.566463, 34.776108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.817852, 34.855762, 34.501801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974102, 0.203386, 0.098786,
		0.210922, -0.659958, -0.721088,
		-0.081465, 0.723249, -0.685765,
		41.793411, 35.072739, 34.296070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.389931, 34.426075, 34.233585>,  <41.850437, 34.566463, 34.776108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.389931, 34.426075, 34.233585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.306034, 34.817165, 34.236931>,  <42.255695, 35.051819, 34.238937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.306034, 34.817165, 34.236931>,  <42.389931, 34.426075, 34.233585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.306034, 34.817165, 34.236931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974737, 0.209757, -0.076742,
		-0.076787, -0.007942, -0.997016,
		-0.209741, 0.977721, 0.008365,
		42.243111, 35.110481, 34.239441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.931427, 34.766178, 33.837879>,  <42.389931, 34.426075, 34.233585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.931427, 34.766178, 33.837879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.793655, 35.036617, 34.098419>,  <42.710995, 35.198883, 34.254745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.793655, 35.036617, 34.098419>,  <42.931427, 34.766178, 33.837879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.793655, 35.036617, 34.098419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933894, 0.317676, 0.164084,
		-0.095982, 0.664808, -0.740822,
		-0.344426, 0.676100, 0.651352,
		42.690327, 35.239449, 34.293823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.974487, 35.449253, 33.658241>,  <42.931427, 34.766178, 33.837879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.974487, 35.449253, 33.658241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.016224, 35.410839, 34.054199>,  <43.041264, 35.387791, 34.291775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.016224, 35.410839, 34.054199>,  <42.974487, 35.449253, 33.658241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.016224, 35.410839, 34.054199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963327, 0.257169, -0.076590,
		-0.247215, 0.961583, 0.119344,
		0.104339, -0.096033, 0.989894,
		43.047527, 35.382030, 34.351166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.674244, 35.668774, 33.609283>,  <42.974487, 35.449253, 33.658241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.674244, 35.668774, 33.609283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.573292, 35.623882, 33.993721>,  <43.512718, 35.596947, 34.224384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.573292, 35.623882, 33.993721>,  <43.674244, 35.668774, 33.609283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.573292, 35.623882, 33.993721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967453, -0.048105, 0.248436,
		0.018351, 0.992517, 0.120721,
		-0.252384, -0.112232, 0.961096,
		43.497578, 35.590214, 34.282051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.152462, 36.250252, 33.837585>,  <43.674244, 35.668774, 33.609283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.152462, 36.250252, 33.837585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.082565, 36.425915, 33.485085>,  <44.040627, 36.531311, 33.273582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.082565, 36.425915, 33.485085>,  <44.152462, 36.250252, 33.837585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.082565, 36.425915, 33.485085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686634, 0.695831, 0.210602,
		0.705691, -0.568298, -0.423129,
		-0.174741, 0.439155, -0.881254,
		44.030144, 36.557663, 33.220707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.930668, 36.178978, 33.815208>,  <44.152462, 36.250252, 33.837585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.930668, 36.178978, 33.815208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.976265, 36.369282, 33.466343>,  <45.003624, 36.483463, 33.257023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.976265, 36.369282, 33.466343>,  <44.930668, 36.178978, 33.815208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.976265, 36.369282, 33.466343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805068, -0.558626, -0.199507,
		-0.582128, -0.679406, -0.446694,
		0.113989, 0.475757, -0.872159,
		45.010460, 36.512009, 33.204697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.895760, 35.908283, 34.426849>,  <44.930668, 36.178978, 33.815208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.895760, 35.908283, 34.426849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.249031, 36.066406, 34.325863>,  <45.460995, 36.161278, 34.265270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.249031, 36.066406, 34.325863>,  <44.895760, 35.908283, 34.426849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.249031, 36.066406, 34.325863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469043, 0.745861, -0.472958,
		0.001338, 0.536120, 0.844141,
		0.883174, 0.395306, -0.252462,
		45.513985, 36.184998, 34.250126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.111923, 36.653145, 34.686249>,  <44.895760, 35.908283, 34.426849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.111923, 36.653145, 34.686249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.247501, 36.585430, 34.316071>,  <45.328850, 36.544800, 34.093964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.247501, 36.585430, 34.316071>,  <45.111923, 36.653145, 34.686249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.247501, 36.585430, 34.316071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523307, 0.783536, -0.334994,
		0.781833, 0.597840, 0.176989,
		0.338950, -0.169289, -0.925448,
		45.349186, 36.534645, 34.038437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.511375, 37.032497, 34.215561>,  <45.111923, 36.653145, 34.686249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.511375, 37.032497, 34.215561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.321903, 36.948784, 33.873371>,  <45.208221, 36.898556, 33.668056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.321903, 36.948784, 33.873371>,  <45.511375, 37.032497, 34.215561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.321903, 36.948784, 33.873371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144028, 0.976686, -0.159189,
		0.868842, 0.047807, -0.492776,
		-0.473677, -0.209283, -0.855471,
		45.179802, 36.885998, 33.616730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.175484, 37.100750, 33.826962>,  <45.511375, 37.032497, 34.215561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.175484, 37.100750, 33.826962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.186150, 36.891186, 34.167503>,  <46.192551, 36.765446, 34.371830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.186150, 36.891186, 34.167503>,  <46.175484, 37.100750, 33.826962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.186150, 36.891186, 34.167503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983644, -0.138014, -0.115743,
		0.178138, 0.840515, 0.511665,
		0.026667, -0.523915, 0.851353,
		46.194149, 36.734013, 34.422909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.755405, 37.394653, 34.399178>,  <46.175484, 37.100750, 33.826962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.755405, 37.394653, 34.399178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.668156, 37.010757, 34.469967>,  <46.615807, 36.780418, 34.512440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.668156, 37.010757, 34.469967>,  <46.755405, 37.394653, 34.399178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.668156, 37.010757, 34.469967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967599, -0.236310, -0.088938,
		0.127177, 0.151835, 0.980190,
		-0.218125, -0.959741, 0.176969,
		46.602718, 36.722836, 34.523056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.190437, 37.081215, 34.931374>,  <46.755405, 37.394653, 34.399178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.190437, 37.081215, 34.931374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.085270, 36.801617, 34.665356>,  <47.022171, 36.633858, 34.505745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.085270, 36.801617, 34.665356>,  <47.190437, 37.081215, 34.931374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.085270, 36.801617, 34.665356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939734, -0.341683, -0.012385,
		-0.218578, -0.628223, 0.746699,
		-0.262915, -0.698991, -0.665047,
		47.006397, 36.591919, 34.465843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.347187, 36.389637, 35.198612>,  <47.190437, 37.081215, 34.931374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.347187, 36.389637, 35.198612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.370502, 36.476463, 34.808846>,  <47.384491, 36.528561, 34.574986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.370502, 36.476463, 34.808846>,  <47.347187, 36.389637, 35.198612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.370502, 36.476463, 34.808846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979014, -0.203357, 0.013263,
		-0.195275, -0.954740, -0.224364,
		0.058288, 0.217066, -0.974415,
		47.387989, 36.541584, 34.516521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.372158, 36.056965, 35.832417>,  <47.347187, 36.389637, 35.198612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.372158, 36.056965, 35.832417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.260685, 35.706039, 35.988701>,  <47.193802, 35.495483, 36.082474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.260685, 35.706039, 35.988701>,  <47.372158, 36.056965, 35.832417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.260685, 35.706039, 35.988701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024518, -0.400201, -0.916099,
		0.960070, -0.264880, 0.090019,
		-0.278682, -0.877313, 0.390715,
		47.177082, 35.442844, 36.105915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.591820, 35.515358, 35.319389>,  <47.372158, 36.056965, 35.832417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.591820, 35.515358, 35.319389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.531494, 35.121399, 35.285355>,  <47.495296, 34.885025, 35.264935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.531494, 35.121399, 35.285355>,  <47.591820, 35.515358, 35.319389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.531494, 35.121399, 35.285355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460218, -0.006224, 0.887784,
		-0.874902, 0.173050, -0.452327,
		-0.150816, -0.984893, -0.085087,
		47.486248, 34.825932, 35.259830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<32.183952, 37.116249, 26.116488> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.823799, 37.199696, 26.269213>,  <31.607706, 37.249763, 26.360847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.823799, 37.199696, 26.269213>,  <32.183952, 37.116249, 26.116488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.823799, 37.199696, 26.269213> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319338, -0.279168, 0.905587,
		0.295509, 0.937308, 0.184741,
		-0.900388, 0.208614, 0.381814,
		31.553682, 37.262280, 26.383757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.248116, 37.532753, 26.800798>,  <32.183952, 37.116249, 26.116488>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.248116, 37.532753, 26.800798> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.893314, 37.348610, 26.815222>,  <31.680433, 37.238125, 26.823875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.893314, 37.348610, 26.815222>,  <32.248116, 37.532753, 26.800798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.893314, 37.348610, 26.815222> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210001, -0.332611, 0.919386,
		-0.411252, 0.823069, 0.391701,
		-0.887002, -0.460356, 0.036058,
		31.627214, 37.210503, 26.826040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.949457, 37.651913, 27.453741>,  <32.248116, 37.532753, 26.800798>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.949457, 37.651913, 27.453741> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.771954, 37.315022, 27.331278>,  <31.665451, 37.112888, 27.257801>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.771954, 37.315022, 27.331278>,  <31.949457, 37.651913, 27.453741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.771954, 37.315022, 27.331278> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109599, -0.390079, 0.914235,
		-0.889418, 0.372146, 0.265409,
		-0.443760, -0.842226, -0.306157,
		31.638826, 37.062355, 27.239431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.576525, 37.445858, 28.025608>,  <31.949457, 37.651913, 27.453741>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.576525, 37.445858, 28.025608> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.588869, 37.106041, 27.814964>,  <31.596275, 36.902149, 27.688578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.588869, 37.106041, 27.814964>,  <31.576525, 37.445858, 28.025608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.588869, 37.106041, 27.814964> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024206, -0.527342, 0.849309,
		-0.999231, -0.013462, -0.036838,
		0.030860, -0.849547, -0.526610,
		31.598127, 36.851177, 27.656981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.187031, 37.002960, 28.423603>,  <31.576525, 37.445858, 28.025608>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.187031, 37.002960, 28.423603> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.402847, 36.746929, 28.204807>,  <31.532337, 36.593311, 28.073530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.402847, 36.746929, 28.204807>,  <31.187031, 37.002960, 28.423603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.402847, 36.746929, 28.204807> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182684, -0.545189, 0.818166,
		-0.821903, -0.541359, -0.177219,
		0.539539, -0.640078, -0.546990,
		31.564709, 36.554905, 28.040710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.930624, 36.330257, 28.511749>,  <31.187031, 37.002960, 28.423603>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.930624, 36.330257, 28.511749> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.313911, 36.311569, 28.398872>,  <31.543884, 36.300354, 28.331146>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.313911, 36.311569, 28.398872>,  <30.930624, 36.330257, 28.511749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.313911, 36.311569, 28.398872> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160974, -0.727416, 0.667048,
		-0.236440, -0.684605, -0.689502,
		0.958219, -0.046725, -0.282194,
		31.601377, 36.297550, 28.314215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.056664, 35.635189, 28.550430>,  <30.930624, 36.330257, 28.511749>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.056664, 35.635189, 28.550430> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.411722, 35.818478, 28.532045>,  <31.624758, 35.928452, 28.521013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.411722, 35.818478, 28.532045>,  <31.056664, 35.635189, 28.550430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.411722, 35.818478, 28.532045> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324928, -0.552437, 0.767617,
		0.326347, -0.696309, -0.639259,
		0.887649, 0.458222, -0.045964,
		31.678017, 35.955944, 28.518255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.512924, 35.136433, 28.689795>,  <31.056664, 35.635189, 28.550430>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.512924, 35.136433, 28.689795> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.718533, 35.476978, 28.731672>,  <31.841898, 35.681305, 28.756800>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.718533, 35.476978, 28.731672>,  <31.512924, 35.136433, 28.689795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.718533, 35.476978, 28.731672> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467353, -0.380314, 0.798087,
		0.719279, -0.361306, -0.593377,
		0.514023, 0.851364, 0.104694,
		31.872740, 35.732388, 28.763081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.178585, 34.896248, 28.847248>,  <31.512924, 35.136433, 28.689795>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.178585, 34.896248, 28.847248> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.108997, 35.267315, 28.979410>,  <32.067245, 35.489956, 29.058708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.108997, 35.267315, 28.979410>,  <32.178585, 34.896248, 28.847248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.108997, 35.267315, 28.979410> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404491, -0.238595, 0.882870,
		0.897843, 0.287238, -0.333725,
		-0.173969, 0.927667, 0.330406,
		32.056808, 35.545616, 29.078531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.806801, 35.081093, 29.210493>,  <32.178585, 34.896248, 28.847248>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.806801, 35.081093, 29.210493> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.518410, 35.318474, 29.353600>,  <32.345375, 35.460903, 29.439463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.518410, 35.318474, 29.353600>,  <32.806801, 35.081093, 29.210493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.518410, 35.318474, 29.353600> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228338, -0.283996, 0.931240,
		0.654253, 0.753099, 0.069247,
		-0.720982, 0.593455, 0.357766,
		32.302116, 35.496510, 29.460930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.082294, 35.602970, 29.616440>,  <32.806801, 35.081093, 29.210493>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.082294, 35.602970, 29.616440> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.710358, 35.498096, 29.719713>,  <32.487194, 35.435173, 29.781677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.710358, 35.498096, 29.719713>,  <33.082294, 35.602970, 29.616440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.710358, 35.498096, 29.719713> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337498, -0.328131, 0.882284,
		-0.146600, 0.907519, 0.393595,
		-0.929841, -0.262180, 0.258182,
		32.431404, 35.419441, 29.797169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.053017, 35.962830, 30.276464>,  <33.082294, 35.602970, 29.616440>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.053017, 35.962830, 30.276464> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.842041, 35.624466, 30.244873>,  <32.715454, 35.421448, 30.225918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.842041, 35.624466, 30.244873>,  <33.053017, 35.962830, 30.276464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.842041, 35.624466, 30.244873> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314353, -0.280672, 0.906866,
		-0.789296, 0.453491, 0.413953,
		-0.527441, -0.845913, -0.078977,
		32.683807, 35.370693, 30.221180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.696075, 35.993145, 30.854923>,  <33.053017, 35.962830, 30.276464>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.696075, 35.993145, 30.854923> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.695229, 35.619675, 30.711676>,  <32.694721, 35.395592, 30.625727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.695229, 35.619675, 30.711676>,  <32.696075, 35.993145, 30.854923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.695229, 35.619675, 30.711676> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471354, -0.316773, 0.823092,
		-0.881941, -0.167059, 0.440761,
		-0.002117, -0.933673, -0.358119,
		32.694595, 35.339573, 30.604240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.557236, 35.693283, 31.454367>,  <32.696075, 35.993145, 30.854923>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.557236, 35.693283, 31.454367> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.716099, 35.446861, 31.182266>,  <32.811417, 35.299007, 31.019007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.716099, 35.446861, 31.182266>,  <32.557236, 35.693283, 31.454367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.716099, 35.446861, 31.182266> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664343, -0.318395, 0.676220,
		-0.633177, -0.720487, 0.282818,
		0.397160, -0.616054, -0.680250,
		32.835247, 35.262047, 30.978191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.647110, 35.094479, 31.837320>,  <32.557236, 35.693283, 31.454367>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.647110, 35.094479, 31.837320> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.881378, 35.027737, 31.520046>,  <33.021938, 34.987690, 31.329681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.881378, 35.027737, 31.520046>,  <32.647110, 35.094479, 31.837320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.881378, 35.027737, 31.520046> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604787, -0.561560, 0.564698,
		-0.539647, -0.810437, -0.227976,
		0.585674, -0.166860, -0.793186,
		33.057079, 34.977680, 31.282091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.823116, 34.411472, 31.915318>,  <32.647110, 35.094479, 31.837320>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.823116, 34.411472, 31.915318> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.073765, 34.562321, 31.642515>,  <33.224152, 34.652828, 31.478834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.073765, 34.562321, 31.642515>,  <32.823116, 34.411472, 31.915318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.073765, 34.562321, 31.642515> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726294, -0.599893, 0.335596,
		-0.282570, -0.705626, -0.649805,
		0.626619, 0.377120, -0.682004,
		33.261749, 34.675457, 31.437914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.139076, 33.857891, 31.549660>,  <32.823116, 34.411472, 31.915318>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.139076, 33.857891, 31.549660> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.399761, 34.154827, 31.487446>,  <33.556171, 34.332989, 31.450117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.399761, 34.154827, 31.487446>,  <33.139076, 33.857891, 31.549660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.399761, 34.154827, 31.487446> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745274, -0.588698, 0.313052,
		0.140828, -0.319938, -0.936914,
		0.651717, 0.742344, -0.155536,
		33.595276, 34.377529, 31.440784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.685097, 33.575752, 31.339363>,  <33.139076, 33.857891, 31.549660>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.685097, 33.575752, 31.339363> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.832710, 33.922531, 31.473358>,  <33.921280, 34.130600, 31.553755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.832710, 33.922531, 31.473358>,  <33.685097, 33.575752, 31.339363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.832710, 33.922531, 31.473358> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830756, -0.469294, 0.299346,
		0.416726, 0.167826, -0.893406,
		0.369032, 0.866947, 0.334989,
		33.943420, 34.182613, 31.573854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.382130, 33.760117, 30.966351>,  <33.685097, 33.575752, 31.339363>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.382130, 33.760117, 30.966351> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.359818, 33.935093, 31.325357>,  <34.346432, 34.040077, 31.540762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.359818, 33.935093, 31.325357>,  <34.382130, 33.760117, 30.966351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.359818, 33.935093, 31.325357> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804366, -0.512858, 0.299953,
		0.591510, 0.738662, -0.323255,
		-0.055780, 0.437441, 0.897515,
		34.343082, 34.066326, 31.594612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.050301, 33.996830, 31.225777>,  <34.382130, 33.760117, 30.966351>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.050301, 33.996830, 31.225777> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.862450, 33.993233, 31.578905>,  <34.749741, 33.991074, 31.790781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.862450, 33.993233, 31.578905>,  <35.050301, 33.996830, 31.225777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.862450, 33.993233, 31.578905> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781747, -0.468913, 0.411087,
		0.410270, 0.883199, 0.227241,
		-0.469628, -0.008989, 0.882819,
		34.721561, 33.990536, 31.843750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.501434, 34.315506, 31.703207>,  <35.050301, 33.996830, 31.225777>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.501434, 34.315506, 31.703207> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.233448, 34.103325, 31.910963>,  <35.072655, 33.976017, 32.035618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.233448, 34.103325, 31.910963>,  <35.501434, 34.315506, 31.703207>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.233448, 34.103325, 31.910963> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730770, -0.347913, 0.587308,
		-0.130837, 0.773031, 0.620730,
		-0.669967, -0.530453, 0.519388,
		35.032459, 33.944187, 32.066780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.855469, 34.261208, 32.376812>,  <35.501434, 34.315506, 31.703207>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.855469, 34.261208, 32.376812> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.572857, 33.978344, 32.365902>,  <35.403290, 33.808624, 32.359356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.572857, 33.978344, 32.365902>,  <35.855469, 34.261208, 32.376812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.572857, 33.978344, 32.365902> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539002, -0.562694, 0.626779,
		-0.458584, 0.428132, 0.778719,
		-0.706525, -0.707162, -0.027279,
		35.360901, 33.766197, 32.357719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.517658, 34.542076, 32.036472>,  <35.855469, 34.261208, 32.376812>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.517658, 34.542076, 32.036472> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.900890, 34.577187, 31.927385>,  <37.130829, 34.598255, 31.861933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.900890, 34.577187, 31.927385>,  <36.517658, 34.542076, 32.036472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.900890, 34.577187, 31.927385> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283162, 0.434915, -0.854791,
		0.043576, 0.896183, 0.441540,
		0.958081, 0.087779, -0.272717,
		37.188316, 34.603519, 31.845570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.718616, 35.220669, 31.939526>,  <36.517658, 34.542076, 32.036472>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.718616, 35.220669, 31.939526> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.941589, 34.983795, 31.706776>,  <37.075375, 34.841671, 31.567125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.941589, 34.983795, 31.706776>,  <36.718616, 35.220669, 31.939526>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.941589, 34.983795, 31.706776> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312594, 0.499581, -0.807901,
		0.769123, 0.632243, 0.093370,
		0.557436, -0.592188, -0.581875,
		37.108822, 34.806137, 31.532213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.998787, 35.658627, 31.436535>,  <36.718616, 35.220669, 31.939526>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.998787, 35.658627, 31.436535> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.069630, 35.291351, 31.294796>,  <37.112137, 35.070988, 31.209753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.069630, 35.291351, 31.294796>,  <36.998787, 35.658627, 31.436535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.069630, 35.291351, 31.294796> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171478, 0.325743, -0.929778,
		0.969137, 0.225437, -0.099756,
		0.177112, -0.918188, -0.354347,
		37.122765, 35.015896, 31.188492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.526436, 35.803692, 30.906698>,  <36.998787, 35.658627, 31.436535>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.526436, 35.803692, 30.906698> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.347683, 35.454834, 30.827032>,  <37.240433, 35.245522, 30.779232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.347683, 35.454834, 30.827032>,  <37.526436, 35.803692, 30.906698>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.347683, 35.454834, 30.827032> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219817, 0.322857, -0.920567,
		0.867168, -0.367600, -0.335989,
		-0.446877, -0.872143, -0.199166,
		37.213619, 35.193192, 30.767282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.720322, 35.761284, 30.211342>,  <37.526436, 35.803692, 30.906698>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.720322, 35.761284, 30.211342> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.418785, 35.504612, 30.267872>,  <37.237862, 35.350609, 30.301790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.418785, 35.504612, 30.267872>,  <37.720322, 35.761284, 30.211342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.418785, 35.504612, 30.267872> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289655, 0.131485, -0.948057,
		0.589767, -0.755618, -0.284984,
		-0.753840, -0.641680, 0.141323,
		37.192635, 35.312107, 30.310268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.727673, 35.482449, 29.653496>,  <37.720322, 35.761284, 30.211342>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.727673, 35.482449, 29.653496> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.363579, 35.406311, 29.800598>,  <37.145123, 35.360630, 29.888859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.363579, 35.406311, 29.800598>,  <37.727673, 35.482449, 29.653496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.363579, 35.406311, 29.800598> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404562, 0.219313, -0.887824,
		0.088334, -0.956908, -0.276630,
		-0.910235, -0.190339, 0.367756,
		37.090508, 35.349209, 29.910925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.402416, 35.110695, 29.130669>,  <37.727673, 35.482449, 29.653496>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.402416, 35.110695, 29.130669> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.103172, 35.250103, 29.356543>,  <36.923626, 35.333748, 29.492067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.103172, 35.250103, 29.356543>,  <37.402416, 35.110695, 29.130669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.103172, 35.250103, 29.356543> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458821, 0.343099, -0.819614,
		-0.479395, -0.872248, -0.096766,
		-0.748107, 0.348521, 0.564685,
		36.878738, 35.354660, 29.525948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.869015, 34.959274, 28.739246>,  <37.402416, 35.110695, 29.130669>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.869015, 34.959274, 28.739246> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.759312, 35.237961, 29.004385>,  <36.693489, 35.405174, 29.163467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.759312, 35.237961, 29.004385>,  <36.869015, 34.959274, 28.739246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.759312, 35.237961, 29.004385> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492286, 0.490395, -0.719143,
		-0.826097, -0.523542, 0.208490,
		-0.274259, 0.696719, 0.662846,
		36.677032, 35.446976, 29.203239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.051888, 35.084587, 28.622135>,  <36.869015, 34.959274, 28.739246>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.051888, 35.084587, 28.622135> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.170494, 35.407715, 28.825901>,  <36.241657, 35.601593, 28.948160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.170494, 35.407715, 28.825901>,  <36.051888, 35.084587, 28.622135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.170494, 35.407715, 28.825901> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478622, 0.587280, -0.652704,
		-0.826437, -0.050280, 0.560779,
		0.296517, 0.807820, 0.509415,
		36.259449, 35.650063, 28.978725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.432007, 35.514679, 28.693336>,  <36.051888, 35.084587, 28.622135>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.432007, 35.514679, 28.693336> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.749027, 35.752434, 28.747847>,  <35.939240, 35.895088, 28.780554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.749027, 35.752434, 28.747847>,  <35.432007, 35.514679, 28.693336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.749027, 35.752434, 28.747847> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494851, 0.757465, -0.425874,
		-0.356360, 0.270088, 0.894460,
		0.792546, 0.594389, 0.136277,
		35.986790, 35.930752, 28.788731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.200245, 36.127304, 28.928707>,  <35.432007, 35.514679, 28.693336>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.200245, 36.127304, 28.928707> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.556416, 36.216026, 28.769739>,  <35.770119, 36.269260, 28.674358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.556416, 36.216026, 28.769739>,  <35.200245, 36.127304, 28.928707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.556416, 36.216026, 28.769739> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380297, 0.842311, -0.381951,
		0.250030, 0.491236, 0.834369,
		0.890426, 0.221809, -0.397419,
		35.823544, 36.282570, 28.650513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.067978, 36.828751, 28.940861>,  <35.200245, 36.127304, 28.928707>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.067978, 36.828751, 28.940861> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.382092, 36.752716, 28.705166>,  <35.570560, 36.707096, 28.563749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.382092, 36.752716, 28.705166>,  <35.067978, 36.828751, 28.940861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.382092, 36.752716, 28.705166> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320434, 0.689550, -0.649494,
		0.529770, 0.698847, 0.480579,
		0.785280, -0.190089, -0.589237,
		35.617676, 36.695690, 28.528395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.412552, 37.443172, 28.838680>,  <35.067978, 36.828751, 28.940861>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.412552, 37.443172, 28.838680> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.473190, 37.191002, 28.534159>,  <35.509575, 37.039700, 28.351446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.473190, 37.191002, 28.534159>,  <35.412552, 37.443172, 28.838680>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.473190, 37.191002, 28.534159> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328581, 0.694262, -0.640340,
		0.932229, 0.347226, -0.101895,
		0.151601, -0.630424, -0.761303,
		35.518669, 37.001873, 28.305767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.695057, 37.912556, 28.336372>,  <35.412552, 37.443172, 28.838680>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.695057, 37.912556, 28.336372> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.596706, 37.583588, 28.131172>,  <35.537697, 37.386208, 28.008051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.596706, 37.583588, 28.131172>,  <35.695057, 37.912556, 28.336372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.596706, 37.583588, 28.131172> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314706, 0.568311, -0.760252,
		0.916790, -0.025484, -0.398555,
		-0.245877, -0.822419, -0.513002,
		35.522942, 37.336861, 27.977272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.030323, 37.957008, 27.633188>,  <35.695057, 37.912556, 28.336372>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.030323, 37.957008, 27.633188> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.709209, 37.719704, 27.609236>,  <35.516541, 37.577320, 27.594864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.709209, 37.719704, 27.609236>,  <36.030323, 37.957008, 27.633188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.709209, 37.719704, 27.609236> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383573, 0.590693, -0.709897,
		0.456524, -0.546924, -0.701755,
		-0.802781, -0.593260, -0.059880,
		35.468376, 37.541725, 27.591270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.922947, 37.961422, 26.970415>,  <36.030323, 37.957008, 27.633188>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.922947, 37.961422, 26.970415> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.573292, 37.802402, 27.082016>,  <35.363499, 37.706989, 27.148975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.573292, 37.802402, 27.082016>,  <35.922947, 37.961422, 26.970415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.573292, 37.802402, 27.082016> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452544, 0.458144, -0.765055,
		0.176321, -0.795023, -0.580387,
		-0.874137, -0.397546, 0.279002,
		35.311050, 37.683140, 27.165716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.603012, 37.657715, 26.430944>,  <35.922947, 37.961422, 26.970415>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.603012, 37.657715, 26.430944> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.288673, 37.722420, 26.669699>,  <35.100071, 37.761242, 26.812950>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.288673, 37.722420, 26.669699>,  <35.603012, 37.657715, 26.430944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.288673, 37.722420, 26.669699> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574903, 0.164549, -0.801505,
		-0.227870, -0.973014, -0.036313,
		-0.785851, 0.161762, 0.596885,
		35.052917, 37.770947, 26.848764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.104919, 37.481815, 26.036789>,  <35.603012, 37.657715, 26.430944>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.104919, 37.481815, 26.036789> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.906010, 37.675137, 26.324993>,  <34.786663, 37.791130, 26.497915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.906010, 37.675137, 26.324993>,  <35.104919, 37.481815, 26.036789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.906010, 37.675137, 26.324993> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632122, 0.366998, -0.682447,
		-0.594257, -0.794813, 0.123011,
		-0.497273, 0.483306, 0.720509,
		34.756828, 37.820129, 26.541145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<34.313873, 37.351467, 25.907190> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.339794, 37.657650, 26.163277>,  <34.355347, 37.841358, 26.316929>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.339794, 37.657650, 26.163277>,  <34.313873, 37.351467, 25.907190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.339794, 37.657650, 26.163277> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699454, 0.492428, -0.517957,
		-0.711734, -0.414237, 0.567312,
		0.064804, 0.765456, 0.640217,
		34.359234, 37.887287, 26.355341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.672974, 37.509296, 26.022585>,  <34.313873, 37.351467, 25.907190>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.672974, 37.509296, 26.022585> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.867504, 37.850418, 26.098694>,  <33.984222, 38.055092, 26.144360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.867504, 37.850418, 26.098694>,  <33.672974, 37.509296, 26.022585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.867504, 37.850418, 26.098694> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655697, 0.500122, -0.565632,
		-0.577536, 0.150320, 0.802406,
		0.486327, 0.852808, 0.190275,
		34.013401, 38.106262, 26.155777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.073067, 37.999725, 26.081781>,  <33.672974, 37.509296, 26.022585>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.073067, 37.999725, 26.081781> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.407860, 38.213451, 26.034494>,  <33.608734, 38.341686, 26.006123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.407860, 38.213451, 26.034494>,  <33.073067, 37.999725, 26.081781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.407860, 38.213451, 26.034494> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506629, 0.674914, -0.536487,
		-0.206864, 0.508921, 0.835587,
		0.836979, 0.534313, -0.118219,
		33.658955, 38.373745, 25.999029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.841343, 38.751255, 26.299145>,  <33.073067, 37.999725, 26.081781>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.841343, 38.751255, 26.299145> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.159828, 38.769665, 26.057838>,  <33.350918, 38.780712, 25.913055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.159828, 38.769665, 26.057838>,  <32.841343, 38.751255, 26.299145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.159828, 38.769665, 26.057838> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520439, 0.560581, -0.644121,
		0.308531, 0.826819, 0.470296,
		0.796211, 0.046029, -0.603266,
		33.398693, 38.783474, 25.876858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.880116, 39.438206, 26.027075>,  <32.841343, 38.751255, 26.299145>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.880116, 39.438206, 26.027075> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.108921, 39.237335, 25.767654>,  <33.246204, 39.116814, 25.612001>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.108921, 39.237335, 25.767654>,  <32.880116, 39.438206, 26.027075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.108921, 39.237335, 25.767654> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398484, 0.520972, -0.754850,
		0.716945, 0.690222, 0.097894,
		0.572014, -0.502177, -0.648550,
		33.280525, 39.086681, 25.573090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.109787, 39.901836, 25.491358>,  <32.880116, 39.438206, 26.027075>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.109787, 39.901836, 25.491358> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.184231, 39.541271, 25.334990>,  <33.228897, 39.324932, 25.241169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.184231, 39.541271, 25.334990>,  <33.109787, 39.901836, 25.491358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.184231, 39.541271, 25.334990> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248695, 0.341696, -0.906308,
		0.950534, 0.265891, -0.160585,
		0.186108, -0.901413, -0.390919,
		33.240063, 39.270847, 25.217714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.293049, 40.067860, 24.810482>,  <33.109787, 39.901836, 25.491358>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.293049, 40.067860, 24.810482> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.198715, 39.679600, 24.791626>,  <33.142113, 39.446644, 24.780313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.198715, 39.679600, 24.791626>,  <33.293049, 40.067860, 24.810482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.198715, 39.679600, 24.791626> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249090, 0.107265, -0.962522,
		0.939327, -0.215257, -0.267076,
		-0.235838, -0.970649, -0.047138,
		33.127964, 39.388405, 24.777485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.649841, 39.721672, 24.208765>,  <33.293049, 40.067860, 24.810482>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.649841, 39.721672, 24.208765> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.322418, 39.513134, 24.305229>,  <33.125965, 39.388012, 24.363108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.322418, 39.513134, 24.305229>,  <33.649841, 39.721672, 24.208765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.322418, 39.513134, 24.305229> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321986, 0.068766, -0.944244,
		0.475698, -0.850568, -0.224156,
		-0.818557, -0.521350, 0.241159,
		33.076851, 39.356728, 24.377577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.687229, 39.216862, 23.657393>,  <33.649841, 39.721672, 24.208765>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.687229, 39.216862, 23.657393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.311604, 39.242134, 23.792547>,  <33.086227, 39.257298, 23.873640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.311604, 39.242134, 23.792547>,  <33.687229, 39.216862, 23.657393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.311604, 39.242134, 23.792547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340493, -0.036138, -0.939552,
		-0.047159, -0.997347, 0.055451,
		-0.939063, 0.063189, 0.337885,
		33.029884, 39.261086, 23.893913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.278625, 38.917198, 23.135622>,  <33.687229, 39.216862, 23.657393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.278625, 38.917198, 23.135622> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.002792, 39.116486, 23.345863>,  <32.837292, 39.236057, 23.472008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.002792, 39.116486, 23.345863>,  <33.278625, 38.917198, 23.135622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.002792, 39.116486, 23.345863> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577106, 0.060427, -0.814430,
		-0.437523, -0.864945, 0.245855,
		-0.689581, 0.498216, 0.525603,
		32.795918, 39.265949, 23.503544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.637089, 38.542084, 23.063421>,  <33.278625, 38.917198, 23.135622>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.637089, 38.542084, 23.063421> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.569828, 38.928776, 23.140518>,  <32.529472, 39.160793, 23.186777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.569828, 38.928776, 23.140518>,  <32.637089, 38.542084, 23.063421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.569828, 38.928776, 23.140518> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559038, 0.067527, -0.826388,
		-0.811913, -0.246706, 0.529087,
		-0.168147, 0.966734, 0.192744,
		32.519382, 39.218796, 23.198341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.931850, 38.583405, 22.832983>,  <32.637089, 38.542084, 23.063421>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.931850, 38.583405, 22.832983> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.017139, 38.969044, 22.896303>,  <32.068314, 39.200428, 22.934296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.017139, 38.969044, 22.896303>,  <31.931850, 38.583405, 22.832983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.017139, 38.969044, 22.896303> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560318, 0.253401, -0.788563,
		-0.800362, 0.079442, 0.594230,
		0.213223, 0.964094, 0.158300,
		32.081108, 39.258270, 22.943792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.255980, 38.905937, 22.753803>,  <31.931850, 38.583405, 22.832983>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.255980, 38.905937, 22.753803> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.536875, 39.188419, 22.717726>,  <31.705412, 39.357910, 22.696079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.536875, 39.188419, 22.717726>,  <31.255980, 38.905937, 22.753803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.536875, 39.188419, 22.717726> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499414, 0.398350, -0.769352,
		-0.507393, 0.585312, 0.632426,
		0.702238, 0.706206, -0.090193,
		31.747545, 39.400280, 22.690668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.916857, 39.565063, 22.775965>,  <31.255980, 38.905937, 22.753803>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.916857, 39.565063, 22.775965> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.262049, 39.622360, 22.582161>,  <31.469164, 39.656738, 22.465879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.262049, 39.622360, 22.582161>,  <30.916857, 39.565063, 22.775965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.262049, 39.622360, 22.582161> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433174, 0.703358, -0.563602,
		0.260054, 0.696254, 0.669031,
		0.862979, 0.143240, -0.484510,
		31.520943, 39.665333, 22.436808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.029243, 40.286709, 22.762224>,  <30.916857, 39.565063, 22.775965>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.029243, 40.286709, 22.762224> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.228880, 40.131310, 22.452391>,  <31.348661, 40.038071, 22.266491>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.228880, 40.131310, 22.452391>,  <31.029243, 40.286709, 22.762224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.228880, 40.131310, 22.452391> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229335, 0.802781, -0.550406,
		0.835653, 0.452341, 0.311564,
		0.499089, -0.388496, -0.774584,
		31.378607, 40.014759, 22.220015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.345173, 40.858864, 22.376734>,  <31.029243, 40.286709, 22.762224>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.345173, 40.858864, 22.376734> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.371161, 40.563511, 22.108234>,  <31.386753, 40.386299, 21.947136>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.371161, 40.563511, 22.108234>,  <31.345173, 40.858864, 22.376734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.371161, 40.563511, 22.108234> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270362, 0.634484, -0.724109,
		0.960564, 0.228525, -0.158407,
		0.064970, -0.738381, -0.671248,
		31.390652, 40.341995, 21.906860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.877733, 41.127174, 21.848038>,  <31.345173, 40.858864, 22.376734>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.877733, 41.127174, 21.848038> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.646416, 40.835911, 21.700871>,  <31.507626, 40.661152, 21.612570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.646416, 40.835911, 21.700871>,  <31.877733, 41.127174, 21.848038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.646416, 40.835911, 21.700871> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088767, 0.504460, -0.858860,
		0.810984, -0.464016, -0.356363,
		-0.578296, -0.728155, -0.367920,
		31.472927, 40.617466, 21.590494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.112301, 41.023727, 21.113861>,  <31.877733, 41.127174, 21.848038>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.112301, 41.023727, 21.113861> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.740356, 40.877224, 21.127842>,  <31.517191, 40.789322, 21.136230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.740356, 40.877224, 21.127842>,  <32.112301, 41.023727, 21.113861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.740356, 40.877224, 21.127842> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249379, 0.557567, -0.791789,
		0.270510, -0.744967, -0.609794,
		-0.929858, -0.366256, 0.034952,
		31.461399, 40.767345, 21.138327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.820061, 40.996326, 20.368608>,  <32.112301, 41.023727, 21.113861>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.820061, 40.996326, 20.368608> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.493099, 41.022163, 20.597582>,  <31.296923, 41.037666, 20.734966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.493099, 41.022163, 20.597582>,  <31.820061, 40.996326, 20.368608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.493099, 41.022163, 20.597582> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367810, 0.706264, -0.604903,
		-0.443358, -0.704996, -0.553547,
		-0.817404, 0.064589, 0.572433,
		31.247877, 41.041538, 20.769312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.282923, 41.146408, 19.894220>,  <31.820061, 40.996326, 20.368608>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.282923, 41.146408, 19.894220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.088741, 41.223011, 20.235432>,  <30.972233, 41.268974, 20.440159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.088741, 41.223011, 20.235432>,  <31.282923, 41.146408, 19.894220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.088741, 41.223011, 20.235432> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560982, 0.680126, -0.471942,
		-0.670547, -0.707640, -0.222738,
		-0.485454, 0.191507, 0.853029,
		30.943106, 41.280464, 20.491341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.584591, 41.444633, 19.683619>,  <31.282923, 41.146408, 19.894220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.584591, 41.444633, 19.683619> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.605478, 41.524944, 20.074917>,  <30.618011, 41.573132, 20.309696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.605478, 41.524944, 20.074917>,  <30.584591, 41.444633, 19.683619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.605478, 41.524944, 20.074917> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579766, 0.803688, -0.134006,
		-0.813108, -0.560155, 0.158373,
		0.052218, 0.200780, 0.978244,
		30.621143, 41.585178, 20.368389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.875530, 41.552166, 19.853046>,  <30.584591, 41.444633, 19.683619>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.875530, 41.552166, 19.853046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.119356, 41.729252, 20.116085>,  <30.265652, 41.835503, 20.273909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.119356, 41.729252, 20.116085>,  <29.875530, 41.552166, 19.853046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.119356, 41.729252, 20.116085> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456449, 0.874230, -0.165455,
		-0.648139, -0.199303, 0.734979,
		0.609565, 0.442718, 0.657595,
		30.302225, 41.862068, 20.313364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.379244, 41.860435, 20.411928>,  <29.875530, 41.552166, 19.853046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.379244, 41.860435, 20.411928> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.714685, 42.053368, 20.310656>,  <29.915951, 42.169128, 20.249893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.714685, 42.053368, 20.310656>,  <29.379244, 41.860435, 20.411928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.714685, 42.053368, 20.310656> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543439, 0.772858, -0.327665,
		0.037629, 0.412369, 0.910239,
		0.838605, 0.482330, -0.253180,
		29.966267, 42.198067, 20.234701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.321043, 42.580585, 20.491236>,  <29.379244, 41.860435, 20.411928>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.321043, 42.580585, 20.491236> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.616995, 42.522926, 20.228390>,  <29.794567, 42.488331, 20.070683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.616995, 42.522926, 20.228390>,  <29.321043, 42.580585, 20.491236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.616995, 42.522926, 20.228390> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283231, 0.819242, -0.498620,
		0.610210, 0.555034, 0.565315,
		0.739881, -0.144148, -0.657113,
		29.838959, 42.479683, 20.031256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.591433, 42.945724, 21.066914>,  <29.321043, 42.580585, 20.491236>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.591433, 42.945724, 21.066914> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.202953, 42.887897, 21.142675>,  <28.969866, 42.853203, 21.188133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.202953, 42.887897, 21.142675>,  <29.591433, 42.945724, 21.066914>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.202953, 42.887897, 21.142675> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237727, -0.641575, 0.729293,
		0.016089, 0.753315, 0.657463,
		-0.971199, -0.144563, 0.189405,
		28.911594, 42.844528, 21.199497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.491068, 42.920425, 21.760706>,  <29.591433, 42.945724, 21.066914>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.491068, 42.920425, 21.760706> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.137720, 42.758125, 21.666874>,  <28.925713, 42.660744, 21.610575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.137720, 42.758125, 21.666874>,  <29.491068, 42.920425, 21.760706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.137720, 42.758125, 21.666874> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140652, -0.706944, 0.693143,
		-0.447078, 0.579306, 0.681561,
		-0.883367, -0.405752, -0.234579,
		28.872709, 42.636398, 21.596500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.101511, 42.912292, 22.400688>,  <29.491068, 42.920425, 21.760706>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.101511, 42.912292, 22.400688> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.938704, 42.633461, 22.164581>,  <28.841019, 42.466160, 22.022917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.938704, 42.633461, 22.164581>,  <29.101511, 42.912292, 22.400688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.938704, 42.633461, 22.164581> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014731, -0.641121, 0.767298,
		-0.913301, 0.321000, 0.250680,
		-0.407019, -0.697082, -0.590265,
		28.816597, 42.424335, 21.987501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.620834, 42.568066, 22.832464>,  <29.101511, 42.912292, 22.400688>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.620834, 42.568066, 22.832464> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.710894, 42.323502, 22.529022>,  <28.764929, 42.176762, 22.346956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.710894, 42.323502, 22.529022>,  <28.620834, 42.568066, 22.832464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.710894, 42.323502, 22.529022> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120136, -0.755234, 0.644352,
		-0.966890, -0.236210, -0.096587,
		0.225148, -0.611414, -0.758605,
		28.778439, 42.140076, 22.301441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.171280, 41.954987, 22.860449>,  <28.620834, 42.568066, 22.832464>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.171280, 41.954987, 22.860449> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.523815, 41.858063, 22.698200>,  <28.735336, 41.799908, 22.600851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.523815, 41.858063, 22.698200>,  <28.171280, 41.954987, 22.860449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.523815, 41.858063, 22.698200> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080620, -0.768777, 0.634415,
		-0.465556, -0.591836, -0.658018,
		0.881339, -0.242306, -0.405622,
		28.788218, 41.785370, 22.576513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.201031, 41.264423, 23.181562>,  <28.171280, 41.954987, 22.860449>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.201031, 41.264423, 23.181562> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.551754, 41.262428, 22.989239>,  <28.762188, 41.261230, 22.873844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.551754, 41.262428, 22.989239>,  <28.201031, 41.264423, 23.181562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.551754, 41.262428, 22.989239> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317441, -0.745055, 0.586621,
		-0.361158, -0.666984, -0.651688,
		0.876810, -0.004990, -0.480810,
		28.814796, 41.260933, 22.844995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.313087, 40.595398, 23.051023>,  <28.201031, 41.264423, 23.181562>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.313087, 40.595398, 23.051023> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.681732, 40.743683, 23.005054>,  <28.902918, 40.832653, 22.977472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.681732, 40.743683, 23.005054>,  <28.313087, 40.595398, 23.051023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.681732, 40.743683, 23.005054> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359703, -0.704618, 0.611659,
		0.145774, -0.605049, -0.782730,
		0.921609, 0.370714, -0.114922,
		28.958216, 40.854897, 22.970577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.750751, 39.999454, 22.740255>,  <28.313087, 40.595398, 23.051023>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.750751, 39.999454, 22.740255> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.971012, 40.270355, 22.935438>,  <29.103168, 40.432896, 23.052547>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.971012, 40.270355, 22.935438>,  <28.750751, 39.999454, 22.740255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.971012, 40.270355, 22.935438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382114, -0.724240, 0.573990,
		0.742138, -0.129613, -0.657595,
		0.550654, 0.677256, 0.487959,
		29.136208, 40.473534, 23.081825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.374418, 39.712803, 22.830736>,  <28.750751, 39.999454, 22.740255>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.374418, 39.712803, 22.830736> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.378082, 40.009453, 23.099039>,  <29.380280, 40.187443, 23.260021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.378082, 40.009453, 23.099039>,  <29.374418, 39.712803, 22.830736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.378082, 40.009453, 23.099039> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568840, -0.555537, 0.606465,
		0.822397, 0.375999, -0.426952,
		0.009158, 0.741622, 0.670756,
		29.380829, 40.231941, 23.300266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.026485, 39.872700, 22.927128>,  <29.374418, 39.712803, 22.830736>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.026485, 39.872700, 22.927128> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.837944, 40.000240, 23.256044>,  <29.724819, 40.076763, 23.453394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.837944, 40.000240, 23.256044>,  <30.026485, 39.872700, 22.927128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.837944, 40.000240, 23.256044> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702018, -0.428726, 0.568651,
		0.533852, 0.845298, -0.021758,
		-0.471352, 0.318850, 0.822291,
		29.696539, 40.095894, 23.502731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.620913, 40.040165, 23.380386>,  <30.026485, 39.872700, 22.927128>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.620913, 40.040165, 23.380386> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.298861, 40.033909, 23.617542>,  <30.105629, 40.030155, 23.759836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.298861, 40.033909, 23.617542>,  <30.620913, 40.040165, 23.380386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.298861, 40.033909, 23.617542> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550346, -0.392349, 0.737008,
		0.221094, 0.919683, 0.324499,
		-0.805131, -0.015639, 0.592890,
		30.057322, 40.029217, 23.795410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.756800, 40.155041, 24.087347>,  <30.620913, 40.040165, 23.380386>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.756800, 40.155041, 24.087347> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.424887, 39.934944, 24.124640>,  <30.225739, 39.802887, 24.147015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.424887, 39.934944, 24.124640>,  <30.756800, 40.155041, 24.087347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.424887, 39.934944, 24.124640> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395327, -0.461613, 0.794122,
		-0.393923, 0.695806, 0.600565,
		-0.829784, -0.550242, 0.093231,
		30.175951, 39.769871, 24.152609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.626301, 40.055847, 24.786972>,  <30.756800, 40.155041, 24.087347>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.626301, 40.055847, 24.786972> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.422291, 39.754002, 24.621836>,  <30.299885, 39.572895, 24.522755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.422291, 39.754002, 24.621836>,  <30.626301, 40.055847, 24.786972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.422291, 39.754002, 24.621836> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280262, -0.599555, 0.749658,
		-0.813219, 0.266643, 0.517277,
		-0.510027, -0.754610, -0.412840,
		30.269283, 39.527618, 24.497984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.393663, 39.701111, 25.334240>,  <30.626301, 40.055847, 24.786972>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.393663, 39.701111, 25.334240> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.363144, 39.428932, 25.042713>,  <30.344833, 39.265625, 24.867798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.363144, 39.428932, 25.042713>,  <30.393663, 39.701111, 25.334240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.363144, 39.428932, 25.042713> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111284, -0.732192, 0.671946,
		-0.990856, -0.029838, 0.131587,
		-0.076297, -0.680444, -0.728817,
		30.340254, 39.224800, 24.824068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.963673, 39.115349, 25.635990>,  <30.393663, 39.701111, 25.334240>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.963673, 39.115349, 25.635990> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.152243, 38.957111, 25.320709>,  <30.265385, 38.862167, 25.131540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.152243, 38.957111, 25.320709>,  <29.963673, 39.115349, 25.635990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.152243, 38.957111, 25.320709> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372173, -0.721024, 0.584476,
		-0.799529, -0.568884, -0.192678,
		0.471424, -0.395596, -0.788202,
		30.293671, 38.838432, 25.084248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.733566, 38.408707, 25.582773>,  <29.963673, 39.115349, 25.635990>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.733566, 38.408707, 25.582773> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.085533, 38.419254, 25.393015>,  <30.296713, 38.425583, 25.279160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.085533, 38.419254, 25.393015>,  <29.733566, 38.408707, 25.582773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.085533, 38.419254, 25.393015> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297689, -0.808783, 0.507200,
		-0.370306, -0.587515, -0.719513,
		0.879917, 0.026372, -0.474394,
		30.349508, 38.427166, 25.250696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.833965, 37.708443, 25.343500>,  <29.733566, 38.408707, 25.582773>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.833965, 37.708443, 25.343500> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.193491, 37.883141, 25.328642>,  <30.409206, 37.987961, 25.319727>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.193491, 37.883141, 25.328642>,  <29.833965, 37.708443, 25.343500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.193491, 37.883141, 25.328642> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402156, -0.787970, 0.466234,
		0.174356, -0.433997, -0.883881,
		0.898816, 0.436748, -0.037147,
		30.463137, 38.014164, 25.317497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.258684, 37.119488, 25.333881>,  <29.833965, 37.708443, 25.343500>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.258684, 37.119488, 25.333881> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.506289, 37.427643, 25.394972>,  <30.654852, 37.612537, 25.431627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.506289, 37.427643, 25.394972>,  <30.258684, 37.119488, 25.333881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.506289, 37.427643, 25.394972> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678054, -0.622347, 0.391059,
		0.396317, -0.138513, -0.907605,
		0.619012, 0.770388, 0.152728,
		30.691992, 37.658760, 25.440790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.980165, 36.809265, 25.302835>,  <30.258684, 37.119488, 25.333881>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.980165, 36.809265, 25.302835> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.000717, 37.140305, 25.526424>,  <31.013048, 37.338928, 25.660578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.000717, 37.140305, 25.526424>,  <30.980165, 36.809265, 25.302835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.000717, 37.140305, 25.526424> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561170, -0.486916, 0.669329,
		0.826104, 0.279287, -0.489440,
		0.051381, 0.827594, 0.558970,
		31.016132, 37.388584, 25.694115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.761217, 36.972172, 25.445072>,  <30.980165, 36.809265, 25.302835>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.761217, 36.972172, 25.445072> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.533363, 37.140419, 25.727518>,  <31.396650, 37.241367, 25.896986>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.533363, 37.140419, 25.727518>,  <31.761217, 36.972172, 25.445072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.533363, 37.140419, 25.727518> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516961, -0.484543, 0.705669,
		0.638958, 0.767008, 0.058571,
		-0.569634, 0.420614, 0.706116,
		31.362473, 37.266602, 25.939354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<36.585377, 36.484150, 27.666636> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.303402, 36.534081, 27.945915>,  <36.134216, 36.564041, 28.113483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.303402, 36.534081, 27.945915>,  <36.585377, 36.484150, 27.666636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.303402, 36.534081, 27.945915> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577140, -0.471242, 0.666964,
		0.412276, 0.873126, 0.260153,
		-0.704938, 0.124829, 0.698197,
		36.091919, 36.571529, 28.155375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.937298, 36.764896, 28.251102>,  <36.585377, 36.484150, 27.666636>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.937298, 36.764896, 28.251102> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.593754, 36.590889, 28.359264>,  <36.387627, 36.486485, 28.424162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.593754, 36.590889, 28.359264>,  <36.937298, 36.764896, 28.251102>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.593754, 36.590889, 28.359264> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481477, -0.505558, 0.715954,
		-0.174745, 0.745099, 0.643654,
		-0.858862, -0.435014, 0.270404,
		36.336094, 36.460384, 28.440386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.960201, 36.817753, 28.927485>,  <36.937298, 36.764896, 28.251102>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.960201, 36.817753, 28.927485> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.676098, 36.538956, 28.888042>,  <36.505634, 36.371677, 28.864378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.676098, 36.538956, 28.888042>,  <36.960201, 36.817753, 28.927485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.676098, 36.538956, 28.888042> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399355, -0.514324, 0.758938,
		-0.579692, 0.499666, 0.643654,
		-0.710262, -0.696997, -0.098606,
		36.463020, 36.329857, 28.858461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.645134, 36.721943, 29.588264>,  <36.960201, 36.817753, 28.927485>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.645134, 36.721943, 29.588264> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.525948, 36.387234, 29.404510>,  <36.454437, 36.186409, 29.294258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.525948, 36.387234, 29.404510>,  <36.645134, 36.721943, 29.588264>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.525948, 36.387234, 29.404510> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309781, -0.539962, 0.782609,
		-0.902913, 0.090883, 0.420105,
		-0.297966, -0.836769, -0.459385,
		36.436558, 36.136204, 29.266695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.232517, 36.347153, 30.059805>,  <36.645134, 36.721943, 29.588264>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.232517, 36.347153, 30.059805> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.377197, 36.092884, 29.787016>,  <36.464005, 35.940323, 29.623343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.377197, 36.092884, 29.787016>,  <36.232517, 36.347153, 30.059805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.377197, 36.092884, 29.787016> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295261, -0.615740, 0.730537,
		-0.884304, -0.465596, -0.035023,
		0.361701, -0.635676, -0.681974,
		36.485706, 35.902180, 29.582424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.891411, 35.732849, 30.267321>,  <36.232517, 36.347153, 30.059805>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.891411, 35.732849, 30.267321> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.218269, 35.645985, 30.053738>,  <36.414383, 35.593868, 29.925587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.218269, 35.645985, 30.053738>,  <35.891411, 35.732849, 30.267321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.218269, 35.645985, 30.053738> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295960, -0.636846, 0.711924,
		-0.494648, -0.739778, -0.456128,
		0.817148, -0.217156, -0.533959,
		36.463413, 35.580837, 29.893549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.922077, 35.105076, 30.365038>,  <35.891411, 35.732849, 30.267321>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.922077, 35.105076, 30.365038> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.288471, 35.187492, 30.227331>,  <36.508308, 35.236942, 30.144707>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.288471, 35.187492, 30.227331>,  <35.922077, 35.105076, 30.365038>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.288471, 35.187492, 30.227331> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395006, -0.613510, 0.683795,
		-0.070319, -0.762333, -0.643354,
		0.915983, 0.206045, -0.344267,
		36.563267, 35.249306, 30.124050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.239292, 34.457256, 30.297699>,  <35.922077, 35.105076, 30.365038>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.239292, 34.457256, 30.297699> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.532089, 34.729164, 30.316023>,  <36.707767, 34.892307, 30.327017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.532089, 34.729164, 30.316023>,  <36.239292, 34.457256, 30.297699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.532089, 34.729164, 30.316023> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406174, -0.489390, 0.771700,
		0.546995, -0.546275, -0.634335,
		0.731997, 0.679766, 0.045812,
		36.751690, 34.933094, 30.329765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.800621, 34.030018, 30.411623>,  <36.239292, 34.457256, 30.297699>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.800621, 34.030018, 30.411623> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.931374, 34.391479, 30.522295>,  <37.009827, 34.608356, 30.588699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.931374, 34.391479, 30.522295>,  <36.800621, 34.030018, 30.411623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.931374, 34.391479, 30.522295> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436098, -0.403962, 0.804135,
		0.838430, -0.142200, -0.526132,
		0.326885, 0.903656, 0.276681,
		37.029438, 34.662575, 30.605299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.432518, 33.926388, 30.534744>,  <36.800621, 34.030018, 30.411623>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.432518, 33.926388, 30.534744> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.325661, 34.251030, 30.742565>,  <37.261547, 34.445816, 30.867258>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.325661, 34.251030, 30.742565>,  <37.432518, 33.926388, 30.534744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.325661, 34.251030, 30.742565> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394339, -0.399872, 0.827406,
		0.879278, 0.425919, -0.213221,
		-0.267146, 0.811601, 0.519554,
		37.245518, 34.494511, 30.898432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.969425, 34.042953, 30.911270>,  <37.432518, 33.926388, 30.534744>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.969425, 34.042953, 30.911270> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.692097, 34.277889, 31.078283>,  <37.525700, 34.418850, 31.178492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.692097, 34.277889, 31.078283>,  <37.969425, 34.042953, 30.911270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.692097, 34.277889, 31.078283> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549341, 0.055774, 0.833735,
		0.466402, 0.807413, -0.361321,
		-0.693321, 0.587344, 0.417533,
		37.484100, 34.454094, 31.203543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.350323, 34.494602, 31.164198>,  <37.969425, 34.042953, 30.911270>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.350323, 34.494602, 31.164198> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.012020, 34.474976, 31.376720>,  <37.809040, 34.463200, 31.504234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.012020, 34.474976, 31.376720>,  <38.350323, 34.494602, 31.164198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.012020, 34.474976, 31.376720> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533534, -0.088992, 0.841084,
		0.006013, 0.994823, 0.101444,
		-0.845757, -0.049066, 0.531307,
		37.758293, 34.460255, 31.536112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.368679, 34.840260, 31.876556>,  <38.350323, 34.494602, 31.164198>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.368679, 34.840260, 31.876556> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.060040, 34.589554, 31.920012>,  <37.874855, 34.439133, 31.946085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.060040, 34.589554, 31.920012>,  <38.368679, 34.840260, 31.876556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.060040, 34.589554, 31.920012> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447534, -0.413517, 0.792916,
		-0.452045, 0.660435, 0.599568,
		-0.771601, -0.626761, 0.108639,
		37.828560, 34.401527, 31.952602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.119125, 34.997162, 32.515553>,  <38.368679, 34.840260, 31.876556>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.119125, 34.997162, 32.515553> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.057308, 34.614304, 32.417587>,  <38.020218, 34.384586, 32.358810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.057308, 34.614304, 32.417587>,  <38.119125, 34.997162, 32.515553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.057308, 34.614304, 32.417587> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478118, -0.289384, 0.829253,
		-0.864592, 0.011059, 0.502353,
		-0.154543, -0.957149, -0.244911,
		38.010944, 34.327160, 32.344112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.864460, 35.561531, 32.999596>,  <38.119125, 34.997162, 32.515553>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.864460, 35.561531, 32.999596> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.827457, 35.810139, 33.310764>,  <37.805256, 35.959305, 33.497463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.827457, 35.810139, 33.310764>,  <37.864460, 35.561531, 32.999596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.827457, 35.810139, 33.310764> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364940, 0.705740, -0.607248,
		-0.926424, -0.340068, 0.161531,
		-0.092507, 0.621518, 0.777918,
		37.799706, 35.996593, 33.544140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.169216, 35.775925, 33.092892>,  <37.864460, 35.561531, 32.999596>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.169216, 35.775925, 33.092892> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.360176, 36.066975, 33.289932>,  <37.474751, 36.241604, 33.408157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.360176, 36.066975, 33.289932>,  <37.169216, 35.775925, 33.092892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.360176, 36.066975, 33.289932> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644242, 0.671076, -0.366891,
		-0.597533, -0.142204, 0.789134,
		0.477395, 0.727623, 0.492604,
		37.503395, 36.285263, 33.437714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.596237, 36.237099, 33.223114>,  <37.169216, 35.775925, 33.092892>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.596237, 36.237099, 33.223114> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.935802, 36.439465, 33.284294>,  <37.139542, 36.560883, 33.321003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.935802, 36.439465, 33.284294>,  <36.596237, 36.237099, 33.223114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.935802, 36.439465, 33.284294> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434345, 0.832676, -0.343503,
		-0.301143, 0.225170, 0.926613,
		0.848915, 0.505913, 0.152953,
		37.190475, 36.591240, 33.330181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.438728, 36.870510, 33.594254>,  <36.596237, 36.237099, 33.223114>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.438728, 36.870510, 33.594254> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.777374, 36.947311, 33.395706>,  <36.980560, 36.993393, 33.276577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.777374, 36.947311, 33.395706>,  <36.438728, 36.870510, 33.594254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.777374, 36.947311, 33.395706> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374834, 0.877206, -0.300016,
		0.377813, 0.440053, 0.814624,
		0.846615, 0.191999, -0.496366,
		37.031361, 37.004910, 33.246796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.423042, 37.612408, 33.635468>,  <36.438728, 36.870510, 33.594254>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.423042, 37.612408, 33.635468> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.700211, 37.515545, 33.363815>,  <36.866512, 37.457428, 33.200825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.700211, 37.515545, 33.363815>,  <36.423042, 37.612408, 33.635468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.700211, 37.515545, 33.363815> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248419, 0.804060, -0.540162,
		0.676868, 0.542999, 0.496994,
		0.692920, -0.242156, -0.679133,
		36.908085, 37.442898, 33.160076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.909740, 38.227623, 33.647488>,  <36.423042, 37.612408, 33.635468>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.909740, 38.227623, 33.647488> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.927299, 38.015553, 33.308788>,  <36.937836, 37.888309, 33.105568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.927299, 38.015553, 33.308788>,  <36.909740, 38.227623, 33.647488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.927299, 38.015553, 33.308788> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044407, 0.845692, -0.531821,
		0.998048, 0.060950, 0.013584,
		0.043903, -0.530180, -0.846748,
		36.940472, 37.856499, 33.054764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.446304, 38.524784, 33.231518>,  <36.909740, 38.227623, 33.647488>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.446304, 38.524784, 33.231518> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.222187, 38.327454, 32.965374>,  <37.087715, 38.209057, 32.805687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.222187, 38.327454, 32.965374>,  <37.446304, 38.524784, 33.231518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.222187, 38.327454, 32.965374> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211970, 0.691137, -0.690940,
		0.800711, -0.528166, -0.282670,
		-0.560294, -0.493327, -0.665356,
		37.054100, 38.179455, 32.765766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.770031, 38.763710, 32.572197>,  <37.446304, 38.524784, 33.231518>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.770031, 38.763710, 32.572197> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.400330, 38.630768, 32.497051>,  <37.178509, 38.551003, 32.451962>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.400330, 38.630768, 32.497051>,  <37.770031, 38.763710, 32.572197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.400330, 38.630768, 32.497051> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065332, 0.622510, -0.779881,
		0.376150, -0.708533, -0.597070,
		-0.924253, -0.332359, -0.187867,
		37.123055, 38.531059, 32.440693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.772690, 38.707195, 31.764862>,  <37.770031, 38.763710, 32.572197>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.772690, 38.707195, 31.764862> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.387974, 38.689850, 31.873001>,  <37.157146, 38.679443, 31.937885>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.387974, 38.689850, 31.873001>,  <37.772690, 38.707195, 31.764862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.387974, 38.689850, 31.873001> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243991, 0.583777, -0.774385,
		-0.124245, -0.810755, -0.572048,
		-0.961786, -0.043361, 0.270349,
		37.099438, 38.676842, 31.954105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.367577, 38.444145, 31.119070>,  <37.772690, 38.707195, 31.764862>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.367577, 38.444145, 31.119070> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.098553, 38.622437, 31.355370>,  <36.937138, 38.729412, 31.497150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.098553, 38.622437, 31.355370>,  <37.367577, 38.444145, 31.119070>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.098553, 38.622437, 31.355370> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431445, 0.412403, -0.802359,
		-0.601261, -0.794513, -0.085059,
		-0.672563, 0.445728, 0.590750,
		36.896782, 38.756153, 31.532595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.744438, 38.189602, 30.868290>,  <37.367577, 38.444145, 31.119070>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.744438, 38.189602, 30.868290> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.675838, 38.531223, 31.064732>,  <36.634678, 38.736195, 31.182596>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.675838, 38.531223, 31.064732>,  <36.744438, 38.189602, 30.868290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.675838, 38.531223, 31.064732> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514318, 0.347556, -0.784016,
		-0.840277, -0.387042, 0.379649,
		-0.171498, 0.854051, 0.491106,
		36.624390, 38.787437, 31.212063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.991467, 38.326992, 30.783098>,  <36.744438, 38.189602, 30.868290>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.991467, 38.326992, 30.783098> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.155258, 38.674084, 30.895790>,  <36.253532, 38.882339, 30.963406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.155258, 38.674084, 30.895790>,  <35.991467, 38.326992, 30.783098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.155258, 38.674084, 30.895790> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563657, 0.483444, -0.669756,
		-0.717367, 0.115453, 0.687063,
		0.409481, 0.867728, 0.281731,
		36.278103, 38.934402, 30.980310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.467381, 38.701611, 30.961477>,  <35.991467, 38.326992, 30.783098>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.467381, 38.701611, 30.961477> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.772919, 38.947395, 30.882519>,  <35.956242, 39.094868, 30.835144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.772919, 38.947395, 30.882519>,  <35.467381, 38.701611, 30.961477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.772919, 38.947395, 30.882519> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612155, 0.592903, -0.523194,
		-0.204448, 0.520479, 0.829037,
		0.763850, 0.614465, -0.197396,
		36.002075, 39.131737, 30.823299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.227551, 39.397881, 31.023792>,  <35.467381, 38.701611, 30.961477>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.227551, 39.397881, 31.023792> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.541298, 39.440712, 30.779398>,  <35.729546, 39.466412, 30.632761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.541298, 39.440712, 30.779398>,  <35.227551, 39.397881, 31.023792>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.541298, 39.440712, 30.779398> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596000, 0.403084, -0.694483,
		0.171916, 0.908877, 0.379983,
		0.784365, 0.107077, -0.610988,
		35.776608, 39.472836, 30.596102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.056965, 39.583069, 31.678926>,  <35.227551, 39.397881, 31.023792>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.056965, 39.583069, 31.678926> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.707336, 39.770054, 31.731806>,  <34.497559, 39.882244, 31.763533>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.707336, 39.770054, 31.731806>,  <35.056965, 39.583069, 31.678926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.707336, 39.770054, 31.731806> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012313, -0.293360, 0.955923,
		0.485638, 0.833919, 0.262174,
		-0.874073, 0.467461, 0.132198,
		34.445114, 39.910294, 31.771465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.089733, 40.119961, 32.196556>,  <35.056965, 39.583069, 31.678926>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.089733, 40.119961, 32.196556> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.718361, 39.972359, 32.179379>,  <34.495537, 39.883797, 32.169071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.718361, 39.972359, 32.179379>,  <35.089733, 40.119961, 32.196556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.718361, 39.972359, 32.179379> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094271, -0.345832, 0.933549,
		-0.359335, 0.862691, 0.355868,
		-0.928435, -0.369005, -0.042943,
		34.439831, 39.861656, 32.166496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.719345, 40.241272, 32.821873>,  <35.089733, 40.119961, 32.196556>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.719345, 40.241272, 32.821873> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.492821, 39.949661, 32.668083>,  <34.356907, 39.774696, 32.575809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.492821, 39.949661, 32.668083>,  <34.719345, 40.241272, 32.821873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.492821, 39.949661, 32.668083> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052663, -0.433526, 0.899601,
		-0.822510, 0.529698, 0.207117,
		-0.566307, -0.729023, -0.384475,
		34.322929, 39.730953, 32.552742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.345108, 39.956421, 33.388702>,  <34.719345, 40.241272, 32.821873>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.345108, 39.956421, 33.388702> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.275242, 39.677807, 33.110329>,  <34.233322, 39.510639, 32.943302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.275242, 39.677807, 33.110329>,  <34.345108, 39.956421, 33.388702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.275242, 39.677807, 33.110329> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016579, -0.704622, 0.709389,
		-0.984488, 0.135445, 0.111527,
		-0.174668, -0.696536, -0.695938,
		34.222843, 39.468845, 32.901546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.794956, 39.564980, 33.680321>,  <34.345108, 39.956421, 33.388702>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.794956, 39.564980, 33.680321> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.993656, 39.349335, 33.408260>,  <34.112877, 39.219948, 33.245026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.993656, 39.349335, 33.408260>,  <33.794956, 39.564980, 33.680321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.993656, 39.349335, 33.408260> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097839, -0.743896, 0.661095,
		-0.862362, -0.394944, -0.316784,
		0.496750, -0.539109, -0.680148,
		34.142681, 39.187603, 33.204216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.551899, 38.924908, 33.711391>,  <33.794956, 39.564980, 33.680321>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.551899, 38.924908, 33.711391> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.907784, 38.842499, 33.548439>,  <34.121315, 38.793053, 33.450668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.907784, 38.842499, 33.548439>,  <33.551899, 38.924908, 33.711391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.907784, 38.842499, 33.548439> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149116, -0.712271, 0.685882,
		-0.431477, -0.670987, -0.602996,
		0.889714, -0.206026, -0.407384,
		34.174698, 38.780689, 33.426224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.577698, 38.241642, 33.700085>,  <33.551899, 38.924908, 33.711391>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.577698, 38.241642, 33.700085> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.962112, 38.319321, 33.621399>,  <34.192760, 38.365929, 33.574188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.962112, 38.319321, 33.621399>,  <33.577698, 38.241642, 33.700085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.962112, 38.319321, 33.621399> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275728, -0.723765, 0.632565,
		-0.019532, -0.662157, -0.749110,
		0.961037, 0.194195, -0.196712,
		34.250423, 38.377579, 33.562386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.854008, 37.603981, 33.479656>,  <33.577698, 38.241642, 33.700085>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.854008, 37.603981, 33.479656> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.135281, 37.843903, 33.632374>,  <34.304047, 37.987854, 33.724003>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.135281, 37.843903, 33.632374>,  <33.854008, 37.603981, 33.479656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.135281, 37.843903, 33.632374> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286393, -0.730428, 0.620044,
		0.650777, -0.326663, -0.685406,
		0.703185, 0.599806, 0.381791,
		34.346237, 38.023846, 33.746910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.424229, 37.152443, 33.518219>,  <33.854008, 37.603981, 33.479656>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.424229, 37.152443, 33.518219> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.509586, 37.461597, 33.757256>,  <34.560799, 37.647091, 33.900677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.509586, 37.461597, 33.757256>,  <34.424229, 37.152443, 33.518219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.509586, 37.461597, 33.757256> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365624, -0.630406, 0.684769,
		0.905971, 0.072369, -0.417109,
		0.213392, 0.772885, 0.597589,
		34.573605, 37.693462, 33.936531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.051945, 36.929478, 33.761475>,  <34.424229, 37.152443, 33.518219>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.051945, 36.929478, 33.761475> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.916569, 37.212891, 34.009167>,  <34.835342, 37.382938, 34.157780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.916569, 37.212891, 34.009167>,  <35.051945, 36.929478, 33.761475>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.916569, 37.212891, 34.009167> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439856, -0.462623, 0.769745,
		0.831858, 0.532881, -0.155083,
		-0.338437, 0.708532, 0.619227,
		34.815037, 37.425449, 34.194935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.691467, 37.108948, 34.199738>,  <35.051945, 36.929478, 33.761475>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.691467, 37.108948, 34.199738> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.376770, 37.271095, 34.385944>,  <35.187950, 37.368382, 34.497669>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.376770, 37.271095, 34.385944>,  <35.691467, 37.108948, 34.199738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.376770, 37.271095, 34.385944> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352503, -0.324041, 0.877917,
		0.506724, 0.854796, 0.112045,
		-0.786748, 0.405366, 0.465518,
		35.140747, 37.392704, 34.525600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.934593, 37.627018, 34.725800>,  <35.691467, 37.108948, 34.199738>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.934593, 37.627018, 34.725800> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.583729, 37.450161, 34.800735>,  <35.373211, 37.344048, 34.845695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.583729, 37.450161, 34.800735>,  <35.934593, 37.627018, 34.725800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.583729, 37.450161, 34.800735> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404736, -0.470810, 0.783918,
		-0.258399, 0.763447, 0.591927,
		-0.877165, -0.442138, 0.187338,
		35.320580, 37.317520, 34.856937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<33.537189, 42.886303, 29.191719> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.243359, 42.625374, 29.266409>,  <33.067059, 42.468815, 29.311224>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.243359, 42.625374, 29.266409>,  <33.537189, 42.886303, 29.191719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.243359, 42.625374, 29.266409> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351973, -0.131066, 0.926788,
		-0.580091, 0.746523, 0.325878,
		-0.734581, -0.652322, 0.186726,
		33.022984, 42.429676, 29.322428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.383553, 42.986446, 29.930170>,  <33.537189, 42.886303, 29.191719>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.383553, 42.986446, 29.930170> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.248184, 42.620434, 29.842365>,  <33.166962, 42.400826, 29.789682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.248184, 42.620434, 29.842365>,  <33.383553, 42.986446, 29.930170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.248184, 42.620434, 29.842365> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351659, -0.339356, 0.872452,
		-0.872816, 0.218062, 0.436624,
		-0.338420, -0.915033, -0.219512,
		33.146660, 42.345924, 29.776512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.429462, 42.597958, 30.487318>,  <33.383553, 42.986446, 29.930170>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.429462, 42.597958, 30.487318> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.351608, 42.288273, 30.246416>,  <33.304897, 42.102463, 30.101875>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.351608, 42.288273, 30.246416>,  <33.429462, 42.597958, 30.487318>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.351608, 42.288273, 30.246416> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357882, -0.627721, 0.691293,
		-0.913257, -0.080989, 0.399252,
		-0.194631, -0.774214, -0.602256,
		33.293221, 42.056007, 30.065739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.194096, 42.066818, 31.052948>,  <33.429462, 42.597958, 30.487318>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.194096, 42.066818, 31.052948> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.275013, 41.902573, 30.697313>,  <33.323563, 41.804028, 30.483932>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.275013, 41.902573, 30.697313>,  <33.194096, 42.066818, 31.052948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.275013, 41.902573, 30.697313> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288038, -0.842754, 0.454752,
		-0.936008, -0.348085, -0.052215,
		0.202297, -0.410612, -0.889086,
		33.335701, 41.779388, 30.430588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.886127, 41.446941, 31.164755>,  <33.194096, 42.066818, 31.052948>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.886127, 41.446941, 31.164755> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.152184, 41.408230, 30.868586>,  <33.311817, 41.385002, 30.690884>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.152184, 41.408230, 30.868586>,  <32.886127, 41.446941, 31.164755>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.152184, 41.408230, 30.868586> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285689, -0.883144, 0.372072,
		-0.689905, -0.459010, -0.559768,
		0.665141, -0.096774, -0.740420,
		33.351727, 41.379196, 30.646460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.755302, 40.851017, 30.796673>,  <32.886127, 41.446941, 31.164755>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.755302, 40.851017, 30.796673> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.139679, 40.941669, 30.733135>,  <33.370304, 40.996059, 30.695013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.139679, 40.941669, 30.733135>,  <32.755302, 40.851017, 30.796673>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.139679, 40.941669, 30.733135> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262442, -0.928389, 0.263094,
		-0.087846, -0.294506, -0.951604,
		0.960941, 0.226629, -0.158846,
		33.427959, 41.009659, 30.685482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.161713, 40.261604, 30.330374>,  <32.755302, 40.851017, 30.796673>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.161713, 40.261604, 30.330374> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.411652, 40.451653, 30.578190>,  <33.561615, 40.565681, 30.726879>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.411652, 40.451653, 30.578190>,  <33.161713, 40.261604, 30.330374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.411652, 40.451653, 30.578190> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343216, -0.879890, 0.328629,
		0.701265, 0.007294, -0.712864,
		0.624844, 0.475122, 0.619539,
		33.599106, 40.594189, 30.764051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.693382, 39.787529, 30.424532>,  <33.161713, 40.261604, 30.330374>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.693382, 39.787529, 30.424532> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.784424, 40.063030, 30.699869>,  <33.839046, 40.228333, 30.865070>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.784424, 40.063030, 30.699869>,  <33.693382, 39.787529, 30.424532>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.784424, 40.063030, 30.699869> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403447, -0.710066, 0.577093,
		0.886244, 0.146363, -0.439487,
		0.227600, 0.688755, 0.688342,
		33.852703, 40.269657, 30.906372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.475567, 39.626877, 30.656271>,  <33.693382, 39.787529, 30.424532>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.475567, 39.626877, 30.656271> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.287174, 39.842609, 30.935499>,  <34.174137, 39.972050, 31.103035>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.287174, 39.842609, 30.935499>,  <34.475567, 39.626877, 30.656271>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.287174, 39.842609, 30.935499> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175824, -0.718063, 0.673403,
		0.864442, 0.439900, 0.243369,
		-0.470984, 0.539328, 0.698068,
		34.145878, 40.004406, 31.144920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.090660, 40.144550, 30.637154>,  <34.475567, 39.626877, 30.656271>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.090660, 40.144550, 30.637154> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.363766, 39.935329, 30.433092>,  <35.527630, 39.809799, 30.310656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.363766, 39.935329, 30.433092>,  <35.090660, 40.144550, 30.637154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.363766, 39.935329, 30.433092> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310266, 0.424587, -0.850565,
		0.661492, 0.739016, 0.127607,
		0.682761, -0.523050, -0.510153,
		35.568596, 39.778416, 30.280046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.310555, 40.598145, 30.199636>,  <35.090660, 40.144550, 30.637154>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.310555, 40.598145, 30.199636> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.437767, 40.257050, 30.033892>,  <35.514095, 40.052391, 29.934444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.437767, 40.257050, 30.033892>,  <35.310555, 40.598145, 30.199636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.437767, 40.257050, 30.033892> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268783, 0.338027, -0.901939,
		0.909181, 0.398219, -0.121697,
		0.318033, -0.852736, -0.414362,
		35.533176, 40.001228, 29.909582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.769577, 40.786346, 29.592951>,  <35.310555, 40.598145, 30.199636>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.769577, 40.786346, 29.592951> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.655319, 40.408165, 29.530304>,  <35.586765, 40.181255, 29.492716>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.655319, 40.408165, 29.530304>,  <35.769577, 40.786346, 29.592951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.655319, 40.408165, 29.530304> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297317, 0.242789, -0.923394,
		0.911048, -0.217199, -0.350450,
		-0.285645, -0.945451, -0.156615,
		35.569626, 40.124531, 29.483320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.875050, 40.644783, 28.951500>,  <35.769577, 40.786346, 29.592951>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.875050, 40.644783, 28.951500> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.602116, 40.362255, 29.026894>,  <35.438354, 40.192738, 29.072130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.602116, 40.362255, 29.026894>,  <35.875050, 40.644783, 28.951500>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.602116, 40.362255, 29.026894> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439966, 0.190865, -0.877497,
		0.583821, -0.681673, -0.440992,
		-0.682336, -0.706323, 0.188482,
		35.397415, 40.150360, 29.083439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.861492, 40.186455, 28.353518>,  <35.875050, 40.644783, 28.951500>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.861492, 40.186455, 28.353518> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.506397, 40.129414, 28.528599>,  <35.293339, 40.095188, 28.633648>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.506397, 40.129414, 28.528599>,  <35.861492, 40.186455, 28.353518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.506397, 40.129414, 28.528599> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460340, 0.269332, -0.845900,
		0.002736, -0.952432, -0.304740,
		-0.887739, -0.142598, 0.437705,
		35.240074, 40.086636, 28.659910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.503670, 39.796001, 27.885044>,  <35.861492, 40.186455, 28.353518>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.503670, 39.796001, 27.885044> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.233074, 39.970280, 28.122540>,  <35.070717, 40.074848, 28.265038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.233074, 39.970280, 28.122540>,  <35.503670, 39.796001, 27.885044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.233074, 39.970280, 28.122540> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570835, 0.199166, -0.796543,
		-0.465307, -0.877780, 0.113979,
		-0.676489, 0.435700, 0.593741,
		35.030128, 40.100990, 28.300661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.916550, 39.497269, 27.761786>,  <35.503670, 39.796001, 27.885044>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.916550, 39.497269, 27.761786> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.823864, 39.858788, 27.905706>,  <34.768253, 40.075699, 27.992058>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.823864, 39.858788, 27.905706>,  <34.916550, 39.497269, 27.761786>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.823864, 39.858788, 27.905706> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557195, 0.179872, -0.810666,
		-0.797397, -0.388322, 0.461913,
		-0.231714, 0.903798, 0.359801,
		34.754349, 40.129929, 28.013647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.285973, 39.603771, 27.428156>,  <34.916550, 39.497269, 27.761786>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.285973, 39.603771, 27.428156> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.398403, 39.953171, 27.587151>,  <34.465862, 40.162811, 27.682549>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.398403, 39.953171, 27.587151>,  <34.285973, 39.603771, 27.428156>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.398403, 39.953171, 27.587151> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238325, 0.464742, -0.852769,
		-0.929623, 0.144960, 0.338804,
		0.281074, 0.873499, 0.397487,
		34.482727, 40.215221, 27.706396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.676777, 39.988632, 27.176668>,  <34.285973, 39.603771, 27.428156>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.676777, 39.988632, 27.176668> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.977394, 40.234669, 27.272032>,  <34.157764, 40.382290, 27.329250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.977394, 40.234669, 27.272032>,  <33.676777, 39.988632, 27.176668>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.977394, 40.234669, 27.272032> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241198, 0.592592, -0.768542,
		-0.614004, 0.520091, 0.593720,
		0.751546, 0.615093, 0.238409,
		34.202858, 40.419197, 27.343555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.353821, 40.582409, 27.187822>,  <33.676777, 39.988632, 27.176668>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.353821, 40.582409, 27.187822> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.743820, 40.663673, 27.151827>,  <33.977821, 40.712433, 27.130230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.743820, 40.663673, 27.151827>,  <33.353821, 40.582409, 27.187822>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.743820, 40.663673, 27.151827> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215733, 0.768570, -0.602295,
		-0.053199, 0.606652, 0.793185,
		0.975002, 0.203158, -0.089988,
		34.036320, 40.724621, 27.124830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.476387, 41.348782, 27.214273>,  <33.353821, 40.582409, 27.187822>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.476387, 41.348782, 27.214273> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.809105, 41.211769, 27.039553>,  <34.008736, 41.129562, 26.934721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.809105, 41.211769, 27.039553>,  <33.476387, 41.348782, 27.214273>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.809105, 41.211769, 27.039553> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099053, 0.682683, -0.723970,
		0.546177, 0.645460, 0.533922,
		0.831793, -0.342529, -0.436801,
		34.058643, 41.109009, 26.908512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.871338, 42.009151, 26.983440>,  <33.476387, 41.348782, 27.214273>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.871338, 42.009151, 26.983440> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.024010, 41.701397, 26.778557>,  <34.115612, 41.516743, 26.655626>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.024010, 41.701397, 26.778557>,  <33.871338, 42.009151, 26.983440>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.024010, 41.701397, 26.778557> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052826, 0.571418, -0.818958,
		0.922782, 0.285525, 0.258744,
		0.381683, -0.769388, -0.512211,
		34.138515, 41.470581, 26.624893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.460564, 42.201092, 26.688658>,  <33.871338, 42.009151, 26.983440>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.460564, 42.201092, 26.688658> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.388676, 41.865913, 26.482533>,  <34.345543, 41.664806, 26.358858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.388676, 41.865913, 26.482533>,  <34.460564, 42.201092, 26.688658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.388676, 41.865913, 26.482533> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034008, 0.518237, -0.854561,
		0.983129, -0.171108, -0.064642,
		-0.179722, -0.837946, -0.515313,
		34.334759, 41.614529, 26.327938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.992973, 42.121643, 26.208319>,  <34.460564, 42.201092, 26.688658>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.992973, 42.121643, 26.208319> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.669682, 41.937943, 26.060883>,  <34.475708, 41.827721, 25.972420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.669682, 41.937943, 26.060883>,  <34.992973, 42.121643, 26.208319>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.669682, 41.937943, 26.060883> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031966, 0.659221, -0.751270,
		0.588004, -0.595413, -0.547480,
		-0.808226, -0.459251, -0.368592,
		34.427216, 41.800167, 25.950304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<27.544619, 37.856895, 26.196007> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.797594, 38.115330, 26.366936>,  <27.949379, 38.270390, 26.469492>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.797594, 38.115330, 26.366936>,  <27.544619, 37.856895, 26.196007>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.797594, 38.115330, 26.366936> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326256, -0.722513, 0.609534,
		0.702553, -0.246076, -0.667732,
		0.632437, 0.646081, 0.427320,
		27.987326, 38.309155, 26.495132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.091774, 37.499535, 26.288517>,  <27.544619, 37.856895, 26.196007>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.091774, 37.499535, 26.288517> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.143099, 37.785011, 26.563961>,  <28.173895, 37.956295, 26.729227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.143099, 37.785011, 26.563961>,  <28.091774, 37.499535, 26.288517>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.143099, 37.785011, 26.563961> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289860, -0.691020, 0.662173,
		0.948429, 0.114634, -0.295537,
		0.128314, 0.713688, 0.688611,
		28.181593, 37.999119, 26.770544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.714989, 37.251575, 26.650578>,  <28.091774, 37.499535, 26.288517>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.714989, 37.251575, 26.650578> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.546127, 37.525711, 26.887928>,  <28.444811, 37.690193, 27.030338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.546127, 37.525711, 26.887928>,  <28.714989, 37.251575, 26.650578>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.546127, 37.525711, 26.887928> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317643, -0.501235, 0.804901,
		0.849053, 0.528272, -0.006096,
		-0.422152, 0.685341, 0.593377,
		28.419481, 37.731312, 27.065941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.217892, 37.596779, 27.136702>,  <28.714989, 37.251575, 26.650578>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.217892, 37.596779, 27.136702> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.870512, 37.645206, 27.329008>,  <28.662085, 37.674263, 27.444393>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.870512, 37.645206, 27.329008>,  <29.217892, 37.596779, 27.136702>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.870512, 37.645206, 27.329008> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421875, -0.328902, 0.844894,
		0.260417, 0.936571, 0.234558,
		-0.868449, 0.121071, 0.480767,
		28.609978, 37.681526, 27.473238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.429171, 37.912010, 27.733683>,  <29.217892, 37.596779, 27.136702>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.429171, 37.912010, 27.733683> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.064711, 37.782230, 27.835300>,  <28.846035, 37.704361, 27.896271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.064711, 37.782230, 27.835300>,  <29.429171, 37.912010, 27.733683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.064711, 37.782230, 27.835300> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352358, -0.293784, 0.888558,
		-0.213659, 0.899123, 0.382004,
		-0.911150, -0.324451, 0.254043,
		28.791367, 37.684895, 27.911514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.214067, 38.203289, 28.400175>,  <29.429171, 37.912010, 27.733683>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.214067, 38.203289, 28.400175> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.001915, 37.867966, 28.349680>,  <28.874624, 37.666771, 28.319384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.001915, 37.867966, 28.349680>,  <29.214067, 38.203289, 28.400175>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.001915, 37.867966, 28.349680> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253384, -0.298856, 0.920044,
		-0.809007, 0.455989, 0.370921,
		-0.530382, -0.838307, -0.126237,
		28.842800, 37.616474, 28.311810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.952053, 38.070808, 29.037613>,  <29.214067, 38.203289, 28.400175>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.952053, 38.070808, 29.037613> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.867184, 37.716087, 28.873384>,  <28.816261, 37.503254, 28.774847>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.867184, 37.716087, 28.873384>,  <28.952053, 38.070808, 29.037613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.867184, 37.716087, 28.873384> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260290, -0.456241, 0.850937,
		-0.941930, 0.073679, 0.327628,
		-0.212173, -0.886801, -0.410569,
		28.803532, 37.450047, 28.750214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.498562, 37.561359, 29.530804>,  <28.952053, 38.070808, 29.037613>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.498562, 37.561359, 29.530804> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.687012, 37.332241, 29.262491>,  <28.800081, 37.194771, 29.101503>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.687012, 37.332241, 29.262491>,  <28.498562, 37.561359, 29.530804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.687012, 37.332241, 29.262491> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269312, -0.630747, 0.727756,
		-0.839949, -0.523513, -0.142900,
		0.471124, -0.572793, -0.670783,
		28.828348, 37.160404, 29.061256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.414389, 36.916916, 29.695204>,  <28.498562, 37.561359, 29.530804>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.414389, 36.916916, 29.695204> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.747423, 36.885025, 29.475954>,  <28.947245, 36.865891, 29.344404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.747423, 36.885025, 29.475954>,  <28.414389, 36.916916, 29.695204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.747423, 36.885025, 29.475954> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339083, -0.709117, 0.618204,
		-0.437972, -0.700569, -0.563368,
		0.832588, -0.079728, -0.548124,
		28.997200, 36.861107, 29.311518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.562197, 36.168056, 29.642872>,  <28.414389, 36.916916, 29.695204>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.562197, 36.168056, 29.642872> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.905931, 36.354179, 29.557995>,  <29.112173, 36.465855, 29.507069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.905931, 36.354179, 29.557995>,  <28.562197, 36.168056, 29.642872>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.905931, 36.354179, 29.557995> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465305, -0.539217, 0.701952,
		0.212207, -0.701948, -0.679880,
		0.859336, 0.465310, -0.212195,
		29.163733, 36.493774, 29.494337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.112583, 35.641918, 29.675341>,  <28.562197, 36.168056, 29.642872>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.112583, 35.641918, 29.675341> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.355051, 35.960030, 29.679043>,  <29.500532, 36.150898, 29.681265>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.355051, 35.960030, 29.679043>,  <29.112583, 35.641918, 29.675341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.355051, 35.960030, 29.679043> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578847, -0.449125, 0.680605,
		0.545429, -0.407205, -0.732592,
		0.606171, 0.795280, 0.009257,
		29.536901, 36.198612, 29.681820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.744144, 35.359478, 29.604807>,  <29.112583, 35.641918, 29.675341>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.744144, 35.359478, 29.604807> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.803814, 35.724403, 29.757345>,  <29.839615, 35.943359, 29.848867>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.803814, 35.724403, 29.757345>,  <29.744144, 35.359478, 29.604807>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.803814, 35.724403, 29.757345> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586342, -0.392155, 0.708814,
		0.796210, 0.117862, -0.593429,
		0.149174, 0.912317, 0.381345,
		29.848566, 35.998100, 29.871748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.427967, 35.398602, 29.672098>,  <29.744144, 35.359478, 29.604807>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.427967, 35.398602, 29.672098> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.287407, 35.664822, 29.935478>,  <30.203072, 35.824554, 30.093506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.287407, 35.664822, 29.935478>,  <30.427967, 35.398602, 29.672098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.287407, 35.664822, 29.935478> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573621, -0.402780, 0.713251,
		0.739918, 0.628337, -0.240239,
		-0.351399, 0.665553, 0.658451,
		30.181988, 35.864487, 30.133013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.033642, 35.668259, 30.120132>,  <30.427967, 35.398602, 29.672098>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.033642, 35.668259, 30.120132> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.693007, 35.735233, 30.318832>,  <30.488625, 35.775417, 30.438053>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.693007, 35.735233, 30.318832>,  <31.033642, 35.668259, 30.120132>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.693007, 35.735233, 30.318832> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430264, -0.318052, 0.844817,
		0.299448, 0.933170, 0.198806,
		-0.851589, 0.167439, 0.496749,
		30.437531, 35.785465, 30.467857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.463377, 36.253033, 30.120882>,  <31.033642, 35.668259, 30.120132>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.463377, 36.253033, 30.120882> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.722284, 36.033508, 29.909279>,  <31.877628, 35.901794, 29.782316>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.722284, 36.033508, 29.909279>,  <31.463377, 36.253033, 30.120882>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.722284, 36.033508, 29.909279> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376064, 0.373751, -0.847871,
		0.663038, 0.747742, 0.035530,
		0.647268, -0.548810, -0.529010,
		31.916464, 35.868866, 29.750576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.813770, 36.744827, 29.491131>,  <31.463377, 36.253033, 30.120882>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.813770, 36.744827, 29.491131> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.892176, 36.371166, 29.371841>,  <31.939219, 36.146969, 29.300268>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.892176, 36.371166, 29.371841>,  <31.813770, 36.744827, 29.491131>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.892176, 36.371166, 29.371841> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073936, 0.289177, -0.954416,
		0.977809, 0.209130, -0.012385,
		0.196016, -0.934152, -0.298223,
		31.950981, 36.090919, 29.282375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.486408, 36.800518, 29.073559>,  <31.813770, 36.744827, 29.491131>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.486408, 36.800518, 29.073559> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.301605, 36.464012, 28.961258>,  <32.190723, 36.262108, 28.893877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.301605, 36.464012, 28.961258>,  <32.486408, 36.800518, 29.073559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.301605, 36.464012, 28.961258> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159242, 0.390109, -0.906894,
		0.872463, -0.374284, -0.314198,
		-0.462007, -0.841265, -0.280754,
		32.163002, 36.211632, 28.877031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.862743, 36.513771, 28.385197>,  <32.486408, 36.800518, 29.073559>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.862743, 36.513771, 28.385197> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.501350, 36.346973, 28.424852>,  <32.284515, 36.246895, 28.448645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.501350, 36.346973, 28.424852>,  <32.862743, 36.513771, 28.385197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.501350, 36.346973, 28.424852> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139252, 0.066822, -0.988000,
		0.405366, -0.906449, -0.118440,
		-0.903486, -0.416995, 0.099137,
		32.230305, 36.221874, 28.454594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.760860, 36.055809, 27.769802>,  <32.862743, 36.513771, 28.385197>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.760860, 36.055809, 27.769802> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.407043, 36.152634, 27.929300>,  <32.194756, 36.210728, 28.025000>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.407043, 36.152634, 27.929300>,  <32.760860, 36.055809, 27.769802>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.407043, 36.152634, 27.929300> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355239, 0.204457, -0.912142,
		-0.302317, -0.948475, -0.094862,
		-0.884539, 0.242057, 0.398746,
		32.141682, 36.225250, 28.048923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.291008, 35.825527, 27.224154>,  <32.760860, 36.055809, 27.769802>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.291008, 35.825527, 27.224154> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.072933, 36.056519, 27.467228>,  <31.942087, 36.195114, 27.613073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.072933, 36.056519, 27.467228>,  <32.291008, 35.825527, 27.224154>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.072933, 36.056519, 27.467228> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486041, 0.372874, -0.790398,
		-0.683032, -0.726277, 0.077394,
		-0.545189, 0.577483, 0.607685,
		31.909376, 36.229763, 27.649534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.601282, 35.753902, 26.998552>,  <32.291008, 35.825527, 27.224154>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.601282, 35.753902, 26.998552> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.599863, 36.096684, 27.204708>,  <31.599012, 36.302353, 27.328402>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.599863, 36.096684, 27.204708>,  <31.601282, 35.753902, 26.998552>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.599863, 36.096684, 27.204708> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565630, 0.423304, -0.707727,
		-0.824652, -0.294030, 0.483214,
		-0.003546, 0.856948, 0.515390,
		31.598799, 36.353767, 27.359325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.995071, 36.019222, 26.816891>,  <31.601282, 35.753902, 26.998552>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.995071, 36.019222, 26.816891> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.205996, 36.326653, 26.961798>,  <31.332550, 36.511108, 27.048742>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.205996, 36.326653, 26.961798>,  <30.995071, 36.019222, 26.816891>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.205996, 36.326653, 26.961798> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349711, 0.584893, -0.731849,
		-0.774367, 0.259222, 0.577199,
		0.527311, 0.768573, 0.362269,
		31.364189, 36.557224, 27.070478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.510134, 36.531696, 26.756489>,  <30.995071, 36.019222, 26.816891>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.510134, 36.531696, 26.756489> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.858246, 36.725937, 26.789476>,  <31.067114, 36.842480, 26.809269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.858246, 36.725937, 26.789476>,  <30.510134, 36.531696, 26.756489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.858246, 36.725937, 26.789476> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340467, 0.714061, -0.611718,
		-0.355938, 0.504289, 0.786766,
		0.870282, 0.485602, 0.082468,
		31.119329, 36.871616, 26.814217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.294596, 37.138401, 26.701281>,  <30.510134, 36.531696, 26.756489>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.294596, 37.138401, 26.701281> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.681479, 37.173717, 26.606022>,  <30.913609, 37.194908, 26.548866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.681479, 37.173717, 26.606022>,  <30.294596, 37.138401, 26.701281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.681479, 37.173717, 26.606022> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235802, 0.660567, -0.712775,
		0.094381, 0.745557, 0.659724,
		0.967207, 0.088292, -0.238149,
		30.971642, 37.200207, 26.534576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.512482, 37.897442, 26.768736>,  <30.294596, 37.138401, 26.701281>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.512482, 37.897442, 26.768736> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.771868, 37.707436, 26.530792>,  <30.927500, 37.593433, 26.388025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.771868, 37.707436, 26.530792>,  <30.512482, 37.897442, 26.768736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.771868, 37.707436, 26.530792> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176106, 0.666621, -0.724295,
		0.740595, 0.574437, 0.348627,
		0.648464, -0.475014, -0.594859,
		30.966408, 37.564930, 26.352335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.857847, 38.414085, 26.421192>,  <30.512482, 37.897442, 26.768736>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.857847, 38.414085, 26.421192> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.943331, 38.094276, 26.196657>,  <30.994621, 37.902393, 26.061937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.943331, 38.094276, 26.196657>,  <30.857847, 38.414085, 26.421192>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.943331, 38.094276, 26.196657> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200440, 0.526498, -0.826210,
		0.956113, 0.289082, -0.047739,
		0.213708, -0.799519, -0.561336,
		31.007442, 37.854420, 26.028257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.362190, 38.658794, 25.855852>,  <30.857847, 38.414085, 26.421192>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.362190, 38.658794, 25.855852> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.164734, 38.333313, 25.733082>,  <31.046261, 38.138023, 25.659420>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.164734, 38.333313, 25.733082>,  <31.362190, 38.658794, 25.855852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.164734, 38.333313, 25.733082> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298406, 0.489982, -0.819068,
		0.816867, -0.312736, -0.484689,
		-0.493641, -0.813704, -0.306928,
		31.016642, 38.089203, 25.641003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.570032, 38.648327, 25.149891>,  <31.362190, 38.658794, 25.855852>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.570032, 38.648327, 25.149891> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.232410, 38.444824, 25.217697>,  <31.029837, 38.322723, 25.258381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.232410, 38.444824, 25.217697>,  <31.570032, 38.648327, 25.149891>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.232410, 38.444824, 25.217697> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427274, 0.447020, -0.785881,
		0.324045, -0.735758, -0.594689,
		-0.844057, -0.508756, 0.169516,
		30.979195, 38.292198, 25.268551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.082081, 38.571079, 24.638813>,  <31.570032, 38.648327, 25.149891>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.082081, 38.571079, 24.638813> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.394314, 38.803650, 24.547043>,  <32.581654, 38.943192, 24.491982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.394314, 38.803650, 24.547043>,  <32.082081, 38.571079, 24.638813>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.394314, 38.803650, 24.547043> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494187, -0.349337, 0.796079,
		0.382712, -0.734786, -0.560019,
		0.780583, 0.581424, -0.229426,
		32.628490, 38.978077, 24.478214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.687202, 38.208523, 24.771473>,  <32.082081, 38.571079, 24.638813>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.687202, 38.208523, 24.771473> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.836647, 38.579350, 24.759085>,  <32.926315, 38.801846, 24.751652>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.836647, 38.579350, 24.759085>,  <32.687202, 38.208523, 24.771473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.836647, 38.579350, 24.759085> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698975, -0.259430, 0.666430,
		0.609791, -0.270635, -0.744924,
		0.373615, 0.927067, -0.030969,
		32.948730, 38.857468, 24.749794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.420109, 38.080387, 24.712837>,  <32.687202, 38.208523, 24.771473>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.420109, 38.080387, 24.712837> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.369099, 38.448158, 24.861639>,  <33.338493, 38.668819, 24.950920>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.369099, 38.448158, 24.861639>,  <33.420109, 38.080387, 24.712837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.369099, 38.448158, 24.861639> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687644, -0.188330, 0.701197,
		0.714760, 0.345228, -0.608223,
		-0.127527, 0.919429, 0.372005,
		33.330841, 38.723988, 24.973240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.106155, 38.395245, 24.817581>,  <33.420109, 38.080387, 24.712837>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.106155, 38.395245, 24.817581> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.842342, 38.584312, 25.051369>,  <33.684055, 38.697754, 25.191641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.842342, 38.584312, 25.051369>,  <34.106155, 38.395245, 24.817581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.842342, 38.584312, 25.051369> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568786, -0.194527, 0.799151,
		0.491430, 0.859501, -0.140552,
		-0.659530, 0.472670, 0.584468,
		33.644482, 38.726112, 25.226709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.495037, 38.926811, 25.162580>,  <34.106155, 38.395245, 24.817581>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.495037, 38.926811, 25.162580> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.167915, 38.853821, 25.380901>,  <33.971642, 38.810028, 25.511894>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.167915, 38.853821, 25.380901>,  <34.495037, 38.926811, 25.162580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.167915, 38.853821, 25.380901> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575493, -0.256153, 0.776655,
		-0.001913, 0.949256, 0.314497,
		-0.817804, -0.182477, 0.545801,
		33.922573, 38.799076, 25.544641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.599640, 39.190971, 25.771753>,  <34.495037, 38.926811, 25.162580>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.599640, 39.190971, 25.771753> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.312843, 38.925911, 25.858301>,  <34.140766, 38.766872, 25.910229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.312843, 38.925911, 25.858301>,  <34.599640, 39.190971, 25.771753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.312843, 38.925911, 25.858301> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573493, -0.384285, 0.723485,
		-0.396274, 0.642817, 0.655556,
		-0.716989, -0.662655, 0.216369,
		34.097748, 38.727116, 25.923212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.686150, 39.130146, 26.469925>,  <34.599640, 39.190971, 25.771753>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.686150, 39.130146, 26.469925> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.473320, 38.797413, 26.406744>,  <34.345623, 38.597775, 26.368835>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.473320, 38.797413, 26.406744>,  <34.686150, 39.130146, 26.469925>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.473320, 38.797413, 26.406744> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539737, -0.476958, 0.693682,
		-0.652364, 0.283839, 0.702749,
		-0.532076, -0.831833, -0.157952,
		34.313698, 38.547863, 26.359358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.694458, 38.888130, 27.102753>,  <34.686150, 39.130146, 26.469925>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.694458, 38.888130, 27.102753> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.552368, 38.593777, 26.872173>,  <34.467113, 38.417164, 26.733826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.552368, 38.593777, 26.872173>,  <34.694458, 38.888130, 27.102753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.552368, 38.593777, 26.872173> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314308, -0.674790, 0.667735,
		-0.880355, 0.056014, 0.470996,
		-0.355225, -0.735881, -0.576449,
		34.445801, 38.373013, 26.699238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.180241, 38.411823, 27.522955>,  <34.694458, 38.888130, 27.102753>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.180241, 38.411823, 27.522955> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.368191, 38.241035, 27.213915>,  <34.480961, 38.138561, 27.028490>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.368191, 38.241035, 27.213915>,  <34.180241, 38.411823, 27.522955>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.368191, 38.241035, 27.213915> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337305, -0.721976, 0.604132,
		-0.815748, -0.544468, -0.195217,
		0.469872, -0.426972, -0.772603,
		34.509151, 38.112946, 26.982134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.981236, 37.745003, 27.600559>,  <34.180241, 38.411823, 27.522955>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.981236, 37.745003, 27.600559> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.309792, 37.780426, 27.375177>,  <34.506924, 37.801682, 27.239948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.309792, 37.780426, 27.375177>,  <33.981236, 37.745003, 27.600559>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.309792, 37.780426, 27.375177> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441279, -0.724576, 0.529399,
		-0.361385, -0.683482, -0.634234,
		0.821385, 0.088557, -0.563457,
		34.556206, 37.806992, 27.206141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.225616, 37.153168, 27.710707>,  <33.981236, 37.745003, 27.600559>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.225616, 37.153168, 27.710707> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.545876, 37.325298, 27.543959>,  <34.738033, 37.428577, 27.443911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.545876, 37.325298, 27.543959>,  <34.225616, 37.153168, 27.710707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.545876, 37.325298, 27.543959> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581536, -0.725563, 0.367931,
		-0.144136, -0.537009, -0.831171,
		0.800650, 0.430324, -0.416871,
		34.786072, 37.454395, 27.418898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.505840, 36.784756, 27.185106>,  <34.225616, 37.153168, 27.710707>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.505840, 36.784756, 27.185106> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.804855, 36.993820, 27.349066>,  <34.984264, 37.119259, 27.447441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.804855, 36.993820, 27.349066>,  <34.505840, 36.784756, 27.185106>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.804855, 36.993820, 27.349066> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364153, -0.838591, 0.405165,
		0.555501, -0.153609, -0.817204,
		0.747537, 0.522657, 0.409901,
		35.029118, 37.150616, 27.472036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.040943, 36.350586, 27.216742>,  <34.505840, 36.784756, 27.185106>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.040943, 36.350586, 27.216742> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.226269, 36.645142, 27.413954>,  <35.337463, 36.821873, 27.532282>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.226269, 36.645142, 27.413954>,  <35.040943, 36.350586, 27.216742>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.226269, 36.645142, 27.413954> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560733, -0.674412, 0.480362,
		0.686238, 0.053902, -0.725377,
		0.463310, 0.736385, 0.493031,
		35.365261, 36.866058, 27.561863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.840858, 36.249065, 27.273521>,  <35.040943, 36.350586, 27.216742>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.840858, 36.249065, 27.273521> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.761692, 36.486427, 27.585598>,  <35.714191, 36.628845, 27.772844>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.761692, 36.486427, 27.585598>,  <35.840858, 36.249065, 27.273521>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.761692, 36.486427, 27.585598> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575646, -0.573864, 0.582505,
		0.793386, 0.564401, -0.228015,
		-0.197917, 0.593407, 0.780191,
		35.702316, 36.664448, 27.819654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.975372, 41.815334, 24.956514> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.622322, 41.806576, 25.144342>,  <34.410492, 41.801319, 25.257038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.622322, 41.806576, 25.144342>,  <34.975372, 41.815334, 24.956514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.622322, 41.806576, 25.144342> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459682, 0.249126, -0.852425,
		-0.098319, -0.968224, -0.229949,
		-0.882625, -0.021894, 0.469568,
		34.357536, 41.800007, 25.285213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.525196, 41.468945, 24.518650>,  <34.975372, 41.815334, 24.956514>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.525196, 41.468945, 24.518650> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.293594, 41.687088, 24.761084>,  <34.154633, 41.817974, 24.906544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.293594, 41.687088, 24.761084>,  <34.525196, 41.468945, 24.518650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.293594, 41.687088, 24.761084> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281123, 0.564245, -0.776272,
		-0.765327, -0.619848, -0.173387,
		-0.579004, 0.545358, 0.606085,
		34.119892, 41.850697, 24.942909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.908871, 41.594765, 24.119446>,  <34.525196, 41.468945, 24.518650>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.908871, 41.594765, 24.119446> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.845829, 41.873985, 24.398840>,  <33.808006, 42.041519, 24.566477>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.845829, 41.873985, 24.398840>,  <33.908871, 41.594765, 24.119446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.845829, 41.873985, 24.398840> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463565, 0.572249, -0.676490,
		-0.871935, -0.430408, 0.233407,
		-0.157600, 0.698055, 0.698486,
		33.798550, 42.083401, 24.608385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.192421, 41.772228, 24.014990>,  <33.908871, 41.594765, 24.119446>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.192421, 41.772228, 24.014990> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.333443, 42.075005, 24.235081>,  <33.418056, 42.256668, 24.367134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.333443, 42.075005, 24.235081>,  <33.192421, 41.772228, 24.014990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.333443, 42.075005, 24.235081> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598682, 0.634350, -0.489060,
		-0.719224, -0.156989, 0.676809,
		0.352556, 0.756938, 0.550226,
		33.439209, 42.302086, 24.400148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.645275, 42.073685, 24.444820>,  <33.192421, 41.772228, 24.014990>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.645275, 42.073685, 24.444820> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.930096, 42.339897, 24.355328>,  <33.100986, 42.499626, 24.301632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.930096, 42.339897, 24.355328>,  <32.645275, 42.073685, 24.444820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.930096, 42.339897, 24.355328> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657721, 0.520715, -0.544297,
		-0.245748, 0.534717, 0.808509,
		0.712047, 0.665533, -0.223730,
		33.143711, 42.539558, 24.288208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.284889, 42.714989, 24.436594>,  <32.645275, 42.073685, 24.444820>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.284889, 42.714989, 24.436594> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.638397, 42.785175, 24.263081>,  <32.850502, 42.827286, 24.158972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.638397, 42.785175, 24.263081>,  <32.284889, 42.714989, 24.436594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.638397, 42.785175, 24.263081> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467863, 0.346717, -0.812952,
		0.007758, 0.921412, 0.388509,
		0.883767, 0.175462, -0.433785,
		32.903526, 42.837814, 24.132946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.392384, 43.466770, 24.341326>,  <32.284889, 42.714989, 24.436594>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.392384, 43.466770, 24.341326> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.619827, 43.284634, 24.067289>,  <32.756294, 43.175350, 23.902868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.619827, 43.284634, 24.067289>,  <32.392384, 43.466770, 24.341326>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.619827, 43.284634, 24.067289> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506690, 0.462217, -0.727751,
		0.648036, 0.760933, 0.032102,
		0.568607, -0.455343, -0.685090,
		32.790409, 43.148029, 23.861763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.739223, 43.989349, 23.921507>,  <32.392384, 43.466770, 24.341326>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.739223, 43.989349, 23.921507> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.741528, 43.676304, 23.672516>,  <32.742908, 43.488476, 23.523121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.741528, 43.676304, 23.672516>,  <32.739223, 43.989349, 23.921507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.741528, 43.676304, 23.672516> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629275, 0.480945, -0.610496,
		0.777162, 0.395223, -0.489713,
		0.005757, -0.782618, -0.622476,
		32.743256, 43.441517, 23.485773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.780807, 44.223602, 23.315872>,  <32.739223, 43.989349, 23.921507>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.780807, 44.223602, 23.315872> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.647137, 43.856152, 23.231539>,  <32.566933, 43.635681, 23.180939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.647137, 43.856152, 23.231539>,  <32.780807, 44.223602, 23.315872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.647137, 43.856152, 23.231539> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586711, 0.377819, -0.716257,
		0.737630, -0.115657, -0.665226,
		-0.334175, -0.918628, -0.210833,
		32.546883, 43.580563, 23.168289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.799572, 44.146957, 22.599567>,  <32.780807, 44.223602, 23.315872>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.799572, 44.146957, 22.599567> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.554485, 43.845863, 22.695877>,  <32.407433, 43.665207, 22.753664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.554485, 43.845863, 22.695877>,  <32.799572, 44.146957, 22.599567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.554485, 43.845863, 22.695877> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628330, 0.279188, -0.726123,
		0.479355, -0.596194, -0.644028,
		-0.612715, -0.752733, 0.240776,
		32.370670, 43.620045, 22.768110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.797642, 43.891685, 22.056007>,  <32.799572, 44.146957, 22.599567>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.797642, 43.891685, 22.056007> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.479618, 43.754345, 22.256002>,  <32.288803, 43.671940, 22.375999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.479618, 43.754345, 22.256002>,  <32.797642, 43.891685, 22.056007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.479618, 43.754345, 22.256002> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582523, 0.202642, -0.787149,
		0.168949, -0.917086, -0.361122,
		-0.795062, -0.343350, 0.499988,
		32.241100, 43.651340, 22.405998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.556435, 43.319866, 21.637133>,  <32.797642, 43.891685, 22.056007>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.556435, 43.319866, 21.637133> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.261848, 43.449463, 21.874668>,  <32.085094, 43.527222, 22.017189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.261848, 43.449463, 21.874668>,  <32.556435, 43.319866, 21.637133>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.261848, 43.449463, 21.874668> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637712, -0.039643, -0.769255,
		-0.225691, -0.945229, 0.235809,
		-0.736470, 0.323992, 0.593836,
		32.040909, 43.546661, 22.052818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.121197, 42.784122, 21.682190>,  <32.556435, 43.319866, 21.637133>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.121197, 42.784122, 21.682190> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.916983, 43.120384, 21.754478>,  <31.794455, 43.322140, 21.797852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.916983, 43.120384, 21.754478>,  <32.121197, 42.784122, 21.682190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.916983, 43.120384, 21.754478> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653106, -0.242407, -0.717420,
		-0.559293, -0.484296, 0.672792,
		-0.510533, 0.840652, 0.180720,
		31.763823, 43.372581, 21.808695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.348381, 42.701405, 21.797678>,  <32.121197, 42.784122, 21.682190>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.348381, 42.701405, 21.797678> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.390535, 43.079227, 21.673286>,  <31.415827, 43.305920, 21.598652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.390535, 43.079227, 21.673286>,  <31.348381, 42.701405, 21.797678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.390535, 43.079227, 21.673286> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701126, -0.151193, -0.696823,
		-0.705206, 0.291470, 0.646320,
		0.105384, 0.944556, -0.310980,
		31.422150, 43.362595, 21.579992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.169979, 42.489792, 21.069094>,  <31.348381, 42.701405, 21.797678>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.169979, 42.489792, 21.069094> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.882225, 42.297188, 20.868841>,  <30.709572, 42.181625, 20.748690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.882225, 42.297188, 20.868841>,  <31.169979, 42.489792, 21.069094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.882225, 42.297188, 20.868841> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179198, -0.824992, 0.535981,
		-0.671098, 0.295864, 0.679773,
		-0.719385, -0.481510, -0.500633,
		30.666410, 42.152733, 20.718651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.747719, 42.115883, 21.546452>,  <31.169979, 42.489792, 21.069094>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.747719, 42.115883, 21.546452> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.683857, 41.952335, 21.187044>,  <30.645540, 41.854206, 20.971399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.683857, 41.952335, 21.187044>,  <30.747719, 42.115883, 21.546452>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.683857, 41.952335, 21.187044> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181329, -0.906854, 0.380441,
		-0.970376, -0.102188, 0.218923,
		-0.159655, -0.408868, -0.898519,
		30.635960, 41.829674, 20.917488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.403372, 41.525780, 21.656050>,  <30.747719, 42.115883, 21.546452>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.403372, 41.525780, 21.656050> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.565769, 41.457916, 21.296854>,  <30.663208, 41.417198, 21.081337>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.565769, 41.457916, 21.296854>,  <30.403372, 41.525780, 21.656050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.565769, 41.457916, 21.296854> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384265, -0.859839, 0.336182,
		-0.829163, -0.481553, -0.283893,
		0.405992, -0.169659, -0.897990,
		30.687567, 41.407017, 21.027456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.197142, 40.892040, 21.513859>,  <30.403372, 41.525780, 21.656050>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.197142, 40.892040, 21.513859> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.518013, 40.944614, 21.280882>,  <30.710535, 40.976158, 21.141096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.518013, 40.944614, 21.280882>,  <30.197142, 40.892040, 21.513859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.518013, 40.944614, 21.280882> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363374, -0.881494, 0.301542,
		-0.473785, -0.453534, -0.754874,
		0.802177, 0.131435, -0.582441,
		30.758665, 40.984043, 21.106150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.274054, 40.230656, 21.173738>,  <30.197142, 40.892040, 21.513859>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.274054, 40.230656, 21.173738> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.635895, 40.401054, 21.179680>,  <30.852999, 40.503292, 21.183245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.635895, 40.401054, 21.179680>,  <30.274054, 40.230656, 21.173738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.635895, 40.401054, 21.179680> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389793, -0.840819, 0.375614,
		0.172500, -0.333991, -0.926657,
		0.904602, 0.425998, 0.014854,
		30.907276, 40.528854, 21.184135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.803932, 39.764812, 20.899387>,  <30.274054, 40.230656, 21.173738>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.803932, 39.764812, 20.899387> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.996338, 40.022621, 21.137115>,  <31.111782, 40.177307, 21.279753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.996338, 40.022621, 21.137115>,  <30.803932, 39.764812, 20.899387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.996338, 40.022621, 21.137115> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429496, -0.764213, 0.481156,
		0.764303, 0.023815, -0.644417,
		0.481013, 0.644524, 0.594319,
		31.140642, 40.215977, 21.315411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.514263, 39.360775, 21.025560>,  <30.803932, 39.764812, 20.899387>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.514263, 39.360775, 21.025560> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.481815, 39.672577, 21.274006>,  <31.462347, 39.859657, 21.423073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.481815, 39.672577, 21.274006>,  <31.514263, 39.360775, 21.025560>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.481815, 39.672577, 21.274006> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544468, -0.487316, 0.682699,
		0.834850, 0.393559, -0.384886,
		-0.081121, 0.779509, 0.621116,
		31.457479, 39.906429, 21.460340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.184986, 39.479431, 21.292730>,  <31.514263, 39.360775, 21.025560>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.184986, 39.479431, 21.292730> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.908813, 39.623962, 21.543409>,  <31.743111, 39.710682, 21.693817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.908813, 39.623962, 21.543409>,  <32.184986, 39.479431, 21.292730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.908813, 39.623962, 21.543409> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524179, -0.347149, 0.777640,
		0.498540, 0.865407, 0.050282,
		-0.690430, 0.361328, 0.626696,
		31.701685, 39.732361, 21.731419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.619625, 39.802345, 21.743088>,  <32.184986, 39.479431, 21.292730>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.619625, 39.802345, 21.743088> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.278847, 39.747200, 21.945150>,  <32.074379, 39.714111, 22.066389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.278847, 39.747200, 21.945150>,  <32.619625, 39.802345, 21.743088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.278847, 39.747200, 21.945150> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523418, -0.251828, 0.814012,
		0.014991, 0.957902, 0.286704,
		-0.851944, -0.137863, 0.505158,
		32.023262, 39.705841, 22.096699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.821304, 40.155697, 22.467678>,  <32.619625, 39.802345, 21.743088>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.821304, 40.155697, 22.467678> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.485855, 39.945114, 22.523617>,  <32.284588, 39.818764, 22.557180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.485855, 39.945114, 22.523617>,  <32.821304, 40.155697, 22.467678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.485855, 39.945114, 22.523617> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289117, -0.212602, 0.933387,
		-0.461660, 0.823188, 0.330501,
		-0.838619, -0.526461, 0.139848,
		32.234268, 39.787174, 22.565571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.546921, 40.450790, 23.121786>,  <32.821304, 40.155697, 22.467678>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.546921, 40.450790, 23.121786> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.402523, 40.082596, 23.061939>,  <32.315884, 39.861679, 23.026031>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.402523, 40.082596, 23.061939>,  <32.546921, 40.450790, 23.121786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.402523, 40.082596, 23.061939> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256812, -0.252358, 0.932932,
		-0.896508, 0.298364, 0.327493,
		-0.360999, -0.920486, -0.149618,
		32.294224, 39.806450, 23.017054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.116337, 40.371231, 23.673073>,  <32.546921, 40.450790, 23.121786>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.116337, 40.371231, 23.673073> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.250244, 40.022293, 23.530550>,  <32.330589, 39.812931, 23.445036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.250244, 40.022293, 23.530550>,  <32.116337, 40.371231, 23.673073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.250244, 40.022293, 23.530550> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115819, -0.337166, 0.934294,
		-0.935157, -0.354035, -0.011838,
		0.334764, -0.872341, -0.356307,
		32.350674, 39.760590, 23.423658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.827940, 39.907238, 24.161381>,  <32.116337, 40.371231, 23.673073>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.827940, 39.907238, 24.161381> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.096985, 39.677044, 23.975300>,  <32.258411, 39.538929, 23.863651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.096985, 39.677044, 23.975300>,  <31.827940, 39.907238, 24.161381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.096985, 39.677044, 23.975300> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234686, -0.430308, 0.871641,
		-0.701796, -0.695451, -0.154371,
		0.672611, -0.575485, -0.465201,
		32.298767, 39.504398, 23.835739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.768454, 39.143604, 24.342037>,  <31.827940, 39.907238, 24.161381>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.768454, 39.143604, 24.342037> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.143536, 39.174793, 24.206610>,  <32.368584, 39.193508, 24.125353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.143536, 39.174793, 24.206610>,  <31.768454, 39.143604, 24.342037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.143536, 39.174793, 24.206610> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344949, -0.325224, 0.880477,
		-0.041453, -0.942416, -0.331863,
		0.937706, 0.077977, -0.338567,
		32.424847, 39.198185, 24.105040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.409285, 38.365074, 24.498884>,  <31.768454, 39.143604, 24.342037>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.409285, 38.365074, 24.498884> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.092869, 38.399441, 24.741163>,  <30.903019, 38.420059, 24.886532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.092869, 38.399441, 24.741163>,  <31.409285, 38.365074, 24.498884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.092869, 38.399441, 24.741163> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481899, 0.522415, -0.703460,
		-0.376865, -0.848352, -0.371848,
		-0.791041, 0.085916, 0.605700,
		30.855556, 38.425217, 24.922873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.911190, 38.320793, 24.041088>,  <31.409285, 38.365074, 24.498884>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.911190, 38.320793, 24.041088> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.746511, 38.499409, 24.358858>,  <30.647705, 38.606579, 24.549520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.746511, 38.499409, 24.358858>,  <30.911190, 38.320793, 24.041088>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.746511, 38.499409, 24.358858> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495480, 0.621950, -0.606365,
		-0.764857, -0.643260, -0.034804,
		-0.411697, 0.446538, 0.794425,
		30.623003, 38.633369, 24.597185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.171598, 38.335964, 23.889532>,  <30.911190, 38.320793, 24.041088>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.171598, 38.335964, 23.889532> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.244825, 38.606697, 24.174736>,  <30.288761, 38.769138, 24.345858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.244825, 38.606697, 24.174736>,  <30.171598, 38.335964, 23.889532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.244825, 38.606697, 24.174736> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499950, 0.688574, -0.525276,
		-0.846484, -0.260308, 0.464439,
		0.183067, 0.676835, 0.713008,
		30.299746, 38.809746, 24.388639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.593697, 38.658485, 23.878139>,  <30.171598, 38.335964, 23.889532>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.593697, 38.658485, 23.878139> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.790880, 38.928642, 24.097536>,  <29.909189, 39.090736, 24.229174>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.790880, 38.928642, 24.097536>,  <29.593697, 38.658485, 23.878139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.790880, 38.928642, 24.097536> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543597, 0.731306, -0.411939,
		-0.679335, -0.095091, 0.727642,
		0.492957, 0.675388, 0.548493,
		29.938766, 39.131260, 24.262083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.060410, 39.073353, 24.280502>,  <29.593697, 38.658485, 23.878139>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.060410, 39.073353, 24.280502> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.393568, 39.293179, 24.254389>,  <29.593464, 39.425072, 24.238720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.393568, 39.293179, 24.254389>,  <29.060410, 39.073353, 24.280502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.393568, 39.293179, 24.254389> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540291, 0.781904, -0.310984,
		-0.119860, 0.294290, 0.948170,
		0.832898, 0.549563, -0.065284,
		29.643438, 39.458046, 24.234804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.995901, 39.825848, 24.558355>,  <29.060410, 39.073353, 24.280502>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.995901, 39.825848, 24.558355> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.311636, 39.889038, 24.321041>,  <29.501078, 39.926952, 24.178652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.311636, 39.889038, 24.321041>,  <28.995901, 39.825848, 24.558355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.311636, 39.889038, 24.321041> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393658, 0.871778, -0.291611,
		0.471147, 0.463731, 0.750316,
		0.789338, 0.157976, -0.593287,
		29.548437, 39.936432, 24.143055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.016598, 40.506535, 24.555731>,  <28.995901, 39.825848, 24.558355>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.016598, 40.506535, 24.555731> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.230316, 40.406105, 24.232870>,  <29.358547, 40.345848, 24.039154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.230316, 40.406105, 24.232870>,  <29.016598, 40.506535, 24.555731>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.230316, 40.406105, 24.232870> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340733, 0.809887, -0.477476,
		0.773583, 0.530136, 0.347168,
		0.534294, -0.251076, -0.807150,
		29.390604, 40.330784, 23.990725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.019054, 41.161148, 24.971537>,  <29.016598, 40.506535, 24.555731>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.019054, 41.161148, 24.971537> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.632759, 41.080601, 25.037018>,  <28.400982, 41.032272, 25.076307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.632759, 41.080601, 25.037018>,  <29.019054, 41.161148, 24.971537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.632759, 41.080601, 25.037018> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259328, -0.724751, 0.638346,
		-0.009898, 0.658929, 0.752140,
		-0.965739, -0.201369, 0.163705,
		28.343037, 41.020191, 25.086130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.924984, 40.931122, 25.730576>,  <29.019054, 41.161148, 24.971537>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.924984, 40.931122, 25.730576> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.580404, 40.786961, 25.587460>,  <28.373657, 40.700462, 25.501591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.580404, 40.786961, 25.587460>,  <28.924984, 40.931122, 25.730576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.580404, 40.786961, 25.587460> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005632, -0.697704, 0.716364,
		-0.507814, 0.619125, 0.599006,
		-0.861449, -0.360406, -0.357791,
		28.321970, 40.678841, 25.480122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.641024, 40.570568, 26.332806>,  <28.924984, 40.931122, 25.730576>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.641024, 40.570568, 26.332806> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.396265, 40.456684, 26.037640>,  <28.249409, 40.388351, 25.860540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.396265, 40.456684, 26.037640>,  <28.641024, 40.570568, 26.332806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.396265, 40.456684, 26.037640> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195740, -0.849431, 0.490054,
		-0.766333, 0.444303, 0.464035,
		-0.611898, -0.284714, -0.737915,
		28.212696, 40.371269, 25.816265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.147800, 40.303268, 26.680691>,  <28.641024, 40.570568, 26.332806>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.147800, 40.303268, 26.680691> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.108856, 40.150700, 26.312986>,  <28.085489, 40.059158, 26.092363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.108856, 40.150700, 26.312986>,  <28.147800, 40.303268, 26.680691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.108856, 40.150700, 26.312986> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122419, -0.912043, 0.391396,
		-0.987691, 0.150642, 0.042105,
		-0.097362, -0.381424, -0.919259,
		28.079647, 40.036274, 26.037209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.466190, 39.746464, 26.656847>,  <28.147800, 40.303268, 26.680691>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.466190, 39.746464, 26.656847> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.743025, 39.664124, 26.380112>,  <27.909126, 39.614719, 26.214071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.743025, 39.664124, 26.380112>,  <27.466190, 39.746464, 26.656847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.743025, 39.664124, 26.380112> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013556, -0.962011, 0.272674,
		-0.721686, -0.179336, -0.668587,
		0.692088, -0.205848, -0.691838,
		27.950651, 39.602367, 26.172560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.228884, 39.178204, 26.399204>,  <27.466190, 39.746464, 26.656847>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.228884, 39.178204, 26.399204> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.609676, 39.172768, 26.276863>,  <27.838152, 39.169506, 26.203459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.609676, 39.172768, 26.276863>,  <27.228884, 39.178204, 26.399204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.609676, 39.172768, 26.276863> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090540, -0.941831, 0.323663,
		-0.292462, -0.335813, -0.895375,
		0.951982, -0.013592, -0.305855,
		27.895271, 39.168690, 26.185106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.277523, 38.564449, 25.956406>,  <27.228884, 39.178204, 26.399204>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.277523, 38.564449, 25.956406> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.612164, 38.674194, 26.146069>,  <27.812948, 38.740040, 26.259867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.612164, 38.674194, 26.146069>,  <27.277523, 38.564449, 25.956406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.612164, 38.674194, 26.146069> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084857, -0.920002, 0.382618,
		0.541203, -0.279862, -0.792954,
		0.836599, 0.274361, 0.474159,
		27.863144, 38.756504, 26.288317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.744337, 45.267696, 23.758009> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.038349, 45.052197, 23.593336>,  <30.214756, 44.922897, 23.494534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.038349, 45.052197, 23.593336>,  <29.744337, 45.267696, 23.758009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.038349, 45.052197, 23.593336> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106330, -0.508067, 0.854729,
		-0.669644, -0.672027, -0.316160,
		0.735032, -0.538746, -0.411681,
		30.258860, 44.890572, 23.469831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.626083, 44.524891, 23.902073>,  <29.744337, 45.267696, 23.758009>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.626083, 44.524891, 23.902073> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.020327, 44.573872, 23.855457>,  <30.256872, 44.603260, 23.827488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.020327, 44.573872, 23.855457>,  <29.626083, 44.524891, 23.902073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.020327, 44.573872, 23.855457> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157414, -0.413574, 0.896759,
		0.061612, -0.902198, -0.426898,
		0.985609, 0.122451, -0.116537,
		30.316010, 44.610607, 23.820496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.989298, 43.852425, 23.891373>,  <29.626083, 44.524891, 23.902073>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.989298, 43.852425, 23.891373> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.265905, 44.125740, 23.985111>,  <30.431870, 44.289730, 24.041355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.265905, 44.125740, 23.985111>,  <29.989298, 43.852425, 23.891373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.265905, 44.125740, 23.985111> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233921, -0.518761, 0.822294,
		0.683434, -0.513813, -0.518569,
		0.691519, 0.683288, 0.234347,
		30.473362, 44.330727, 24.055416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.518356, 43.484531, 24.176357>,  <29.989298, 43.852425, 23.891373>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.518356, 43.484531, 24.176357> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.612072, 43.855545, 24.292830>,  <30.668301, 44.078152, 24.362713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.612072, 43.855545, 24.292830>,  <30.518356, 43.484531, 24.176357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.612072, 43.855545, 24.292830> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306854, -0.354763, 0.883167,
		0.922469, -0.117566, -0.367735,
		0.234289, 0.927535, 0.291182,
		30.682360, 44.133804, 24.380184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.241901, 43.417061, 24.444183>,  <30.518356, 43.484531, 24.176357>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.241901, 43.417061, 24.444183> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.077429, 43.742001, 24.609600>,  <30.978746, 43.936966, 24.708851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.077429, 43.742001, 24.609600>,  <31.241901, 43.417061, 24.444183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.077429, 43.742001, 24.609600> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214942, -0.354470, 0.910028,
		0.885851, 0.463072, -0.028858,
		-0.411179, 0.812352, 0.413542,
		30.954075, 43.985706, 24.733662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.740438, 43.784595, 24.754572>,  <31.241901, 43.417061, 24.444183>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.740438, 43.784595, 24.754572> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.412998, 43.909290, 24.947533>,  <31.216534, 43.984108, 25.063309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.412998, 43.909290, 24.947533>,  <31.740438, 43.784595, 24.754572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.412998, 43.909290, 24.947533> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397438, -0.298899, 0.867584,
		0.414650, 0.901930, 0.120782,
		-0.818601, 0.311740, 0.482400,
		31.167418, 44.002811, 25.092253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.007751, 44.025024, 25.362932>,  <31.740438, 43.784595, 24.754572>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.007751, 44.025024, 25.362932> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.618879, 43.973000, 25.440855>,  <31.385555, 43.941784, 25.487608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.618879, 43.973000, 25.440855>,  <32.007751, 44.025024, 25.362932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.618879, 43.973000, 25.440855> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230579, -0.385042, 0.893631,
		-0.041223, 0.913688, 0.404321,
		-0.972180, -0.130066, 0.194805,
		31.327225, 43.933979, 25.499296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.925875, 44.347794, 25.944979>,  <32.007751, 44.025024, 25.362932>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.925875, 44.347794, 25.944979> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.602709, 44.112076, 25.944153>,  <31.408810, 43.970646, 25.943657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.602709, 44.112076, 25.944153>,  <31.925875, 44.347794, 25.944979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.602709, 44.112076, 25.944153> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250674, -0.346841, 0.903805,
		-0.533322, 0.729682, 0.427939,
		-0.807917, -0.589293, -0.002066,
		31.360334, 43.935287, 25.943533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.559532, 44.440079, 26.707289>,  <31.925875, 44.347794, 25.944979>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.559532, 44.440079, 26.707289> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.444788, 44.092590, 26.545776>,  <31.375942, 43.884098, 26.448870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.444788, 44.092590, 26.545776>,  <31.559532, 44.440079, 26.707289>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.444788, 44.092590, 26.545776> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198823, -0.466305, 0.861991,
		-0.937113, 0.166989, 0.306485,
		-0.286859, -0.868720, -0.403780,
		31.358730, 43.831974, 26.424643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.027868, 44.282986, 27.140003>,  <31.559532, 44.440079, 26.707289>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.027868, 44.282986, 27.140003> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.173454, 43.950371, 26.972155>,  <31.260807, 43.750801, 26.871447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.173454, 43.950371, 26.972155>,  <31.027868, 44.282986, 27.140003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.173454, 43.950371, 26.972155> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290910, -0.326493, 0.899319,
		-0.884816, -0.449393, 0.123069,
		0.363967, -0.831534, -0.419619,
		31.282644, 43.700912, 26.846270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.833374, 43.746189, 27.573381>,  <31.027868, 44.282986, 27.140003>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.833374, 43.746189, 27.573381> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.129108, 43.595619, 27.350067>,  <31.306549, 43.505276, 27.216078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.129108, 43.595619, 27.350067>,  <30.833374, 43.746189, 27.573381>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.129108, 43.595619, 27.350067> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360203, -0.479414, 0.800260,
		-0.568894, -0.792756, -0.218855,
		0.739333, -0.376431, -0.558288,
		31.350908, 43.482689, 27.182581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.740641, 43.039425, 27.731319>,  <30.833374, 43.746189, 27.573381>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.740641, 43.039425, 27.731319> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.109392, 43.077724, 27.581135>,  <31.330643, 43.100704, 27.491024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.109392, 43.077724, 27.581135>,  <30.740641, 43.039425, 27.731319>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.109392, 43.077724, 27.581135> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360253, -0.568606, 0.739530,
		-0.142680, -0.817018, -0.558680,
		0.921879, 0.095750, -0.375462,
		31.385956, 43.106449, 27.468496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.069838, 42.554928, 27.757196>,  <30.740641, 43.039425, 27.731319>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.069838, 42.554928, 27.757196> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.864204, 42.776134, 28.019463>,  <29.740826, 42.908859, 28.176823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.864204, 42.776134, 28.019463>,  <30.069838, 42.554928, 27.757196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.864204, 42.776134, 28.019463> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539974, 0.385275, -0.748326,
		-0.666445, -0.738742, 0.100550,
		-0.514081, 0.553013, 0.655666,
		29.709980, 42.942039, 28.216162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.359905, 42.408287, 27.705738>,  <30.069838, 42.554928, 27.757196>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.359905, 42.408287, 27.705738> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.374374, 42.778446, 27.856647>,  <29.383057, 43.000542, 27.947193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.374374, 42.778446, 27.856647>,  <29.359905, 42.408287, 27.705738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.374374, 42.778446, 27.856647> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470965, 0.348754, -0.810285,
		-0.881410, -0.148373, 0.448444,
		0.036172, 0.925395, 0.377274,
		29.385225, 43.056065, 27.969830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.656233, 42.586685, 27.700285>,  <29.359905, 42.408287, 27.705738>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.656233, 42.586685, 27.700285> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.857607, 42.931477, 27.724104>,  <28.978432, 43.138351, 27.738396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.857607, 42.931477, 27.724104>,  <28.656233, 42.586685, 27.700285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.857607, 42.931477, 27.724104> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596349, 0.396513, -0.697958,
		-0.625236, 0.315865, 0.713659,
		0.503436, 0.861978, 0.059549,
		29.008638, 43.190071, 27.741968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.182026, 43.081783, 27.460543>,  <28.656233, 42.586685, 27.700285>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.182026, 43.081783, 27.460543> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.526146, 43.279156, 27.409294>,  <28.732618, 43.397579, 27.378544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.526146, 43.279156, 27.409294>,  <28.182026, 43.081783, 27.460543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.526146, 43.279156, 27.409294> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428219, 0.563079, -0.706803,
		-0.276612, 0.662927, 0.695711,
		0.860299, 0.493427, -0.128124,
		28.784235, 43.427185, 27.370857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.024590, 43.751053, 27.402954>,  <28.182026, 43.081783, 27.460543>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.024590, 43.751053, 27.402954> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.366995, 43.689667, 27.205494>,  <28.572437, 43.652836, 27.087017>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.366995, 43.689667, 27.205494>,  <28.024590, 43.751053, 27.402954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.366995, 43.689667, 27.205494> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314429, 0.603418, -0.732817,
		0.410339, 0.782519, 0.468280,
		0.856012, -0.153463, -0.493652,
		28.623798, 43.643627, 27.057398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.989384, 44.387154, 27.105831>,  <28.024590, 43.751053, 27.402954>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.989384, 44.387154, 27.105831> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.280594, 44.188839, 26.916443>,  <28.455320, 44.069851, 26.802811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.280594, 44.188839, 26.916443>,  <27.989384, 44.387154, 27.105831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.280594, 44.188839, 26.916443> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091418, 0.614265, -0.783787,
		0.679426, 0.613901, 0.401877,
		0.728026, -0.495787, -0.473469,
		28.499002, 44.040104, 26.774403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.403091, 44.899414, 26.806404>,  <27.989384, 44.387154, 27.105831>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.403091, 44.899414, 26.806404> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.486687, 44.574982, 26.587872>,  <28.536844, 44.380322, 26.456751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.486687, 44.574982, 26.587872>,  <28.403091, 44.899414, 26.806404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.486687, 44.574982, 26.587872> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101060, 0.537766, -0.837015,
		0.972683, 0.230137, 0.030418,
		0.208986, -0.811076, -0.546334,
		28.549383, 44.331657, 26.423971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.979410, 45.149239, 26.343561>,  <28.403091, 44.899414, 26.806404>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.979410, 45.149239, 26.343561> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.782597, 44.829895, 26.204693>,  <28.664509, 44.638290, 26.121372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.782597, 44.829895, 26.204693>,  <28.979410, 45.149239, 26.343561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.782597, 44.829895, 26.204693> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082402, 0.439699, -0.894357,
		0.866668, -0.411446, -0.282133,
		-0.492034, -0.798359, -0.347169,
		28.634987, 44.590389, 26.100542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.210993, 45.146244, 25.616089>,  <28.979410, 45.149239, 26.343561>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.210993, 45.146244, 25.616089> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.881886, 44.920967, 25.646721>,  <28.684422, 44.785801, 25.665100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.881886, 44.920967, 25.646721>,  <29.210993, 45.146244, 25.616089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.881886, 44.920967, 25.646721> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361425, 0.414431, -0.835236,
		0.438663, -0.714884, -0.544533,
		-0.822768, -0.563194, 0.076581,
		28.635056, 44.752007, 25.669695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.023088, 44.840134, 24.991364>,  <29.210993, 45.146244, 25.616089>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.023088, 44.840134, 24.991364> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.659801, 44.830536, 25.158489>,  <28.441830, 44.824776, 25.258764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.659801, 44.830536, 25.158489>,  <29.023088, 44.840134, 24.991364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.659801, 44.830536, 25.158489> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404992, 0.302017, -0.862999,
		-0.105482, -0.953001, -0.284013,
		-0.908215, -0.023992, 0.417814,
		28.387337, 44.823338, 25.283833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.524769, 44.704914, 24.426228>,  <29.023088, 44.840134, 24.991364>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.524769, 44.704914, 24.426228> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.272142, 44.830952, 24.709589>,  <28.120565, 44.906574, 24.879606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.272142, 44.830952, 24.709589>,  <28.524769, 44.704914, 24.426228>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.272142, 44.830952, 24.709589> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671909, 0.233467, -0.702874,
		-0.386860, -0.919896, 0.064263,
		-0.631568, 0.315093, 0.708406,
		28.082672, 44.925480, 24.922112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.897181, 44.317379, 24.335857>,  <28.524769, 44.704914, 24.426228>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.897181, 44.317379, 24.335857> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.782030, 44.653145, 24.520250>,  <27.712940, 44.854607, 24.630886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.782030, 44.653145, 24.520250>,  <27.897181, 44.317379, 24.335857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.782030, 44.653145, 24.520250> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595139, 0.220315, -0.772833,
		-0.750291, -0.496830, 0.436146,
		-0.287877, 0.839417, 0.460983,
		27.695667, 44.904968, 24.658545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.154238, 44.306366, 24.249439>,  <27.897181, 44.317379, 24.335857>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.154238, 44.306366, 24.249439> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.238503, 44.681690, 24.359129>,  <27.289062, 44.906883, 24.424944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.238503, 44.681690, 24.359129>,  <27.154238, 44.306366, 24.249439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.238503, 44.681690, 24.359129> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759808, 0.333664, -0.557995,
		-0.615071, -0.090810, 0.783225,
		0.210663, 0.938308, 0.274225,
		27.301701, 44.963184, 24.441397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.486885, 43.913822, 24.748913>,  <27.154238, 44.306366, 24.249439>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.486885, 43.913822, 24.748913> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.301214, 43.803192, 24.412331>,  <27.189812, 43.736813, 24.210382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.301214, 43.803192, 24.412331>,  <27.486885, 43.913822, 24.748913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.301214, 43.803192, 24.412331> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191185, -0.958890, 0.209712,
		-0.864862, -0.063530, 0.497973,
		-0.464178, -0.276577, -0.841453,
		27.161961, 43.720219, 24.159895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.022577, 43.459438, 24.983997>,  <27.486885, 43.913822, 24.748913>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.022577, 43.459438, 24.983997> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.070986, 43.384041, 24.594162>,  <27.100031, 43.338802, 24.360260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.070986, 43.384041, 24.594162>,  <27.022577, 43.459438, 24.983997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.070986, 43.384041, 24.594162> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071067, -0.977641, 0.197907,
		-0.990103, -0.093213, -0.104920,
		0.121021, -0.188492, -0.974589,
		27.107292, 43.327492, 24.301785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.678371, 42.790592, 24.894592>,  <27.022577, 43.459438, 24.983997>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.678371, 42.790592, 24.894592> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.876875, 42.832218, 24.549826>,  <26.995977, 42.857193, 24.342966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.876875, 42.832218, 24.549826>,  <26.678371, 42.790592, 24.894592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.876875, 42.832218, 24.549826> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113309, -0.992062, -0.054545,
		-0.860749, -0.070594, -0.504111,
		0.496259, 0.104069, -0.861915,
		27.025753, 42.863438, 24.291252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.376236, 42.201305, 24.424044>,  <26.678371, 42.790592, 24.894592>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.376236, 42.201305, 24.424044> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.742174, 42.321934, 24.316628>,  <26.961737, 42.394310, 24.252178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.742174, 42.321934, 24.316628>,  <26.376236, 42.201305, 24.424044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.742174, 42.321934, 24.316628> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353051, -0.920132, 0.169445,
		-0.195992, -0.249824, -0.948248,
		0.914846, 0.301570, -0.268539,
		27.016628, 42.412403, 24.236067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.626238, 41.676064, 24.015867>,  <26.376236, 42.201305, 24.424044>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.626238, 41.676064, 24.015867> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.951860, 41.875179, 24.135548>,  <27.147234, 41.994648, 24.207355>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.951860, 41.875179, 24.135548>,  <26.626238, 41.676064, 24.015867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.951860, 41.875179, 24.135548> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434220, -0.863766, 0.255657,
		0.385701, -0.078201, -0.919304,
		0.814056, 0.497788, 0.299199,
		27.196077, 42.024517, 24.225307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.160809, 41.211586, 23.878132>,  <26.626238, 41.676064, 24.015867>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.160809, 41.211586, 23.878132> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.349600, 41.444595, 24.142830>,  <27.462873, 41.584400, 24.301649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.349600, 41.444595, 24.142830>,  <27.160809, 41.211586, 23.878132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.349600, 41.444595, 24.142830> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537914, -0.784977, 0.307343,
		0.698488, 0.210903, -0.683838,
		0.471977, 0.582521, 0.661745,
		27.491194, 41.619350, 24.341352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.920155, 40.903198, 23.940418>,  <27.160809, 41.211586, 23.878132>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.920155, 40.903198, 23.940418> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.886507, 41.160374, 24.244930>,  <27.866318, 41.314678, 24.427637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.886507, 41.160374, 24.244930>,  <27.920155, 40.903198, 23.940418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.886507, 41.160374, 24.244930> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592346, -0.582082, 0.557052,
		0.801281, 0.497800, -0.331880,
		-0.084119, 0.642943, 0.761281,
		27.861271, 41.353256, 24.473314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.604090, 41.037590, 24.265245>,  <27.920155, 40.903198, 23.940418>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.604090, 41.037590, 24.265245> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.344843, 41.127022, 24.556437>,  <28.189295, 41.180683, 24.731152>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.344843, 41.127022, 24.556437>,  <28.604090, 41.037590, 24.265245>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.344843, 41.127022, 24.556437> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450379, -0.658302, 0.603156,
		0.614085, 0.718783, 0.325960,
		-0.648118, 0.223584, 0.727979,
		28.150408, 41.194096, 24.774830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.313013, 41.116516, 24.268894>,  <28.604090, 41.037590, 24.265245>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.313013, 41.116516, 24.268894> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.324085, 40.852127, 23.968935>,  <29.330729, 40.693493, 23.788960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.324085, 40.852127, 23.968935>,  <29.313013, 41.116516, 24.268894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.324085, 40.852127, 23.968935> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329668, 0.702178, -0.631083,
		0.943691, 0.264684, -0.198467,
		0.027679, -0.660976, -0.749897,
		29.332390, 40.653835, 23.743965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.801451, 41.361263, 23.791059>,  <29.313013, 41.116516, 24.268894>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.801451, 41.361263, 23.791059> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.590149, 41.093964, 23.581530>,  <29.463367, 40.933582, 23.455812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.590149, 41.093964, 23.581530>,  <29.801451, 41.361263, 23.791059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.590149, 41.093964, 23.581530> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043280, 0.637316, -0.769387,
		0.847981, -0.383762, -0.365587,
		-0.528256, -0.668248, -0.523823,
		29.431673, 40.893490, 23.424383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.121922, 41.448566, 23.055273>,  <29.801451, 41.361263, 23.791059>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.121922, 41.448566, 23.055273> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.766100, 41.268898, 23.021955>,  <29.552607, 41.161098, 23.001965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.766100, 41.268898, 23.021955>,  <30.121922, 41.448566, 23.055273>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.766100, 41.268898, 23.021955> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240631, 0.615699, -0.750341,
		0.388312, -0.647428, -0.655783,
		-0.889556, -0.449168, -0.083292,
		29.499233, 41.134148, 22.996967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.029007, 41.305302, 22.379250>,  <30.121922, 41.448566, 23.055273>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.029007, 41.305302, 22.379250> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.654921, 41.326309, 22.519314>,  <29.430470, 41.338913, 22.603352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.654921, 41.326309, 22.519314>,  <30.029007, 41.305302, 22.379250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.654921, 41.326309, 22.519314> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264071, 0.555351, -0.788575,
		-0.235874, -0.829956, -0.505506,
		-0.935216, 0.052515, 0.350160,
		29.374355, 41.342064, 22.624361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.657326, 41.308315, 21.812941>,  <30.029007, 41.305302, 22.379250>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.657326, 41.308315, 21.812941> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.377356, 41.443832, 22.064442>,  <29.209373, 41.525143, 22.215342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.377356, 41.443832, 22.064442>,  <29.657326, 41.308315, 21.812941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.377356, 41.443832, 22.064442> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312925, 0.645875, -0.696365,
		-0.642017, -0.684154, -0.346046,
		-0.699923, 0.338792, 0.628751,
		29.167379, 41.545471, 22.253067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.014933, 41.285526, 21.376936>,  <29.657326, 41.308315, 21.812941>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.014933, 41.285526, 21.376936> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.956371, 41.536366, 21.682959>,  <28.921234, 41.686871, 21.866571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.956371, 41.536366, 21.682959>,  <29.014933, 41.285526, 21.376936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.956371, 41.536366, 21.682959> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337215, 0.695428, -0.634559,
		-0.929974, -0.350890, 0.109655,
		-0.146403, 0.627101, 0.765056,
		28.912451, 41.724495, 21.912476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.284063, 41.575787, 21.091305>,  <29.014933, 41.285526, 21.376936>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.284063, 41.575787, 21.091305> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.439045, 41.822701, 21.365191>,  <28.532034, 41.970848, 21.529522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.439045, 41.822701, 21.365191>,  <28.284063, 41.575787, 21.091305>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.439045, 41.822701, 21.365191> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100662, 0.766619, -0.634162,
		-0.916377, 0.176784, 0.359167,
		0.387455, 0.617286, 0.684717,
		28.555281, 42.007885, 21.570606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.747866, 42.143967, 21.326103>,  <28.284063, 41.575787, 21.091305>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.747866, 42.143967, 21.326103> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.117952, 42.275303, 21.402168>,  <28.340004, 42.354103, 21.447807>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.117952, 42.275303, 21.402168>,  <27.747866, 42.143967, 21.326103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.117952, 42.275303, 21.402168> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231285, 0.885335, -0.403348,
		-0.300794, 0.329203, 0.895069,
		0.925219, 0.328341, 0.190164,
		28.395517, 42.373806, 21.459217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.569193, 42.750397, 21.472279>,  <27.747866, 42.143967, 21.326103>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.569193, 42.750397, 21.472279> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.958193, 42.765270, 21.380312>,  <28.191593, 42.774197, 21.325132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.958193, 42.765270, 21.380312>,  <27.569193, 42.750397, 21.472279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.958193, 42.765270, 21.380312> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121841, 0.922544, -0.366153,
		0.198494, 0.384097, 0.901704,
		0.972499, 0.037185, -0.229918,
		28.249943, 42.776424, 21.311337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<34.434879, 32.811665, 32.422565> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.685074, 33.122322, 32.392639>,  <34.835190, 33.308716, 32.374683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.685074, 33.122322, 32.392639>,  <34.434879, 32.811665, 32.422565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.685074, 33.122322, 32.392639> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780180, 0.623725, -0.047814,
		0.009528, 0.088274, 0.996051,
		0.625482, 0.776643, -0.074813,
		34.872719, 33.355316, 32.370193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.183567, 33.383949, 32.889992>,  <34.434879, 32.811665, 32.422565>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.183567, 33.383949, 32.889992> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.413769, 33.530846, 32.597713>,  <34.551891, 33.618984, 32.422344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.413769, 33.530846, 32.597713>,  <34.183567, 33.383949, 32.889992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.413769, 33.530846, 32.597713> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718727, 0.653407, -0.237680,
		0.390157, 0.661960, 0.639990,
		0.575508, 0.367246, -0.730699,
		34.586422, 33.641018, 32.378502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.083511, 34.100349, 32.935120>,  <34.183567, 33.383949, 32.889992>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.083511, 34.100349, 32.935120> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.263103, 34.041397, 32.582596>,  <34.370857, 34.006027, 32.371082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.263103, 34.041397, 32.582596>,  <34.083511, 34.100349, 32.935120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.263103, 34.041397, 32.582596> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567514, 0.714795, -0.408652,
		0.690180, 0.683628, 0.237286,
		0.448976, -0.147380, -0.881305,
		34.397797, 33.997185, 32.318203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.188873, 34.749252, 32.697750>,  <34.083511, 34.100349, 32.935120>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.188873, 34.749252, 32.697750> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.246582, 34.538471, 32.362724>,  <34.281208, 34.412003, 32.161709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.246582, 34.538471, 32.362724>,  <34.188873, 34.749252, 32.697750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.246582, 34.538471, 32.362724> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565266, 0.650837, -0.506839,
		0.812195, 0.546567, -0.203970,
		0.144270, -0.526949, -0.837562,
		34.289864, 34.380386, 32.111454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.386024, 35.268147, 32.086784>,  <34.188873, 34.749252, 32.697750>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.386024, 35.268147, 32.086784> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.232090, 34.929886, 31.938852>,  <34.139729, 34.726929, 31.850094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.232090, 34.929886, 31.938852>,  <34.386024, 35.268147, 32.086784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.232090, 34.929886, 31.938852> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657396, 0.532384, -0.533289,
		0.647868, 0.037894, -0.760810,
		-0.384834, -0.845654, -0.369826,
		34.116638, 34.676189, 31.827904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.378918, 35.380604, 31.429785>,  <34.386024, 35.268147, 32.086784>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.378918, 35.380604, 31.429785> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.131081, 35.066864, 31.441771>,  <33.982380, 34.878620, 31.448961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.131081, 35.066864, 31.441771>,  <34.378918, 35.380604, 31.429785>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.131081, 35.066864, 31.441771> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582462, 0.433855, -0.687392,
		0.526157, -0.443356, -0.725668,
		-0.619594, -0.784351, 0.029962,
		33.945202, 34.831558, 31.450760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.236820, 35.156898, 30.695059>,  <34.378918, 35.380604, 31.429785>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.236820, 35.156898, 30.695059> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.932037, 35.036488, 30.924421>,  <33.749168, 34.964241, 31.062038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.932037, 35.036488, 30.924421>,  <34.236820, 35.156898, 30.695059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.932037, 35.036488, 30.924421> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633676, 0.529302, -0.564176,
		-0.133673, -0.793235, -0.594062,
		-0.761962, -0.301027, 0.573408,
		33.703449, 34.946178, 31.096443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.856098, 34.745438, 30.239210>,  <34.236820, 35.156898, 30.695059>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.856098, 34.745438, 30.239210> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.622620, 34.829826, 30.552845>,  <33.482533, 34.880459, 30.741026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.622620, 34.829826, 30.552845>,  <33.856098, 34.745438, 30.239210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.622620, 34.829826, 30.552845> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775387, 0.141780, -0.615364,
		-0.240993, -0.967155, 0.080830,
		-0.583693, 0.210973, 0.784088,
		33.447514, 34.893116, 30.788071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.221275, 34.265038, 30.236115>,  <33.856098, 34.745438, 30.239210>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.221275, 34.265038, 30.236115> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.113068, 34.576130, 30.463081>,  <33.048145, 34.762783, 30.599262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.113068, 34.576130, 30.463081>,  <33.221275, 34.265038, 30.236115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.113068, 34.576130, 30.463081> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840192, 0.097020, -0.533540,
		-0.469999, -0.621070, 0.627195,
		-0.270515, 0.777727, 0.567417,
		33.031914, 34.809448, 30.633307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.537663, 34.159939, 30.243853>,  <33.221275, 34.265038, 30.236115>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.537663, 34.159939, 30.243853> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.591480, 34.542774, 30.346518>,  <32.623772, 34.772476, 30.408115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.591480, 34.542774, 30.346518>,  <32.537663, 34.159939, 30.243853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.591480, 34.542774, 30.346518> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691381, 0.276218, -0.667605,
		-0.709853, -0.087630, 0.698877,
		0.134541, 0.957092, 0.256660,
		32.631844, 34.829903, 30.423515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.843643, 34.398415, 30.195999>,  <32.537663, 34.159939, 30.243853>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.843643, 34.398415, 30.195999> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.072861, 34.725952, 30.209389>,  <32.210392, 34.922474, 30.217422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.072861, 34.725952, 30.209389>,  <31.843643, 34.398415, 30.195999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.072861, 34.725952, 30.209389> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624566, 0.462801, -0.629073,
		-0.530604, 0.339577, 0.776625,
		0.573041, 0.818842, 0.033476,
		32.244774, 34.971603, 30.219431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.336811, 35.054581, 30.327156>,  <31.843643, 34.398415, 30.195999>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.336811, 35.054581, 30.327156> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.674976, 35.127769, 30.126440>,  <31.877876, 35.171684, 30.006010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.674976, 35.127769, 30.126440>,  <31.336811, 35.054581, 30.327156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.674976, 35.127769, 30.126440> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526007, 0.448262, -0.722757,
		0.092688, 0.874975, 0.475213,
		0.845415, 0.182974, -0.501791,
		31.928600, 35.182663, 29.975903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.199390, 35.548901, 30.800745>,  <31.336811, 35.054581, 30.327156>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.199390, 35.548901, 30.800745> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.825678, 35.618633, 30.925148>,  <30.601450, 35.660473, 30.999790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.825678, 35.618633, 30.925148>,  <31.199390, 35.548901, 30.800745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.825678, 35.618633, 30.925148> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314178, -0.009832, 0.949313,
		0.168558, 0.984637, -0.045587,
		-0.934281, 0.174336, 0.311009,
		30.545393, 35.670933, 31.018450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.230730, 36.072273, 31.277569>,  <31.199390, 35.548901, 30.800745>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.230730, 36.072273, 31.277569> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.899076, 35.858738, 31.343971>,  <30.700085, 35.730618, 31.383812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.899076, 35.858738, 31.343971>,  <31.230730, 36.072273, 31.277569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.899076, 35.858738, 31.343971> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293204, -0.162413, 0.942154,
		-0.475992, 0.829846, 0.291184,
		-0.829134, -0.533834, 0.166007,
		30.650335, 35.698589, 31.393774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.934597, 36.392063, 31.938271>,  <31.230730, 36.072273, 31.277569>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.934597, 36.392063, 31.938271> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.765793, 36.030594, 31.909201>,  <30.664511, 35.813713, 31.891758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.765793, 36.030594, 31.909201>,  <30.934597, 36.392063, 31.938271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.765793, 36.030594, 31.909201> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116792, -0.133686, 0.984118,
		-0.899036, 0.406822, 0.161959,
		-0.422012, -0.903672, -0.072675,
		30.639189, 35.759491, 31.887398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.508091, 36.362667, 32.478539>,  <30.934597, 36.392063, 31.938271>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.508091, 36.362667, 32.478539> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.614891, 35.997738, 32.354362>,  <30.678970, 35.778778, 32.279858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.614891, 35.997738, 32.354362>,  <30.508091, 36.362667, 32.478539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.614891, 35.997738, 32.354362> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266310, -0.239740, 0.933597,
		-0.926169, -0.331944, 0.178951,
		0.267000, -0.912326, -0.310440,
		30.694992, 35.724041, 32.261230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.248800, 35.957474, 33.043728>,  <30.508091, 36.362667, 32.478539>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.248800, 35.957474, 33.043728> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.495291, 35.726379, 32.829628>,  <30.643185, 35.587723, 32.701168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.495291, 35.726379, 32.829628>,  <30.248800, 35.957474, 33.043728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.495291, 35.726379, 32.829628> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423311, -0.330136, 0.843693,
		-0.664134, -0.746482, 0.041122,
		0.616226, -0.577732, -0.535248,
		30.680159, 35.553059, 32.669052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.308981, 35.337147, 33.449909>,  <30.248800, 35.957474, 33.043728>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.308981, 35.337147, 33.449909> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.633718, 35.297424, 33.219765>,  <30.828562, 35.273590, 33.081676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.633718, 35.297424, 33.219765>,  <30.308981, 35.337147, 33.449909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.633718, 35.297424, 33.219765> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530253, -0.287109, 0.797747,
		-0.244416, -0.952736, -0.180429,
		0.811845, -0.099309, -0.575365,
		30.877272, 35.267632, 33.047153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.551237, 34.655647, 33.647953>,  <30.308981, 35.337147, 33.449909>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.551237, 34.655647, 33.647953> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.832218, 34.888378, 33.483982>,  <31.000807, 35.028015, 33.385601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.832218, 34.888378, 33.483982>,  <30.551237, 34.655647, 33.647953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.832218, 34.888378, 33.483982> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630792, -0.242180, 0.737191,
		0.329640, -0.776420, -0.537131,
		0.702452, 0.581826, -0.409927,
		31.042953, 35.062927, 33.361004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.187212, 34.293976, 33.784336>,  <30.551237, 34.655647, 33.647953>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.187212, 34.293976, 33.784336> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.340523, 34.652409, 33.694763>,  <31.432508, 34.867466, 33.641022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.340523, 34.652409, 33.694763>,  <31.187212, 34.293976, 33.784336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.340523, 34.652409, 33.694763> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616487, -0.067655, 0.784453,
		0.687781, -0.438711, -0.578350,
		0.383277, 0.896078, -0.223928,
		31.455505, 34.921230, 33.627586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.016991, 34.251305, 33.760712>,  <31.187212, 34.293976, 33.784336>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.016991, 34.251305, 33.760712> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.870474, 34.611752, 33.853508>,  <31.782564, 34.828018, 33.909184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.870474, 34.611752, 33.853508>,  <32.016991, 34.251305, 33.760712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.870474, 34.611752, 33.853508> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455591, -0.043707, 0.889116,
		0.811337, 0.431368, -0.394531,
		-0.366293, 0.901117, 0.231989,
		31.760586, 34.882088, 33.923103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.694019, 34.575920, 33.953045>,  <32.016991, 34.251305, 33.760712>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.694019, 34.575920, 33.953045> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.390484, 34.781933, 34.112499>,  <32.208363, 34.905540, 34.208172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.390484, 34.781933, 34.112499>,  <32.694019, 34.575920, 33.953045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.390484, 34.781933, 34.112499> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556259, 0.194179, 0.808004,
		0.338737, 0.834890, -0.433839,
		-0.758836, 0.515028, 0.398640,
		32.162834, 34.936440, 34.232090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.002972, 35.233803, 34.199848>,  <32.694019, 34.575920, 33.953045>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.002972, 35.233803, 34.199848> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.648254, 35.207935, 34.382893>,  <32.435425, 35.192413, 34.492718>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.648254, 35.207935, 34.382893>,  <33.002972, 35.233803, 34.199848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.648254, 35.207935, 34.382893> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433924, 0.224269, 0.872590,
		-0.159058, 0.972379, -0.170819,
		-0.886798, -0.064669, 0.457611,
		32.382214, 35.188534, 34.520176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.862644, 35.923740, 34.540672>,  <33.002972, 35.233803, 34.199848>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.862644, 35.923740, 34.540672> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.671726, 35.624458, 34.725010>,  <32.557175, 35.444889, 34.835613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.671726, 35.624458, 34.725010>,  <32.862644, 35.923740, 34.540672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.671726, 35.624458, 34.725010> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456957, 0.236618, 0.857439,
		-0.750584, 0.619840, 0.228959,
		-0.477299, -0.748205, 0.460842,
		32.528538, 35.399998, 34.863262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.885262, 36.117153, 35.203941>,  <32.862644, 35.923740, 34.540672>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.885262, 36.117153, 35.203941> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.757313, 35.741299, 35.252544>,  <32.680542, 35.515785, 35.281704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.757313, 35.741299, 35.252544>,  <32.885262, 36.117153, 35.203941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.757313, 35.741299, 35.252544> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464399, -0.043712, 0.884547,
		-0.825842, 0.339368, 0.450349,
		-0.319872, -0.939637, 0.121503,
		32.661350, 35.459408, 35.288994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.918381, 36.001740, 35.890060>,  <32.885262, 36.117153, 35.203941>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.918381, 36.001740, 35.890060> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.907066, 35.630558, 35.741409>,  <32.900276, 35.407848, 35.652218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.907066, 35.630558, 35.741409>,  <32.918381, 36.001740, 35.890060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.907066, 35.630558, 35.741409> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675189, -0.291885, 0.677439,
		-0.737103, -0.231752, 0.634800,
		-0.028290, -0.927952, -0.371626,
		32.898579, 35.352173, 35.629921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.754131, 35.561665, 36.420353>,  <32.918381, 36.001740, 35.890060>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.754131, 35.561665, 36.420353> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.975685, 35.378708, 36.142071>,  <33.108616, 35.268936, 35.975101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.975685, 35.378708, 36.142071>,  <32.754131, 35.561665, 36.420353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.975685, 35.378708, 36.142071> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591901, -0.371339, 0.715374,
		-0.585547, -0.808025, 0.065049,
		0.553885, -0.457388, -0.695707,
		33.141850, 35.241493, 35.933357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.582226, 36.292061, 36.599033>,  <32.754131, 35.561665, 36.420353>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.582226, 36.292061, 36.599033> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.782394, 36.406723, 36.272255>,  <32.902496, 36.475521, 36.076187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.782394, 36.406723, 36.272255>,  <32.582226, 36.292061, 36.599033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.782394, 36.406723, 36.272255> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720576, 0.660983, -0.209458,
		0.479944, 0.693490, 0.537332,
		0.500424, 0.286660, -0.816947,
		32.932522, 36.492722, 36.027172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.327335, 36.948563, 36.457809>,  <32.582226, 36.292061, 36.599033>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.327335, 36.948563, 36.457809> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.501400, 36.900204, 36.100929>,  <32.605839, 36.871189, 35.886803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.501400, 36.900204, 36.100929>,  <32.327335, 36.948563, 36.457809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.501400, 36.900204, 36.100929> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632474, 0.664216, -0.398489,
		0.640787, 0.737700, 0.212581,
		0.435165, -0.120894, -0.892197,
		32.631950, 36.863934, 35.833271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.442886, 37.654922, 36.306953>,  <32.327335, 36.948563, 36.457809>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.442886, 37.654922, 36.306953> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.532036, 37.469257, 35.964054>,  <32.585526, 37.357857, 35.758312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.532036, 37.469257, 35.964054>,  <32.442886, 37.654922, 36.306953>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.532036, 37.469257, 35.964054> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337895, 0.788072, -0.514557,
		0.914414, 0.404343, 0.018803,
		0.222876, -0.464165, -0.857250,
		32.598900, 37.330009, 35.706879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.867222, 38.157276, 35.851120>,  <32.442886, 37.654922, 36.306953>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.867222, 38.157276, 35.851120> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.676842, 37.887981, 35.624767>,  <32.562614, 37.726406, 35.488956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.676842, 37.887981, 35.624767>,  <32.867222, 38.157276, 35.851120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.676842, 37.887981, 35.624767> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267534, 0.723771, -0.636067,
		0.837791, -0.151347, -0.524595,
		-0.475954, -0.673239, -0.565879,
		32.534054, 37.686008, 35.455006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.027653, 38.260258, 35.218300>,  <32.867222, 38.157276, 35.851120>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.027653, 38.260258, 35.218300> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.683674, 38.056839, 35.201012>,  <32.477287, 37.934788, 35.190639>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.683674, 38.056839, 35.201012>,  <33.027653, 38.260258, 35.218300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.683674, 38.056839, 35.201012> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380928, 0.695894, -0.608790,
		0.339673, -0.507066, -0.792153,
		-0.859951, -0.508543, -0.043220,
		32.425690, 37.904278, 35.188046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.810055, 38.288918, 34.397236>,  <33.027653, 38.260258, 35.218300>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.810055, 38.288918, 34.397236> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.472794, 38.148342, 34.560001>,  <32.270435, 38.063995, 34.657661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.472794, 38.148342, 34.560001>,  <32.810055, 38.288918, 34.397236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.472794, 38.148342, 34.560001> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536647, 0.596772, -0.596551,
		-0.033183, -0.721354, -0.691771,
		-0.843154, -0.351441, 0.406915,
		32.219849, 38.042908, 34.682076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.308941, 38.128609, 33.831108>,  <32.810055, 38.288918, 34.397236>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.308941, 38.128609, 33.831108> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.069706, 38.150673, 34.150921>,  <31.926165, 38.163914, 34.342808>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.069706, 38.150673, 34.150921>,  <32.308941, 38.128609, 33.831108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.069706, 38.150673, 34.150921> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605674, 0.622206, -0.496002,
		-0.524834, -0.780908, -0.338722,
		-0.598087, 0.055164, 0.799530,
		31.890280, 38.167221, 34.390781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.692719, 37.935452, 33.633595>,  <32.308941, 38.128609, 33.831108>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.692719, 37.935452, 33.633595> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.583941, 38.132050, 33.964527>,  <31.518673, 38.250008, 34.163086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.583941, 38.132050, 33.964527>,  <31.692719, 37.935452, 33.633595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.583941, 38.132050, 33.964527> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629758, 0.559174, -0.539193,
		-0.727634, -0.667649, 0.157459,
		-0.271945, 0.491497, 0.827332,
		31.502357, 38.279499, 34.212727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.990263, 37.905540, 33.690338>,  <31.692719, 37.935452, 33.633595>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.990263, 37.905540, 33.690338> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.082859, 38.229965, 33.905224>,  <31.138416, 38.424618, 34.034153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.082859, 38.229965, 33.905224>,  <30.990263, 37.905540, 33.690338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.082859, 38.229965, 33.905224> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647310, 0.540642, -0.537304,
		-0.726224, -0.223360, 0.650161,
		0.231492, 0.811059, 0.537210,
		31.152308, 38.473282, 34.066387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.390114, 38.211784, 33.842381>,  <30.990263, 37.905540, 33.690338>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.390114, 38.211784, 33.842381> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.667267, 38.499104, 33.867554>,  <30.833559, 38.671494, 33.882656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.667267, 38.499104, 33.867554>,  <30.390114, 38.211784, 33.842381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.667267, 38.499104, 33.867554> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647575, 0.658292, -0.383794,
		-0.317107, 0.225171, 0.921272,
		0.692885, 0.718296, 0.062934,
		30.875132, 38.714592, 33.886433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.972258, 38.872578, 33.755455>,  <30.390114, 38.211784, 33.842381>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.972258, 38.872578, 33.755455> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.341654, 39.020660, 33.715229>,  <30.563292, 39.109509, 33.691093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.341654, 39.020660, 33.715229>,  <29.972258, 38.872578, 33.755455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.341654, 39.020660, 33.715229> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362229, 0.755181, -0.546345,
		-0.126314, 0.540972, 0.831501,
		0.923491, 0.370205, -0.100565,
		30.618702, 39.131721, 33.685059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.967936, 39.561741, 33.921127>,  <29.972258, 38.872578, 33.755455>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.967936, 39.561741, 33.921127> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.276976, 39.511444, 33.672203>,  <30.462400, 39.481266, 33.522846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.276976, 39.511444, 33.672203>,  <29.967936, 39.561741, 33.921127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.276976, 39.511444, 33.672203> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258674, 0.832805, -0.489412,
		0.579805, 0.539097, 0.610902,
		0.772602, -0.125739, -0.622315,
		30.508757, 39.473721, 33.485508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.313820, 40.171654, 33.962692>,  <29.967936, 39.561741, 33.921127>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.313820, 40.171654, 33.962692> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.403109, 39.995941, 33.614624>,  <30.456682, 39.890514, 33.405781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.403109, 39.995941, 33.614624>,  <30.313820, 40.171654, 33.962692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.403109, 39.995941, 33.614624> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154550, 0.865457, -0.476548,
		0.962438, 0.240860, 0.125296,
		0.223220, -0.439283, -0.870174,
		30.470074, 39.864155, 33.353573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.540236, 40.776405, 33.632805>,  <30.313820, 40.171654, 33.962692>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.540236, 40.776405, 33.632805> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.477827, 40.484341, 33.366714>,  <30.440382, 40.309101, 33.207062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.477827, 40.484341, 33.366714>,  <30.540236, 40.776405, 33.632805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.477827, 40.484341, 33.366714> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302130, 0.676469, -0.671645,
		0.940412, 0.096194, -0.326147,
		-0.156020, -0.730162, -0.665222,
		30.431021, 40.265293, 33.167149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.909248, 40.962399, 33.070034>,  <30.540236, 40.776405, 33.632805>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.909248, 40.962399, 33.070034> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.642200, 40.717796, 32.900166>,  <30.481972, 40.571033, 32.798244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.642200, 40.717796, 32.900166>,  <30.909248, 40.962399, 33.070034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.642200, 40.717796, 32.900166> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109861, 0.645080, -0.756176,
		0.736353, -0.458183, -0.497848,
		-0.667618, -0.611507, -0.424670,
		30.441916, 40.534344, 32.772766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.133751, 40.870735, 32.421867>,  <30.909248, 40.962399, 33.070034>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.133751, 40.870735, 32.421867> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.741365, 40.793667, 32.412136>,  <30.505934, 40.747425, 32.406296>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.741365, 40.793667, 32.412136>,  <31.133751, 40.870735, 32.421867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.741365, 40.793667, 32.412136> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063271, 0.435520, -0.897953,
		0.183603, -0.879318, -0.439419,
		-0.980962, -0.192670, -0.024327,
		30.447077, 40.735867, 32.404839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.014359, 40.752140, 31.743536>,  <31.133751, 40.870735, 32.421867>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.014359, 40.752140, 31.743536> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.642826, 40.836487, 31.865393>,  <30.419907, 40.887093, 31.938507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.642826, 40.836487, 31.865393>,  <31.014359, 40.752140, 31.743536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.642826, 40.836487, 31.865393> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245904, 0.264179, -0.932599,
		-0.277132, -0.941141, -0.193526,
		-0.928832, 0.210864, 0.304643,
		30.364176, 40.899746, 31.956785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.569464, 40.505428, 31.158285>,  <31.014359, 40.752140, 31.743536>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.569464, 40.505428, 31.158285> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.369774, 40.767902, 31.384628>,  <30.249960, 40.925388, 31.520435>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.369774, 40.767902, 31.384628>,  <30.569464, 40.505428, 31.158285>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.369774, 40.767902, 31.384628> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323895, 0.464393, -0.824276,
		-0.803658, -0.594779, -0.019303,
		-0.499226, 0.656184, 0.565859,
		30.220007, 40.964756, 31.554386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.920904, 40.679810, 30.784470>,  <30.569464, 40.505428, 31.158285>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.920904, 40.679810, 30.784470> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.933470, 40.961449, 31.068232>,  <29.941010, 41.130432, 31.238489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.933470, 40.961449, 31.068232>,  <29.920904, 40.679810, 30.784470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.933470, 40.961449, 31.068232> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284040, 0.686780, -0.669070,
		-0.958298, -0.180482, 0.221567,
		0.031413, 0.704102, 0.709403,
		29.942894, 41.172680, 31.281052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.226181, 41.071960, 30.760784>,  <29.920904, 40.679810, 30.784470>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.226181, 41.071960, 30.760784> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.506824, 41.305435, 30.924273>,  <29.675211, 41.445518, 31.022366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.506824, 41.305435, 30.924273>,  <29.226181, 41.071960, 30.760784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.506824, 41.305435, 30.924273> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269781, 0.748487, -0.605793,
		-0.659517, 0.314765, 0.682613,
		0.701610, 0.583687, 0.408722,
		29.717308, 41.480541, 31.046888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.921688, 41.674751, 30.854355>,  <29.226181, 41.071960, 30.760784>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.921688, 41.674751, 30.854355> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.303370, 41.794052, 30.863642>,  <29.532379, 41.865631, 30.869213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.303370, 41.794052, 30.863642>,  <28.921688, 41.674751, 30.854355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.303370, 41.794052, 30.863642> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247126, 0.829611, -0.500673,
		-0.168587, 0.472007, 0.865325,
		0.954205, 0.298252, 0.023217,
		29.589630, 41.883526, 30.870607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.904209, 42.487152, 30.967241>,  <28.921688, 41.674751, 30.854355>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.904209, 42.487152, 30.967241> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.251959, 42.369781, 30.808199>,  <29.460609, 42.299358, 30.712774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.251959, 42.369781, 30.808199>,  <28.904209, 42.487152, 30.967241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.251959, 42.369781, 30.808199> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030187, 0.771576, -0.635421,
		0.493232, 0.564421, 0.661930,
		0.869374, -0.293428, -0.397604,
		29.512772, 42.281754, 30.688917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.172783, 43.128952, 30.617184>,  <28.904209, 42.487152, 30.967241>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.172783, 43.128952, 30.617184> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.400639, 42.837654, 30.464777>,  <29.537352, 42.662876, 30.373333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.400639, 42.837654, 30.464777>,  <29.172783, 43.128952, 30.617184>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.400639, 42.837654, 30.464777> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087730, 0.514810, -0.852804,
		0.817199, 0.452365, 0.357145,
		0.569640, -0.728243, -0.381016,
		29.571531, 42.619183, 30.350471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.927570, 43.371353, 30.348282>,  <29.172783, 43.128952, 30.617184>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.927570, 43.371353, 30.348282> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.846586, 43.024372, 30.166494>,  <29.797995, 42.816185, 30.057421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.846586, 43.024372, 30.166494>,  <29.927570, 43.371353, 30.348282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.846586, 43.024372, 30.166494> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003088, 0.463513, -0.886085,
		0.979285, -0.180802, -0.091165,
		-0.202462, -0.867448, -0.454470,
		29.785847, 42.764137, 30.030153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.492016, 43.379906, 29.737066>,  <29.927570, 43.371353, 30.348282>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.492016, 43.379906, 29.737066> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.200916, 43.117817, 29.656006>,  <30.026257, 42.960564, 29.607368>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.200916, 43.117817, 29.656006>,  <30.492016, 43.379906, 29.737066>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.200916, 43.117817, 29.656006> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051088, 0.242870, -0.968713,
		0.683938, -0.715333, -0.143274,
		-0.727749, -0.655220, -0.202653,
		29.982592, 42.921249, 29.595209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.728924, 43.061455, 28.964861>,  <30.492016, 43.379906, 29.737066>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.728924, 43.061455, 28.964861> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.344337, 42.960224, 29.007828>,  <30.113586, 42.899487, 29.033607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.344337, 42.960224, 29.007828>,  <30.728924, 43.061455, 28.964861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.344337, 42.960224, 29.007828> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172553, 0.251305, -0.952403,
		0.214033, -0.934237, -0.285290,
		-0.961465, -0.253073, 0.107418,
		30.055899, 42.884300, 29.040052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.537495, 42.641315, 28.339245>,  <30.728924, 43.061455, 28.964861>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.537495, 42.641315, 28.339245> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.205317, 42.775547, 28.517118>,  <30.006010, 42.856087, 28.623842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.205317, 42.775547, 28.517118>,  <30.537495, 42.641315, 28.339245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.205317, 42.775547, 28.517118> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327009, 0.352602, -0.876776,
		-0.451027, -0.873531, -0.183079,
		-0.830446, 0.335581, 0.444686,
		29.956182, 42.876221, 28.650524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.038671, 42.304428, 27.744631>,  <30.537495, 42.641315, 28.339245>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.038671, 42.304428, 27.744631> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.315100, 42.593513, 27.748932>,  <31.480957, 42.766964, 27.751513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.315100, 42.593513, 27.748932>,  <31.038671, 42.304428, 27.744631>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.315100, 42.593513, 27.748932> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486905, -0.476479, 0.732047,
		0.534180, -0.500659, -0.681170,
		0.691068, 0.722709, 0.010752,
		31.522421, 42.810326, 27.752157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.690088, 41.952618, 27.684784>,  <31.038671, 42.304428, 27.744631>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.690088, 41.952618, 27.684784> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.794357, 42.308155, 27.835520>,  <31.856918, 42.521477, 27.925961>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.794357, 42.308155, 27.835520>,  <31.690088, 41.952618, 27.684784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.794357, 42.308155, 27.835520> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572964, -0.456591, 0.680615,
		0.777021, 0.038496, -0.628297,
		0.260674, 0.888844, 0.376837,
		31.872559, 42.574806, 27.948570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.415222, 41.824070, 27.808378>,  <31.690088, 41.952618, 27.684784>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.415222, 41.824070, 27.808378> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.287724, 42.126572, 28.036934>,  <32.211224, 42.308071, 28.174067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.287724, 42.126572, 28.036934>,  <32.415222, 41.824070, 27.808378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.287724, 42.126572, 28.036934> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583571, -0.318448, 0.747018,
		0.746893, 0.571551, -0.339825,
		-0.318742, 0.756254, 0.571387,
		32.192101, 42.353447, 28.208349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.014816, 42.184624, 28.055630>,  <32.415222, 41.824070, 27.808378>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.014816, 42.184624, 28.055630> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.731186, 42.303024, 28.311630>,  <32.561008, 42.374065, 28.465231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.731186, 42.303024, 28.311630>,  <33.014816, 42.184624, 28.055630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.731186, 42.303024, 28.311630> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621295, -0.166981, 0.765579,
		0.333477, 0.940480, -0.065500,
		-0.709074, 0.295997, 0.640000,
		32.518463, 42.391823, 28.503630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.427212, 42.476891, 28.544521>,  <33.014816, 42.184624, 28.055630>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.427212, 42.476891, 28.544521> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.067013, 42.390709, 28.695612>,  <32.850891, 42.339001, 28.786266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.067013, 42.390709, 28.695612>,  <33.427212, 42.476891, 28.544521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.067013, 42.390709, 28.695612> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423478, -0.237107, 0.874326,
		-0.098816, 0.947290, 0.304756,
		-0.900501, -0.215455, 0.377726,
		32.796864, 42.326073, 28.808929>
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
