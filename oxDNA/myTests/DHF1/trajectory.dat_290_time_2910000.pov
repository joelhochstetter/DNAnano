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
	<2.569654, 1.847078, -0.736140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.230888, 1.747910, -0.547981>,  <2.027629, 1.688408, -0.435086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.230888, 1.747910, -0.547981>,  <2.569654, 1.847078, -0.736140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.230888, 1.747910, -0.547981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129110, 0.762296, 0.634220,
		-0.515819, 0.597862, -0.613589,
		-0.846913, -0.247922, 0.470397,
		1.976815, 1.673533, -0.406862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.988874, 2.414655, -0.788039>,  <2.569654, 1.847078, -0.736140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.988874, 2.414655, -0.788039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.974121, 2.204803, -0.447826>,  <1.965269, 2.078893, -0.243699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.974121, 2.204803, -0.447826>,  <1.988874, 2.414655, -0.788039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.974121, 2.204803, -0.447826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205264, 0.828986, 0.520239,
		-0.978011, 0.193772, 0.077113,
		-0.036882, -0.524628, 0.850532,
		1.963056, 2.047415, -0.192667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.425387, 2.811148, -0.385940>,  <1.988874, 2.414655, -0.788039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.425387, 2.811148, -0.385940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.735695, 2.658600, -0.184849>,  <1.921880, 2.567071, -0.064194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.735695, 2.658600, -0.184849>,  <1.425387, 2.811148, -0.385940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.735695, 2.658600, -0.184849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189493, 0.900724, 0.390881,
		-0.601890, -0.207971, 0.771023,
		0.775771, -0.381371, 0.502728,
		1.968426, 2.544188, -0.034030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.344821, 2.738730, 0.461088>,  <1.425387, 2.811148, -0.385940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.344821, 2.738730, 0.461088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.708916, 2.818008, 0.315659>,  <1.927373, 2.865575, 0.228401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.708916, 2.818008, 0.315659>,  <1.344821, 2.738730, 0.461088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.708916, 2.818008, 0.315659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005056, 0.883269, 0.468839,
		0.414055, -0.424917, 0.804987,
		0.910238, 0.198195, -0.363573,
		1.981987, 2.877467, 0.206587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.792104, 2.968206, 1.036164>,  <1.344821, 2.738730, 0.461088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.792104, 2.968206, 1.036164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.898834, 3.089111, 0.670116>,  <1.962872, 3.161654, 0.450488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.898834, 3.089111, 0.670116>,  <1.792104, 2.968206, 1.036164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.898834, 3.089111, 0.670116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118080, 0.932136, 0.342314,
		0.956484, -0.199395, 0.213027,
		0.266826, 0.302263, -0.915118,
		1.978882, 3.179790, 0.395581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.305777, 3.346819, 1.184179>,  <1.792104, 2.968206, 1.036164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.305777, 3.346819, 1.184179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.217865, 3.466919, 0.812901>,  <2.165118, 3.538979, 0.590134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.217865, 3.466919, 0.812901>,  <2.305777, 3.346819, 1.184179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.217865, 3.466919, 0.812901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300603, 0.926006, 0.228364,
		0.928081, -0.228829, -0.293773,
		-0.219779, 0.300249, -0.928196,
		2.151931, 3.556994, 0.534442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.823556, 3.837479, 1.015755>,  <2.305777, 3.346819, 1.184179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.823556, 3.837479, 1.015755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.514763, 3.920044, 0.775276>,  <2.329487, 3.969583, 0.630989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.514763, 3.920044, 0.775276>,  <2.823556, 3.837479, 1.015755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.514763, 3.920044, 0.775276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164191, 0.978463, 0.125106,
		0.614071, -0.002131, -0.789248,
		-0.771983, 0.206411, -0.601196,
		2.283168, 3.981967, 0.594917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.023126, 4.411685, 0.587375>,  <2.823556, 3.837479, 1.015755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.023126, 4.411685, 0.587375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.626778, 4.378342, 0.629757>,  <2.388969, 4.358336, 0.655186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.626778, 4.378342, 0.629757>,  <3.023126, 4.411685, 0.587375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.626778, 4.378342, 0.629757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069085, 0.988854, 0.131887,
		-0.115768, 0.123363, -0.985586,
		-0.990871, -0.083358, 0.105955,
		2.329516, 4.353334, 0.661543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.854473, 5.825346, 1.051008> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.592974, 5.644455, 1.293694>,  <2.436074, 5.535920, 1.439305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.592974, 5.644455, 1.293694>,  <2.854473, 5.825346, 1.051008>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.592974, 5.644455, 1.293694> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340129, -0.540609, -0.769451,
		0.675963, -0.709388, 0.199606,
		-0.653748, -0.452228, 0.606715,
		2.396849, 5.508787, 1.475708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.899865, 5.111727, 1.049907>,  <2.854473, 5.825346, 1.051008>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.899865, 5.111727, 1.049907> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.518192, 5.208115, 1.120865>,  <2.289188, 5.265947, 1.163440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.518192, 5.208115, 1.120865>,  <2.899865, 5.111727, 1.049907>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.518192, 5.208115, 1.120865> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286009, -0.560237, -0.777389,
		-0.087944, -0.792507, 0.603488,
		-0.954183, 0.240969, 0.177395,
		2.231937, 5.280406, 1.174083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.366850, 4.497756, 1.186688>,  <2.899865, 5.111727, 1.049907>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.366850, 4.497756, 1.186688> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.196939, 4.811691, 1.006203>,  <2.094993, 5.000052, 0.897911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.196939, 4.811691, 1.006203>,  <2.366850, 4.497756, 1.186688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.196939, 4.811691, 1.006203> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306753, -0.593710, -0.743916,
		-0.851744, -0.177586, 0.492946,
		-0.424776, 0.784839, -0.451214,
		2.069506, 5.047143, 0.870839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.649186, 4.445108, 1.147824>,  <2.366850, 4.497756, 1.186688>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.649186, 4.445108, 1.147824> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.809595, 4.639709, 0.837341>,  <1.905841, 4.756470, 0.651052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.809595, 4.639709, 0.837341>,  <1.649186, 4.445108, 1.147824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.809595, 4.639709, 0.837341> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365596, -0.691923, -0.622561,
		-0.839953, 0.533439, -0.099613,
		0.401023, 0.486503, -0.776206,
		1.929902, 4.785660, 0.604480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.219784, 4.551707, 0.525946>,  <1.649186, 4.445108, 1.147824>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.219784, 4.551707, 0.525946> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.601345, 4.531982, 0.407532>,  <1.830282, 4.520148, 0.336483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.601345, 4.531982, 0.407532>,  <1.219784, 4.551707, 0.525946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.601345, 4.531982, 0.407532> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221438, -0.781441, -0.583365,
		-0.202568, 0.622027, -0.756339,
		0.953903, -0.049311, -0.296036,
		1.887516, 4.517189, 0.318721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.478295, 4.453853, -0.265728>,  <1.219784, 4.551707, 0.525946>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.478295, 4.453853, -0.265728> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.757469, 4.299927, -0.024132>,  <1.924974, 4.207571, 0.120826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.757469, 4.299927, -0.024132>,  <1.478295, 4.453853, -0.265728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.757469, 4.299927, -0.024132> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187464, -0.912131, -0.364519,
		0.691190, 0.141184, -0.708747,
		0.697935, -0.384816, 0.603989,
		1.966850, 4.184482, 0.157065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.730947, 3.945285, -0.642243>,  <1.478295, 4.453853, -0.265728>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.730947, 3.945285, -0.642243> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.849592, 3.834213, -0.276749>,  <1.920780, 3.767570, -0.057452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.849592, 3.834213, -0.276749>,  <1.730947, 3.945285, -0.642243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.849592, 3.834213, -0.276749> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040597, -0.952263, -0.302567,
		0.954134, 0.126841, -0.271182,
		0.296614, -0.277680, 0.913736,
		1.938576, 3.750909, -0.002628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.293071, 3.560678, -0.816855>,  <1.730947, 3.945285, -0.642243>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.293071, 3.560678, -0.816855> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.204277, 3.419083, -0.453445>,  <2.151000, 3.334125, -0.235400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.204277, 3.419083, -0.453445>,  <2.293071, 3.560678, -0.816855>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.204277, 3.419083, -0.453445> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268345, -0.917969, -0.292102,
		0.937397, 0.178955, 0.298767,
		-0.221986, -0.353989, 0.908523,
		2.137681, 3.312886, -0.180888>
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
