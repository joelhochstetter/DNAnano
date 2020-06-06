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
	<24.264874, 34.497131, 35.169609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.393888, 34.874718, 35.197594>,  <24.471298, 35.101269, 35.214386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.393888, 34.874718, 35.197594>,  <24.264874, 34.497131, 35.169609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.393888, 34.874718, 35.197594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743766, -0.207029, -0.635571,
		-0.585474, 0.257030, -0.768866,
		0.322539, 0.943967, 0.069960,
		24.490650, 35.157909, 35.218582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.245132, 34.814190, 34.431606>,  <24.264874, 34.497131, 35.169609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.245132, 34.814190, 34.431606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.545908, 34.885971, 34.685341>,  <24.726374, 34.929039, 34.837582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.545908, 34.885971, 34.685341>,  <24.245132, 34.814190, 34.431606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.545908, 34.885971, 34.685341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658859, -0.236968, -0.713968,
		0.022196, 0.954800, -0.296418,
		0.751939, 0.179451, 0.634339,
		24.771490, 34.939808, 34.875641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.764502, 34.941364, 34.002739>,  <24.245132, 34.814190, 34.431606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.764502, 34.941364, 34.002739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.964870, 34.907887, 34.347313>,  <25.085091, 34.887798, 34.554058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.964870, 34.907887, 34.347313>,  <24.764502, 34.941364, 34.002739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.964870, 34.907887, 34.347313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856398, -0.095989, -0.507316,
		0.125149, 0.991857, 0.023594,
		0.500920, -0.083696, 0.861437,
		25.115147, 34.882778, 34.605743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.331072, 35.418766, 33.931831>,  <24.764502, 34.941364, 34.002739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.331072, 35.418766, 33.931831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.393518, 35.097298, 34.161522>,  <25.430986, 34.904415, 34.299335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.393518, 35.097298, 34.161522>,  <25.331072, 35.418766, 33.931831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.393518, 35.097298, 34.161522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822759, -0.215868, -0.525804,
		0.546531, 0.554537, 0.627528,
		0.156114, -0.803673, 0.574229,
		25.440353, 34.856197, 34.333790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.958529, 35.527866, 34.260971>,  <25.331072, 35.418766, 33.931831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.958529, 35.527866, 34.260971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.861135, 35.143173, 34.210709>,  <25.802700, 34.912357, 34.180550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.861135, 35.143173, 34.210709>,  <25.958529, 35.527866, 34.260971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.861135, 35.143173, 34.210709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832951, -0.140969, -0.535090,
		0.496899, -0.234950, 0.835398,
		-0.243484, -0.961731, -0.125655,
		25.788090, 34.854652, 34.173012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.610586, 35.082401, 34.389656>,  <25.958529, 35.527866, 34.260971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.610586, 35.082401, 34.389656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.349844, 34.888367, 34.156494>,  <26.193399, 34.771946, 34.016598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.349844, 34.888367, 34.156494>,  <26.610586, 35.082401, 34.389656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.349844, 34.888367, 34.156494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745467, -0.268837, -0.609923,
		0.139158, -0.832117, 0.536858,
		-0.651855, -0.485086, -0.582905,
		26.154287, 34.742840, 33.981625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.010553, 34.430935, 34.177158>,  <26.610586, 35.082401, 34.389656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.010553, 34.430935, 34.177158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.723776, 34.483128, 33.903233>,  <26.551710, 34.514442, 33.738876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.723776, 34.483128, 33.903233>,  <27.010553, 34.430935, 34.177158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.723776, 34.483128, 33.903233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636936, -0.276704, -0.719546,
		-0.283372, -0.952056, 0.115278,
		-0.716946, 0.130475, -0.684809,
		26.508692, 34.522274, 33.697788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.036331, 33.843369, 33.826290>,  <27.010553, 34.430935, 34.177158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.036331, 33.843369, 33.826290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.832991, 34.081585, 33.577480>,  <26.710985, 34.224514, 33.428196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.832991, 34.081585, 33.577480>,  <27.036331, 33.843369, 33.826290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.832991, 34.081585, 33.577480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610366, -0.260364, -0.748107,
		-0.607480, -0.759962, -0.231141,
		-0.508352, 0.595540, -0.622020,
		26.680485, 34.260246, 33.390873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.068544, 33.490898, 33.163929>,  <27.036331, 33.843369, 33.826290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.068544, 33.490898, 33.163929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.958347, 33.861557, 33.061611>,  <26.892229, 34.083954, 33.000221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.958347, 33.861557, 33.061611>,  <27.068544, 33.490898, 33.163929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.958347, 33.861557, 33.061611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438476, -0.115672, -0.891268,
		-0.855479, -0.357696, -0.374446,
		-0.275490, 0.926646, -0.255796,
		26.875700, 34.139549, 32.984871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.786600, 33.341389, 32.513893>,  <27.068544, 33.490898, 33.163929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.786600, 33.341389, 32.513893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.884615, 33.728989, 32.526539>,  <26.943424, 33.961548, 32.534126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.884615, 33.728989, 32.526539>,  <26.786600, 33.341389, 32.513893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.884615, 33.728989, 32.526539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290052, -0.042155, -0.956082,
		-0.925109, 0.243446, -0.291389,
		0.245038, 0.968998, 0.031613,
		26.958126, 34.019688, 32.536022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.442022, 33.721359, 32.013550>,  <26.786600, 33.341389, 32.513893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.442022, 33.721359, 32.013550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.772997, 33.927471, 32.102844>,  <26.971582, 34.051140, 32.156422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.772997, 33.927471, 32.102844>,  <26.442022, 33.721359, 32.013550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.772997, 33.927471, 32.102844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253985, 0.011146, -0.967144,
		-0.500840, 0.856948, -0.121651,
		0.827436, 0.515282, 0.223235,
		27.021227, 34.082054, 32.169815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.518276, 34.094425, 31.412056>,  <26.442022, 33.721359, 32.013550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.518276, 34.094425, 31.412056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.860989, 34.146023, 31.611771>,  <27.066616, 34.176979, 31.731600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.860989, 34.146023, 31.611771>,  <26.518276, 34.094425, 31.412056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.860989, 34.146023, 31.611771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512825, -0.111344, -0.851242,
		-0.054211, 0.985375, -0.161548,
		0.856780, 0.128992, 0.499289,
		27.118023, 34.184719, 31.761557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.921724, 34.565918, 31.060564>,  <26.518276, 34.094425, 31.412056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.921724, 34.565918, 31.060564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.196377, 34.367775, 31.273415>,  <27.361168, 34.248890, 31.401125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.196377, 34.367775, 31.273415>,  <26.921724, 34.565918, 31.060564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.196377, 34.367775, 31.273415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516080, -0.183420, -0.836671,
		0.512056, 0.849103, 0.129704,
		0.686629, -0.495360, 0.532126,
		27.402365, 34.219166, 31.433052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.521801, 34.856674, 30.859964>,  <26.921724, 34.565918, 31.060564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.521801, 34.856674, 30.859964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.628258, 34.497890, 31.001181>,  <27.692133, 34.282619, 31.085911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.628258, 34.497890, 31.001181>,  <27.521801, 34.856674, 30.859964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.628258, 34.497890, 31.001181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391252, -0.234205, -0.889983,
		0.880960, 0.374990, 0.288604,
		0.266143, -0.896956, 0.353040,
		27.708101, 34.228802, 31.107092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.140169, 34.679619, 30.383366>,  <27.521801, 34.856674, 30.859964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.140169, 34.679619, 30.383366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.067053, 34.347759, 30.594374>,  <28.023184, 34.148643, 30.720978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.067053, 34.347759, 30.594374>,  <28.140169, 34.679619, 30.383366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.067053, 34.347759, 30.594374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325616, -0.557364, -0.763754,
		0.927665, 0.032163, 0.372025,
		-0.182789, -0.829645, 0.527520,
		28.012217, 34.098866, 30.752630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.766987, 34.313507, 30.446537>,  <28.140169, 34.679619, 30.383366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.766987, 34.313507, 30.446537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.475836, 34.041172, 30.479166>,  <28.301146, 33.877769, 30.498743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.475836, 34.041172, 30.479166>,  <28.766987, 34.313507, 30.446537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.475836, 34.041172, 30.479166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532406, -0.636106, -0.558492,
		0.432132, -0.363084, 0.825489,
		-0.727877, -0.680838, 0.081574,
		28.257473, 33.836922, 30.503637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.100168, 33.699810, 30.426062>,  <28.766987, 34.313507, 30.446537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.100168, 33.699810, 30.426062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.724005, 33.588264, 30.348223>,  <28.498306, 33.521339, 30.301519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.724005, 33.588264, 30.348223>,  <29.100168, 33.699810, 30.426062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.724005, 33.588264, 30.348223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339935, -0.756233, -0.559067,
		0.008740, -0.591902, 0.805962,
		-0.940408, -0.278861, -0.194599,
		28.441883, 33.504604, 30.289843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.124714, 32.950932, 30.476377>,  <29.100168, 33.699810, 30.426062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.124714, 32.950932, 30.476377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.797533, 33.059525, 30.273497>,  <28.601225, 33.124680, 30.151768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.797533, 33.059525, 30.273497>,  <29.124714, 32.950932, 30.476377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.797533, 33.059525, 30.273497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230061, -0.653722, -0.720916,
		-0.527281, -0.706362, 0.472257,
		-0.817952, 0.271478, -0.507201,
		28.552147, 33.140968, 30.121336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.808586, 32.272652, 30.257158>,  <29.124714, 32.950932, 30.476377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.808586, 32.272652, 30.257158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.640455, 32.533794, 30.005095>,  <28.539577, 32.690479, 29.853857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.640455, 32.533794, 30.005095>,  <28.808586, 32.272652, 30.257158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.640455, 32.533794, 30.005095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305244, -0.552272, -0.775772,
		-0.854490, -0.518428, 0.032851,
		-0.420325, 0.652861, -0.630158,
		28.514359, 32.729652, 29.816048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.513268, 31.844263, 29.728987>,  <28.808586, 32.272652, 30.257158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.513268, 31.844263, 29.728987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.572559, 32.200222, 29.556423>,  <28.608133, 32.413795, 29.452885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.572559, 32.200222, 29.556423>,  <28.513268, 31.844263, 29.728987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.572559, 32.200222, 29.556423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293476, -0.456157, -0.840115,
		-0.944405, -0.002080, -0.328778,
		0.148227, 0.889897, -0.431407,
		28.617027, 32.467190, 29.427002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.054264, 31.910074, 29.125872>,  <28.513268, 31.844263, 29.728987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.054264, 31.910074, 29.125872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.348173, 32.176704, 29.075611>,  <28.524519, 32.336681, 29.045456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.348173, 32.176704, 29.075611>,  <28.054264, 31.910074, 29.125872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.348173, 32.176704, 29.075611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200975, -0.390857, -0.898243,
		-0.647856, 0.634752, -0.421156,
		0.734773, 0.666574, -0.125650,
		28.568605, 32.376678, 29.037916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.966284, 32.186108, 28.516132>,  <28.054264, 31.910074, 29.125872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.966284, 32.186108, 28.516132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.353350, 32.234661, 28.604578>,  <28.585588, 32.263794, 28.657646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.353350, 32.234661, 28.604578>,  <27.966284, 32.186108, 28.516132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.353350, 32.234661, 28.604578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246277, -0.265144, -0.932227,
		-0.054525, 0.956538, -0.286463,
		0.967665, 0.121379, 0.221116,
		28.643650, 32.271076, 28.670914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.268038, 32.109810, 27.890676>,  <27.966284, 32.186108, 28.516132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.268038, 32.109810, 27.890676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.588406, 32.096157, 28.129797>,  <28.780626, 32.087963, 28.273270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.588406, 32.096157, 28.129797>,  <28.268038, 32.109810, 27.890676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.588406, 32.096157, 28.129797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573858, -0.241233, -0.782619,
		0.170924, 0.969867, -0.173618,
		0.800919, -0.034136, 0.597799,
		28.828682, 32.085915, 28.309137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.738546, 32.376713, 27.496201>,  <28.268038, 32.109810, 27.890676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.738546, 32.376713, 27.496201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.934324, 32.157703, 27.767689>,  <29.051790, 32.026299, 27.930582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.934324, 32.157703, 27.767689>,  <28.738546, 32.376713, 27.496201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.934324, 32.157703, 27.767689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628449, -0.318123, -0.709824,
		0.604563, 0.773959, 0.188388,
		0.489444, -0.547526, 0.678719,
		29.081158, 31.993446, 27.971304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.465149, 32.501667, 27.308750>,  <28.738546, 32.376713, 27.496201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.465149, 32.501667, 27.308750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.496420, 32.175423, 27.538067>,  <29.515182, 31.979675, 27.675657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.496420, 32.175423, 27.538067>,  <29.465149, 32.501667, 27.308750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.496420, 32.175423, 27.538067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652396, -0.392973, -0.648037,
		0.753835, 0.424676, 0.501381,
		0.078177, -0.815612, 0.573294,
		29.519873, 31.930738, 27.710054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.249504, 32.372482, 27.656527>,  <29.465149, 32.501667, 27.308750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.249504, 32.372482, 27.656527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.034042, 32.045109, 27.576509>,  <29.904766, 31.848684, 27.528500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.034042, 32.045109, 27.576509>,  <30.249504, 32.372482, 27.656527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.034042, 32.045109, 27.576509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719063, -0.322835, -0.615407,
		0.439091, -0.475334, 0.762402,
		-0.538654, -0.818435, -0.200041,
		29.872446, 31.799578, 27.516497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.730436, 31.700520, 27.752951>,  <30.249504, 32.372482, 27.656527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.730436, 31.700520, 27.752951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.407734, 31.655409, 27.520941>,  <30.214113, 31.628342, 27.381735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.407734, 31.655409, 27.520941>,  <30.730436, 31.700520, 27.752951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.407734, 31.655409, 27.520941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540153, -0.538705, -0.646553,
		-0.239544, -0.834912, 0.495521,
		-0.806755, -0.112779, -0.580024,
		30.165707, 31.621574, 27.346933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.472315, 31.393749, 28.019882>,  <30.730436, 31.700520, 27.752951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.472315, 31.393749, 28.019882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.837297, 31.376139, 27.857162>,  <32.056286, 31.365572, 27.759531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.837297, 31.376139, 27.857162>,  <31.472315, 31.393749, 28.019882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.837297, 31.376139, 27.857162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385744, 0.424165, 0.819320,
		0.136481, -0.904514, 0.404014,
		0.912455, -0.044025, -0.406801,
		32.111034, 31.362932, 27.735123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.054337, 30.954929, 28.436962>,  <31.472315, 31.393749, 28.019882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.054337, 30.954929, 28.436962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.166969, 31.280485, 28.233673>,  <32.234550, 31.475819, 28.111700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.166969, 31.280485, 28.233673>,  <32.054337, 30.954929, 28.436962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.166969, 31.280485, 28.233673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172447, 0.478108, 0.861205,
		0.943914, -0.330143, -0.005726,
		0.281583, 0.813891, -0.508225,
		32.251446, 31.524652, 28.081205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.764271, 31.043736, 28.623812>,  <32.054337, 30.954929, 28.436962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.764271, 31.043736, 28.623812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.536316, 31.362236, 28.542610>,  <32.399544, 31.553335, 28.493889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.536316, 31.362236, 28.542610>,  <32.764271, 31.043736, 28.623812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.536316, 31.362236, 28.542610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027623, 0.265473, 0.963722,
		0.821256, 0.543609, -0.173286,
		-0.569891, 0.796249, -0.203005,
		32.365349, 31.601110, 28.481709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.846142, 30.629351, 27.992353>,  <32.764271, 31.043736, 28.623812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.846142, 30.629351, 27.992353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.807396, 30.261600, 27.839848>,  <32.784149, 30.040951, 27.748344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.807396, 30.261600, 27.839848>,  <32.846142, 30.629351, 27.992353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.807396, 30.261600, 27.839848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621068, -0.243502, 0.744971,
		-0.777747, 0.308957, -0.547408,
		-0.096869, -0.919376, -0.381266,
		32.778336, 29.985788, 27.725468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.071209, 30.517445, 27.780329>,  <32.846142, 30.629351, 27.992353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.071209, 30.517445, 27.780329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.257660, 30.169180, 27.843163>,  <32.369530, 29.960222, 27.880863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.257660, 30.169180, 27.843163>,  <32.071209, 30.517445, 27.780329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.257660, 30.169180, 27.843163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748447, -0.293390, 0.594768,
		-0.471754, -0.394807, -0.788401,
		0.466127, -0.870660, 0.157085,
		32.397499, 29.907982, 27.890287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.790857, 29.820652, 27.585594>,  <32.071209, 30.517445, 27.780329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.790857, 29.820652, 27.585594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.009174, 29.884951, 27.914537>,  <32.140163, 29.923529, 28.111902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.009174, 29.884951, 27.914537>,  <31.790857, 29.820652, 27.585594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.009174, 29.884951, 27.914537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825390, -0.065941, 0.560698,
		0.144356, -0.984791, 0.096686,
		0.545795, 0.160744, 0.822356,
		32.172913, 29.933174, 28.161243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.685888, 29.216099, 28.121035>,  <31.790857, 29.820652, 27.585594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.685888, 29.216099, 28.121035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.766504, 29.583643, 28.256729>,  <31.814873, 29.804169, 28.338146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.766504, 29.583643, 28.256729>,  <31.685888, 29.216099, 28.121035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.766504, 29.583643, 28.256729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792540, -0.050534, 0.607723,
		0.575555, -0.391337, 0.718048,
		0.201538, 0.918859, 0.339235,
		31.826965, 29.859301, 28.358500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.454655, 29.254044, 28.804159>,  <31.685888, 29.216099, 28.121035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.454655, 29.254044, 28.804159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.467686, 29.645180, 28.721437>,  <31.475504, 29.879862, 28.671804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.467686, 29.645180, 28.721437>,  <31.454655, 29.254044, 28.804159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.467686, 29.645180, 28.721437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667498, 0.175290, 0.723685,
		0.743899, 0.114467, 0.658416,
		0.032576, 0.977840, -0.206805,
		31.477459, 29.938532, 28.659395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.529993, 29.605885, 29.458841>,  <31.454655, 29.254044, 28.804159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.529993, 29.605885, 29.458841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.363979, 29.837667, 29.178278>,  <31.264372, 29.976738, 29.009939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.363979, 29.837667, 29.178278>,  <31.529993, 29.605885, 29.458841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.363979, 29.837667, 29.178278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731628, 0.245694, 0.635890,
		0.540804, 0.777085, 0.321977,
		-0.415032, 0.579459, -0.701409,
		31.239470, 30.011505, 28.967855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.598871, 30.305351, 29.656042>,  <31.529993, 29.605885, 29.458841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.598871, 30.305351, 29.656042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.286659, 30.286963, 29.406672>,  <31.099333, 30.275928, 29.257050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.286659, 30.286963, 29.406672>,  <31.598871, 30.305351, 29.656042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.286659, 30.286963, 29.406672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603327, 0.316420, 0.732035,
		0.163611, 0.947505, -0.274712,
		-0.780531, -0.045972, -0.623425,
		31.052500, 30.273170, 29.219645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.330288, 30.935005, 29.702381>,  <31.598871, 30.305351, 29.656042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.330288, 30.935005, 29.702381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.026163, 30.717155, 29.560785>,  <30.843689, 30.586445, 29.475828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.026163, 30.717155, 29.560785>,  <31.330288, 30.935005, 29.702381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.026163, 30.717155, 29.560785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617554, 0.437128, 0.653870,
		-0.201377, 0.715752, -0.668690,
		-0.760312, -0.544627, -0.353987,
		30.798069, 30.553768, 29.454590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.787357, 31.408886, 29.756170>,  <31.330288, 30.935005, 29.702381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.787357, 31.408886, 29.756170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.592258, 31.067896, 29.680920>,  <30.475199, 30.863302, 29.635769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.592258, 31.067896, 29.680920>,  <30.787357, 31.408886, 29.756170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.592258, 31.067896, 29.680920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788286, 0.337479, 0.514502,
		-0.375112, 0.399242, -0.836598,
		-0.487745, -0.852475, -0.188124,
		30.445934, 30.812153, 29.624483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.082010, 31.546515, 29.546478>,  <30.787357, 31.408886, 29.756170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.082010, 31.546515, 29.546478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.066431, 31.173351, 29.689678>,  <30.057083, 30.949453, 29.775599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.066431, 31.173351, 29.689678>,  <30.082010, 31.546515, 29.546478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.066431, 31.173351, 29.689678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813581, 0.237615, 0.530683,
		-0.580145, -0.270593, -0.768252,
		-0.038949, -0.932908, 0.358001,
		30.054747, 30.893478, 29.797079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.397186, 31.464512, 29.687746>,  <30.082010, 31.546515, 29.546478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.397186, 31.464512, 29.687746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.558329, 31.151583, 29.877768>,  <29.655014, 30.963825, 29.991781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.558329, 31.151583, 29.877768>,  <29.397186, 31.464512, 29.687746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.558329, 31.151583, 29.877768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719219, 0.050426, 0.692951,
		-0.566067, -0.620827, -0.542348,
		0.402855, -0.782324, 0.475055,
		29.679186, 30.916885, 30.020285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.895851, 30.903793, 29.778141>,  <29.397186, 31.464512, 29.687746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.895851, 30.903793, 29.778141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.165548, 30.847042, 30.068043>,  <29.327366, 30.812990, 30.241983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.165548, 30.847042, 30.068043>,  <28.895851, 30.903793, 29.778141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.165548, 30.847042, 30.068043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738511, -0.130686, 0.661456,
		0.000870, -0.981220, -0.192892,
		0.674241, -0.141877, 0.724755,
		29.367821, 30.804478, 30.285469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.630934, 30.287365, 30.252035>,  <28.895851, 30.903793, 29.778141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.630934, 30.287365, 30.252035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.873644, 30.532454, 30.454578>,  <29.019270, 30.679506, 30.576105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.873644, 30.532454, 30.454578>,  <28.630934, 30.287365, 30.252035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.873644, 30.532454, 30.454578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645497, 0.008084, 0.763721,
		0.463853, -0.790259, 0.400414,
		0.606774, 0.612720, 0.506360,
		29.055676, 30.716269, 30.606485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.546631, 30.027252, 30.906782>,  <28.630934, 30.287365, 30.252035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.546631, 30.027252, 30.906782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.750387, 30.366386, 30.965706>,  <28.872641, 30.569866, 31.001060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.750387, 30.366386, 30.965706>,  <28.546631, 30.027252, 30.906782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.750387, 30.366386, 30.965706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542707, 0.183662, 0.819596,
		0.667826, -0.497439, 0.553681,
		0.509389, 0.847834, 0.147310,
		28.903204, 30.620737, 31.009899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.542372, 30.072247, 31.615007>,  <28.546631, 30.027252, 30.906782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.542372, 30.072247, 31.615007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.654911, 30.448933, 31.541231>,  <28.722435, 30.674944, 31.496965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.654911, 30.448933, 31.541231>,  <28.542372, 30.072247, 31.615007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.654911, 30.448933, 31.541231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399707, 0.289744, 0.869645,
		0.872397, -0.170951, 0.457929,
		0.281348, 0.941714, -0.184441,
		28.739315, 30.731447, 31.485899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.774065, 30.271488, 32.245560>,  <28.542372, 30.072247, 31.615007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.774065, 30.271488, 32.245560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.691666, 30.613155, 32.054581>,  <28.642225, 30.818155, 31.939993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.691666, 30.613155, 32.054581>,  <28.774065, 30.271488, 32.245560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.691666, 30.613155, 32.054581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622791, 0.261900, 0.737252,
		0.754782, 0.449225, 0.478018,
		-0.205999, 0.854169, -0.477450,
		28.629866, 30.869406, 31.911346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.974211, 30.740477, 32.608070>,  <28.774065, 30.271488, 32.245560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.974211, 30.740477, 32.608070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.688213, 30.914583, 32.389225>,  <28.516615, 31.019047, 32.257919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.688213, 30.914583, 32.389225>,  <28.974211, 30.740477, 32.608070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.688213, 30.914583, 32.389225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512069, 0.206757, 0.833689,
		0.475994, 0.876240, 0.075055,
		-0.714993, 0.435265, -0.547110,
		28.473715, 31.045162, 32.225094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.838388, 31.295843, 32.937088>,  <28.974211, 30.740477, 32.608070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.838388, 31.295843, 32.937088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.513369, 31.279877, 32.704479>,  <28.318357, 31.270298, 32.564915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.513369, 31.279877, 32.704479>,  <28.838388, 31.295843, 32.937088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.513369, 31.279877, 32.704479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577585, 0.189476, 0.794037,
		0.078491, 0.981074, -0.177013,
		-0.812548, -0.039915, -0.581526,
		28.269604, 31.267902, 32.530022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.422049, 31.868765, 33.154385>,  <28.838388, 31.295843, 32.937088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.422049, 31.868765, 33.154385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.154152, 31.668880, 32.934662>,  <27.993414, 31.548950, 32.802830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.154152, 31.668880, 32.934662>,  <28.422049, 31.868765, 33.154385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.154152, 31.668880, 32.934662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720706, 0.259124, 0.642991,
		-0.178971, 0.826525, -0.533691,
		-0.669741, -0.499711, -0.549305,
		27.953230, 31.518967, 32.769871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.787518, 32.280621, 32.962753>,  <28.422049, 31.868765, 33.154385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.787518, 32.280621, 32.962753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.640587, 31.909672, 32.934338>,  <27.552429, 31.687101, 32.917286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.640587, 31.909672, 32.934338>,  <27.787518, 32.280621, 32.962753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.640587, 31.909672, 32.934338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824485, 0.289317, 0.486333,
		-0.430460, 0.237217, -0.870880,
		-0.367327, -0.927375, -0.071042,
		27.530388, 31.631460, 32.913025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.188047, 32.367050, 32.772839>,  <27.787518, 32.280621, 32.962753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.188047, 32.367050, 32.772839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.193394, 32.009617, 32.952320>,  <27.196602, 31.795156, 33.060009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.193394, 32.009617, 32.952320>,  <27.188047, 32.367050, 32.772839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.193394, 32.009617, 32.952320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822780, 0.245169, 0.512762,
		-0.568202, -0.376038, -0.731944,
		0.013368, -0.893582, 0.448702,
		27.197405, 31.741543, 33.086929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.547628, 32.091938, 32.825550>,  <27.188047, 32.367050, 32.772839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.547628, 32.091938, 32.825550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.721897, 31.872398, 33.110916>,  <26.826458, 31.740675, 33.282135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.721897, 31.872398, 33.110916>,  <26.547628, 32.091938, 32.825550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.721897, 31.872398, 33.110916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716563, 0.268178, 0.643909,
		-0.544729, -0.791737, -0.276446,
		0.435670, -0.548846, 0.713414,
		26.852598, 31.707745, 33.324940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.977762, 31.833302, 33.145782>,  <26.547628, 32.091938, 32.825550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.977762, 31.833302, 33.145782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.287085, 31.844204, 33.399162>,  <26.472677, 31.850746, 33.551189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.287085, 31.844204, 33.399162>,  <25.977762, 31.833302, 33.145782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.287085, 31.844204, 33.399162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612314, 0.291358, 0.734971,
		-0.164527, -0.956226, 0.241999,
		0.773306, 0.027256, 0.633447,
		26.519077, 31.852381, 33.589195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.807573, 31.350279, 33.688847>,  <25.977762, 31.833302, 33.145782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.807573, 31.350279, 33.688847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.076431, 31.599186, 33.849350>,  <26.237745, 31.748529, 33.945652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.076431, 31.599186, 33.849350>,  <25.807573, 31.350279, 33.688847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.076431, 31.599186, 33.849350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619766, 0.176330, 0.764721,
		0.405107, -0.762687, 0.504179,
		0.672145, 0.622267, 0.401255,
		26.278074, 31.785866, 33.969727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.887918, 31.161835, 34.388229>,  <25.807573, 31.350279, 33.688847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.887918, 31.161835, 34.388229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.009451, 31.542353, 34.367355>,  <26.082371, 31.770664, 34.354832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.009451, 31.542353, 34.367355>,  <25.887918, 31.161835, 34.388229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.009451, 31.542353, 34.367355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690931, 0.257724, 0.675421,
		0.655973, -0.169161, 0.735584,
		0.303832, 0.951295, -0.052182,
		26.100601, 31.827742, 34.351700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.940651, 31.266069, 35.021919>,  <25.887918, 31.161835, 34.388229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.940651, 31.266069, 35.021919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.919312, 31.634956, 34.868729>,  <25.906507, 31.856289, 34.776814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.919312, 31.634956, 34.868729>,  <25.940651, 31.266069, 35.021919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.919312, 31.634956, 34.868729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537778, 0.296619, 0.789185,
		0.841397, 0.248058, 0.480123,
		-0.053350, 0.922217, -0.382974,
		25.903307, 31.911621, 34.753838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.159849, 31.801825, 35.527416>,  <25.940651, 31.266069, 35.021919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.159849, 31.801825, 35.527416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.900023, 31.958632, 35.266838>,  <25.744127, 32.052715, 35.110489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.900023, 31.958632, 35.266838>,  <26.159849, 31.801825, 35.527416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.900023, 31.958632, 35.266838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536300, 0.371100, 0.758068,
		0.538930, 0.841787, -0.030815,
		-0.649567, 0.392020, -0.651447,
		25.705153, 32.076237, 35.071404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.607439, 31.622778, 36.099148>,  <26.159849, 31.801825, 35.527416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.607439, 31.622778, 36.099148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.859413, 31.891005, 35.942421>,  <27.010597, 32.051941, 35.848385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.859413, 31.891005, 35.942421>,  <26.607439, 31.622778, 36.099148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.859413, 31.891005, 35.942421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192378, 0.623498, 0.757787,
		0.752443, -0.401981, 0.521766,
		0.629936, 0.670568, -0.391815,
		27.048393, 32.092175, 35.824875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.107574, 31.562983, 35.617874>,  <26.607439, 31.622778, 36.099148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.107574, 31.562983, 35.617874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.254816, 31.783361, 35.318287>,  <27.343161, 31.915588, 35.138535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.254816, 31.783361, 35.318287>,  <27.107574, 31.562983, 35.617874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.254816, 31.783361, 35.318287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774031, 0.264722, 0.575151,
		0.515147, -0.791442, -0.329004,
		0.368104, 0.550946, -0.748971,
		27.365248, 31.948645, 35.093594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.716997, 31.309504, 35.523647>,  <27.107574, 31.562983, 35.617874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.716997, 31.309504, 35.523647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.745117, 31.689400, 35.401630>,  <27.761990, 31.917337, 35.328419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.745117, 31.689400, 35.401630>,  <27.716997, 31.309504, 35.523647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.745117, 31.689400, 35.401630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900418, 0.071194, 0.429160,
		0.429308, -0.304839, -0.850158,
		0.070299, 0.949739, -0.305047,
		27.766207, 31.974321, 35.310116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.264059, 31.521349, 34.938686>,  <27.716997, 31.309504, 35.523647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.264059, 31.521349, 34.938686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.174101, 31.758657, 35.247868>,  <28.120127, 31.901043, 35.433376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.174101, 31.758657, 35.247868>,  <28.264059, 31.521349, 34.938686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.174101, 31.758657, 35.247868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.890817, -0.196229, 0.409804,
		0.394800, 0.780719, -0.484367,
		-0.224895, 0.593273, 0.772949,
		28.106632, 31.936640, 35.479752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.901289, 31.941494, 35.106056>,  <28.264059, 31.521349, 34.938686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.901289, 31.941494, 35.106056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.642393, 31.924660, 35.410507>,  <28.487055, 31.914558, 35.593178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.642393, 31.924660, 35.410507>,  <28.901289, 31.941494, 35.106056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.642393, 31.924660, 35.410507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761373, 0.013158, 0.648181,
		-0.037295, 0.999027, 0.023528,
		-0.647241, -0.042087, 0.761123,
		28.448221, 31.912033, 35.638844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.011738, 32.416454, 35.675259>,  <28.901289, 31.941494, 35.106056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.011738, 32.416454, 35.675259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.829847, 32.101944, 35.842590>,  <28.720713, 31.913239, 35.942989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.829847, 32.101944, 35.842590>,  <29.011738, 32.416454, 35.675259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.829847, 32.101944, 35.842590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665713, 0.011962, 0.746112,
		-0.591651, 0.617764, 0.517992,
		-0.454725, -0.786272, 0.418331,
		28.693430, 31.866062, 35.968090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.871958, 32.532349, 36.442955>,  <29.011738, 32.416454, 35.675259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.871958, 32.532349, 36.442955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.925243, 32.154331, 36.323521>,  <28.957214, 31.927521, 36.251862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.925243, 32.154331, 36.323521>,  <28.871958, 32.532349, 36.442955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.925243, 32.154331, 36.323521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684865, -0.129990, 0.716982,
		-0.716390, -0.299999, 0.629909,
		0.133212, -0.945041, -0.298582,
		28.965208, 31.870819, 36.233948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.733774, 32.013241, 36.934387>,  <28.871958, 32.532349, 36.442955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.733774, 32.013241, 36.934387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.032904, 31.904112, 36.692287>,  <29.212381, 31.838634, 36.547028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.032904, 31.904112, 36.692287>,  <28.733774, 32.013241, 36.934387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.032904, 31.904112, 36.692287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598277, -0.118250, 0.792516,
		-0.287788, -0.954769, 0.074793,
		0.747826, -0.272824, -0.605247,
		29.257252, 31.822266, 36.510712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.099506, 31.456396, 37.342503>,  <28.733774, 32.013241, 36.934387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.099506, 31.456396, 37.342503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.336117, 31.647324, 37.082573>,  <29.478083, 31.761879, 36.926617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.336117, 31.647324, 37.082573>,  <29.099506, 31.456396, 37.342503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.336117, 31.647324, 37.082573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631599, 0.226659, 0.741424,
		0.501182, -0.848996, -0.167399,
		0.591523, 0.477317, -0.649822,
		29.513575, 31.790518, 36.887627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.842529, 31.177305, 37.465015>,  <29.099506, 31.456396, 37.342503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.842529, 31.177305, 37.465015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.866835, 31.541243, 37.300823>,  <29.881418, 31.759605, 37.202309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.866835, 31.541243, 37.300823>,  <29.842529, 31.177305, 37.465015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.866835, 31.541243, 37.300823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616829, 0.289092, 0.732085,
		0.784748, -0.297682, -0.543650,
		0.060763, 0.909841, -0.410483,
		29.885063, 31.814196, 37.177677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.525074, 31.309759, 37.536449>,  <29.842529, 31.177305, 37.465015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.525074, 31.309759, 37.536449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.322252, 31.652622, 37.500278>,  <30.200560, 31.858339, 37.478577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.322252, 31.652622, 37.500278>,  <30.525074, 31.309759, 37.536449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.322252, 31.652622, 37.500278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597295, 0.425082, 0.680105,
		0.621396, 0.290839, -0.727516,
		-0.507056, 0.857156, -0.090427,
		30.170135, 31.909769, 37.473148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.064892, 31.721205, 37.495029>,  <30.525074, 31.309759, 37.536449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.064892, 31.721205, 37.495029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.747501, 31.948217, 37.582943>,  <30.557066, 32.084423, 37.635689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.747501, 31.948217, 37.582943>,  <31.064892, 31.721205, 37.495029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.747501, 31.948217, 37.582943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527681, 0.461625, 0.713060,
		0.303227, 0.681771, -0.665764,
		-0.793477, 0.567530, 0.219780,
		30.509459, 32.118477, 37.648876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.304134, 32.321518, 37.415874>,  <31.064892, 31.721205, 37.495029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.304134, 32.321518, 37.415874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.979527, 32.371696, 37.644157>,  <30.784761, 32.401802, 37.781128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.979527, 32.371696, 37.644157>,  <31.304134, 32.321518, 37.415874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.979527, 32.371696, 37.644157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543599, 0.520324, 0.658607,
		-0.214334, 0.844705, -0.490443,
		-0.811518, 0.125442, 0.570704,
		30.736071, 32.409328, 37.815369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.402998, 32.874207, 37.665943>,  <31.304134, 32.321518, 37.415874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.402998, 32.874207, 37.665943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.128782, 32.732784, 37.920513>,  <30.964252, 32.647930, 38.073254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.128782, 32.732784, 37.920513>,  <31.402998, 32.874207, 37.665943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.128782, 32.732784, 37.920513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479036, 0.439215, 0.760010,
		-0.548233, 0.825886, -0.131732,
		-0.685539, -0.353559, 0.636421,
		30.923120, 32.626717, 38.111439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.202616, 33.431137, 38.102211>,  <31.402998, 32.874207, 37.665943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.202616, 33.431137, 38.102211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.080704, 33.105103, 38.299286>,  <31.007557, 32.909481, 38.417530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.080704, 33.105103, 38.299286>,  <31.202616, 33.431137, 38.102211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.080704, 33.105103, 38.299286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354758, 0.382923, 0.852946,
		-0.883887, 0.434748, 0.172450,
		-0.304781, -0.815085, 0.492691,
		30.989269, 32.860577, 38.447094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.808685, 33.689545, 38.729465>,  <31.202616, 33.431137, 38.102211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.808685, 33.689545, 38.729465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.943283, 33.317883, 38.790710>,  <31.024042, 33.094887, 38.827457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.943283, 33.317883, 38.790710>,  <30.808685, 33.689545, 38.729465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.943283, 33.317883, 38.790710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535018, 0.322438, 0.780890,
		-0.774937, -0.180848, 0.605613,
		0.336495, -0.929154, 0.153112,
		31.044231, 33.039135, 38.836643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.886393, 33.746475, 39.405590>,  <30.808685, 33.689545, 38.729465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.886393, 33.746475, 39.405590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.072844, 33.404133, 39.315937>,  <31.184713, 33.198727, 39.262146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.072844, 33.404133, 39.315937>,  <30.886393, 33.746475, 39.405590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.072844, 33.404133, 39.315937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558475, 0.088158, 0.824823,
		-0.686171, -0.509646, 0.519067,
		0.466128, -0.855856, -0.224133,
		31.212683, 33.147377, 39.248695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.789076, 33.395351, 39.989006>,  <30.886393, 33.746475, 39.405590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.789076, 33.395351, 39.989006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.116602, 33.253647, 39.808323>,  <31.313118, 33.168625, 39.699913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.116602, 33.253647, 39.808323>,  <30.789076, 33.395351, 39.989006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.116602, 33.253647, 39.808323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536516, 0.192381, 0.821669,
		-0.204185, -0.915144, 0.347591,
		0.818815, -0.354260, -0.451708,
		31.362247, 33.147369, 39.672810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.981686, 32.838963, 40.313576>,  <30.789076, 33.395351, 39.989006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.981686, 32.838963, 40.313576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.322495, 32.966915, 40.147812>,  <31.526979, 33.043686, 40.048351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.322495, 32.966915, 40.147812>,  <30.981686, 32.838963, 40.313576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.322495, 32.966915, 40.147812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458247, -0.072963, 0.885825,
		0.253119, -0.944645, -0.208749,
		0.852022, 0.319878, -0.414412,
		31.578100, 33.062878, 40.023487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.427982, 32.262966, 40.502693>,  <30.981686, 32.838963, 40.313576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.427982, 32.262966, 40.502693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.650639, 32.582253, 40.410603>,  <31.784231, 32.773823, 40.355347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.650639, 32.582253, 40.410603>,  <31.427982, 32.262966, 40.502693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.650639, 32.582253, 40.410603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553562, -0.149738, 0.819236,
		0.619453, -0.583464, -0.525212,
		0.556639, 0.798216, -0.230227,
		31.817631, 32.821716, 40.341534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.233395, 32.089844, 40.467003>,  <31.427982, 32.262966, 40.502693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.233395, 32.089844, 40.467003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.156036, 32.473988, 40.547306>,  <32.109623, 32.704475, 40.595490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.156036, 32.473988, 40.547306>,  <32.233395, 32.089844, 40.467003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.156036, 32.473988, 40.547306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534438, -0.068481, 0.842429,
		0.822784, 0.270216, -0.500009,
		-0.193397, 0.960361, 0.200759,
		32.098019, 32.762096, 40.607533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.804604, 32.417580, 40.764248>,  <32.233395, 32.089844, 40.467003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.804604, 32.417580, 40.764248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.484489, 32.615879, 40.899166>,  <32.292419, 32.734859, 40.980118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.484489, 32.615879, 40.899166>,  <32.804604, 32.417580, 40.764248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.484489, 32.615879, 40.899166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342852, -0.083170, 0.935700,
		0.491929, 0.864472, -0.103410,
		-0.800286, 0.495752, 0.337300,
		32.244404, 32.764606, 41.000355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.102512, 32.765907, 41.232143>,  <32.804604, 32.417580, 40.764248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.102512, 32.765907, 41.232143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.720669, 32.863808, 41.300053>,  <32.491562, 32.922546, 41.340797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.720669, 32.863808, 41.300053>,  <33.102512, 32.765907, 41.232143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.720669, 32.863808, 41.300053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178805, 0.014995, 0.983770,
		0.238234, 0.969470, -0.058077,
		-0.954606, 0.244752, 0.169774,
		32.434288, 32.937233, 41.350986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.165459, 33.288410, 41.733475>,  <33.102512, 32.765907, 41.232143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.165459, 33.288410, 41.733475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.785213, 33.165760, 41.752712>,  <32.557064, 33.092171, 41.764256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.785213, 33.165760, 41.752712>,  <33.165459, 33.288410, 41.733475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.785213, 33.165760, 41.752712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017957, 0.100368, 0.994788,
		-0.309850, 0.946525, -0.089905,
		-0.950616, -0.306621, 0.048096,
		32.500031, 33.073772, 41.767139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.695656, 33.846149, 42.026096>,  <33.165459, 33.288410, 41.733475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.695656, 33.846149, 42.026096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.552517, 33.485172, 42.122055>,  <32.466633, 33.268585, 42.179630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.552517, 33.485172, 42.122055>,  <32.695656, 33.846149, 42.026096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.552517, 33.485172, 42.122055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055798, 0.235781, 0.970203,
		-0.932113, 0.360567, -0.034019,
		-0.357845, -0.902440, 0.239893,
		32.445164, 33.214439, 42.194023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.224335, 33.918167, 42.615807>,  <32.695656, 33.846149, 42.026096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.224335, 33.918167, 42.615807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.259094, 33.519794, 42.625370>,  <32.279949, 33.280769, 42.631107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.259094, 33.519794, 42.625370>,  <32.224335, 33.918167, 42.615807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.259094, 33.519794, 42.625370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028485, 0.026475, 0.999243,
		-0.995810, -0.086154, 0.030670,
		0.086900, -0.995930, 0.023910,
		32.285164, 33.221016, 42.632542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.647675, 33.727966, 42.972702>,  <32.224335, 33.918167, 42.615807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.647675, 33.727966, 42.972702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.882761, 33.406078, 43.006199>,  <32.023811, 33.212944, 43.026295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.882761, 33.406078, 43.006199>,  <31.647675, 33.727966, 42.972702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.882761, 33.406078, 43.006199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037880, 0.076017, 0.996387,
		-0.808181, -0.588763, 0.014193,
		0.587715, -0.804723, 0.083737,
		32.059074, 33.164661, 43.031319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.217745, 33.145954, 43.338627>,  <31.647675, 33.727966, 42.972702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.217745, 33.145954, 43.338627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.611870, 33.091930, 43.380417>,  <31.848345, 33.059517, 43.405491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.611870, 33.091930, 43.380417>,  <31.217745, 33.145954, 43.338627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.611870, 33.091930, 43.380417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093129, 0.087789, 0.991776,
		-0.143123, -0.986941, 0.073921,
		0.985314, -0.135062, 0.104478,
		31.907463, 33.051411, 43.411758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.283009, 32.535332, 43.742455>,  <31.217745, 33.145954, 43.338627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.283009, 32.535332, 43.742455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.651888, 32.679523, 43.798462>,  <31.873215, 32.766037, 43.832066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.651888, 32.679523, 43.798462>,  <31.283009, 32.535332, 43.742455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.651888, 32.679523, 43.798462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139101, -0.028643, 0.989864,
		0.360836, -0.932327, 0.023729,
		0.922198, 0.360480, 0.140023,
		31.928547, 32.787666, 43.840469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.566578, 32.202732, 44.297001>,  <31.283009, 32.535332, 43.742455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.566578, 32.202732, 44.297001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.788610, 32.535419, 44.301407>,  <31.921831, 32.735031, 44.304050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.788610, 32.535419, 44.301407>,  <31.566578, 32.202732, 44.297001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.788610, 32.535419, 44.301407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113469, 0.062600, 0.991567,
		0.824020, -0.551651, 0.129123,
		0.555082, 0.831723, 0.011011,
		31.955135, 32.784935, 44.304710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.920242, 32.110409, 44.891361>,  <31.566578, 32.202732, 44.297001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.920242, 32.110409, 44.891361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.926464, 32.499668, 44.799500>,  <31.930197, 32.733223, 44.744381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.926464, 32.499668, 44.799500>,  <31.920242, 32.110409, 44.891361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.926464, 32.499668, 44.799500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079282, 0.230164, 0.969917,
		0.996731, 0.003120, 0.080733,
		0.015556, 0.973147, -0.229659,
		31.931131, 32.791611, 44.730602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.370747, 32.342991, 45.418350>,  <31.920242, 32.110409, 44.891361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.370747, 32.342991, 45.418350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.236454, 32.690502, 45.272739>,  <32.155876, 32.899010, 45.185375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.236454, 32.690502, 45.272739>,  <32.370747, 32.342991, 45.418350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.236454, 32.690502, 45.272739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055262, 0.367623, 0.928331,
		0.940334, 0.331790, -0.075413,
		-0.335735, 0.868774, -0.364024,
		32.135735, 32.951134, 45.163532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.854282, 32.922134, 45.520065>,  <32.370747, 32.342991, 45.418350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.854282, 32.922134, 45.520065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.469242, 33.030430, 45.515934>,  <32.238220, 33.095409, 45.513454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.469242, 33.030430, 45.515934>,  <32.854282, 32.922134, 45.520065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.469242, 33.030430, 45.515934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057419, 0.241096, 0.968801,
		0.264783, 0.931972, -0.247624,
		-0.962597, 0.270740, -0.010326,
		32.180462, 33.111652, 45.512836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.880260, 33.519108, 45.996407>,  <32.854282, 32.922134, 45.520065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.880260, 33.519108, 45.996407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.492779, 33.435677, 45.942574>,  <32.260292, 33.385616, 45.910275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.492779, 33.435677, 45.942574>,  <32.880260, 33.519108, 45.996407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.492779, 33.435677, 45.942574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178092, 0.206309, 0.962144,
		-0.172921, 0.955997, -0.236998,
		-0.968701, -0.208582, -0.134580,
		32.202168, 33.373100, 45.902199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.405766, 34.083317, 46.234913>,  <32.880260, 33.519108, 45.996407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.405766, 34.083317, 46.234913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.208950, 33.735199, 46.243736>,  <32.090862, 33.526329, 46.249031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.208950, 33.735199, 46.243736>,  <32.405766, 34.083317, 46.234913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.208950, 33.735199, 46.243736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150844, 0.110180, 0.982398,
		-0.857407, 0.480048, -0.185491,
		-0.492035, -0.870296, 0.022057,
		32.061340, 33.474110, 46.250355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.058975, 34.158867, 46.850616>,  <32.405766, 34.083317, 46.234913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.058975, 34.158867, 46.850616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.057106, 33.766029, 46.775284>,  <32.055984, 33.530327, 46.730083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.057106, 33.766029, 46.775284>,  <32.058975, 34.158867, 46.850616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.057106, 33.766029, 46.775284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109103, -0.187708, 0.976147,
		-0.994019, -0.015989, 0.108026,
		-0.004670, -0.982095, -0.188330,
		32.055706, 33.471401, 46.718784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.542763, 33.910255, 47.284885>,  <32.058975, 34.158867, 46.850616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.542763, 33.910255, 47.284885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.790546, 33.614025, 47.180721>,  <31.939217, 33.436287, 47.118221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.790546, 33.614025, 47.180721>,  <31.542763, 33.910255, 47.284885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.790546, 33.614025, 47.180721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216455, -0.157735, 0.963466,
		-0.754598, -0.653195, 0.062591,
		0.619459, -0.740578, -0.260414,
		31.976383, 33.391853, 47.102596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.383387, 33.366344, 47.723782>,  <31.542763, 33.910255, 47.284885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.383387, 33.366344, 47.723782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.755352, 33.328796, 47.581547>,  <31.978531, 33.306267, 47.496204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.755352, 33.328796, 47.581547>,  <31.383387, 33.366344, 47.723782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.755352, 33.328796, 47.581547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343962, -0.120265, 0.931250,
		-0.130190, -0.988293, -0.079545,
		0.929914, -0.093879, -0.355593,
		32.034328, 33.300636, 47.474869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.605499, 33.071339, 48.269695>,  <31.383387, 33.366344, 47.723782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.605499, 33.071339, 48.269695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.938951, 33.142365, 48.060497>,  <32.139023, 33.184982, 47.934978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.938951, 33.142365, 48.060497>,  <31.605499, 33.071339, 48.269695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.938951, 33.142365, 48.060497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547041, -0.134821, 0.826178,
		0.076192, -0.974830, -0.209528,
		0.833632, 0.177569, -0.522999,
		32.189041, 33.195633, 47.903599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.010273, 32.525543, 48.469704>,  <31.605499, 33.071339, 48.269695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.010273, 32.525543, 48.469704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.267521, 32.800179, 48.334057>,  <32.421867, 32.964958, 48.252666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.267521, 32.800179, 48.334057>,  <32.010273, 32.525543, 48.469704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.267521, 32.800179, 48.334057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444103, 0.026364, 0.895587,
		0.623838, -0.726571, -0.287960,
		0.643116, 0.686585, -0.339120,
		32.460457, 33.006153, 48.232323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.738045, 32.313507, 48.574398>,  <32.010273, 32.525543, 48.469704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.738045, 32.313507, 48.574398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.737469, 32.713360, 48.563610>,  <32.737122, 32.953274, 48.557137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.737469, 32.713360, 48.563610>,  <32.738045, 32.313507, 48.574398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.737469, 32.713360, 48.563610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470948, 0.024466, 0.881822,
		0.882160, -0.011431, -0.470811,
		-0.001439, 0.999635, -0.026966,
		32.737038, 33.013252, 48.555519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.375519, 32.441795, 48.779957>,  <32.738045, 32.313507, 48.574398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.375519, 32.441795, 48.779957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.181778, 32.789364, 48.820709>,  <33.065533, 32.997906, 48.845161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.181778, 32.789364, 48.820709>,  <33.375519, 32.441795, 48.779957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.181778, 32.789364, 48.820709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521571, 0.193296, 0.831023,
		0.702401, 0.455645, -0.546828,
		-0.484351, 0.868921, 0.101880,
		33.036472, 33.050041, 48.851273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.851635, 33.116592, 48.746666>,  <33.375519, 32.441795, 48.779957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.851635, 33.116592, 48.746666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.525471, 33.225185, 48.951176>,  <33.329773, 33.290340, 49.073883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.525471, 33.225185, 48.951176>,  <33.851635, 33.116592, 48.746666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.525471, 33.225185, 48.951176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574605, 0.272376, 0.771777,
		0.070266, 0.923097, -0.378094,
		-0.815409, 0.271484, 0.511277,
		33.280849, 33.306629, 49.104561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.191376, 33.609764, 49.264668>,  <33.851635, 33.116592, 48.746666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.191376, 33.609764, 49.264668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.835739, 33.499859, 49.411102>,  <33.622356, 33.433914, 49.498962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.835739, 33.499859, 49.411102>,  <34.191376, 33.609764, 49.264668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.835739, 33.499859, 49.411102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306238, 0.237365, 0.921887,
		-0.340199, 0.931752, -0.126896,
		-0.889091, -0.274764, 0.366090,
		33.569012, 33.417431, 49.520927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.979313, 34.157101, 49.672966>,  <34.191376, 33.609764, 49.264668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.979313, 34.157101, 49.672966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.738789, 33.870270, 49.813950>,  <33.594475, 33.698170, 49.898540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.738789, 33.870270, 49.813950>,  <33.979313, 34.157101, 49.672966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.738789, 33.870270, 49.813950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217891, 0.277238, 0.935768,
		-0.768735, 0.639482, -0.010460,
		-0.601307, -0.717079, 0.352460,
		33.558395, 33.655148, 49.919689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.712467, 34.430557, 50.390224>,  <33.979313, 34.157101, 49.672966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.712467, 34.430557, 50.390224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.652012, 34.035324, 50.378628>,  <33.615738, 33.798183, 50.371670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.652012, 34.035324, 50.378628>,  <33.712467, 34.430557, 50.390224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.652012, 34.035324, 50.378628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243650, -0.065664, 0.967638,
		-0.958015, 0.139182, 0.250672,
		-0.151138, -0.988087, -0.028995,
		33.606670, 33.738899, 50.369930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.296036, 34.317093, 50.980747>,  <33.712467, 34.430557, 50.390224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.296036, 34.317093, 50.980747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.459694, 33.964073, 50.888050>,  <33.557888, 33.752262, 50.832432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.459694, 33.964073, 50.888050>,  <33.296036, 34.317093, 50.980747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.459694, 33.964073, 50.888050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228412, -0.146827, 0.962429,
		-0.883417, -0.446708, 0.141511,
		0.409147, -0.882549, -0.231743,
		33.582439, 33.699306, 50.818527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.098614, 33.877254, 51.485611>,  <33.296036, 34.317093, 50.980747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.098614, 33.877254, 51.485611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.427391, 33.720570, 51.320217>,  <33.624657, 33.626560, 51.220982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.427391, 33.720570, 51.320217>,  <33.098614, 33.877254, 51.485611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.427391, 33.720570, 51.320217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371155, -0.182293, 0.910502,
		-0.432029, -0.901849, -0.004449,
		0.821946, -0.391712, -0.413482,
		33.673973, 33.603058, 51.196171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.248577, 33.256340, 51.711685>,  <33.098614, 33.877254, 51.485611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.248577, 33.256340, 51.711685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.621475, 33.365726, 51.616913>,  <33.845215, 33.431358, 51.560051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.621475, 33.365726, 51.616913>,  <33.248577, 33.256340, 51.711685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.621475, 33.365726, 51.616913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309473, -0.263357, 0.913712,
		0.187475, -0.925126, -0.330144,
		0.932244, 0.273468, -0.236929,
		33.901150, 33.447765, 51.545834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.733585, 32.801918, 51.624557>,  <33.248577, 33.256340, 51.711685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.733585, 32.801918, 51.624557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.954350, 33.108875, 51.755093>,  <34.086807, 33.293049, 51.833412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.954350, 33.108875, 51.755093>,  <33.733585, 32.801918, 51.624557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.954350, 33.108875, 51.755093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120377, -0.460552, 0.879432,
		0.825166, -0.446089, -0.346562,
		0.551915, 0.767396, 0.326333,
		34.119923, 33.339092, 51.852993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.480564, 32.605434, 51.877747>,  <33.733585, 32.801918, 51.624557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.480564, 32.605434, 51.877747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.325203, 32.914261, 52.078968>,  <34.231987, 33.099556, 52.199699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.325203, 32.914261, 52.078968>,  <34.480564, 32.605434, 51.877747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.325203, 32.914261, 52.078968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149469, -0.591468, 0.792354,
		0.909287, 0.232561, 0.345127,
		-0.388403, 0.772063, 0.503053,
		34.208683, 33.145878, 52.229885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.750534, 32.663319, 52.647423>,  <34.480564, 32.605434, 51.877747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.750534, 32.663319, 52.647423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.372063, 32.778305, 52.587933>,  <34.144981, 32.847298, 52.552238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.372063, 32.778305, 52.587933>,  <34.750534, 32.663319, 52.647423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.372063, 32.778305, 52.587933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318842, -0.748879, 0.580965,
		0.055632, 0.597113, 0.800226,
		-0.946174, 0.287466, -0.148723,
		34.088211, 32.864544, 52.543316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.331829, 32.902393, 53.332478>,  <34.750534, 32.663319, 52.647423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.331829, 32.902393, 53.332478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.103630, 32.745388, 53.043903>,  <33.966709, 32.651184, 52.870758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.103630, 32.745388, 53.043903>,  <34.331829, 32.902393, 53.332478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.103630, 32.745388, 53.043903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223899, -0.770802, 0.596434,
		-0.790190, 0.501792, 0.351857,
		-0.570498, -0.392516, -0.721431,
		33.932480, 32.627632, 52.827473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.743496, 32.216614, 53.425159>,  <34.331829, 32.902393, 53.332478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.743496, 32.216614, 53.425159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.059753, 31.978411, 53.482094>,  <35.249508, 31.835489, 53.516254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.059753, 31.978411, 53.482094>,  <34.743496, 32.216614, 53.425159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.059753, 31.978411, 53.482094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046113, -0.173898, -0.983683,
		0.610539, 0.784305, -0.110030,
		0.790642, -0.595504, 0.142338,
		35.296947, 31.799759, 53.524796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.387821, 32.276756, 53.108814>,  <34.743496, 32.216614, 53.425159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.387821, 32.276756, 53.108814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.333721, 31.887255, 53.035595>,  <35.301262, 31.653553, 52.991665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.333721, 31.887255, 53.035595>,  <35.387821, 32.276756, 53.108814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.333721, 31.887255, 53.035595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195354, 0.154907, -0.968422,
		0.971362, -0.166739, 0.169276,
		-0.135252, -0.973757, -0.183044,
		35.293144, 31.595127, 52.980682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.952862, 32.190983, 52.615772>,  <35.387821, 32.276756, 53.108814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.952862, 32.190983, 52.615772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.612675, 31.982164, 52.589943>,  <35.408562, 31.856874, 52.574444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.612675, 31.982164, 52.589943>,  <35.952862, 32.190983, 52.615772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.612675, 31.982164, 52.589943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139928, -0.106185, -0.984452,
		0.507070, -0.846283, 0.163356,
		-0.850471, -0.522044, -0.064576,
		35.357533, 31.825552, 52.570572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.015770, 31.466276, 52.519424>,  <35.952862, 32.190983, 52.615772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.015770, 31.466276, 52.519424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.671192, 31.582449, 52.352783>,  <35.464443, 31.652153, 52.252800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.671192, 31.582449, 52.352783>,  <36.015770, 31.466276, 52.519424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.671192, 31.582449, 52.352783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301249, -0.368187, -0.879595,
		-0.408850, -0.883226, 0.229681,
		-0.861447, 0.290431, -0.416604,
		35.412758, 31.669579, 52.227802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.232216, 31.266392, 51.901340>,  <36.015770, 31.466276, 52.519424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.232216, 31.266392, 51.901340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.882805, 31.449890, 51.836212>,  <35.673161, 31.559990, 51.797134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.882805, 31.449890, 51.836212>,  <36.232216, 31.266392, 51.901340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.882805, 31.449890, 51.836212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135230, -0.092626, -0.986475,
		-0.467623, -0.883727, 0.018874,
		-0.873523, 0.458746, -0.162820,
		35.620747, 31.587513, 51.787365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.847626, 30.828756, 51.533310>,  <36.232216, 31.266392, 51.901340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.847626, 30.828756, 51.533310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.715340, 31.200274, 51.466404>,  <35.635967, 31.423183, 51.426262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.715340, 31.200274, 51.466404>,  <35.847626, 30.828756, 51.533310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.715340, 31.200274, 51.466404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138781, -0.127443, -0.982089,
		-0.933471, -0.348003, -0.086752,
		-0.330714, 0.928791, -0.167260,
		35.616127, 31.478910, 51.416225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.366566, 30.836897, 50.945885>,  <35.847626, 30.828756, 51.533310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.366566, 30.836897, 50.945885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.511860, 31.208447, 50.974873>,  <35.599037, 31.431377, 50.992264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.511860, 31.208447, 50.974873>,  <35.366566, 30.836897, 50.945885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.511860, 31.208447, 50.974873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082160, 0.045546, -0.995578,
		-0.928069, 0.367582, -0.059773,
		0.363234, 0.928875, 0.072471,
		35.620831, 31.487108, 50.996613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.941441, 31.263004, 50.515678>,  <35.366566, 30.836897, 50.945885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.941441, 31.263004, 50.515678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.245090, 31.517197, 50.572098>,  <35.427280, 31.669712, 50.605949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.245090, 31.517197, 50.572098>,  <34.941441, 31.263004, 50.515678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.245090, 31.517197, 50.572098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009130, 0.206266, -0.978453,
		-0.650884, 0.744054, 0.150779,
		0.759122, 0.635483, 0.141049,
		35.472828, 31.707842, 50.614414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.768322, 31.994934, 50.304356>,  <34.941441, 31.263004, 50.515678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.768322, 31.994934, 50.304356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.166222, 31.963783, 50.277821>,  <35.404961, 31.945093, 50.261898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.166222, 31.963783, 50.277821>,  <34.768322, 31.994934, 50.304356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.166222, 31.963783, 50.277821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066768, -0.002879, -0.997764,
		0.077513, 0.996959, -0.008064,
		0.994753, -0.077878, -0.066342,
		35.464649, 31.940420, 50.257919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.982334, 32.516766, 49.797703>,  <34.768322, 31.994934, 50.304356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.982334, 32.516766, 49.797703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.253662, 32.223751, 49.820595>,  <35.416458, 32.047943, 49.834332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.253662, 32.223751, 49.820595>,  <34.982334, 32.516766, 49.797703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.253662, 32.223751, 49.820595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004384, -0.081923, -0.996629,
		0.734751, 0.675785, -0.058782,
		0.678323, -0.732532, 0.057230,
		35.457157, 32.003990, 49.837765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.433540, 32.711414, 49.177952>,  <34.982334, 32.516766, 49.797703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.433540, 32.711414, 49.177952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.540146, 32.334465, 49.258850>,  <35.604111, 32.108295, 49.307388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.540146, 32.334465, 49.258850>,  <35.433540, 32.711414, 49.177952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.540146, 32.334465, 49.258850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011796, -0.206633, -0.978348,
		0.963759, 0.263129, -0.043955,
		0.266514, -0.942373, 0.202248,
		35.620102, 32.051754, 49.319523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.112213, 32.625072, 48.849022>,  <35.433540, 32.711414, 49.177952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.112213, 32.625072, 48.849022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.964451, 32.258995, 48.913471>,  <35.875793, 32.039349, 48.952141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.964451, 32.258995, 48.913471>,  <36.112213, 32.625072, 48.849022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.964451, 32.258995, 48.913471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175184, -0.238867, -0.955119,
		0.912606, -0.324602, 0.248566,
		-0.369407, -0.915192, 0.161126,
		35.853630, 31.984438, 48.961807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.541718, 32.226177, 48.576973>,  <36.112213, 32.625072, 48.849022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.541718, 32.226177, 48.576973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.214497, 31.996130, 48.575031>,  <36.018162, 31.858101, 48.573868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.214497, 31.996130, 48.575031>,  <36.541718, 32.226177, 48.576973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.214497, 31.996130, 48.575031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219009, -0.303700, -0.927255,
		0.531811, -0.759606, 0.374400,
		-0.818054, -0.575121, -0.004849,
		35.969082, 31.823593, 48.573578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.760483, 31.741505, 48.096428>,  <36.541718, 32.226177, 48.576973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.760483, 31.741505, 48.096428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.376019, 31.636942, 48.131824>,  <36.145340, 31.574203, 48.153065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.376019, 31.636942, 48.131824>,  <36.760483, 31.741505, 48.096428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.376019, 31.636942, 48.131824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088705, -0.596262, -0.797874,
		0.261336, -0.759038, 0.596293,
		-0.961163, -0.261407, 0.088494,
		36.087669, 31.558519, 48.158371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.766518, 31.041256, 47.956066>,  <36.760483, 31.741505, 48.096428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.766518, 31.041256, 47.956066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.391945, 31.172157, 47.905476>,  <36.167202, 31.250698, 47.875122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.391945, 31.172157, 47.905476>,  <36.766518, 31.041256, 47.956066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.391945, 31.172157, 47.905476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007854, -0.379948, -0.924975,
		-0.350752, -0.865186, 0.358366,
		-0.936435, 0.327252, -0.126472,
		36.111015, 31.270334, 47.867535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.450188, 30.499601, 47.586021>,  <36.766518, 31.041256, 47.956066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.450188, 30.499601, 47.586021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.226498, 30.824875, 47.521519>,  <36.092285, 31.020039, 47.482819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.226498, 30.824875, 47.521519>,  <36.450188, 30.499601, 47.586021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.226498, 30.824875, 47.521519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070557, -0.240495, -0.968083,
		-0.826011, -0.529994, 0.191865,
		-0.559220, 0.813184, -0.161256,
		36.058731, 31.068830, 47.473141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.863182, 30.296200, 47.135494>,  <36.450188, 30.499601, 47.586021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.863182, 30.296200, 47.135494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.892120, 30.693222, 47.096298>,  <35.909485, 30.931435, 47.072781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.892120, 30.693222, 47.096298>,  <35.863182, 30.296200, 47.135494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.892120, 30.693222, 47.096298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061991, -0.093583, -0.993680,
		-0.995451, 0.077967, 0.054759,
		0.072350, 0.992554, -0.097990,
		35.913826, 30.990988, 47.066902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.520374, 30.458069, 46.532570>,  <35.863182, 30.296200, 47.135494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.520374, 30.458069, 46.532570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.710304, 30.806713, 46.581291>,  <35.824261, 31.015900, 46.610523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.710304, 30.806713, 46.581291>,  <35.520374, 30.458069, 46.532570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.710304, 30.806713, 46.581291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044406, 0.161947, -0.985800,
		-0.878960, 0.462672, 0.115600,
		0.474823, 0.871612, 0.121799,
		35.852753, 31.068197, 46.617832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.110710, 31.027039, 46.331139>,  <35.520374, 30.458069, 46.532570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.110710, 31.027039, 46.331139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.491676, 31.140829, 46.287361>,  <35.720257, 31.209103, 46.261093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.491676, 31.140829, 46.287361>,  <35.110710, 31.027039, 46.331139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.491676, 31.140829, 46.287361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166098, 0.183327, -0.968918,
		-0.255571, 0.940991, 0.221854,
		0.952415, 0.284477, -0.109443,
		35.777401, 31.226171, 46.254528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.039192, 31.683321, 45.966335>,  <35.110710, 31.027039, 46.331139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.039192, 31.683321, 45.966335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.409985, 31.544365, 45.909718>,  <35.632458, 31.460991, 45.875748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.409985, 31.544365, 45.909718>,  <35.039192, 31.683321, 45.966335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.409985, 31.544365, 45.909718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150803, 0.000393, -0.988564,
		0.343472, 0.937721, -0.052023,
		0.926977, -0.347389, -0.141546,
		35.688076, 31.440147, 45.867252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.297733, 32.065094, 45.416348>,  <35.039192, 31.683321, 45.966335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.297733, 32.065094, 45.416348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.524364, 31.736446, 45.441422>,  <35.660343, 31.539257, 45.456467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.524364, 31.736446, 45.441422>,  <35.297733, 32.065094, 45.416348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.524364, 31.736446, 45.441422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123600, -0.159947, -0.979357,
		0.814688, 0.547131, -0.192175,
		0.566575, -0.821623, 0.062681,
		35.694336, 31.489960, 45.460224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.758171, 32.160446, 44.868290>,  <35.297733, 32.065094, 45.416348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.758171, 32.160446, 44.868290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.773907, 31.769711, 44.952427>,  <35.783348, 31.535271, 45.002911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.773907, 31.769711, 44.952427>,  <35.758171, 32.160446, 44.868290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.773907, 31.769711, 44.952427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062676, -0.207679, -0.976187,
		0.997258, 0.051588, 0.053054,
		0.039341, -0.976836, 0.210343,
		35.785709, 31.476660, 45.015530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.175095, 31.945200, 44.454098>,  <35.758171, 32.160446, 44.868290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.175095, 31.945200, 44.454098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.023663, 31.587740, 44.550488>,  <35.932804, 31.373264, 44.608322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.023663, 31.587740, 44.550488>,  <36.175095, 31.945200, 44.454098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.023663, 31.587740, 44.550488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083733, -0.226219, -0.970471,
		0.921773, -0.387580, 0.010815,
		-0.378581, -0.893648, 0.240976,
		35.910088, 31.319645, 44.622780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.390999, 31.466061, 43.997921>,  <36.175095, 31.945200, 44.454098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.390999, 31.466061, 43.997921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.067909, 31.267424, 44.125031>,  <35.874054, 31.148241, 44.201298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.067909, 31.267424, 44.125031>,  <36.390999, 31.466061, 43.997921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.067909, 31.267424, 44.125031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167306, -0.323772, -0.931226,
		0.565324, -0.805338, 0.178435,
		-0.807724, -0.496591, 0.317774,
		35.825592, 31.118446, 44.220364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.452454, 30.841375, 43.671303>,  <36.390999, 31.466061, 43.997921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.452454, 30.841375, 43.671303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.068256, 30.873327, 43.777943>,  <35.837738, 30.892498, 43.841927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.068256, 30.873327, 43.777943>,  <36.452454, 30.841375, 43.671303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.068256, 30.873327, 43.777943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278303, -0.269148, -0.922012,
		-0.001895, -0.959780, 0.280745,
		-0.960491, 0.079880, 0.266600,
		35.780109, 30.897291, 43.857922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.096153, 30.279667, 43.341171>,  <36.452454, 30.841375, 43.671303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.096153, 30.279667, 43.341171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.789459, 30.520287, 43.430840>,  <35.605442, 30.664660, 43.484642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.789459, 30.520287, 43.430840>,  <36.096153, 30.279667, 43.341171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.789459, 30.520287, 43.430840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483955, -0.312200, -0.817508,
		-0.421786, -0.735301, 0.530498,
		-0.766736, 0.601550, 0.224171,
		35.559437, 30.700752, 43.498089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.509037, 29.885645, 43.298473>,  <36.096153, 30.279667, 43.341171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.509037, 29.885645, 43.298473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.388130, 30.264490, 43.255367>,  <35.315586, 30.491796, 43.229504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.388130, 30.264490, 43.255367>,  <35.509037, 29.885645, 43.298473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.388130, 30.264490, 43.255367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468259, -0.246010, -0.848653,
		-0.830281, -0.206057, 0.517854,
		-0.302269, 0.947111, -0.107769,
		35.297451, 30.548624, 43.223038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.782646, 29.843773, 43.173229>,  <35.509037, 29.885645, 43.298473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.782646, 29.843773, 43.173229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.903008, 30.195887, 43.026505>,  <34.975224, 30.407156, 42.938469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.903008, 30.195887, 43.026505>,  <34.782646, 29.843773, 43.173229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.903008, 30.195887, 43.026505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477996, -0.193616, -0.856757,
		-0.825212, 0.433138, 0.362513,
		0.300906, 0.880286, -0.366813,
		34.993279, 30.459972, 42.916462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.140251, 30.192703, 42.922043>,  <34.782646, 29.843773, 43.173229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.140251, 30.192703, 42.922043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.430557, 30.373739, 42.714806>,  <34.604740, 30.482361, 42.590462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.430557, 30.373739, 42.714806>,  <34.140251, 30.192703, 42.922043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.430557, 30.373739, 42.714806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574084, -0.016513, -0.818630,
		-0.379060, 0.891565, 0.247842,
		0.725769, 0.452592, -0.518093,
		34.648289, 30.509518, 42.559380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.850906, 30.863773, 42.574726>,  <34.140251, 30.192703, 42.922043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.850906, 30.863773, 42.574726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.203495, 30.820972, 42.390747>,  <34.415051, 30.795292, 42.280357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.203495, 30.820972, 42.390747>,  <33.850906, 30.863773, 42.574726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.203495, 30.820972, 42.390747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447888, 0.119264, -0.886099,
		0.149669, 0.987080, 0.057204,
		0.881473, -0.107000, -0.459952,
		34.467937, 30.788872, 42.252762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.949715, 31.452013, 42.096527>,  <33.850906, 30.863773, 42.574726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.949715, 31.452013, 42.096527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.151093, 31.131495, 41.967243>,  <34.271919, 30.939184, 41.889675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.151093, 31.131495, 41.967243>,  <33.949715, 31.452013, 42.096527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.151093, 31.131495, 41.967243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535271, 0.004394, -0.844669,
		0.678250, 0.598251, -0.426699,
		0.503449, -0.801296, -0.323207,
		34.302128, 30.891106, 41.870281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.026730, 31.591051, 41.398087>,  <33.949715, 31.452013, 42.096527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.026730, 31.591051, 41.398087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.129616, 31.204510, 41.398079>,  <34.191345, 30.972584, 41.398075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.129616, 31.204510, 41.398079>,  <34.026730, 31.591051, 41.398087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.129616, 31.204510, 41.398079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424096, -0.112862, -0.898557,
		0.868323, 0.231129, -0.438856,
		0.257213, -0.966355, -0.000020,
		34.206779, 30.914604, 41.398071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.464668, 31.541912, 40.805073>,  <34.026730, 31.591051, 41.398087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.464668, 31.541912, 40.805073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.321621, 31.178057, 40.889610>,  <34.235794, 30.959743, 40.940331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.321621, 31.178057, 40.889610>,  <34.464668, 31.541912, 40.805073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.321621, 31.178057, 40.889610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456292, -0.027254, -0.889413,
		0.814804, -0.414505, -0.405314,
		-0.357619, -0.909639, 0.211342,
		34.214336, 30.905165, 40.953014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.617783, 31.024666, 40.267601>,  <34.464668, 31.541912, 40.805073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.617783, 31.024666, 40.267601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.323181, 30.843395, 40.468475>,  <34.146420, 30.734632, 40.589001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.323181, 30.843395, 40.468475>,  <34.617783, 31.024666, 40.267601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.323181, 30.843395, 40.468475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444770, -0.234920, -0.864287,
		0.509651, -0.859908, -0.028541,
		-0.736502, -0.453179, 0.502188,
		34.102230, 30.707441, 40.619133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.554291, 30.343897, 39.945503>,  <34.617783, 31.024666, 40.267601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.554291, 30.343897, 39.945503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.215115, 30.410931, 40.146664>,  <34.011608, 30.451151, 40.267361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.215115, 30.410931, 40.146664>,  <34.554291, 30.343897, 39.945503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.215115, 30.410931, 40.146664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527769, -0.355515, -0.771407,
		0.049511, -0.919524, 0.389903,
		-0.847944, 0.167585, 0.502898,
		33.960732, 30.461206, 40.297535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.171604, 29.654327, 40.002922>,  <34.554291, 30.343897, 39.945503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.171604, 29.654327, 40.002922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.891056, 29.931444, 40.070000>,  <33.722729, 30.097713, 40.110245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.891056, 29.931444, 40.070000>,  <34.171604, 29.654327, 40.002922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.891056, 29.931444, 40.070000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616027, -0.470779, -0.631568,
		-0.358598, -0.546266, 0.756968,
		-0.701369, 0.692791, 0.167694,
		33.680645, 30.139282, 40.120308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.626518, 29.341837, 39.760101>,  <34.171604, 29.654327, 40.002922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.626518, 29.341837, 39.760101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.485600, 29.716152, 39.765553>,  <33.401047, 29.940742, 39.768822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.485600, 29.716152, 39.765553>,  <33.626518, 29.341837, 39.760101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.485600, 29.716152, 39.765553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642257, -0.231150, -0.730805,
		-0.680731, -0.266210, 0.682450,
		-0.352296, 0.935789, 0.013624,
		33.379910, 29.996889, 39.769638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.974697, 29.065041, 39.569191>,  <33.626518, 29.341837, 39.760101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.974697, 29.065041, 39.569191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.020737, 29.459782, 39.523811>,  <33.048359, 29.696627, 39.496582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.020737, 29.459782, 39.523811>,  <32.974697, 29.065041, 39.569191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.020737, 29.459782, 39.523811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539098, -0.033871, -0.841561,
		-0.834341, 0.158024, 0.528113,
		0.115099, 0.986854, -0.113450,
		33.055267, 29.755838, 39.489777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.338909, 29.327465, 39.388210>,  <32.974697, 29.065041, 39.569191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.338909, 29.327465, 39.388210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.603401, 29.597057, 39.256435>,  <32.762096, 29.758814, 39.177372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.603401, 29.597057, 39.256435>,  <32.338909, 29.327465, 39.388210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.603401, 29.597057, 39.256435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383985, -0.073180, -0.920434,
		-0.644464, 0.735114, 0.210410,
		0.661227, 0.673982, -0.329435,
		32.801769, 29.799252, 39.157604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.972012, 29.786455, 38.991440>,  <32.338909, 29.327465, 39.388210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.972012, 29.786455, 38.991440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.341846, 29.844845, 38.850681>,  <32.563747, 29.879879, 38.766228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.341846, 29.844845, 38.850681>,  <31.972012, 29.786455, 38.991440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.341846, 29.844845, 38.850681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352936, -0.019580, -0.935442,
		-0.143442, 0.989094, 0.033417,
		0.924586, 0.145976, -0.351896,
		32.619221, 29.888638, 38.745113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.019730, 30.334936, 38.559460>,  <31.972012, 29.786455, 38.991440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.019730, 30.334936, 38.559460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.318462, 30.100605, 38.433578>,  <32.497704, 29.960007, 38.358047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.318462, 30.100605, 38.433578>,  <32.019730, 30.334936, 38.559460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.318462, 30.100605, 38.433578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425448, -0.057192, -0.903174,
		0.511107, 0.808413, -0.291954,
		0.746835, -0.585830, -0.314707,
		32.542515, 29.924856, 38.339165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.230530, 30.598938, 37.854347>,  <32.019730, 30.334936, 38.559460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.230530, 30.598938, 37.854347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.433346, 30.254744, 37.834431>,  <32.555035, 30.048227, 37.822479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.433346, 30.254744, 37.834431>,  <32.230530, 30.598938, 37.854347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.433346, 30.254744, 37.834431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027954, 0.074153, -0.996855,
		0.861472, 0.504049, 0.061652,
		0.507035, -0.860486, -0.049791,
		32.585457, 29.996597, 37.819492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.692593, 30.740530, 37.332180>,  <32.230530, 30.598938, 37.854347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.692593, 30.740530, 37.332180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.676895, 30.343699, 37.379921>,  <32.667477, 30.105600, 37.408566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.676895, 30.343699, 37.379921>,  <32.692593, 30.740530, 37.332180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.676895, 30.343699, 37.379921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186532, -0.124613, -0.974514,
		0.981665, -0.015978, 0.189944,
		-0.039241, -0.992077, 0.119348,
		32.665123, 30.046076, 37.415726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.343452, 30.490093, 36.978111>,  <32.692593, 30.740530, 37.332180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.343452, 30.490093, 36.978111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.076183, 30.194561, 37.013134>,  <32.915821, 30.017241, 37.034149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.076183, 30.194561, 37.013134>,  <33.343452, 30.490093, 36.978111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.076183, 30.194561, 37.013134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034960, -0.148734, -0.988259,
		0.743181, -0.657270, 0.125210,
		-0.668176, -0.738833, 0.087558,
		32.875729, 29.972912, 37.039402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.726009, 30.158218, 36.340462>,  <33.343452, 30.490093, 36.978111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.726009, 30.158218, 36.340462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.024498, 30.293549, 36.111134>,  <34.203590, 30.374746, 35.973537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.024498, 30.293549, 36.111134>,  <33.726009, 30.158218, 36.340462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.024498, 30.293549, 36.111134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532155, 0.214265, 0.819086,
		0.399959, -0.916312, -0.020153,
		0.746220, 0.338325, -0.573317,
		34.248363, 30.395046, 35.939140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.162464, 30.214937, 36.825184>,  <33.726009, 30.158218, 36.340462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.162464, 30.214937, 36.825184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.383060, 30.390221, 36.541260>,  <34.515419, 30.495390, 36.370907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.383060, 30.390221, 36.541260>,  <34.162464, 30.214937, 36.825184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.383060, 30.390221, 36.541260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690067, 0.238422, 0.683347,
		0.468683, -0.866676, -0.170906,
		0.551493, 0.438209, -0.709808,
		34.548508, 30.521683, 36.328316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.753124, 29.930901, 36.715717>,  <34.162464, 30.214937, 36.825184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.753124, 29.930901, 36.715717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.805824, 30.314713, 36.616165>,  <34.837444, 30.545000, 36.556435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.805824, 30.314713, 36.616165>,  <34.753124, 29.930901, 36.715717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.805824, 30.314713, 36.616165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684500, 0.093534, 0.722988,
		0.717008, -0.265612, -0.644476,
		0.131754, 0.959532, -0.248876,
		34.845352, 30.602571, 36.541504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.456181, 30.132601, 36.779949>,  <34.753124, 29.930901, 36.715717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.456181, 30.132601, 36.779949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.266293, 30.480110, 36.836330>,  <35.152359, 30.688616, 36.870159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.266293, 30.480110, 36.836330>,  <35.456181, 30.132601, 36.779949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.266293, 30.480110, 36.836330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659754, 0.245259, 0.710333,
		0.582548, 0.430208, -0.689608,
		-0.474724, 0.868774, 0.140956,
		35.123875, 30.740742, 36.878616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.939220, 30.574654, 36.775890>,  <35.456181, 30.132601, 36.779949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.939220, 30.574654, 36.775890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.660011, 30.796516, 36.957050>,  <35.492485, 30.929634, 37.065746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.660011, 30.796516, 36.957050>,  <35.939220, 30.574654, 36.775890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.660011, 30.796516, 36.957050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691756, 0.358901, 0.626629,
		0.185018, 0.750698, -0.634209,
		-0.698027, 0.554656, 0.452896,
		35.450603, 30.962914, 37.092918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.163582, 31.266115, 36.811214>,  <35.939220, 30.574654, 36.775890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.163582, 31.266115, 36.811214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.900928, 31.222811, 37.109776>,  <35.743336, 31.196829, 37.288914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.900928, 31.222811, 37.109776>,  <36.163582, 31.266115, 36.811214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.900928, 31.222811, 37.109776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675225, 0.356527, 0.645724,
		-0.336019, 0.927991, -0.161005,
		-0.656630, -0.108261, 0.746403,
		35.703941, 31.190332, 37.333698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.320290, 31.939022, 37.246227>,  <36.163582, 31.266115, 36.811214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.320290, 31.939022, 37.246227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.099045, 31.679358, 37.455093>,  <35.966297, 31.523558, 37.580414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.099045, 31.679358, 37.455093>,  <36.320290, 31.939022, 37.246227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.099045, 31.679358, 37.455093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529562, 0.209898, 0.821892,
		-0.643144, 0.731115, 0.227676,
		-0.553109, -0.649163, 0.522166,
		35.933113, 31.484608, 37.611744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.239983, 32.330524, 37.813290>,  <36.320290, 31.939022, 37.246227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.239983, 32.330524, 37.813290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.138409, 31.962744, 37.933372>,  <36.077465, 31.742075, 38.005424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.138409, 31.962744, 37.933372>,  <36.239983, 32.330524, 37.813290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.138409, 31.962744, 37.933372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452593, 0.161350, 0.876998,
		-0.854795, 0.358578, 0.375164,
		-0.253939, -0.919450, 0.300211,
		36.062225, 31.686909, 38.023438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.942799, 32.346279, 38.471779>,  <36.239983, 32.330524, 37.813290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.942799, 32.346279, 38.471779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.083603, 31.973383, 38.438278>,  <36.168087, 31.749645, 38.418179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.083603, 31.973383, 38.438278>,  <35.942799, 32.346279, 38.471779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.083603, 31.973383, 38.438278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273968, 0.017063, 0.961587,
		-0.895003, -0.361432, 0.261411,
		0.352009, -0.932242, -0.083749,
		36.189205, 31.693710, 38.413155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.677628, 31.938608, 39.073357>,  <35.942799, 32.346279, 38.471779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.677628, 31.938608, 39.073357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.003895, 31.739862, 38.954826>,  <36.199657, 31.620615, 38.883709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.003895, 31.739862, 38.954826>,  <35.677628, 31.938608, 39.073357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.003895, 31.739862, 38.954826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311626, -0.054194, 0.948658,
		-0.487412, -0.866135, 0.110631,
		0.815671, -0.496863, -0.296325,
		36.248596, 31.590803, 38.865929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.809265, 31.534172, 39.683540>,  <35.677628, 31.938608, 39.073357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.809265, 31.534172, 39.683540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.141136, 31.511885, 39.461357>,  <36.340260, 31.498512, 39.328049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.141136, 31.511885, 39.461357>,  <35.809265, 31.534172, 39.683540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.141136, 31.511885, 39.461357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558145, 0.064155, 0.827259,
		-0.010460, -0.996383, 0.084328,
		0.829677, -0.055721, -0.555456,
		36.390038, 31.495169, 39.294720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.252487, 30.943794, 39.925423>,  <35.809265, 31.534172, 39.683540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.252487, 30.943794, 39.925423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.485710, 31.208950, 39.737541>,  <36.625645, 31.368044, 39.624813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.485710, 31.208950, 39.737541>,  <36.252487, 30.943794, 39.925423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.485710, 31.208950, 39.737541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571615, 0.076116, 0.816984,
		0.577323, -0.744837, -0.334538,
		0.583056, 0.662891, -0.469703,
		36.660625, 31.407818, 39.596630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.831646, 30.718332, 39.966091>,  <36.252487, 30.943794, 39.925423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.831646, 30.718332, 39.966091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.911491, 31.098970, 39.872604>,  <36.959396, 31.327353, 39.816513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.911491, 31.098970, 39.872604>,  <36.831646, 30.718332, 39.966091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.911491, 31.098970, 39.872604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809260, -0.025612, 0.586892,
		0.552497, -0.306287, -0.775200,
		0.199612, 0.951595, -0.233715,
		36.971375, 31.384449, 39.802490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.645939, 30.847984, 39.884384>,  <36.831646, 30.718332, 39.966091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.645939, 30.847984, 39.884384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.472076, 31.201263, 39.954853>,  <37.367760, 31.413231, 39.997135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.472076, 31.201263, 39.954853>,  <37.645939, 30.847984, 39.884384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.472076, 31.201263, 39.954853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637577, 0.163608, 0.752814,
		0.636060, 0.439538, -0.634219,
		-0.434654, 0.883198, 0.176174,
		37.341679, 31.466223, 40.007706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.180790, 31.306812, 40.155010>,  <37.645939, 30.847984, 39.884384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.180790, 31.306812, 40.155010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.854168, 31.517418, 40.249683>,  <37.658195, 31.643782, 40.306488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.854168, 31.517418, 40.249683>,  <38.180790, 31.306812, 40.155010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.854168, 31.517418, 40.249683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400135, 0.220709, 0.889483,
		0.416087, 0.821018, -0.390898,
		-0.816556, 0.526514, 0.236684,
		37.609200, 31.675371, 40.320690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.443096, 31.861563, 40.496937>,  <38.180790, 31.306812, 40.155010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.443096, 31.861563, 40.496937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.059917, 31.842670, 40.610142>,  <37.830009, 31.831335, 40.678066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.059917, 31.842670, 40.610142>,  <38.443096, 31.861563, 40.496937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.059917, 31.842670, 40.610142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276287, 0.114322, 0.954251,
		-0.077423, 0.992320, -0.096467,
		-0.957951, -0.047229, 0.283017,
		37.772533, 31.828503, 40.695045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.488529, 32.274029, 41.078510>,  <38.443096, 31.861563, 40.496937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.488529, 32.274029, 41.078510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.138084, 32.083324, 41.107143>,  <37.927818, 31.968903, 41.124325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.138084, 32.083324, 41.107143>,  <38.488529, 32.274029, 41.078510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.138084, 32.083324, 41.107143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083949, -0.004654, 0.996459,
		-0.474738, 0.879022, 0.044101,
		-0.876114, -0.476759, 0.071583,
		37.875252, 31.940296, 41.128620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.145435, 32.613823, 41.535278>,  <38.488529, 32.274029, 41.078510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.145435, 32.613823, 41.535278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.979427, 32.249905, 41.537468>,  <37.879822, 32.031555, 41.538784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.979427, 32.249905, 41.537468>,  <38.145435, 32.613823, 41.535278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.979427, 32.249905, 41.537468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090349, -0.035222, 0.995287,
		-0.905316, 0.413556, 0.096817,
		-0.415017, -0.909797, 0.005478,
		37.854923, 31.976965, 41.539112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.534119, 32.645477, 41.971039>,  <38.145435, 32.613823, 41.535278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.534119, 32.645477, 41.971039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.647530, 32.262497, 41.949493>,  <37.715576, 32.032711, 41.936565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.647530, 32.262497, 41.949493>,  <37.534119, 32.645477, 41.971039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.647530, 32.262497, 41.949493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042140, -0.068553, 0.996757,
		-0.958036, -0.280343, -0.059784,
		0.283532, -0.957449, -0.053863,
		37.732590, 31.975262, 41.933334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.068871, 32.288807, 42.367992>,  <37.534119, 32.645477, 41.971039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.068871, 32.288807, 42.367992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.386059, 32.045433, 42.355320>,  <37.576370, 31.899408, 42.347717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.386059, 32.045433, 42.355320>,  <37.068871, 32.288807, 42.367992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.386059, 32.045433, 42.355320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080323, -0.155939, 0.984496,
		-0.603945, -0.778129, -0.172526,
		0.792969, -0.608439, -0.031677,
		37.623951, 31.862902, 42.345818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.843025, 31.827444, 42.853928>,  <37.068871, 32.288807, 42.367992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.843025, 31.827444, 42.853928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.238651, 31.785810, 42.812141>,  <37.476028, 31.760830, 42.787067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.238651, 31.785810, 42.812141>,  <36.843025, 31.827444, 42.853928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.238651, 31.785810, 42.812141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075383, -0.252015, 0.964783,
		-0.126745, -0.962110, -0.241413,
		0.989067, -0.104083, -0.104469,
		37.535370, 31.754585, 42.780800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.031193, 31.181057, 43.098503>,  <36.843025, 31.827444, 42.853928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.031193, 31.181057, 43.098503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.361717, 31.405165, 43.121532>,  <37.560032, 31.539629, 43.135349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.361717, 31.405165, 43.121532>,  <37.031193, 31.181057, 43.098503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.361717, 31.405165, 43.121532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159262, -0.330481, 0.930278,
		0.540234, -0.759526, -0.362309,
		0.826307, 0.560270, 0.057573,
		37.609608, 31.573246, 43.138805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.568050, 30.844954, 43.590969>,  <37.031193, 31.181057, 43.098503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.568050, 30.844954, 43.590969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.719307, 31.214554, 43.568203>,  <37.810059, 31.436314, 43.554543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.719307, 31.214554, 43.568203>,  <37.568050, 30.844954, 43.590969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.719307, 31.214554, 43.568203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224054, -0.031698, 0.974061,
		0.898228, -0.381079, -0.219012,
		0.378137, 0.923999, -0.056911,
		37.832748, 31.491753, 43.551128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.060104, 30.831486, 44.104126>,  <37.568050, 30.844954, 43.590969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.060104, 30.831486, 44.104126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.017483, 31.219585, 44.017170>,  <37.991909, 31.452446, 43.964996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.017483, 31.219585, 44.017170>,  <38.060104, 30.831486, 44.104126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.017483, 31.219585, 44.017170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245336, 0.237534, 0.939887,
		0.963564, 0.046815, -0.263348,
		-0.106555, 0.970251, -0.217394,
		37.985516, 31.510660, 43.951950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.631092, 31.158781, 44.371632>,  <38.060104, 30.831486, 44.104126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.631092, 31.158781, 44.371632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.338299, 31.431070, 44.360199>,  <38.162621, 31.594444, 44.353340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.338299, 31.431070, 44.360199>,  <38.631092, 31.158781, 44.371632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.338299, 31.431070, 44.360199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207534, 0.262732, 0.942285,
		0.648943, 0.683806, -0.333588,
		-0.731985, 0.680721, -0.028585,
		38.118702, 31.635286, 44.351624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.832836, 31.733473, 44.685902>,  <38.631092, 31.158781, 44.371632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.832836, 31.733473, 44.685902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.438328, 31.794039, 44.712246>,  <38.201622, 31.830379, 44.728054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.438328, 31.794039, 44.712246>,  <38.832836, 31.733473, 44.685902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.438328, 31.794039, 44.712246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113043, 0.328417, 0.937744,
		0.120358, 0.932317, -0.341026,
		-0.986273, 0.151416, 0.065864,
		38.142445, 31.839464, 44.732006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.745190, 32.352596, 44.808701>,  <38.832836, 31.733473, 44.685902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.745190, 32.352596, 44.808701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.393543, 32.208893, 44.933971>,  <38.182556, 32.122669, 45.009132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.393543, 32.208893, 44.933971>,  <38.745190, 32.352596, 44.808701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.393543, 32.208893, 44.933971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061426, 0.566219, 0.821963,
		-0.472625, 0.741842, -0.475706,
		-0.879120, -0.359260, 0.313178,
		38.129807, 32.101116, 45.027924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.308243, 33.001331, 45.075241>,  <38.745190, 32.352596, 44.808701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.308243, 33.001331, 45.075241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.146523, 32.666965, 45.223717>,  <38.049492, 32.466347, 45.312801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.146523, 32.666965, 45.223717>,  <38.308243, 33.001331, 45.075241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.146523, 32.666965, 45.223717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062465, 0.430128, 0.900604,
		-0.912491, 0.340928, -0.226116,
		-0.404300, -0.835918, 0.371192,
		38.025234, 32.416191, 45.335075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.668957, 33.176147, 45.416706>,  <38.308243, 33.001331, 45.075241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.668957, 33.176147, 45.416706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.781567, 32.826324, 45.574635>,  <37.849133, 32.616428, 45.669392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.781567, 32.826324, 45.574635>,  <37.668957, 33.176147, 45.416706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.781567, 32.826324, 45.574635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184459, 0.354462, 0.916696,
		-0.941656, -0.330904, -0.061530,
		0.281529, -0.874562, 0.394820,
		37.866024, 32.563957, 45.693081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.232254, 33.057819, 45.962883>,  <37.668957, 33.176147, 45.416706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.232254, 33.057819, 45.962883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.557240, 32.837826, 46.040264>,  <37.752232, 32.705830, 46.086693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.557240, 32.837826, 46.040264>,  <37.232254, 33.057819, 45.962883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.557240, 32.837826, 46.040264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050743, 0.263850, 0.963228,
		-0.580799, -0.792404, 0.186461,
		0.812464, -0.549981, 0.193453,
		37.800980, 32.672832, 46.098301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.047691, 32.644058, 46.478939>,  <37.232254, 33.057819, 45.962883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.047691, 32.644058, 46.478939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.443108, 32.698833, 46.504330>,  <37.680359, 32.731697, 46.519566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.443108, 32.698833, 46.504330>,  <37.047691, 32.644058, 46.478939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.443108, 32.698833, 46.504330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106578, 0.335518, 0.935986,
		0.106874, -0.932028, 0.346268,
		0.988544, 0.136938, 0.063476,
		37.739670, 32.739914, 46.523373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.155712, 32.346603, 47.106144>,  <37.047691, 32.644058, 46.478939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.155712, 32.346603, 47.106144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.494061, 32.547306, 47.033764>,  <37.697067, 32.667728, 46.990334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.494061, 32.547306, 47.033764>,  <37.155712, 32.346603, 47.106144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.494061, 32.547306, 47.033764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096752, 0.189287, 0.977144,
		0.524544, -0.844042, 0.111565,
		0.845868, 0.501761, -0.180952,
		37.747822, 32.697834, 46.979477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.628334, 32.127411, 47.580868>,  <37.155712, 32.346603, 47.106144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.628334, 32.127411, 47.580868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.738785, 32.489063, 47.450459>,  <37.805058, 32.706055, 47.372211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.738785, 32.489063, 47.450459>,  <37.628334, 32.127411, 47.580868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.738785, 32.489063, 47.450459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157964, 0.291910, 0.943311,
		0.948050, -0.311977, -0.062215,
		0.276130, 0.904134, -0.326026,
		37.821625, 32.760303, 47.352650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.078312, 32.267811, 48.098064>,  <37.628334, 32.127411, 47.580868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.078312, 32.267811, 48.098064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.043903, 32.613762, 47.900242>,  <38.023258, 32.821335, 47.781548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.043903, 32.613762, 47.900242>,  <38.078312, 32.267811, 48.098064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.043903, 32.613762, 47.900242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069167, 0.490012, 0.868967,
		0.993890, 0.108953, 0.017671,
		-0.086018, 0.864880, -0.494554,
		38.018097, 32.873226, 47.751877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.608925, 32.732403, 48.356735>,  <38.078312, 32.267811, 48.098064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.608925, 32.732403, 48.356735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.314552, 32.957134, 48.205601>,  <38.137928, 33.091972, 48.114918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.314552, 32.957134, 48.205601>,  <38.608925, 32.732403, 48.356735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.314552, 32.957134, 48.205601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125338, 0.435364, 0.891487,
		0.665356, 0.703429, -0.249979,
		-0.735929, 0.561824, -0.377838,
		38.093773, 33.125683, 48.092251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.814404, 33.403053, 48.660854>,  <38.608925, 32.732403, 48.356735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.814404, 33.403053, 48.660854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.424858, 33.429306, 48.573875>,  <38.191132, 33.445057, 48.521690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.424858, 33.429306, 48.573875>,  <38.814404, 33.403053, 48.660854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.424858, 33.429306, 48.573875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145541, 0.554664, 0.819247,
		0.174376, 0.829482, -0.530616,
		-0.973864, 0.065631, -0.217444,
		38.132698, 33.448994, 48.508644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.664745, 34.085781, 48.887539>,  <38.814404, 33.403053, 48.660854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.664745, 34.085781, 48.887539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.316048, 33.893635, 48.848930>,  <38.106831, 33.778347, 48.825764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.316048, 33.893635, 48.848930>,  <38.664745, 34.085781, 48.887539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.316048, 33.893635, 48.848930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307499, 0.383013, 0.871060,
		-0.381455, 0.789021, -0.481600,
		-0.871743, -0.480361, -0.096521,
		38.054523, 33.749527, 48.819973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.175518, 34.570911, 49.018734>,  <38.664745, 34.085781, 48.887539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.175518, 34.570911, 49.018734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.015079, 34.207684, 49.066952>,  <37.918816, 33.989746, 49.095882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.015079, 34.207684, 49.066952>,  <38.175518, 34.570911, 49.018734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.015079, 34.207684, 49.066952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389232, 0.288077, 0.874934,
		-0.829227, 0.304015, -0.468997,
		-0.401100, -0.908067, 0.120549,
		37.894749, 33.935265, 49.103115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.471409, 34.692818, 49.298225>,  <38.175518, 34.570911, 49.018734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.471409, 34.692818, 49.298225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.586857, 34.325264, 49.405823>,  <37.656124, 34.104733, 49.470383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.586857, 34.325264, 49.405823>,  <37.471409, 34.692818, 49.298225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.586857, 34.325264, 49.405823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264953, 0.193329, 0.944682,
		-0.920055, -0.343922, -0.187662,
		0.288617, -0.918881, 0.268996,
		37.673443, 34.049599, 49.486523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.777721, 34.531792, 49.598709>,  <37.471409, 34.692818, 49.298225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.777721, 34.531792, 49.598709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.607712, 34.893288, 49.578308>,  <36.505707, 35.110188, 49.566067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.607712, 34.893288, 49.578308>,  <36.777721, 34.531792, 49.598709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.607712, 34.893288, 49.578308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489776, -0.276992, -0.826677,
		-0.761231, -0.326379, 0.560360,
		-0.425025, 0.903743, -0.051003,
		36.480206, 35.164410, 49.563007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.051292, 34.386154, 49.558048>,  <36.777721, 34.531792, 49.598709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.051292, 34.386154, 49.558048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.083740, 34.764168, 49.431351>,  <36.103207, 34.990978, 49.355331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.083740, 34.764168, 49.431351>,  <36.051292, 34.386154, 49.558048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.083740, 34.764168, 49.431351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636591, -0.195407, -0.746036,
		-0.766924, 0.262152, 0.585750,
		0.081115, 0.945036, -0.316746,
		36.108074, 35.047680, 49.336327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.378899, 34.665619, 49.523647>,  <36.051292, 34.386154, 49.558048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.378899, 34.665619, 49.523647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.615845, 34.862144, 49.268238>,  <35.758011, 34.980061, 49.114994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.615845, 34.862144, 49.268238>,  <35.378899, 34.665619, 49.523647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.615845, 34.862144, 49.268238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626487, -0.217421, -0.748494,
		-0.506576, 0.843408, 0.179011,
		0.592364, 0.491317, -0.638524,
		35.793552, 35.009541, 49.076679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.941891, 34.871532, 48.960556>,  <35.378899, 34.665619, 49.523647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.941891, 34.871532, 48.960556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.299576, 34.970306, 48.811207>,  <35.514187, 35.029572, 48.721600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.299576, 34.970306, 48.811207>,  <34.941891, 34.871532, 48.960556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.299576, 34.970306, 48.811207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306494, -0.270163, -0.912728,
		-0.326257, 0.930609, -0.165899,
		0.894214, 0.246937, -0.373369,
		35.567841, 35.044388, 48.699196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.755386, 35.307678, 48.442558>,  <34.941891, 34.871532, 48.960556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.755386, 35.307678, 48.442558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.127621, 35.187763, 48.358532>,  <35.350964, 35.115814, 48.308117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.127621, 35.187763, 48.358532>,  <34.755386, 35.307678, 48.442558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.127621, 35.187763, 48.358532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267997, -0.167035, -0.948829,
		0.249359, 0.939269, -0.235783,
		0.930590, -0.299788, -0.210070,
		35.406799, 35.097828, 48.295509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.961044, 35.695431, 47.822445>,  <34.755386, 35.307678, 48.442558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.961044, 35.695431, 47.822445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.168293, 35.354042, 47.844841>,  <35.292641, 35.149208, 47.858276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.168293, 35.354042, 47.844841>,  <34.961044, 35.695431, 47.822445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.168293, 35.354042, 47.844841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183585, -0.174907, -0.967318,
		0.835371, 0.490911, -0.247308,
		0.518122, -0.853472, 0.055989,
		35.323730, 35.098000, 47.861637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.508884, 35.819759, 47.285000>,  <34.961044, 35.695431, 47.822445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.508884, 35.819759, 47.285000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.471653, 35.426796, 47.349766>,  <35.449314, 35.191017, 47.388626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.471653, 35.426796, 47.349766>,  <35.508884, 35.819759, 47.285000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.471653, 35.426796, 47.349766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073106, -0.155443, -0.985136,
		0.992971, -0.103532, -0.057351,
		-0.093078, -0.982404, 0.161920,
		35.443729, 35.132076, 47.398342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.890259, 35.613014, 46.794044>,  <35.508884, 35.819759, 47.285000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.890259, 35.613014, 46.794044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.666458, 35.296551, 46.892860>,  <35.532177, 35.106674, 46.952148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.666458, 35.296551, 46.892860>,  <35.890259, 35.613014, 46.794044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.666458, 35.296551, 46.892860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036438, -0.274290, -0.960956,
		0.828027, -0.546659, 0.124638,
		-0.559503, -0.791156, 0.247039,
		35.498608, 35.059204, 46.966972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.191521, 35.029263, 46.432514>,  <35.890259, 35.613014, 46.794044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.191521, 35.029263, 46.432514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.814041, 34.923241, 46.511684>,  <35.587551, 34.859627, 46.559185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.814041, 34.923241, 46.511684>,  <36.191521, 35.029263, 46.432514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.814041, 34.923241, 46.511684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145979, -0.203220, -0.968190,
		0.296847, -0.942574, 0.153086,
		-0.943701, -0.265057, 0.197922,
		35.530930, 34.843723, 46.571060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.203217, 34.333855, 46.190002>,  <36.191521, 35.029263, 46.432514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.203217, 34.333855, 46.190002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.844658, 34.507900, 46.223846>,  <35.629524, 34.612328, 46.244152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.844658, 34.507900, 46.223846>,  <36.203217, 34.333855, 46.190002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.844658, 34.507900, 46.223846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222553, -0.276718, -0.934825,
		-0.383343, -0.856798, 0.344884,
		-0.896392, 0.435114, 0.084605,
		35.575741, 34.638435, 46.249229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.769855, 33.812889, 46.056099>,  <36.203217, 34.333855, 46.190002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.769855, 33.812889, 46.056099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.532631, 34.126064, 45.980961>,  <35.390297, 34.313969, 45.935879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.532631, 34.126064, 45.980961>,  <35.769855, 33.812889, 46.056099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.532631, 34.126064, 45.980961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144854, -0.333249, -0.931645,
		-0.792022, -0.525310, 0.311048,
		-0.593059, 0.782940, -0.187847,
		35.354713, 34.360947, 45.924606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.054222, 33.539005, 45.716866>,  <35.769855, 33.812889, 46.056099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.054222, 33.539005, 45.716866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.100746, 33.922043, 45.611420>,  <35.128662, 34.151863, 45.548153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.100746, 33.922043, 45.611420>,  <35.054222, 33.539005, 45.716866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.100746, 33.922043, 45.611420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130348, -0.248400, -0.959847,
		-0.984622, 0.146004, 0.095928,
		0.116313, 0.957591, -0.263612,
		35.135639, 34.209320, 45.532337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.534035, 33.683071, 45.186199>,  <35.054222, 33.539005, 45.716866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.534035, 33.683071, 45.186199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.786926, 33.990971, 45.150951>,  <34.938663, 34.175713, 45.129803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.786926, 33.990971, 45.150951>,  <34.534035, 33.683071, 45.186199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.786926, 33.990971, 45.150951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201983, 0.053947, -0.977902,
		-0.747987, 0.636061, 0.189583,
		0.632233, 0.769751, -0.088122,
		34.976597, 34.221897, 45.124516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.182983, 34.238106, 44.809280>,  <34.534035, 33.683071, 45.186199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.182983, 34.238106, 44.809280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.574207, 34.311859, 44.770515>,  <34.808941, 34.356110, 44.747257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.574207, 34.311859, 44.770515>,  <34.182983, 34.238106, 44.809280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.574207, 34.311859, 44.770515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125833, 0.152205, -0.980306,
		-0.166002, 0.970997, 0.172067,
		0.978064, 0.184384, -0.096917,
		34.867626, 34.367176, 44.741440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.165001, 34.820023, 44.354511>,  <34.182983, 34.238106, 44.809280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.165001, 34.820023, 44.354511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.514858, 34.628517, 44.324100>,  <34.724773, 34.513615, 44.305855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.514858, 34.628517, 44.324100>,  <34.165001, 34.820023, 44.354511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.514858, 34.628517, 44.324100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039756, 0.085462, -0.995548,
		0.483129, 0.873775, 0.055715,
		0.874646, -0.478763, -0.076027,
		34.777252, 34.484890, 44.301292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.425152, 35.088795, 43.772713>,  <34.165001, 34.820023, 44.354511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.425152, 35.088795, 43.772713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.656551, 34.767490, 43.829437>,  <34.795391, 34.574707, 43.863472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.656551, 34.767490, 43.829437>,  <34.425152, 35.088795, 43.772713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.656551, 34.767490, 43.829437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163227, -0.056341, -0.984979,
		0.799188, 0.592953, 0.098522,
		0.578495, -0.803264, 0.141812,
		34.830101, 34.526512, 43.871983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.053196, 35.241344, 43.437202>,  <34.425152, 35.088795, 43.772713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.053196, 35.241344, 43.437202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.041172, 34.842850, 43.469734>,  <35.033958, 34.603752, 43.489254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.041172, 34.842850, 43.469734>,  <35.053196, 35.241344, 43.437202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.041172, 34.842850, 43.469734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252754, -0.086298, -0.963674,
		0.967063, -0.008409, 0.254396,
		-0.030058, -0.996234, 0.081330,
		35.032154, 34.543980, 43.494133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.710178, 35.015099, 43.296356>,  <35.053196, 35.241344, 43.437202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.710178, 35.015099, 43.296356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.465454, 34.703285, 43.242676>,  <35.318619, 34.516197, 43.210468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.465454, 34.703285, 43.242676>,  <35.710178, 35.015099, 43.296356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.465454, 34.703285, 43.242676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333583, -0.100442, -0.937355,
		0.717221, -0.618253, 0.321492,
		-0.611813, -0.779535, -0.134199,
		35.281910, 34.469425, 43.202415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.119232, 34.459503, 43.021790>,  <35.710178, 35.015099, 43.296356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.119232, 34.459503, 43.021790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.740238, 34.397373, 42.909969>,  <35.512840, 34.360096, 42.842876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.740238, 34.397373, 42.909969>,  <36.119232, 34.459503, 43.021790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.740238, 34.397373, 42.909969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285370, -0.016090, -0.958282,
		0.144350, -0.987732, 0.059571,
		-0.947485, -0.155328, -0.279546,
		35.455994, 34.350777, 42.826107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.222229, 34.099323, 42.479687>,  <36.119232, 34.459503, 43.021790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.222229, 34.099323, 42.479687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.832542, 34.158344, 42.411427>,  <35.598728, 34.193756, 42.370472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.832542, 34.158344, 42.411427>,  <36.222229, 34.099323, 42.479687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.832542, 34.158344, 42.411427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127558, -0.263619, -0.956156,
		-0.186072, -0.953275, 0.238001,
		-0.974220, 0.147555, -0.170650,
		35.540276, 34.202610, 42.360229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.999756, 33.465046, 42.061371>,  <36.222229, 34.099323, 42.479687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.999756, 33.465046, 42.061371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.785591, 33.789879, 41.968540>,  <35.657093, 33.984779, 41.912842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.785591, 33.789879, 41.968540>,  <35.999756, 33.465046, 42.061371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.785591, 33.789879, 41.968540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044817, -0.247072, -0.967960,
		-0.843401, -0.528659, 0.095890,
		-0.535412, 0.812081, -0.232074,
		35.624966, 34.033504, 41.898918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.469799, 33.214836, 41.649410>,  <35.999756, 33.465046, 42.061371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.469799, 33.214836, 41.649410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.512882, 33.606915, 41.582935>,  <35.538734, 33.842163, 41.543053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.512882, 33.606915, 41.582935>,  <35.469799, 33.214836, 41.649410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.512882, 33.606915, 41.582935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157953, -0.181905, -0.970547,
		-0.981554, 0.078291, -0.174418,
		0.107713, 0.980194, -0.166184,
		35.545197, 33.900974, 41.533081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.473400, 33.227200, 41.002979>,  <35.469799, 33.214836, 41.649410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.473400, 33.227200, 41.002979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.569187, 33.613537, 41.042587>,  <35.626659, 33.845341, 41.066353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.569187, 33.613537, 41.042587>,  <35.473400, 33.227200, 41.002979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.569187, 33.613537, 41.042587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454870, -0.021507, -0.890298,
		-0.857758, 0.258236, -0.444483,
		0.239466, 0.965842, 0.099016,
		35.641026, 33.903290, 41.072292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.265213, 33.501366, 40.484528>,  <35.473400, 33.227200, 41.002979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.265213, 33.501366, 40.484528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.570011, 33.726402, 40.612812>,  <35.752892, 33.861423, 40.689781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.570011, 33.726402, 40.612812>,  <35.265213, 33.501366, 40.484528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.570011, 33.726402, 40.612812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387558, 0.000582, -0.921845,
		-0.518806, 0.826737, -0.217592,
		0.761996, 0.562589, 0.320711,
		35.798611, 33.895180, 40.709026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.225029, 34.048191, 40.024628>,  <35.265213, 33.501366, 40.484528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.225029, 34.048191, 40.024628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.586536, 34.060802, 40.195366>,  <35.803440, 34.068371, 40.297810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.586536, 34.060802, 40.195366>,  <35.225029, 34.048191, 40.024628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.586536, 34.060802, 40.195366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414730, 0.182000, -0.891557,
		-0.105799, 0.982793, 0.151410,
		0.903773, 0.031532, 0.426849,
		35.857670, 34.070263, 40.323421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.537609, 34.683647, 39.744316>,  <35.225029, 34.048191, 40.024628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.537609, 34.683647, 39.744316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.831425, 34.446762, 39.876823>,  <36.007713, 34.304630, 39.956326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.831425, 34.446762, 39.876823>,  <35.537609, 34.683647, 39.744316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.831425, 34.446762, 39.876823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530553, 0.196876, -0.824471,
		0.423043, 0.781361, 0.458813,
		0.734539, -0.592212, 0.331266,
		36.051788, 34.269100, 39.976204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.193443, 34.995441, 39.661129>,  <35.537609, 34.683647, 39.744316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.193443, 34.995441, 39.661129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.284428, 34.605953, 39.665771>,  <36.339020, 34.372261, 39.668556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.284428, 34.605953, 39.665771>,  <36.193443, 34.995441, 39.661129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.284428, 34.605953, 39.665771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707383, 0.157032, -0.689166,
		0.669230, 0.164971, 0.724510,
		0.227464, -0.973717, 0.011607,
		36.352669, 34.313839, 39.669254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.962410, 34.936272, 39.836063>,  <36.193443, 34.995441, 39.661129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.962410, 34.936272, 39.836063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.821831, 34.605686, 39.660133>,  <36.737484, 34.407333, 39.554577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.821831, 34.605686, 39.660133>,  <36.962410, 34.936272, 39.836063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.821831, 34.605686, 39.660133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743890, 0.038725, -0.667180,
		0.568432, -0.561657, 0.601188,
		-0.351445, -0.826464, -0.439823,
		36.716396, 34.357746, 39.528187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.550938, 34.536713, 39.801128>,  <36.962410, 34.936272, 39.836063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.550938, 34.536713, 39.801128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.289135, 34.401688, 39.530525>,  <37.132053, 34.320671, 39.368164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.289135, 34.401688, 39.530525>,  <37.550938, 34.536713, 39.801128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.289135, 34.401688, 39.530525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695943, 0.080648, -0.713554,
		0.295431, -0.937841, 0.182142,
		-0.654510, -0.337566, -0.676510,
		37.092781, 34.300419, 39.327572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.922985, 34.112072, 39.378544>,  <37.550938, 34.536713, 39.801128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.922985, 34.112072, 39.378544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.624466, 34.195709, 39.125774>,  <37.445354, 34.245892, 38.974113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.624466, 34.195709, 39.125774>,  <37.922985, 34.112072, 39.378544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.624466, 34.195709, 39.125774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660159, 0.111223, -0.742845,
		-0.085037, -0.971551, -0.221038,
		-0.746297, 0.209089, -0.631920,
		37.400578, 34.258434, 38.936199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.108547, 33.837452, 38.775341>,  <37.922985, 34.112072, 39.378544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.108547, 33.837452, 38.775341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.812801, 34.073036, 38.644829>,  <37.635353, 34.214386, 38.566521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.812801, 34.073036, 38.644829>,  <38.108547, 33.837452, 38.775341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.812801, 34.073036, 38.644829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488019, 0.134909, -0.862344,
		-0.463871, -0.796819, -0.387173,
		-0.739365, 0.588964, -0.326283,
		37.590992, 34.249725, 38.546944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.963303, 33.541893, 38.047691>,  <38.108547, 33.837452, 38.775341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.963303, 33.541893, 38.047691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.836834, 33.920841, 38.067772>,  <37.760952, 34.148209, 38.079823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.836834, 33.920841, 38.067772>,  <37.963303, 33.541893, 38.047691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.836834, 33.920841, 38.067772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277844, 0.143066, -0.949913,
		-0.907103, -0.286390, -0.308455,
		-0.316175, 0.947372, 0.050204,
		37.741982, 34.205051, 38.082832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.729362, 33.615223, 37.426880>,  <37.963303, 33.541893, 38.047691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.729362, 33.615223, 37.426880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.781628, 33.989029, 37.559307>,  <37.812988, 34.213314, 37.638763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.781628, 33.989029, 37.559307>,  <37.729362, 33.615223, 37.426880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.781628, 33.989029, 37.559307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246511, 0.292822, -0.923844,
		-0.960291, 0.202325, -0.192107,
		0.130664, 0.934516, 0.331069,
		37.820827, 34.269382, 37.658627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.601707, 33.935574, 36.916107>,  <37.729362, 33.615223, 37.426880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.601707, 33.935574, 36.916107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.731575, 34.250244, 37.126148>,  <37.809494, 34.439045, 37.252174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.731575, 34.250244, 37.126148>,  <37.601707, 33.935574, 36.916107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.731575, 34.250244, 37.126148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252773, 0.462815, -0.849652,
		-0.911426, 0.408584, -0.048590,
		0.324666, 0.786677, 0.525101,
		37.828976, 34.486248, 37.283680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.237377, 34.590008, 36.694057>,  <37.601707, 33.935574, 36.916107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.237377, 34.590008, 36.694057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.591854, 34.698105, 36.844597>,  <37.804539, 34.762962, 36.934921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.591854, 34.698105, 36.844597>,  <37.237377, 34.590008, 36.694057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.591854, 34.698105, 36.844597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232921, 0.442321, -0.866083,
		-0.400517, 0.855174, 0.329035,
		0.886191, 0.270242, 0.376345,
		37.857712, 34.779179, 36.957500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.328178, 35.262207, 36.571861>,  <37.237377, 34.590008, 36.694057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.328178, 35.262207, 36.571861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.704807, 35.138592, 36.625420>,  <37.930786, 35.064423, 36.657555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.704807, 35.138592, 36.625420>,  <37.328178, 35.262207, 36.571861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.704807, 35.138592, 36.625420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262744, 0.425278, -0.866086,
		0.210715, 0.850665, 0.481631,
		0.941576, -0.309043, 0.133894,
		37.987282, 35.045879, 36.665588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.628593, 35.977177, 36.495453>,  <37.328178, 35.262207, 36.571861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.628593, 35.977177, 36.495453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.886181, 35.675373, 36.444832>,  <38.040733, 35.494289, 36.414459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.886181, 35.675373, 36.444832>,  <37.628593, 35.977177, 36.495453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.886181, 35.675373, 36.444832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357105, 0.442735, -0.822473,
		0.676594, 0.484456, 0.554547,
		0.643969, -0.754512, -0.126550,
		38.079372, 35.449020, 36.406868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.250923, 36.304680, 36.295055>,  <37.628593, 35.977177, 36.495453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.250923, 36.304680, 36.295055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.307842, 35.933563, 36.157097>,  <38.341991, 35.710892, 36.074322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.307842, 35.933563, 36.157097>,  <38.250923, 36.304680, 36.295055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.307842, 35.933563, 36.157097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380047, 0.372949, -0.846447,
		0.913956, -0.010633, 0.405673,
		0.142295, -0.927791, -0.344900,
		38.350533, 35.655228, 36.053627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.989765, 36.309944, 35.917137>,  <38.250923, 36.304680, 36.295055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.989765, 36.309944, 35.917137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.793999, 35.982128, 35.797924>,  <38.676537, 35.785439, 35.726395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.793999, 35.982128, 35.797924>,  <38.989765, 36.309944, 35.917137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.793999, 35.982128, 35.797924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211022, 0.220305, -0.952331,
		0.846131, -0.528982, 0.065119,
		-0.489420, -0.819539, -0.298034,
		38.647171, 35.736267, 35.708515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.641418, 35.971523, 36.094330>,  <38.989765, 36.309944, 35.917137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.641418, 35.971523, 36.094330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.335304, 36.124874, 36.301155>,  <39.151634, 36.216885, 36.425251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.335304, 36.124874, 36.301155>,  <39.641418, 35.971523, 36.094330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.335304, 36.124874, 36.301155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623392, -0.641554, -0.446980,
		0.160361, -0.664401, 0.729970,
		-0.765289, 0.383379, 0.517062,
		39.105717, 36.239887, 36.456272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.403564, 35.864452, 35.818199>,  <39.641418, 35.971523, 36.094330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.403564, 35.864452, 35.818199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.791580, 35.769485, 35.797585>,  <41.024391, 35.712505, 35.785213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.791580, 35.769485, 35.797585>,  <40.403564, 35.864452, 35.818199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.791580, 35.769485, 35.797585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150966, 0.755286, -0.637771,
		0.190343, 0.610882, 0.768500,
		0.970041, -0.237413, -0.051541,
		41.082592, 35.698261, 35.782124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.812359, 36.471020, 35.924713>,  <40.403564, 35.864452, 35.818199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.812359, 36.471020, 35.924713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.022507, 36.207981, 35.708729>,  <41.148598, 36.050159, 35.579140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.022507, 36.207981, 35.708729>,  <40.812359, 36.471020, 35.924713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.022507, 36.207981, 35.708729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114914, 0.683616, -0.720739,
		0.843076, 0.316609, 0.434721,
		0.525374, -0.657593, -0.539957,
		41.180119, 36.010704, 35.546741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.387684, 36.786953, 35.615387>,  <40.812359, 36.471020, 35.924713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.387684, 36.786953, 35.615387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.307892, 36.475918, 35.376869>,  <41.260017, 36.289295, 35.233757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.307892, 36.475918, 35.376869>,  <41.387684, 36.786953, 35.615387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.307892, 36.475918, 35.376869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221350, 0.557039, -0.800445,
		0.954575, -0.291660, 0.061003,
		-0.199477, -0.777588, -0.596294,
		41.248051, 36.242641, 35.197983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.012413, 36.568974, 35.350819>,  <41.387684, 36.786953, 35.615387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.012413, 36.568974, 35.350819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.694118, 36.517368, 35.114120>,  <41.503143, 36.486404, 34.972099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.694118, 36.517368, 35.114120>,  <42.012413, 36.568974, 35.350819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.694118, 36.517368, 35.114120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397709, 0.625566, -0.671189,
		0.456767, -0.769431, -0.446475,
		-0.795733, -0.129010, -0.591747,
		41.455399, 36.478664, 34.936596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.213280, 36.402611, 34.716915>,  <42.012413, 36.568974, 35.350819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.213280, 36.402611, 34.716915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.864929, 36.597675, 34.692356>,  <41.655918, 36.714714, 34.677620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.864929, 36.597675, 34.692356>,  <42.213280, 36.402611, 34.716915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.864929, 36.597675, 34.692356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418373, 0.669927, -0.613320,
		-0.257959, -0.559811, -0.787445,
		-0.870874, 0.487657, -0.061396,
		41.603668, 36.743973, 34.673939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.577877, 36.802269, 34.192650>,  <42.213280, 36.402611, 34.716915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.577877, 36.802269, 34.192650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.971741, 36.805645, 34.122940>,  <43.208061, 36.807671, 34.081116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.971741, 36.805645, 34.122940>,  <42.577877, 36.802269, 34.192650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.971741, 36.805645, 34.122940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160531, -0.347501, -0.923836,
		-0.068358, 0.937641, -0.340816,
		0.984661, 0.008440, -0.174275,
		43.267139, 36.808178, 34.070656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.716400, 37.014179, 33.511379>,  <42.577877, 36.802269, 34.192650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.716400, 37.014179, 33.511379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.051052, 36.813461, 33.599243>,  <43.251842, 36.693031, 33.651962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.051052, 36.813461, 33.599243>,  <42.716400, 37.014179, 33.511379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.051052, 36.813461, 33.599243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026629, -0.437796, -0.898680,
		0.547115, 0.746017, -0.379637,
		0.836634, -0.501790, 0.219659,
		43.302044, 36.662926, 33.665142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.181557, 37.109886, 33.031830>,  <42.716400, 37.014179, 33.511379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.181557, 37.109886, 33.031830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.243351, 36.753151, 33.201897>,  <43.280430, 36.539112, 33.303936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.243351, 36.753151, 33.201897>,  <43.181557, 37.109886, 33.031830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.243351, 36.753151, 33.201897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054139, -0.437327, -0.897671,
		0.986510, 0.115662, -0.115845,
		0.154489, -0.891834, 0.425166,
		43.289700, 36.485600, 33.329445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.561680, 36.791847, 32.592922>,  <43.181557, 37.109886, 33.031830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.561680, 36.791847, 32.592922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.443615, 36.472988, 32.803608>,  <43.372776, 36.281673, 32.930019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.443615, 36.472988, 32.803608>,  <43.561680, 36.791847, 32.592922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.443615, 36.472988, 32.803608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106657, -0.520343, -0.847271,
		0.949476, -0.306259, 0.068562,
		-0.295160, -0.797151, 0.526718,
		43.355068, 36.233845, 32.961624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.942982, 36.291847, 32.279335>,  <43.561680, 36.791847, 32.592922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.942982, 36.291847, 32.279335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.644966, 36.104752, 32.469551>,  <43.466156, 35.992496, 32.583679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.644966, 36.104752, 32.469551>,  <43.942982, 36.291847, 32.279335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.644966, 36.104752, 32.469551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129231, -0.598199, -0.790859,
		0.654378, -0.650678, 0.385238,
		-0.745043, -0.467736, 0.475536,
		43.421452, 35.964432, 32.612213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.045559, 35.645046, 32.170696>,  <43.942982, 36.291847, 32.279335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.045559, 35.645046, 32.170696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.660679, 35.643661, 32.279625>,  <43.429752, 35.642830, 32.344982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.660679, 35.643661, 32.279625>,  <44.045559, 35.645046, 32.170696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.660679, 35.643661, 32.279625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199535, -0.671555, -0.713582,
		0.185350, -0.740946, 0.645480,
		-0.962201, -0.003466, 0.272317,
		43.372017, 35.642620, 32.361320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.887218, 34.952801, 32.289345>,  <44.045559, 35.645046, 32.170696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.887218, 34.952801, 32.289345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.538349, 35.139542, 32.230888>,  <43.329025, 35.251587, 32.195816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.538349, 35.139542, 32.230888>,  <43.887218, 34.952801, 32.289345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.538349, 35.139542, 32.230888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308390, -0.756617, -0.576564,
		-0.379744, -0.457797, 0.803876,
		-0.872175, 0.466854, -0.146141,
		43.276695, 35.279598, 32.187046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.392803, 34.470360, 32.339668>,  <43.887218, 34.952801, 32.289345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.392803, 34.470360, 32.339668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.198444, 34.751144, 32.131382>,  <43.081829, 34.919617, 32.006409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.198444, 34.751144, 32.131382>,  <43.392803, 34.470360, 32.339668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.198444, 34.751144, 32.131382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331538, -0.699284, -0.633312,
		-0.808692, -0.135089, 0.572511,
		-0.485901, 0.701964, -0.520718,
		43.052673, 34.961735, 31.975166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.652870, 34.253620, 32.177593>,  <43.392803, 34.470360, 32.339668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.652870, 34.253620, 32.177593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.742809, 34.545422, 31.919209>,  <42.796772, 34.720505, 31.764179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.742809, 34.545422, 31.919209>,  <42.652870, 34.253620, 32.177593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.742809, 34.545422, 31.919209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429880, -0.520663, -0.737641,
		-0.874441, 0.443542, 0.196529,
		0.224849, 0.729507, -0.645959,
		42.810265, 34.764275, 31.725420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.161556, 34.135136, 31.621269>,  <42.652870, 34.253620, 32.177593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.161556, 34.135136, 31.621269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.439297, 34.357304, 31.438232>,  <42.605942, 34.490604, 31.328411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.439297, 34.357304, 31.438232>,  <42.161556, 34.135136, 31.621269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.439297, 34.357304, 31.438232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294055, -0.361380, -0.884837,
		-0.656816, 0.748945, -0.087602,
		0.694352, 0.555415, -0.457591,
		42.647602, 34.523930, 31.300955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.797028, 34.341358, 31.018036>,  <42.161556, 34.135136, 31.621269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.797028, 34.341358, 31.018036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.185352, 34.402588, 30.944181>,  <42.418346, 34.439323, 30.899868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.185352, 34.402588, 30.944181>,  <41.797028, 34.341358, 31.018036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.185352, 34.402588, 30.944181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116267, -0.372966, -0.920532,
		-0.209771, 0.915131, -0.344283,
		0.970813, 0.153072, -0.184637,
		42.476597, 34.448509, 30.888790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.826714, 34.709263, 30.315199>,  <41.797028, 34.341358, 31.018036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.826714, 34.709263, 30.315199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.175816, 34.535378, 30.404034>,  <42.385277, 34.431046, 30.457335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.175816, 34.535378, 30.404034>,  <41.826714, 34.709263, 30.315199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.175816, 34.535378, 30.404034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048517, -0.529943, -0.846644,
		0.485736, 0.728141, -0.483603,
		0.872758, -0.434709, 0.222086,
		42.437641, 34.404964, 30.470659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.175991, 34.638832, 29.636118>,  <41.826714, 34.709263, 30.315199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.175991, 34.638832, 29.636118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.381077, 34.396343, 29.879301>,  <42.504128, 34.250851, 30.025211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.381077, 34.396343, 29.879301>,  <42.175991, 34.638832, 29.636118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.381077, 34.396343, 29.879301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077826, -0.672386, -0.736098,
		0.855023, 0.424726, -0.297564,
		0.512717, -0.606222, 0.607960,
		42.534893, 34.214478, 30.061689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.752869, 34.279354, 29.197403>,  <42.175991, 34.638832, 29.636118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.752869, 34.279354, 29.197403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.680897, 34.058849, 29.523281>,  <42.637714, 33.926544, 29.718809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.680897, 34.058849, 29.523281>,  <42.752869, 34.279354, 29.197403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.680897, 34.058849, 29.523281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040715, -0.823331, -0.566099,
		0.982836, -0.135030, 0.125701,
		-0.179934, -0.551264, 0.814697,
		42.626915, 33.893471, 29.767691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.133266, 33.758415, 29.018047>,  <42.752869, 34.279354, 29.197403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.133266, 33.758415, 29.018047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.901619, 33.599110, 29.302584>,  <42.762630, 33.503525, 29.473305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.901619, 33.599110, 29.302584>,  <43.133266, 33.758415, 29.018047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.901619, 33.599110, 29.302584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148687, -0.806318, -0.572489,
		0.801569, -0.437307, 0.407737,
		-0.579119, -0.398264, 0.711341,
		42.727882, 33.479630, 29.515985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.498882, 33.128445, 29.122942>,  <43.133266, 33.758415, 29.018047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.498882, 33.128445, 29.122942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.119644, 33.078278, 29.239824>,  <42.892101, 33.048176, 29.309954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.119644, 33.078278, 29.239824>,  <43.498882, 33.128445, 29.122942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.119644, 33.078278, 29.239824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133790, -0.676295, -0.724379,
		0.288471, -0.725875, 0.624412,
		-0.948096, -0.125422, 0.292207,
		42.835217, 33.040649, 29.327486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.343872, 32.361649, 29.070229>,  <43.498882, 33.128445, 29.122942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.343872, 32.361649, 29.070229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.984932, 32.537319, 29.087610>,  <42.769569, 32.642723, 29.098040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.984932, 32.537319, 29.087610>,  <43.343872, 32.361649, 29.070229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.984932, 32.537319, 29.087610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335541, -0.614996, -0.713577,
		-0.286663, -0.654908, 0.699228,
		-0.897350, 0.439176, 0.043452,
		42.715729, 32.669071, 29.100645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.928753, 31.771374, 29.243279>,  <43.343872, 32.361649, 29.070229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.928753, 31.771374, 29.243279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.688587, 32.048229, 29.083052>,  <42.544487, 32.214340, 28.986916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.688587, 32.048229, 29.083052>,  <42.928753, 31.771374, 29.243279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.688587, 32.048229, 29.083052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374056, -0.685797, -0.624311,
		-0.706817, -0.225008, 0.670657,
		-0.600409, 0.692137, -0.400568,
		42.508465, 32.255871, 28.962881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.304756, 31.453323, 29.077408>,  <42.928753, 31.771374, 29.243279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.304756, 31.453323, 29.077408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.272480, 31.766022, 28.830065>,  <42.253117, 31.953640, 28.681660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.272480, 31.766022, 28.830065>,  <42.304756, 31.453323, 29.077408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.272480, 31.766022, 28.830065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474623, -0.575665, -0.665840,
		-0.876483, 0.239762, 0.417482,
		-0.080686, 0.781744, -0.618357,
		42.248276, 32.000546, 28.644558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.560314, 31.510063, 28.836098>,  <42.304756, 31.453323, 29.077408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.560314, 31.510063, 28.836098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.795551, 31.693266, 28.569452>,  <41.936695, 31.803188, 28.409464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.795551, 31.693266, 28.569452>,  <41.560314, 31.510063, 28.836098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.795551, 31.693266, 28.569452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488360, -0.455912, -0.744076,
		-0.644710, 0.763134, -0.044446,
		0.588093, 0.458008, -0.666615,
		41.971981, 31.830667, 28.369469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.184978, 31.649237, 28.357716>,  <41.560314, 31.510063, 28.836098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.184978, 31.649237, 28.357716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.542542, 31.681032, 28.181261>,  <41.757080, 31.700109, 28.075388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.542542, 31.681032, 28.181261>,  <41.184978, 31.649237, 28.357716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.542542, 31.681032, 28.181261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305979, -0.610981, -0.730123,
		-0.327564, 0.787645, -0.521840,
		0.893912, 0.079490, -0.441138,
		41.810715, 31.704880, 28.048920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.085159, 31.856504, 27.703043>,  <41.184978, 31.649237, 28.357716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.085159, 31.856504, 27.703043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.462311, 31.726028, 27.675989>,  <41.688602, 31.647743, 27.659756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.462311, 31.726028, 27.675989>,  <41.085159, 31.856504, 27.703043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.462311, 31.726028, 27.675989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221481, -0.462159, -0.858694,
		0.248837, 0.824627, -0.508006,
		0.942882, -0.326188, -0.067637,
		41.745174, 31.628172, 27.655699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.355015, 31.902943, 26.980978>,  <41.085159, 31.856504, 27.703043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.355015, 31.902943, 26.980978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.525230, 31.600307, 27.179569>,  <41.627361, 31.418726, 27.298725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.525230, 31.600307, 27.179569>,  <41.355015, 31.902943, 26.980978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.525230, 31.600307, 27.179569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242892, -0.623995, -0.742721,
		0.871733, 0.195468, -0.449305,
		0.425542, -0.756586, 0.496479,
		41.652893, 31.373331, 27.328512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.541241, 31.469215, 26.540905>,  <41.355015, 31.902943, 26.980978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.541241, 31.469215, 26.540905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.546192, 31.237291, 26.866768>,  <41.549164, 31.098137, 27.062284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.546192, 31.237291, 26.866768>,  <41.541241, 31.469215, 26.540905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.546192, 31.237291, 26.866768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302355, -0.778750, -0.549663,
		0.953115, -0.239511, -0.184949,
		0.012379, -0.579812, 0.814656,
		41.549908, 31.063347, 27.111164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.992195, 30.812159, 26.448977>,  <41.541241, 31.469215, 26.540905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.992195, 30.812159, 26.448977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.686771, 30.763668, 26.702679>,  <41.503517, 30.734573, 26.854900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.686771, 30.763668, 26.702679>,  <41.992195, 30.812159, 26.448977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.686771, 30.763668, 26.702679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273550, -0.829006, -0.487769,
		0.584933, -0.545941, 0.599834,
		-0.763559, -0.121227, 0.634256,
		41.457703, 30.727301, 26.892956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.823624, 30.033463, 26.515654>,  <41.992195, 30.812159, 26.448977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.823624, 30.033463, 26.515654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.502495, 30.215586, 26.669626>,  <41.309818, 30.324860, 26.762009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.502495, 30.215586, 26.669626>,  <41.823624, 30.033463, 26.515654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.502495, 30.215586, 26.669626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596168, -0.621514, -0.508236,
		0.007834, -0.637505, 0.770406,
		-0.802821, 0.455310, 0.384929,
		41.261650, 30.352179, 26.785105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.467827, 29.526812, 26.863558>,  <41.823624, 30.033463, 26.515654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.467827, 29.526812, 26.863558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.225407, 29.815382, 26.729546>,  <41.079952, 29.988523, 26.649137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.225407, 29.815382, 26.729546>,  <41.467827, 29.526812, 26.863558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.225407, 29.815382, 26.729546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479654, -0.667464, -0.569583,
		-0.634533, -0.184498, 0.750552,
		-0.606053, 0.721424, -0.335032,
		41.043591, 30.031809, 26.629036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.738968, 28.775679, 26.889072>,  <41.467827, 29.526812, 26.863558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.738968, 28.775679, 26.889072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.625919, 28.480293, 27.133955>,  <41.558090, 28.303062, 27.280884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.625919, 28.480293, 27.133955>,  <41.738968, 28.775679, 26.889072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.625919, 28.480293, 27.133955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854951, 0.095479, 0.509846,
		-0.434956, 0.667498, 0.604367,
		-0.282617, -0.738465, 0.612207,
		41.541134, 28.258755, 27.317617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.508091, 28.832285, 27.517000>,  <41.738968, 28.775679, 26.889072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.508091, 28.832285, 27.517000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.668060, 28.469381, 27.569065>,  <41.764042, 28.251640, 27.600304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.668060, 28.469381, 27.569065>,  <41.508091, 28.832285, 27.517000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.668060, 28.469381, 27.569065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565276, 0.355941, 0.744157,
		-0.721472, -0.224029, 0.655201,
		0.399926, -0.907258, 0.130163,
		41.788036, 28.197205, 27.608114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.407688, 28.426083, 28.193415>,  <41.508091, 28.832285, 27.517000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.407688, 28.426083, 28.193415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.766098, 28.319500, 28.051352>,  <41.981144, 28.255550, 27.966114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.766098, 28.319500, 28.051352>,  <41.407688, 28.426083, 28.193415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.766098, 28.319500, 28.051352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434904, 0.365613, 0.822913,
		-0.089421, -0.891811, 0.443482,
		0.896026, -0.266457, -0.355159,
		42.034904, 28.239563, 27.944803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.768425, 27.963194, 28.593832>,  <41.407688, 28.426083, 28.193415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.768425, 27.963194, 28.593832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.047009, 28.182095, 28.408163>,  <42.214161, 28.313435, 28.296761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.047009, 28.182095, 28.408163>,  <41.768425, 27.963194, 28.593832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.047009, 28.182095, 28.408163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384610, 0.261419, 0.885288,
		0.605818, -0.795096, -0.028410,
		0.696462, 0.547250, -0.464174,
		42.255947, 28.346270, 28.268911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.396988, 27.757898, 28.977341>,  <41.768425, 27.963194, 28.593832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.396988, 27.757898, 28.977341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.373108, 28.116020, 28.800766>,  <42.358780, 28.330893, 28.694820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.373108, 28.116020, 28.800766>,  <42.396988, 27.757898, 28.977341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.373108, 28.116020, 28.800766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247951, 0.441668, 0.862235,
		0.966931, -0.057976, -0.248361,
		-0.059704, 0.895303, -0.441438,
		42.355198, 28.384611, 28.668335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.873508, 28.180197, 29.286169>,  <42.396988, 27.757898, 28.977341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.873508, 28.180197, 29.286169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.600586, 28.433424, 29.139915>,  <42.436832, 28.585360, 29.052162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.600586, 28.433424, 29.139915>,  <42.873508, 28.180197, 29.286169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.600586, 28.433424, 29.139915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239606, 0.666159, 0.706272,
		0.690689, 0.394283, -0.606209,
		-0.682303, 0.633066, -0.365636,
		42.395897, 28.623344, 29.030224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.209606, 28.782013, 29.252985>,  <42.873508, 28.180197, 29.286169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.209606, 28.782013, 29.252985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.839046, 28.932291, 29.263029>,  <42.616711, 29.022457, 29.269056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.839046, 28.932291, 29.263029>,  <43.209606, 28.782013, 29.252985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.839046, 28.932291, 29.263029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322507, 0.757292, 0.567890,
		0.194335, 0.534194, -0.822721,
		-0.926403, 0.375694, 0.025112,
		42.561127, 29.045000, 29.270563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.248287, 29.453209, 29.030760>,  <43.209606, 28.782013, 29.252985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.248287, 29.453209, 29.030760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.927917, 29.415127, 29.267216>,  <42.735695, 29.392279, 29.409090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.927917, 29.415127, 29.267216>,  <43.248287, 29.453209, 29.030760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.927917, 29.415127, 29.267216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263340, 0.830656, 0.490573,
		-0.537740, 0.548586, -0.640225,
		-0.800929, -0.095204, 0.591142,
		42.687637, 29.386566, 29.444559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.048584, 30.132547, 29.188822>,  <43.248287, 29.453209, 29.030760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.048584, 30.132547, 29.188822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.816975, 29.948610, 29.458126>,  <42.678009, 29.838247, 29.619709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.816975, 29.948610, 29.458126>,  <43.048584, 30.132547, 29.188822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.816975, 29.948610, 29.458126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250046, 0.685820, 0.683468,
		-0.776023, 0.564088, -0.282122,
		-0.579021, -0.459844, 0.673259,
		42.643269, 29.810658, 29.660105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.566887, 30.654814, 29.495764>,  <43.048584, 30.132547, 29.188822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.566887, 30.654814, 29.495764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.617382, 30.343342, 29.741600>,  <42.647678, 30.156460, 29.889103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.617382, 30.343342, 29.741600>,  <42.566887, 30.654814, 29.495764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.617382, 30.343342, 29.741600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293260, 0.621152, 0.726753,
		-0.947661, 0.088491, 0.306769,
		0.126239, -0.778678, 0.614592,
		42.655254, 30.109737, 29.925978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.186771, 30.877071, 30.104979>,  <42.566887, 30.654814, 29.495764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.186771, 30.877071, 30.104979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.446068, 30.586536, 30.196383>,  <42.601646, 30.412214, 30.251225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.446068, 30.586536, 30.196383>,  <42.186771, 30.877071, 30.104979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.446068, 30.586536, 30.196383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272820, 0.501735, 0.820872,
		-0.710882, -0.469781, 0.523405,
		0.648241, -0.726339, 0.228508,
		42.640541, 30.368635, 30.264935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.041512, 30.805122, 30.771053>,  <42.186771, 30.877071, 30.104979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.041512, 30.805122, 30.771053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.397938, 30.628048, 30.730991>,  <42.611794, 30.521803, 30.706955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.397938, 30.628048, 30.730991>,  <42.041512, 30.805122, 30.771053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.397938, 30.628048, 30.730991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249524, 0.293472, 0.922828,
		-0.379131, -0.847292, 0.371964,
		0.891066, -0.442686, -0.100155,
		42.665257, 30.495241, 30.700945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.138977, 30.354361, 31.369028>,  <42.041512, 30.805122, 30.771053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.138977, 30.354361, 31.369028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.488091, 30.475679, 31.216049>,  <42.697559, 30.548470, 31.124262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.488091, 30.475679, 31.216049>,  <42.138977, 30.354361, 31.369028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.488091, 30.475679, 31.216049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233490, 0.428644, 0.872781,
		0.428644, -0.851044, 0.303296,
		-0.872781, -0.303296, 0.382446,
		42.749924, 30.566668, 31.101315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.563824, 30.402319, 31.921679>,  <42.138977, 30.354361, 31.369028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.563824, 30.402319, 31.921679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.827740, 30.555767, 31.663218>,  <42.986088, 30.647837, 31.508141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.827740, 30.555767, 31.663218>,  <42.563824, 30.402319, 31.921679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.827740, 30.555767, 31.663218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512939, 0.398470, 0.760339,
		0.549153, -0.833101, 0.066134,
		0.659791, 0.383619, -0.646151,
		43.025677, 30.670853, 31.469372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.149746, 30.236111, 32.182747>,  <42.563824, 30.402319, 31.921679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.149746, 30.236111, 32.182747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.215485, 30.558992, 31.955975>,  <43.254929, 30.752722, 31.819912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.215485, 30.558992, 31.955975>,  <43.149746, 30.236111, 32.182747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.215485, 30.558992, 31.955975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366264, 0.483718, 0.794901,
		0.915882, -0.338288, -0.216151,
		0.164349, 0.807204, -0.566931,
		43.264790, 30.801153, 31.785894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.824196, 30.316172, 32.222050>,  <43.149746, 30.236111, 32.182747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.824196, 30.316172, 32.222050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.689327, 30.669569, 32.091969>,  <43.608406, 30.881607, 32.013920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.689327, 30.669569, 32.091969>,  <43.824196, 30.316172, 32.222050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.689327, 30.669569, 32.091969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571167, 0.466563, 0.675342,
		0.748387, 0.041962, -0.661934,
		-0.337173, 0.883492, -0.325202,
		43.588177, 30.934616, 31.994408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.363422, 30.876505, 32.287663>,  <43.824196, 30.316172, 32.222050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.363422, 30.876505, 32.287663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.033031, 31.098974, 32.250942>,  <43.834797, 31.232456, 32.228909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.033031, 31.098974, 32.250942>,  <44.363422, 30.876505, 32.287663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.033031, 31.098974, 32.250942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420181, 0.716034, 0.557444,
		0.375770, 0.421864, -0.825123,
		-0.825981, 0.556171, -0.091805,
		43.785236, 31.265825, 32.223400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.608231, 31.504957, 32.122509>,  <44.363422, 30.876505, 32.287663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.608231, 31.504957, 32.122509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.235397, 31.568607, 32.252682>,  <44.011700, 31.606798, 32.330784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.235397, 31.568607, 32.252682>,  <44.608231, 31.504957, 32.122509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.235397, 31.568607, 32.252682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295006, 0.854791, 0.426971,
		-0.210232, 0.493975, -0.843677,
		-0.932081, 0.159127, 0.325430,
		43.955772, 31.616344, 32.350311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.327728, 32.220482, 32.017540>,  <44.608231, 31.504957, 32.122509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.327728, 32.220482, 32.017540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.096893, 32.130634, 32.331612>,  <43.958393, 32.076725, 32.520058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.096893, 32.130634, 32.331612>,  <44.327728, 32.220482, 32.017540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.096893, 32.130634, 32.331612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254215, 0.864259, 0.434086,
		-0.776108, 0.450111, -0.441651,
		-0.577088, -0.224623, 0.785184,
		43.923767, 32.063248, 32.567165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.176441, 32.871868, 32.202984>,  <44.327728, 32.220482, 32.017540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.176441, 32.871868, 32.202984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.047897, 32.665535, 32.520638>,  <43.970772, 32.541737, 32.711227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.047897, 32.665535, 32.520638>,  <44.176441, 32.871868, 32.202984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.047897, 32.665535, 32.520638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285560, 0.746787, 0.600637,
		-0.902876, 0.419792, -0.092685,
		-0.321359, -0.515833, 0.794131,
		43.951488, 32.510784, 32.758877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.736450, 33.263374, 32.521397>,  <44.176441, 32.871868, 32.202984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.736450, 33.263374, 32.521397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.865452, 33.028328, 32.818233>,  <43.942852, 32.887299, 32.996334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.865452, 33.028328, 32.818233>,  <43.736450, 33.263374, 32.521397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.865452, 33.028328, 32.818233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224840, 0.809099, 0.542961,
		-0.919477, -0.008257, 0.393058,
		0.322506, -0.587615, 0.742091,
		43.962204, 32.852043, 33.040859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.391785, 33.535702, 33.170555>,  <43.736450, 33.263374, 32.521397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.391785, 33.535702, 33.170555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.731682, 33.342495, 33.255054>,  <43.935619, 33.226570, 33.305756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.731682, 33.342495, 33.255054>,  <43.391785, 33.535702, 33.170555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.731682, 33.342495, 33.255054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270837, 0.743748, 0.611136,
		-0.452306, -0.462095, 0.762815,
		0.849745, -0.483019, 0.211248,
		43.986607, 33.197590, 33.318428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.449932, 33.591618, 33.874313>,  <43.391785, 33.535702, 33.170555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.449932, 33.591618, 33.874313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.827778, 33.503872, 33.776680>,  <44.054485, 33.451225, 33.718102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.827778, 33.503872, 33.776680>,  <43.449932, 33.591618, 33.874313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.827778, 33.503872, 33.776680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328129, 0.619161, 0.713422,
		-0.005373, -0.754002, 0.656851,
		0.944617, -0.219365, -0.244084,
		44.111164, 33.438061, 33.703453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.862385, 33.593525, 34.484100>,  <43.449932, 33.591618, 33.874313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.862385, 33.593525, 34.484100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.125786, 33.660332, 34.190575>,  <44.283829, 33.700417, 34.014462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.125786, 33.660332, 34.190575>,  <43.862385, 33.593525, 34.484100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.125786, 33.660332, 34.190575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504909, 0.625007, 0.595343,
		0.558068, -0.762543, 0.327244,
		0.658504, 0.167013, -0.733811,
		44.323338, 33.710438, 33.970432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.473824, 33.654339, 34.890907>,  <43.862385, 33.593525, 34.484100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.473824, 33.654339, 34.890907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.545700, 33.808712, 34.528965>,  <44.588825, 33.901337, 34.311798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.545700, 33.808712, 34.528965>,  <44.473824, 33.654339, 34.890907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.545700, 33.808712, 34.528965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607777, 0.679712, 0.410607,
		0.773509, -0.623735, -0.112422,
		0.179696, 0.385936, -0.904855,
		44.599609, 33.924492, 34.257507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.208961, 33.869686, 34.863098>,  <44.473824, 33.654339, 34.890907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.208961, 33.869686, 34.863098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.071617, 34.090343, 34.559048>,  <44.989212, 34.222736, 34.376617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.071617, 34.090343, 34.559048>,  <45.208961, 33.869686, 34.863098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.071617, 34.090343, 34.559048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640784, 0.729302, 0.239820,
		0.686660, -0.404736, -0.603894,
		-0.343357, 0.551640, -0.760131,
		44.968609, 34.255836, 34.331009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.793716, 34.216984, 34.523907>,  <45.208961, 33.869686, 34.863098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.793716, 34.216984, 34.523907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.463692, 34.428867, 34.445229>,  <45.265678, 34.555996, 34.398022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.463692, 34.428867, 34.445229>,  <45.793716, 34.216984, 34.523907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.463692, 34.428867, 34.445229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461531, 0.832589, 0.306242,
		0.325988, 0.161884, -0.931411,
		-0.825058, 0.529706, -0.196700,
		45.216175, 34.587780, 34.386219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.048145, 34.792725, 34.582470>,  <45.793716, 34.216984, 34.523907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.048145, 34.792725, 34.582470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.663929, 34.902233, 34.562840>,  <45.433399, 34.967937, 34.551060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.663929, 34.902233, 34.562840>,  <46.048145, 34.792725, 34.582470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.663929, 34.902233, 34.562840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266351, 0.956231, 0.121157,
		0.080096, 0.103306, -0.991419,
		-0.960543, 0.273770, -0.049075,
		45.375767, 34.984364, 34.548119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.700062, 35.192448, 34.541332>,  <46.048145, 34.792725, 34.582470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.700062, 35.192448, 34.541332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.959332, 34.989468, 34.768440>,  <47.114891, 34.867680, 34.904705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.959332, 34.989468, 34.768440>,  <46.700062, 35.192448, 34.541332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.959332, 34.989468, 34.768440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749771, 0.294954, -0.592322,
		0.133109, 0.809626, 0.571654,
		0.648171, -0.507453, 0.567773,
		47.153782, 34.837231, 34.938770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.232693, 35.675579, 34.706512>,  <46.700062, 35.192448, 34.541332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.232693, 35.675579, 34.706512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.347561, 35.292645, 34.693623>,  <47.416481, 35.062881, 34.685890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.347561, 35.292645, 34.693623>,  <47.232693, 35.675579, 34.706512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.347561, 35.292645, 34.693623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869063, 0.274539, -0.411531,
		0.402822, 0.090172, 0.910826,
		0.287166, -0.957339, -0.032225,
		47.433712, 35.005444, 34.683956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.823547, 35.398800, 35.185940>,  <47.232693, 35.675579, 34.706512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.823547, 35.398800, 35.185940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.794907, 35.226654, 34.826015>,  <47.777721, 35.123367, 34.610062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.794907, 35.226654, 34.826015>,  <47.823547, 35.398800, 35.185940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.794907, 35.226654, 34.826015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875033, 0.405890, -0.263764,
		0.478739, -0.806249, 0.347522,
		-0.071604, -0.430367, -0.899810,
		47.773426, 35.097546, 34.556072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.306633, 36.477814, 43.629845> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.995789, 36.263538, 43.761986>,  <32.809280, 36.134972, 43.841270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.995789, 36.263538, 43.761986>,  <33.306633, 36.477814, 43.629845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.995789, 36.263538, 43.761986> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127747, -0.379716, -0.916240,
		0.616263, -0.754222, 0.226649,
		-0.777111, -0.535691, 0.330355,
		32.762657, 36.102833, 43.861092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.346909, 35.821320, 43.313507>,  <33.306633, 36.477814, 43.629845>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.346909, 35.821320, 43.313507> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.959049, 35.834625, 43.410393>,  <32.726334, 35.842609, 43.468525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.959049, 35.834625, 43.410393>,  <33.346909, 35.821320, 43.313507>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.959049, 35.834625, 43.410393> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236705, -0.375677, -0.896012,
		0.061189, -0.926153, 0.372150,
		-0.969653, 0.033263, 0.242213,
		32.668152, 35.844604, 43.483055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.999371, 35.094894, 43.161415>,  <33.346909, 35.821320, 43.313507>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.999371, 35.094894, 43.161415> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.709610, 35.370609, 43.166103>,  <32.535755, 35.536037, 43.168915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.709610, 35.370609, 43.166103>,  <32.999371, 35.094894, 43.161415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.709610, 35.370609, 43.166103> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198997, -0.192801, -0.960848,
		-0.660037, -0.698367, 0.276830,
		-0.724397, 0.689284, 0.011717,
		32.492290, 35.577393, 43.169617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.480579, 34.877243, 42.718792>,  <32.999371, 35.094894, 43.161415>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.480579, 34.877243, 42.718792> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.364140, 35.259754, 42.730103>,  <32.294273, 35.489262, 42.736889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.364140, 35.259754, 42.730103>,  <32.480579, 34.877243, 42.718792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.364140, 35.259754, 42.730103> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399366, -0.094612, -0.911897,
		-0.869348, -0.276746, 0.409445,
		-0.291102, 0.956274, 0.028272,
		32.276810, 35.546635, 42.738583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.820885, 34.796307, 42.479771>,  <32.480579, 34.877243, 42.718792>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.820885, 34.796307, 42.479771> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.909868, 35.184391, 42.441387>,  <31.963259, 35.417240, 42.418358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.909868, 35.184391, 42.441387>,  <31.820885, 34.796307, 42.479771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.909868, 35.184391, 42.441387> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266567, -0.034144, -0.963212,
		-0.937792, 0.239853, 0.251030,
		0.222458, 0.970209, -0.095957,
		31.976606, 35.475452, 42.412601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.326422, 35.071301, 42.118370>,  <31.820885, 34.796307, 42.479771>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.326422, 35.071301, 42.118370> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.621174, 35.334244, 42.055267>,  <31.798025, 35.492012, 42.017406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.621174, 35.334244, 42.055267>,  <31.326422, 35.071301, 42.118370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.621174, 35.334244, 42.055267> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168654, -0.047214, -0.984544,
		-0.654647, 0.752096, 0.076075,
		0.736880, 0.657360, -0.157753,
		31.842237, 35.531452, 42.007942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.116827, 35.517300, 41.495796>,  <31.326422, 35.071301, 42.118370>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.116827, 35.517300, 41.495796> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.514193, 35.552937, 41.524624>,  <31.752611, 35.574318, 41.541920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.514193, 35.552937, 41.524624>,  <31.116827, 35.517300, 41.495796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.514193, 35.552937, 41.524624> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086454, -0.169898, -0.981662,
		-0.075212, 0.981426, -0.176481,
		0.993413, 0.089090, 0.072070,
		31.812216, 35.579662, 41.546246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.323109, 35.772678, 40.828857>,  <31.116827, 35.517300, 41.495796>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.323109, 35.772678, 40.828857> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.666248, 35.625977, 40.972851>,  <31.872131, 35.537956, 41.059246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.666248, 35.625977, 40.972851>,  <31.323109, 35.772678, 40.828857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.666248, 35.625977, 40.972851> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166908, -0.463668, -0.870146,
		0.486045, 0.806536, -0.336542,
		0.857848, -0.366759, 0.359980,
		31.923603, 35.515949, 41.080845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.766844, 35.967300, 40.219563>,  <31.323109, 35.772678, 40.828857>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.766844, 35.967300, 40.219563> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.975454, 35.683403, 40.408993>,  <32.100620, 35.513065, 40.522652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.975454, 35.683403, 40.408993>,  <31.766844, 35.967300, 40.219563>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.975454, 35.683403, 40.408993> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509508, -0.186160, -0.840087,
		0.684407, 0.679419, 0.264532,
		0.521526, -0.709742, 0.473578,
		32.131912, 35.470482, 40.551067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.453476, 36.049995, 39.982922>,  <31.766844, 35.967300, 40.219563>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.453476, 36.049995, 39.982922> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.426285, 35.672333, 40.111881>,  <32.409969, 35.445736, 40.189255>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.426285, 35.672333, 40.111881>,  <32.453476, 36.049995, 39.982922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.426285, 35.672333, 40.111881> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503734, -0.311413, -0.805776,
		0.861180, 0.107625, 0.496775,
		-0.067981, -0.944161, 0.322397,
		32.405891, 35.389084, 40.208599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.143806, 35.699352, 39.997192>,  <32.453476, 36.049995, 39.982922>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.143806, 35.699352, 39.997192> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.882561, 35.396591, 40.006516>,  <32.725815, 35.214935, 40.012108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.882561, 35.396591, 40.006516>,  <33.143806, 35.699352, 39.997192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.882561, 35.396591, 40.006516> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432324, -0.397957, -0.809151,
		0.621726, -0.518388, 0.587138,
		-0.653110, -0.756904, 0.023309,
		32.686626, 35.169521, 40.013508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.504059, 34.975430, 40.137054>,  <33.143806, 35.699352, 39.997192>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.504059, 34.975430, 40.137054> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.167095, 34.919956, 39.928783>,  <32.964916, 34.886673, 39.803822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.167095, 34.919956, 39.928783>,  <33.504059, 34.975430, 40.137054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.167095, 34.919956, 39.928783> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514451, -0.494395, -0.700652,
		-0.160255, -0.858103, 0.487829,
		-0.842412, -0.138681, -0.520682,
		32.914371, 34.878353, 39.772579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.689453, 34.317600, 39.736347>,  <33.504059, 34.975430, 40.137054>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.689453, 34.317600, 39.736347> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.347000, 34.446533, 39.574787>,  <33.141529, 34.523891, 39.477852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.347000, 34.446533, 39.574787>,  <33.689453, 34.317600, 39.736347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.347000, 34.446533, 39.574787> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253216, -0.419660, -0.871646,
		-0.450464, -0.848519, 0.277665,
		-0.856133, 0.322336, -0.403900,
		33.090160, 34.543232, 39.453617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.478065, 33.745525, 39.437347>,  <33.689453, 34.317600, 39.736347>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.478065, 33.745525, 39.437347> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.301971, 34.056198, 39.257145>,  <33.196316, 34.242603, 39.149021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.301971, 34.056198, 39.257145>,  <33.478065, 33.745525, 39.437347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.301971, 34.056198, 39.257145> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345583, -0.316525, -0.883394,
		-0.828713, -0.544589, -0.129063,
		-0.440235, 0.776682, -0.450509,
		33.169903, 34.289204, 39.121994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.488400, 33.576748, 38.871166>,  <33.478065, 33.745525, 39.437347>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.488400, 33.576748, 38.871166> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.356544, 33.940403, 38.769337>,  <33.277431, 34.158596, 38.708241>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.356544, 33.940403, 38.769337>,  <33.488400, 33.576748, 38.871166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.356544, 33.940403, 38.769337> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391059, -0.113941, -0.913285,
		-0.859308, -0.400607, -0.317967,
		-0.329639, 0.909138, -0.254572,
		33.257652, 34.213142, 38.692966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.987415, 33.521992, 38.394878>,  <33.488400, 33.576748, 38.871166>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.987415, 33.521992, 38.394878> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.171940, 33.875061, 38.358910>,  <33.282654, 34.086903, 38.337330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.171940, 33.875061, 38.358910>,  <32.987415, 33.521992, 38.394878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.171940, 33.875061, 38.358910> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271515, -0.236930, -0.932815,
		-0.844674, 0.405901, -0.348956,
		0.461309, 0.882671, -0.089921,
		33.310333, 34.139862, 38.331932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.942394, 33.506855, 37.758831>,  <32.987415, 33.521992, 38.394878>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.942394, 33.506855, 37.758831> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.204334, 33.802910, 37.819969>,  <33.361500, 33.980545, 37.856651>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.204334, 33.802910, 37.819969>,  <32.942394, 33.506855, 37.758831>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.204334, 33.802910, 37.819969> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292781, -0.061997, -0.954168,
		-0.696743, 0.669587, -0.257298,
		0.654850, 0.740141, 0.152846,
		33.400791, 34.024952, 37.865822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.935230, 34.063332, 37.157242>,  <32.942394, 33.506855, 37.758831>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.935230, 34.063332, 37.157242> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.294624, 34.130852, 37.319344>,  <33.510262, 34.171364, 37.416603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.294624, 34.130852, 37.319344>,  <32.935230, 34.063332, 37.157242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.294624, 34.130852, 37.319344> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430143, -0.154018, -0.889525,
		-0.087734, 0.973543, -0.210991,
		0.898487, 0.168798, 0.405250,
		33.564171, 34.181492, 37.440918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.385838, 34.686005, 36.749737>,  <32.935230, 34.063332, 37.157242>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.385838, 34.686005, 36.749737> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.634205, 34.439060, 36.942951>,  <33.783226, 34.290894, 37.058880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.634205, 34.439060, 36.942951>,  <33.385838, 34.686005, 36.749737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.634205, 34.439060, 36.942951> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598334, -0.024828, -0.800862,
		0.506411, 0.786291, 0.353969,
		0.620922, -0.617357, 0.483038,
		33.820480, 34.253853, 37.087864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.044384, 35.038246, 36.723728>,  <33.385838, 34.686005, 36.749737>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.044384, 35.038246, 36.723728> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.118263, 34.657166, 36.820271>,  <34.162590, 34.428516, 36.878197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.118263, 34.657166, 36.820271>,  <34.044384, 35.038246, 36.723728>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.118263, 34.657166, 36.820271> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565845, -0.097704, -0.818702,
		0.803557, 0.287783, 0.521034,
		0.184701, -0.952699, 0.241352,
		34.173672, 34.371357, 36.892677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.734638, 34.953205, 36.537571>,  <34.044384, 35.038246, 36.723728>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.734638, 34.953205, 36.537571> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.595314, 34.578648, 36.554737>,  <34.511719, 34.353912, 36.565037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.595314, 34.578648, 36.554737>,  <34.734638, 34.953205, 36.537571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.595314, 34.578648, 36.554737> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501805, -0.224941, -0.835221,
		0.791751, -0.269382, 0.548237,
		-0.348315, -0.936395, 0.042920,
		34.490818, 34.297729, 36.567612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.371124, 34.539921, 36.463295>,  <34.734638, 34.953205, 36.537571>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.371124, 34.539921, 36.463295> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.061604, 34.308315, 36.360550>,  <34.875893, 34.169350, 36.298904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.061604, 34.308315, 36.360550>,  <35.371124, 34.539921, 36.463295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.061604, 34.308315, 36.360550> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438605, -0.197201, -0.876776,
		0.457016, -0.791107, 0.406554,
		-0.773797, -0.579017, -0.256860,
		34.829464, 34.134609, 36.283493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.834965, 34.999077, 36.145767>,  <35.371124, 34.539921, 36.463295>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.834965, 34.999077, 36.145767> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.063908, 35.325218, 36.110882>,  <36.201271, 35.520905, 36.089951>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.063908, 35.325218, 36.110882>,  <35.834965, 34.999077, 36.145767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.063908, 35.325218, 36.110882> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204622, 0.245008, 0.947682,
		0.794065, -0.524564, 0.307071,
		0.572355, 0.815355, -0.087214,
		36.235615, 35.569824, 36.084717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.128464, 34.990200, 36.788574>,  <35.834965, 34.999077, 36.145767>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.128464, 34.990200, 36.788574> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.211563, 35.351727, 36.638931>,  <36.261421, 35.568642, 36.549145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.211563, 35.351727, 36.638931>,  <36.128464, 34.990200, 36.788574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.211563, 35.351727, 36.638931> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065843, 0.368664, 0.927228,
		0.975964, -0.217259, 0.017078,
		0.207745, 0.903817, -0.374108,
		36.273888, 35.622871, 36.526699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.739834, 35.146870, 37.057415>,  <36.128464, 34.990200, 36.788574>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.739834, 35.146870, 37.057415> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.557365, 35.488201, 36.956425>,  <36.447884, 35.693001, 36.895832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.557365, 35.488201, 36.956425>,  <36.739834, 35.146870, 37.057415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.557365, 35.488201, 36.956425> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023863, 0.295343, 0.955094,
		0.889573, 0.429660, -0.155089,
		-0.456170, 0.853326, -0.252476,
		36.420513, 35.744198, 36.880680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.051174, 35.697701, 37.427826>,  <36.739834, 35.146870, 37.057415>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.051174, 35.697701, 37.427826> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.691685, 35.842567, 37.328930>,  <36.475990, 35.929489, 37.269592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.691685, 35.842567, 37.328930>,  <37.051174, 35.697701, 37.427826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.691685, 35.842567, 37.328930> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047896, 0.479376, 0.876302,
		0.435893, 0.799394, -0.413480,
		-0.898723, 0.362170, -0.247245,
		36.422070, 35.951218, 37.254757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.103256, 36.384495, 37.421978>,  <37.051174, 35.697701, 37.427826>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.103256, 36.384495, 37.421978> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.733410, 36.255341, 37.502796>,  <36.511501, 36.177849, 37.551289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.733410, 36.255341, 37.502796>,  <37.103256, 36.384495, 37.421978>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.733410, 36.255341, 37.502796> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011599, 0.554081, 0.832382,
		-0.380713, 0.767294, -0.516060,
		-0.924620, -0.322885, 0.202046,
		36.456024, 36.158474, 37.563412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.837749, 37.054485, 37.657299>,  <37.103256, 36.384495, 37.421978>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.837749, 37.054485, 37.657299> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.586445, 36.756657, 37.747547>,  <36.435661, 36.577961, 37.801697>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.586445, 36.756657, 37.747547>,  <36.837749, 37.054485, 37.657299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.586445, 36.756657, 37.747547> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116535, 0.376786, 0.918941,
		-0.769222, 0.551046, -0.323490,
		-0.628265, -0.744568, 0.225616,
		36.397964, 36.533287, 37.815231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.348484, 37.380959, 38.018932>,  <36.837749, 37.054485, 37.657299>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.348484, 37.380959, 38.018932> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.303135, 36.992012, 38.100563>,  <36.275925, 36.758644, 38.149544>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.303135, 36.992012, 38.100563>,  <36.348484, 37.380959, 38.018932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.303135, 36.992012, 38.100563> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242108, 0.226250, 0.943502,
		-0.963603, 0.057557, -0.261068,
		-0.113372, -0.972368, 0.204080,
		36.269123, 36.700302, 38.161785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.699944, 37.331238, 38.324184>,  <36.348484, 37.380959, 38.018932>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.699944, 37.331238, 38.324184> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.852180, 36.983078, 38.449123>,  <35.943523, 36.774181, 38.524086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.852180, 36.983078, 38.449123>,  <35.699944, 37.331238, 38.324184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.852180, 36.983078, 38.449123> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271388, 0.217768, 0.937511,
		-0.884024, -0.441577, -0.153334,
		0.380592, -0.870395, 0.312350,
		35.966358, 36.721958, 38.542828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.198097, 37.153568, 38.780598>,  <35.699944, 37.331238, 38.324184>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.198097, 37.153568, 38.780598> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.513165, 36.922585, 38.866497>,  <35.702206, 36.783993, 38.918037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.513165, 36.922585, 38.866497>,  <35.198097, 37.153568, 38.780598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.513165, 36.922585, 38.866497> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268368, -0.007825, 0.963285,
		-0.554580, -0.816380, -0.161136,
		0.787667, -0.577462, 0.214751,
		35.749466, 36.749348, 38.930923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.921623, 36.604778, 39.174892>,  <35.198097, 37.153568, 38.780598>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.921623, 36.604778, 39.174892> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.314842, 36.609722, 39.248074>,  <35.550774, 36.612690, 39.291985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.314842, 36.609722, 39.248074>,  <34.921623, 36.604778, 39.174892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.314842, 36.609722, 39.248074> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183369, 0.060258, 0.981196,
		0.001101, -0.998106, 0.061502,
		0.983044, 0.012358, 0.182956,
		35.609756, 36.613430, 39.302959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.040905, 36.082573, 39.632999>,  <34.921623, 36.604778, 39.174892>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.040905, 36.082573, 39.632999> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.353672, 36.325058, 39.691120>,  <35.541332, 36.470547, 39.725994>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.353672, 36.325058, 39.691120>,  <35.040905, 36.082573, 39.632999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.353672, 36.325058, 39.691120> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095827, -0.113434, 0.988913,
		0.615970, -0.787175, -0.030605,
		0.781919, 0.606209, 0.145305,
		35.588249, 36.506920, 39.734711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.419735, 35.755924, 40.133389>,  <35.040905, 36.082573, 39.632999>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.419735, 35.755924, 40.133389> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.569054, 36.127007, 40.132252>,  <35.658646, 36.349655, 40.131569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.569054, 36.127007, 40.132252>,  <35.419735, 35.755924, 40.133389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.569054, 36.127007, 40.132252> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178353, -0.068762, 0.981561,
		0.910405, -0.366924, -0.191128,
		0.373300, 0.927706, -0.002841,
		35.681046, 36.405319, 40.131401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.120502, 35.802979, 40.522953>,  <35.419735, 35.755924, 40.133389>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.120502, 35.802979, 40.522953> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.971737, 36.173534, 40.499336>,  <35.882477, 36.395866, 40.485165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.971737, 36.173534, 40.499336>,  <36.120502, 35.802979, 40.522953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.971737, 36.173534, 40.499336> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061728, 0.088145, 0.994193,
		0.926211, 0.366112, -0.089967,
		-0.371916, 0.926387, -0.059041,
		35.860161, 36.451450, 40.481625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.482620, 36.180199, 40.989357>,  <36.120502, 35.802979, 40.522953>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.482620, 36.180199, 40.989357> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.190254, 36.446400, 40.928864>,  <36.014835, 36.606121, 40.892567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.190254, 36.446400, 40.928864>,  <36.482620, 36.180199, 40.989357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.190254, 36.446400, 40.928864> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058294, 0.159915, 0.985408,
		0.679973, 0.729067, -0.078090,
		-0.730916, 0.665499, -0.151238,
		35.970978, 36.646049, 40.883492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.658459, 36.836994, 41.297916>,  <36.482620, 36.180199, 40.989357>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.658459, 36.836994, 41.297916> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.259159, 36.825733, 41.277100>,  <36.019581, 36.818977, 41.264610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.259159, 36.825733, 41.277100>,  <36.658459, 36.836994, 41.297916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.259159, 36.825733, 41.277100> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053506, 0.054120, 0.997100,
		-0.025250, 0.998138, -0.055532,
		-0.998248, -0.028148, -0.052040,
		35.959686, 36.817287, 41.261486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.407860, 37.397015, 41.673668>,  <36.658459, 36.836994, 41.297916>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.407860, 37.397015, 41.673668> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.074593, 37.176743, 41.653320>,  <35.874634, 37.044579, 41.641113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.074593, 37.176743, 41.653320>,  <36.407860, 37.397015, 41.673668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.074593, 37.176743, 41.653320> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178343, 0.180486, 0.967274,
		-0.523476, 0.814972, -0.248584,
		-0.833167, -0.550677, -0.050864,
		35.824642, 37.011539, 41.638062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.978230, 37.792534, 41.987015>,  <36.407860, 37.397015, 41.673668>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.978230, 37.792534, 41.987015> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.825195, 37.424416, 42.019703>,  <35.733376, 37.203545, 42.039318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.825195, 37.424416, 42.019703>,  <35.978230, 37.792534, 41.987015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.825195, 37.424416, 42.019703> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198445, 0.168241, 0.965564,
		-0.902358, 0.353191, -0.246995,
		-0.382583, -0.920300, 0.081724,
		35.710419, 37.148327, 42.044220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.347210, 37.957516, 42.215668>,  <35.978230, 37.792534, 41.987015>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.347210, 37.957516, 42.215668> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.470272, 37.592579, 42.323734>,  <35.544109, 37.373619, 42.388573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.470272, 37.592579, 42.323734>,  <35.347210, 37.957516, 42.215668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.470272, 37.592579, 42.323734> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008299, 0.286501, 0.958044,
		-0.951463, -0.292501, 0.095714,
		0.307651, -0.912338, 0.270167,
		35.562569, 37.318878, 42.404785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<34.635105, 37.624355, 42.883633> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.934330, 37.358917, 42.881168>,  <35.113865, 37.199654, 42.879688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.934330, 37.358917, 42.881168>,  <34.635105, 37.624355, 42.883633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.934330, 37.358917, 42.881168> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055206, 0.052970, 0.997069,
		-0.661325, -0.746213, 0.076259,
		0.748065, -0.663596, -0.006165,
		35.158749, 37.159840, 42.879318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.399845, 37.034554, 43.323528>,  <34.635105, 37.624355, 42.883633>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.399845, 37.034554, 43.323528> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.798702, 37.031918, 43.293438>,  <35.038017, 37.030334, 43.275383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.798702, 37.031918, 43.293438>,  <34.399845, 37.034554, 43.323528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.798702, 37.031918, 43.293438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074201, -0.099716, 0.992245,
		-0.014042, -0.994994, -0.098942,
		0.997144, -0.006592, -0.075230,
		35.097847, 37.029938, 43.270870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.596306, 36.548782, 43.820194>,  <34.399845, 37.034554, 43.323528>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.596306, 36.548782, 43.820194> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.948650, 36.733376, 43.778011>,  <35.160057, 36.844131, 43.752701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.948650, 36.733376, 43.778011>,  <34.596306, 36.548782, 43.820194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.948650, 36.733376, 43.778011> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141772, -0.044636, 0.988892,
		0.451649, -0.886026, -0.104744,
		0.880859, 0.461482, -0.105454,
		35.212910, 36.871819, 43.746376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.992146, 36.210419, 44.262623>,  <34.596306, 36.548782, 43.820194>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.992146, 36.210419, 44.262623> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.147598, 36.573353, 44.198494>,  <35.240871, 36.791115, 44.160015>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.147598, 36.573353, 44.198494>,  <34.992146, 36.210419, 44.262623>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.147598, 36.573353, 44.198494> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046147, 0.192952, 0.980122,
		0.920236, -0.373511, 0.116858,
		0.388634, 0.907336, -0.160325,
		35.264187, 36.845554, 44.150398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.634697, 36.355495, 44.639820>,  <34.992146, 36.210419, 44.262623>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.634697, 36.355495, 44.639820> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.467190, 36.712894, 44.574951>,  <35.366684, 36.927334, 44.536030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.467190, 36.712894, 44.574951>,  <35.634697, 36.355495, 44.639820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.467190, 36.712894, 44.574951> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071895, 0.145407, 0.986756,
		0.905243, 0.424882, 0.003346,
		-0.418768, 0.893495, -0.162176,
		35.341560, 36.980942, 44.526299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.868378, 36.798523, 45.186535>,  <35.634697, 36.355495, 44.639820>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.868378, 36.798523, 45.186535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.552120, 36.992779, 45.037380>,  <35.362366, 37.109333, 44.947887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.552120, 36.992779, 45.037380>,  <35.868378, 36.798523, 45.186535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.552120, 36.992779, 45.037380> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305902, 0.214245, 0.927644,
		0.530388, 0.847499, -0.020833,
		-0.790641, 0.485638, -0.372884,
		35.314926, 37.138470, 44.925514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.826569, 37.378727, 45.626862>,  <35.868378, 36.798523, 45.186535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.826569, 37.378727, 45.626862> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.481865, 37.347717, 45.426319>,  <35.275043, 37.329109, 45.305996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.481865, 37.347717, 45.426319>,  <35.826569, 37.378727, 45.626862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.481865, 37.347717, 45.426319> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507175, 0.154474, 0.847886,
		0.011711, 0.984950, -0.172441,
		-0.861763, -0.077528, -0.501352,
		35.223335, 37.324459, 45.275913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.315514, 38.088013, 45.673496>,  <35.826569, 37.378727, 45.626862>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.315514, 38.088013, 45.673496> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.065334, 37.782734, 45.608574>,  <34.915226, 37.599567, 45.569618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.065334, 37.782734, 45.608574>,  <35.315514, 38.088013, 45.673496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.065334, 37.782734, 45.608574> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538552, 0.271733, 0.797573,
		-0.564598, 0.586256, -0.580976,
		-0.625453, -0.763194, -0.162309,
		34.877697, 37.553776, 45.559879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.707462, 38.300514, 45.854053>,  <35.315514, 38.088013, 45.673496>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.707462, 38.300514, 45.854053> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.642250, 37.905899, 45.859028>,  <34.603123, 37.669128, 45.862011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.642250, 37.905899, 45.859028>,  <34.707462, 38.300514, 45.854053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.642250, 37.905899, 45.859028> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431745, 0.082671, 0.898199,
		-0.887139, 0.141067, -0.439413,
		-0.163033, -0.986542, 0.012435,
		34.593342, 37.609936, 45.862759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.029648, 38.205097, 46.153484>,  <34.707462, 38.300514, 45.854053>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.029648, 38.205097, 46.153484> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.215977, 37.856270, 46.213486>,  <34.327774, 37.646973, 46.249485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.215977, 37.856270, 46.213486>,  <34.029648, 38.205097, 46.153484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.215977, 37.856270, 46.213486> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425414, -0.072071, 0.902125,
		-0.775905, -0.484046, -0.404563,
		0.465827, -0.872070, 0.150000,
		34.355724, 37.594650, 46.258484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.570961, 37.842709, 46.521645>,  <34.029648, 38.205097, 46.153484>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.570961, 37.842709, 46.521645> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.905819, 37.627850, 46.562931>,  <34.106735, 37.498932, 46.587704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.905819, 37.627850, 46.562931>,  <33.570961, 37.842709, 46.521645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.905819, 37.627850, 46.562931> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312626, -0.315029, 0.896115,
		-0.448833, -0.782448, -0.431653,
		0.837146, -0.537152, 0.103218,
		34.156963, 37.466705, 46.593895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.376194, 37.370087, 46.980141>,  <33.570961, 37.842709, 46.521645>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.376194, 37.370087, 46.980141> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.774181, 37.359970, 47.018932>,  <34.012974, 37.353901, 47.042206>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.774181, 37.359970, 47.018932>,  <33.376194, 37.370087, 46.980141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.774181, 37.359970, 47.018932> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096043, 0.035847, 0.994731,
		-0.028631, -0.999037, 0.033238,
		0.994965, -0.025288, 0.096977,
		34.072670, 37.352383, 47.048027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.593128, 36.770443, 47.514046>,  <33.376194, 37.370087, 46.980141>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.593128, 36.770443, 47.514046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.909538, 37.014118, 47.491501>,  <34.099384, 37.160324, 47.477974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.909538, 37.014118, 47.491501>,  <33.593128, 36.770443, 47.514046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.909538, 37.014118, 47.491501> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061865, 0.012009, 0.998012,
		0.608652, -0.792937, -0.028188,
		0.791022, 0.609186, -0.056364,
		34.146843, 37.196873, 47.474590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.982761, 36.613747, 48.144329>,  <33.593128, 36.770443, 47.514046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.982761, 36.613747, 48.144329> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.206673, 36.928719, 48.041103>,  <34.341019, 37.117702, 47.979168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.206673, 36.928719, 48.041103>,  <33.982761, 36.613747, 48.144329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.206673, 36.928719, 48.041103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355368, 0.053214, 0.933210,
		0.748570, -0.614103, -0.250039,
		0.559782, 0.787429, -0.258067,
		34.374607, 37.164948, 47.963684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.703526, 36.447266, 48.373154>,  <33.982761, 36.613747, 48.144329>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.703526, 36.447266, 48.373154> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.622463, 36.837524, 48.339581>,  <34.573826, 37.071678, 48.319435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.622463, 36.837524, 48.339581>,  <34.703526, 36.447266, 48.373154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.622463, 36.837524, 48.339581> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313265, 0.145799, 0.938407,
		0.927790, 0.163884, -0.335184,
		-0.202659, 0.975646, -0.083932,
		34.561665, 37.130219, 48.314400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.206547, 36.833473, 48.674404>,  <34.703526, 36.447266, 48.373154>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.206547, 36.833473, 48.674404> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.894688, 37.082420, 48.702152>,  <34.707573, 37.231789, 48.718800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.894688, 37.082420, 48.702152>,  <35.206547, 36.833473, 48.674404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.894688, 37.082420, 48.702152> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278143, 0.244908, 0.928793,
		0.561059, 0.743426, -0.364048,
		-0.779647, 0.622365, 0.069371,
		34.660793, 37.269131, 48.722965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.530712, 37.329330, 49.038502>,  <35.206547, 36.833473, 48.674404>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.530712, 37.329330, 49.038502> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.136467, 37.388412, 49.071369>,  <34.899921, 37.423862, 49.091091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.136467, 37.388412, 49.071369>,  <35.530712, 37.329330, 49.038502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.136467, 37.388412, 49.071369> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117694, 0.250816, 0.960853,
		0.121310, 0.956700, -0.264591,
		-0.985613, 0.147702, 0.082172,
		34.840782, 37.432724, 49.096020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.491844, 37.892155, 49.528858>,  <35.530712, 37.329330, 49.038502>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.491844, 37.892155, 49.528858> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.117542, 37.751637, 49.516544>,  <34.892960, 37.667324, 49.509155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.117542, 37.751637, 49.516544>,  <35.491844, 37.892155, 49.528858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.117542, 37.751637, 49.516544> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092643, 0.160652, 0.982654,
		-0.340256, 0.922378, -0.182877,
		-0.935758, -0.351296, -0.030789,
		34.836815, 37.646248, 49.507309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.218647, 38.255833, 50.069336>,  <35.491844, 37.892155, 49.528858>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.218647, 38.255833, 50.069336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.952141, 37.968307, 49.989941>,  <34.792236, 37.795792, 49.942303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.952141, 37.968307, 49.989941>,  <35.218647, 38.255833, 50.069336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.952141, 37.968307, 49.989941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329645, 0.045145, 0.943025,
		-0.668896, 0.693738, -0.267031,
		-0.666268, -0.718811, -0.198491,
		34.752262, 37.752663, 49.930393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.613663, 38.543438, 50.416435>,  <35.218647, 38.255833, 50.069336>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.613663, 38.543438, 50.416435> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.578873, 38.148827, 50.361012>,  <34.557999, 37.912060, 50.327755>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.578873, 38.148827, 50.361012>,  <34.613663, 38.543438, 50.416435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.578873, 38.148827, 50.361012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379368, -0.095809, 0.920272,
		-0.921148, 0.132611, -0.365923,
		-0.086979, -0.986527, -0.138563,
		34.552780, 37.852867, 50.319443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.918083, 38.330112, 50.662819>,  <34.613663, 38.543438, 50.416435>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.918083, 38.330112, 50.662819> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.144482, 38.000389, 50.667942>,  <34.280323, 37.802555, 50.671017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.144482, 38.000389, 50.667942>,  <33.918083, 38.330112, 50.662819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.144482, 38.000389, 50.667942> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362925, -0.235188, 0.901650,
		-0.740223, -0.514981, -0.432278,
		0.565999, -0.824306, 0.012808,
		34.314281, 37.753098, 50.671783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.496529, 37.928413, 51.065453>,  <33.918083, 38.330112, 50.662819>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.496529, 37.928413, 51.065453> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.846886, 37.735500, 51.059498>,  <34.057098, 37.619751, 51.055923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.846886, 37.735500, 51.059498>,  <33.496529, 37.928413, 51.065453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.846886, 37.735500, 51.059498> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201780, -0.394135, 0.896628,
		-0.438299, -0.782341, -0.442534,
		0.875888, -0.482286, -0.014888,
		34.109653, 37.590816, 51.055031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.336323, 37.214607, 51.107082>,  <33.496529, 37.928413, 51.065453>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.336323, 37.214607, 51.107082> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.684669, 37.320919, 51.272472>,  <33.893677, 37.384705, 51.371704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.684669, 37.320919, 51.272472>,  <33.336323, 37.214607, 51.107082>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.684669, 37.320919, 51.272472> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344362, -0.270334, 0.899074,
		0.350729, -0.925355, -0.143901,
		0.870864, 0.265777, 0.413471,
		33.945930, 37.400654, 51.396515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.334789, 37.164825, 51.882160>,  <33.336323, 37.214607, 51.107082>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.334789, 37.164825, 51.882160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.098118, 36.861477, 51.991547>,  <32.956116, 36.679466, 52.057178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.098118, 36.861477, 51.991547>,  <33.334789, 37.164825, 51.882160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.098118, 36.861477, 51.991547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330667, -0.537665, -0.775613,
		0.735239, -0.368488, 0.568895,
		-0.591679, -0.758375, 0.273465,
		32.920612, 36.633965, 52.073586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.606182, 36.501198, 51.770222>,  <33.334789, 37.164825, 51.882160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.606182, 36.501198, 51.770222> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.223972, 36.398937, 51.829018>,  <32.994644, 36.337582, 51.864296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.223972, 36.398937, 51.829018>,  <33.606182, 36.501198, 51.770222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.223972, 36.398937, 51.829018> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000072, -0.498237, -0.867041,
		0.294897, -0.828493, 0.476061,
		-0.955529, -0.255654, 0.146988,
		32.937313, 36.322243, 51.873116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.574162, 35.740990, 51.619785>,  <33.606182, 36.501198, 51.770222>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.574162, 35.740990, 51.619785> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.196087, 35.868988, 51.593811>,  <32.969242, 35.945786, 51.578228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.196087, 35.868988, 51.593811>,  <33.574162, 35.740990, 51.619785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.196087, 35.868988, 51.593811> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142505, -0.583211, -0.799723,
		-0.293780, -0.746637, 0.596846,
		-0.945191, 0.319996, -0.064937,
		32.912529, 35.964989, 51.574329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.107037, 35.131248, 51.687149>,  <33.574162, 35.740990, 51.619785>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.107037, 35.131248, 51.687149> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.921406, 35.428867, 51.494888>,  <32.810028, 35.607437, 51.379532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.921406, 35.428867, 51.494888>,  <33.107037, 35.131248, 51.687149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.921406, 35.428867, 51.494888> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189292, -0.613395, -0.766756,
		-0.865332, -0.264850, 0.425505,
		-0.464078, 0.744043, -0.480656,
		32.782181, 35.652081, 51.350693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.545483, 34.758072, 51.251991>,  <33.107037, 35.131248, 51.687149>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.545483, 34.758072, 51.251991> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.558044, 35.107517, 51.057747>,  <32.565582, 35.317184, 50.941200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.558044, 35.107517, 51.057747>,  <32.545483, 34.758072, 51.251991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.558044, 35.107517, 51.057747> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014179, -0.485411, -0.874171,
		-0.999406, 0.034336, -0.002856,
		0.031402, 0.873612, -0.485609,
		32.567467, 35.369602, 50.912064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.159504, 34.704597, 50.581860>,  <32.545483, 34.758072, 51.251991>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.159504, 34.704597, 50.581860> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.378742, 35.036209, 50.537502>,  <32.510284, 35.235176, 50.510887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.378742, 35.036209, 50.537502>,  <32.159504, 34.704597, 50.581860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.378742, 35.036209, 50.537502> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080836, -0.184468, -0.979509,
		-0.832500, 0.527900, -0.168121,
		0.548096, 0.829031, -0.110896,
		32.543171, 35.284920, 50.504234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.838058, 35.009521, 49.950726>,  <32.159504, 34.704597, 50.581860>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.838058, 35.009521, 49.950726> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.195419, 35.175346, 50.019978>,  <32.409836, 35.274841, 50.061527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.195419, 35.175346, 50.019978>,  <31.838058, 35.009521, 49.950726>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.195419, 35.175346, 50.019978> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192318, -0.004633, -0.981322,
		-0.406017, 0.910009, -0.083867,
		0.893400, 0.414563, 0.173130,
		32.463440, 35.299717, 50.071918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.907475, 35.653088, 49.546173>,  <31.838058, 35.009521, 49.950726>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.907475, 35.653088, 49.546173> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.280327, 35.532413, 49.626293>,  <32.504040, 35.460011, 49.674366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.280327, 35.532413, 49.626293>,  <31.907475, 35.653088, 49.546173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.280327, 35.532413, 49.626293> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248321, 0.129923, -0.959925,
		0.263568, 0.944515, 0.196019,
		0.932131, -0.301681, 0.200300,
		32.559967, 35.441910, 49.686382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.226261, 36.172920, 49.262997>,  <31.907475, 35.653088, 49.546173>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.226261, 36.172920, 49.262997> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.454144, 35.844315, 49.272415>,  <32.590874, 35.647152, 49.278069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.454144, 35.844315, 49.272415>,  <32.226261, 36.172920, 49.262997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.454144, 35.844315, 49.272415> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235381, 0.135644, -0.962391,
		0.787419, 0.553825, 0.270645,
		0.569708, -0.821510, 0.023551,
		32.625057, 35.597862, 49.279480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.721874, 36.385212, 48.979263>,  <32.226261, 36.172920, 49.262997>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.721874, 36.385212, 48.979263> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.758099, 35.988773, 48.940224>,  <32.779835, 35.750912, 48.916801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.758099, 35.988773, 48.940224>,  <32.721874, 36.385212, 48.979263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.758099, 35.988773, 48.940224> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342505, 0.123017, -0.931427,
		0.935141, 0.050923, 0.350596,
		0.090560, -0.991097, -0.097597,
		32.785267, 35.691444, 48.910946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.321682, 36.226589, 48.602711>,  <32.721874, 36.385212, 48.979263>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.321682, 36.226589, 48.602711> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.087646, 35.906452, 48.550373>,  <32.947224, 35.714371, 48.518970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.087646, 35.906452, 48.550373>,  <33.321682, 36.226589, 48.602711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.087646, 35.906452, 48.550373> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306697, -0.069007, -0.949302,
		0.750740, -0.595555, 0.285839,
		-0.585087, -0.800345, -0.130849,
		32.912121, 35.666348, 48.511120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.707451, 35.703789, 48.207092>,  <33.321682, 36.226589, 48.602711>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.707451, 35.703789, 48.207092> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.334694, 35.562897, 48.172421>,  <33.111042, 35.478359, 48.151619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.334694, 35.562897, 48.172421>,  <33.707451, 35.703789, 48.207092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.334694, 35.562897, 48.172421> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132172, -0.107190, -0.985414,
		0.337806, -0.929753, 0.146445,
		-0.931889, -0.352235, -0.086678,
		33.055126, 35.457226, 48.146416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.661064, 35.060608, 47.800911>,  <33.707451, 35.703789, 48.207092>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.661064, 35.060608, 47.800911> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.302708, 35.232914, 47.757420>,  <33.087696, 35.336300, 47.731323>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.302708, 35.232914, 47.757420>,  <33.661064, 35.060608, 47.800911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.302708, 35.232914, 47.757420> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044559, -0.156386, -0.986691,
		-0.442039, -0.888809, 0.120909,
		-0.895888, 0.430768, -0.108733,
		33.033939, 35.362144, 47.724800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.403080, 34.828358, 47.119720>,  <33.661064, 35.060608, 47.800911>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.403080, 34.828358, 47.119720> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.132328, 35.108990, 47.208824>,  <32.969879, 35.277370, 47.262287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.132328, 35.108990, 47.208824>,  <33.403080, 34.828358, 47.119720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.132328, 35.108990, 47.208824> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191281, 0.124586, -0.973596,
		-0.710810, -0.701614, 0.049870,
		-0.676876, 0.701581, 0.222763,
		32.929264, 35.319466, 47.275654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.785786, 34.744480, 46.711220>,  <33.403080, 34.828358, 47.119720>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.785786, 34.744480, 46.711220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.770248, 35.138348, 46.779240>,  <32.760925, 35.374668, 46.820053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.770248, 35.138348, 46.779240>,  <32.785786, 34.744480, 46.711220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.770248, 35.138348, 46.779240> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141863, 0.163024, -0.976370,
		-0.989124, -0.062054, 0.133355,
		-0.038848, 0.984669, 0.170054,
		32.758595, 35.433746, 46.830257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.370064, 34.962002, 46.225674>,  <32.785786, 34.744480, 46.711220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.370064, 34.962002, 46.225674> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.556339, 35.296692, 46.340935>,  <32.668102, 35.497505, 46.410091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.556339, 35.296692, 46.340935>,  <32.370064, 34.962002, 46.225674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.556339, 35.296692, 46.340935> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144299, 0.393054, -0.908122,
		-0.873106, 0.381320, 0.303778,
		0.465687, 0.836722, 0.288153,
		32.696045, 35.547707, 46.427380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.914225, 35.546829, 45.992188>,  <32.370064, 34.962002, 46.225674>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.914225, 35.546829, 45.992188> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.274349, 35.707798, 46.058517>,  <32.490425, 35.804379, 46.098316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.274349, 35.707798, 46.058517>,  <31.914225, 35.546829, 45.992188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.274349, 35.707798, 46.058517> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049193, 0.284462, -0.957424,
		-0.432456, 0.870138, 0.236308,
		0.900312, 0.402419, 0.165822,
		32.544441, 35.828526, 46.108265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.888741, 36.315632, 45.847382>,  <31.914225, 35.546829, 45.992188>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.888741, 36.315632, 45.847382> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.257332, 36.167763, 45.799679>,  <32.478485, 36.079041, 45.771057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.257332, 36.167763, 45.799679>,  <31.888741, 36.315632, 45.847382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.257332, 36.167763, 45.799679> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025930, 0.364878, -0.930694,
		0.387561, 0.854523, 0.345813,
		0.921479, -0.369668, -0.119255,
		32.533775, 36.056862, 45.763901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.226833, 36.825680, 45.488060>,  <31.888741, 36.315632, 45.847382>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.226833, 36.825680, 45.488060> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.444340, 36.498856, 45.411400>,  <32.574844, 36.302761, 45.365402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.444340, 36.498856, 45.411400>,  <32.226833, 36.825680, 45.488060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.444340, 36.498856, 45.411400> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042578, 0.254932, -0.966021,
		0.838156, 0.517129, 0.173412,
		0.543766, -0.817061, -0.191654,
		32.607468, 36.253738, 45.353905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.593475, 37.042679, 44.908783>,  <32.226833, 36.825680, 45.488060>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.593475, 37.042679, 44.908783> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.645721, 36.646374, 44.894180>,  <32.677071, 36.408592, 44.885418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.645721, 36.646374, 44.894180>,  <32.593475, 37.042679, 44.908783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.645721, 36.646374, 44.894180> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200031, 0.009733, -0.979741,
		0.971044, 0.135272, -0.196911,
		0.130615, -0.990761, -0.036509,
		32.684906, 36.349144, 44.883228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.986565, 36.983749, 44.372253>,  <32.593475, 37.042679, 44.908783>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.986565, 36.983749, 44.372253> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.821136, 36.620918, 44.403660>,  <32.721878, 36.403217, 44.422504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.821136, 36.620918, 44.403660>,  <32.986565, 36.983749, 44.372253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.821136, 36.620918, 44.403660> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291473, 0.050211, -0.955260,
		0.862556, -0.417953, -0.285156,
		-0.413571, -0.907080, 0.078512,
		32.697063, 36.348793, 44.427212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.756104, 30.682735, 27.694515> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.480709, 30.936571, 27.554070>,  <42.315472, 31.088873, 27.469801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.480709, 30.936571, 27.554070>,  <42.756104, 30.682735, 27.694515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.480709, 30.936571, 27.554070> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247657, 0.660746, 0.708576,
		0.681651, 0.400891, -0.612077,
		-0.688489, 0.634587, -0.351115,
		42.274162, 31.126947, 27.448734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.000076, 31.296028, 27.534428>,  <42.756104, 30.682735, 27.694515>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.000076, 31.296028, 27.534428> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.615528, 31.403641, 27.557730>,  <42.384800, 31.468208, 27.571711>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.615528, 31.403641, 27.557730>,  <43.000076, 31.296028, 27.534428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.615528, 31.403641, 27.557730> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223266, 0.638294, 0.736704,
		0.161013, 0.721250, -0.673701,
		-0.961367, 0.269034, 0.058257,
		42.327118, 31.484350, 27.575207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.996529, 31.993526, 27.566938>,  <43.000076, 31.296028, 27.534428>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.996529, 31.993526, 27.566938> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.634632, 31.897663, 27.707800>,  <42.417496, 31.840145, 27.792316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.634632, 31.897663, 27.707800>,  <42.996529, 31.993526, 27.566938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.634632, 31.897663, 27.707800> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140451, 0.612651, 0.777774,
		-0.402148, 0.753142, -0.520628,
		-0.904738, -0.239658, 0.352156,
		42.363213, 31.825766, 27.813446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.624592, 32.563198, 27.535431>,  <42.996529, 31.993526, 27.566938>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.624592, 32.563198, 27.535431> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.424328, 32.340290, 27.800394>,  <42.304169, 32.206543, 27.959372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.424328, 32.340290, 27.800394>,  <42.624592, 32.563198, 27.535431>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.424328, 32.340290, 27.800394> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023681, 0.773752, 0.633045,
		-0.865319, 0.301255, -0.400585,
		-0.500662, -0.557273, 0.662408,
		42.274128, 32.173107, 27.999117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.226070, 33.072136, 27.941326>,  <42.624592, 32.563198, 27.535431>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.226070, 33.072136, 27.941326> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.220852, 32.731396, 28.150776>,  <42.217720, 32.526951, 28.276445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.220852, 32.731396, 28.150776>,  <42.226070, 33.072136, 27.941326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.220852, 32.731396, 28.150776> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106576, 0.521871, 0.846340,
		-0.994219, -0.044768, -0.097593,
		-0.013042, -0.851849, 0.523625,
		42.216938, 32.475842, 28.307863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.830841, 33.286621, 28.461924>,  <42.226070, 33.072136, 27.941326>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.830841, 33.286621, 28.461924> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.007603, 32.963032, 28.616987>,  <42.113659, 32.768879, 28.710026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.007603, 32.963032, 28.616987>,  <41.830841, 33.286621, 28.461924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.007603, 32.963032, 28.616987> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003353, 0.430652, 0.902512,
		-0.897058, -0.400121, 0.187593,
		0.441901, -0.808976, 0.387661,
		42.140175, 32.720341, 28.733286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.503117, 33.062290, 29.096788>,  <41.830841, 33.286621, 28.461924>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.503117, 33.062290, 29.096788> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.891979, 32.968563, 29.097538>,  <42.125298, 32.912327, 29.097988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.891979, 32.968563, 29.097538>,  <41.503117, 33.062290, 29.096788>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.891979, 32.968563, 29.097538> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118090, 0.496807, 0.859790,
		-0.202398, -0.835630, 0.510645,
		0.972157, -0.234322, 0.001873,
		42.183628, 32.898266, 29.098101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.653328, 32.937271, 29.832466>,  <41.503117, 33.062290, 29.096788>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.653328, 32.937271, 29.832466> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.018391, 32.984104, 29.675823>,  <42.237427, 33.012203, 29.581839>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.018391, 32.984104, 29.675823>,  <41.653328, 32.937271, 29.832466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.018391, 32.984104, 29.675823> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251374, 0.594693, 0.763644,
		0.322297, -0.795381, 0.513315,
		0.912653, 0.117086, -0.391606,
		42.292187, 33.019230, 29.558342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.994659, 32.788754, 30.363232>,  <41.653328, 32.937271, 29.832466>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.994659, 32.788754, 30.363232> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.218052, 33.016792, 30.122202>,  <42.352085, 33.153614, 29.977585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.218052, 33.016792, 30.122202>,  <41.994659, 32.788754, 30.363232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.218052, 33.016792, 30.122202> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196762, 0.614640, 0.763874,
		0.805846, -0.545170, 0.231090,
		0.558477, 0.570095, -0.602573,
		42.385593, 33.187820, 29.941429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.419495, 33.100880, 30.759747>,  <41.994659, 32.788754, 30.363232>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.419495, 33.100880, 30.759747> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.462421, 33.347717, 30.447933>,  <42.488178, 33.495819, 30.260845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.462421, 33.347717, 30.447933>,  <42.419495, 33.100880, 30.759747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.462421, 33.347717, 30.447933> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249139, 0.742354, 0.621964,
		0.962503, -0.260963, -0.074073,
		0.107322, 0.617097, -0.779534,
		42.494617, 33.532845, 30.214073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.001522, 33.319008, 30.886797>,  <42.419495, 33.100880, 30.759747>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.001522, 33.319008, 30.886797> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.853832, 33.591160, 30.633574>,  <42.765217, 33.754452, 30.481640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.853832, 33.591160, 30.633574>,  <43.001522, 33.319008, 30.886797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.853832, 33.591160, 30.633574> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275653, 0.730713, 0.624559,
		0.887518, 0.056098, -0.457344,
		-0.369224, 0.680376, -0.633057,
		42.743065, 33.795273, 30.443657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.556019, 33.833668, 30.686085>,  <43.001522, 33.319008, 30.886797>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.556019, 33.833668, 30.686085> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.194836, 34.000000, 30.642717>,  <42.978127, 34.099800, 30.616697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.194836, 34.000000, 30.642717>,  <43.556019, 33.833668, 30.686085>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.194836, 34.000000, 30.642717> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294168, 0.782030, 0.549450,
		0.313264, 0.464236, -0.828463,
		-0.902957, 0.415830, -0.108419,
		42.923950, 34.124748, 30.610191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.715721, 34.600174, 30.586058>,  <43.556019, 33.833668, 30.686085>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.715721, 34.600174, 30.586058> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.328953, 34.559765, 30.679737>,  <43.096889, 34.535519, 30.735945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.328953, 34.559765, 30.679737>,  <43.715721, 34.600174, 30.586058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.328953, 34.559765, 30.679737> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081345, 0.748124, 0.658554,
		-0.241740, 0.655824, -0.715162,
		-0.966925, -0.101024, 0.234200,
		43.038876, 34.529457, 30.749996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.502823, 35.257000, 30.723190>,  <43.715721, 34.600174, 30.586058>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.502823, 35.257000, 30.723190> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.217514, 35.039413, 30.899984>,  <43.046329, 34.908863, 31.006062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.217514, 35.039413, 30.899984>,  <43.502823, 35.257000, 30.723190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.217514, 35.039413, 30.899984> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059265, 0.675155, 0.735291,
		-0.698381, 0.498266, -0.513804,
		-0.713268, -0.543964, 0.441986,
		43.003532, 34.876225, 31.032579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.011234, 35.786892, 30.970572>,  <43.502823, 35.257000, 30.723190>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.011234, 35.786892, 30.970572> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.953491, 35.456161, 31.188015>,  <42.918846, 35.257721, 31.318481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.953491, 35.456161, 31.188015>,  <43.011234, 35.786892, 30.970572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.953491, 35.456161, 31.188015> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020621, 0.551759, 0.833748,
		-0.989310, 0.109150, -0.096702,
		-0.144360, -0.826830, 0.543610,
		42.910183, 35.208111, 31.351099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.365009, 35.847607, 31.347639>,  <43.011234, 35.786892, 30.970572>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.365009, 35.847607, 31.347639> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.615013, 35.605778, 31.545168>,  <42.765015, 35.460682, 31.663685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.615013, 35.605778, 31.545168>,  <42.365009, 35.847607, 31.347639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.615013, 35.605778, 31.545168> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000058, 0.632638, 0.774447,
		-0.780617, -0.484009, 0.395440,
		0.625010, -0.604569, 0.493820,
		42.802517, 35.424408, 31.693314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.090641, 35.815208, 31.955254>,  <42.365009, 35.847607, 31.347639>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.090641, 35.815208, 31.955254> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.456039, 35.664055, 32.015564>,  <42.675278, 35.573364, 32.051750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.456039, 35.664055, 32.015564>,  <42.090641, 35.815208, 31.955254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.456039, 35.664055, 32.015564> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096985, 0.562163, 0.821320,
		-0.395122, -0.735648, 0.550181,
		0.913494, -0.377881, 0.150776,
		42.730087, 35.550690, 32.060795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.128212, 35.761806, 32.630375>,  <42.090641, 35.815208, 31.955254>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.128212, 35.761806, 32.630375> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.518692, 35.712261, 32.559155>,  <42.752979, 35.682533, 32.516422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.518692, 35.712261, 32.559155>,  <42.128212, 35.761806, 32.630375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.518692, 35.712261, 32.559155> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204428, 0.251172, 0.946109,
		-0.072466, -0.959985, 0.270514,
		0.976195, -0.123861, -0.178046,
		42.811550, 35.675102, 32.505741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.378613, 35.428108, 33.227047>,  <42.128212, 35.761806, 32.630375>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.378613, 35.428108, 33.227047> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.675682, 35.621956, 33.042191>,  <42.853924, 35.738266, 32.931278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.675682, 35.621956, 33.042191>,  <42.378613, 35.428108, 33.227047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.675682, 35.621956, 33.042191> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402264, 0.228866, 0.886456,
		0.535364, -0.844252, -0.024973,
		0.742677, 0.484623, -0.462139,
		42.898483, 35.767342, 32.903549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.823765, 35.292221, 33.673237>,  <42.378613, 35.428108, 33.227047>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.823765, 35.292221, 33.673237> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.977081, 35.590660, 33.455460>,  <43.069073, 35.769722, 33.324791>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.977081, 35.590660, 33.455460>,  <42.823765, 35.292221, 33.673237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.977081, 35.590660, 33.455460> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503051, 0.325730, 0.800525,
		0.774612, -0.580722, -0.250475,
		0.383296, 0.746098, -0.544447,
		43.092072, 35.814487, 33.292126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.468609, 35.331322, 33.837891>,  <42.823765, 35.292221, 33.673237>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.468609, 35.331322, 33.837891> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.409500, 35.695126, 33.682476>,  <43.374035, 35.913406, 33.589226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.409500, 35.695126, 33.682476>,  <43.468609, 35.331322, 33.837891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.409500, 35.695126, 33.682476> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385086, 0.414763, 0.824427,
		0.910973, -0.027791, -0.411529,
		-0.147775, 0.909505, -0.388540,
		43.365166, 35.967976, 33.565914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.176888, 35.326775, 33.856441>,  <43.468609, 35.331322, 33.837891>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.176888, 35.326775, 33.856441> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.485615, 35.125072, 34.011368>,  <44.670853, 35.004051, 34.104324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.485615, 35.125072, 34.011368>,  <44.176888, 35.326775, 33.856441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.485615, 35.125072, 34.011368> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216721, -0.781299, -0.585324,
		0.597766, 0.367826, -0.712306,
		0.771821, -0.504258, 0.387318,
		44.717163, 34.973797, 34.127563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.433968, 34.895103, 33.373051>,  <44.176888, 35.326775, 33.856441>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.433968, 34.895103, 33.373051> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.587410, 34.698322, 33.685673>,  <44.679474, 34.580254, 33.873245>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.587410, 34.698322, 33.685673>,  <44.433968, 34.895103, 33.373051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.587410, 34.698322, 33.685673> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289233, -0.867721, -0.404233,
		0.877035, -0.070985, -0.475153,
		0.383606, -0.491956, 0.781554,
		44.702492, 34.550735, 33.920139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.976982, 34.529579, 33.134106>,  <44.433968, 34.895103, 33.373051>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.976982, 34.529579, 33.134106> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.848724, 34.336082, 33.459850>,  <44.771770, 34.219982, 33.655296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.848724, 34.336082, 33.459850>,  <44.976982, 34.529579, 33.134106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.848724, 34.336082, 33.459850> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180573, -0.812767, -0.553898,
		0.929829, -0.324655, 0.173257,
		-0.320643, -0.483745, 0.814358,
		44.752533, 34.190960, 33.704159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.178741, 33.803738, 33.099972>,  <44.976982, 34.529579, 33.134106>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.178741, 33.803738, 33.099972> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.931671, 33.771603, 33.412899>,  <44.783428, 33.752323, 33.600655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.931671, 33.771603, 33.412899>,  <45.178741, 33.803738, 33.099972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.931671, 33.771603, 33.412899> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236954, -0.929529, -0.282540,
		0.749885, -0.359892, 0.555113,
		-0.617677, -0.080336, 0.782318,
		44.746368, 33.747501, 33.647594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.303520, 33.075043, 33.482544>,  <45.178741, 33.803738, 33.099972>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.303520, 33.075043, 33.482544> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.924213, 33.188442, 33.539703>,  <44.696629, 33.256481, 33.573997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.924213, 33.188442, 33.539703>,  <45.303520, 33.075043, 33.482544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.924213, 33.188442, 33.539703> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312792, -0.911299, -0.267759,
		0.054313, -0.298604, 0.952830,
		-0.948267, 0.283495, 0.142896,
		44.639732, 33.273491, 33.582573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.972370, 32.514984, 33.787727>,  <45.303520, 33.075043, 33.482544>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.972370, 32.514984, 33.787727> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.659130, 32.723820, 33.652565>,  <44.471188, 32.849121, 33.571468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.659130, 32.723820, 33.652565>,  <44.972370, 32.514984, 33.787727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.659130, 32.723820, 33.652565> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420929, -0.844939, -0.329994,
		-0.457794, -0.116184, 0.881434,
		-0.783098, 0.522091, -0.337903,
		44.424202, 32.880447, 33.551193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.486729, 32.050449, 33.904709>,  <44.972370, 32.514984, 33.787727>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.486729, 32.050449, 33.904709> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.318367, 32.310551, 33.651726>,  <44.217350, 32.466610, 33.499935>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.318367, 32.310551, 33.651726>,  <44.486729, 32.050449, 33.904709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.318367, 32.310551, 33.651726> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572236, -0.731331, -0.371081,
		-0.703834, 0.205726, 0.679922,
		-0.420907, 0.650256, -0.632459,
		44.192097, 32.505627, 33.461987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.686852, 31.800808, 33.808662>,  <44.486729, 32.050449, 33.904709>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.686852, 31.800808, 33.808662> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.778633, 32.009804, 33.480186>,  <43.833702, 32.135201, 33.283100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.778633, 32.009804, 33.480186>,  <43.686852, 31.800808, 33.808662>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.778633, 32.009804, 33.480186> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469843, -0.679433, -0.563577,
		-0.852408, 0.515145, 0.089591,
		0.229453, 0.522491, -0.821191,
		43.847469, 32.166550, 33.233829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.087009, 31.699749, 33.447758>,  <43.686852, 31.800808, 33.808662>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.087009, 31.699749, 33.447758> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.355068, 31.820799, 33.176662>,  <43.515903, 31.893429, 33.014008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.355068, 31.820799, 33.176662>,  <43.087009, 31.699749, 33.447758>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.355068, 31.820799, 33.176662> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349639, -0.676737, -0.647903,
		-0.654719, 0.671152, -0.347704,
		0.670146, 0.302624, -0.677734,
		43.556110, 31.911587, 32.973343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.679028, 31.605396, 32.840313>,  <43.087009, 31.699749, 33.447758>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.679028, 31.605396, 32.840313> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.059753, 31.621988, 32.718773>,  <43.288189, 31.631943, 32.645851>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.059753, 31.621988, 32.718773>,  <42.679028, 31.605396, 32.840313>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.059753, 31.621988, 32.718773> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174496, -0.741520, -0.647842,
		-0.252181, 0.669648, -0.698553,
		0.951817, 0.041479, -0.303848,
		43.345299, 31.634432, 32.627617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.688873, 31.959984, 32.263634>,  <42.679028, 31.605396, 32.840313>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.688873, 31.959984, 32.263634> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.034370, 31.759764, 32.240303>,  <43.241669, 31.639631, 32.226303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.034370, 31.759764, 32.240303>,  <42.688873, 31.959984, 32.263634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.034370, 31.759764, 32.240303> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261509, -0.346262, -0.900953,
		0.430775, 0.793443, -0.429979,
		0.863740, -0.500551, -0.058331,
		43.293491, 31.609598, 32.222805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.947781, 32.074707, 31.625252>,  <42.688873, 31.959984, 32.263634>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.947781, 32.074707, 31.625252> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.127228, 31.737808, 31.744825>,  <43.234898, 31.535669, 31.816570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.127228, 31.737808, 31.744825>,  <42.947781, 32.074707, 31.625252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.127228, 31.737808, 31.744825> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279116, -0.449787, -0.848402,
		0.849020, 0.297172, -0.436868,
		0.448619, -0.842247, 0.298933,
		43.261814, 31.485134, 31.834505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.397675, 31.833921, 31.023174>,  <42.947781, 32.074707, 31.625252>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.397675, 31.833921, 31.023174> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.328537, 31.521830, 31.263630>,  <43.287056, 31.334574, 31.407904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.328537, 31.521830, 31.263630>,  <43.397675, 31.833921, 31.023174>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.328537, 31.521830, 31.263630> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163766, -0.579062, -0.798666,
		0.971240, -0.236489, -0.027689,
		-0.172842, -0.780231, 0.601137,
		43.276684, 31.287760, 31.443972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.777973, 31.401993, 30.760767>,  <43.397675, 31.833921, 31.023174>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.777973, 31.401993, 30.760767> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.538792, 31.156893, 30.967449>,  <43.395283, 31.009832, 31.091459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.538792, 31.156893, 30.967449>,  <43.777973, 31.401993, 30.760767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.538792, 31.156893, 30.967449> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208985, -0.503167, -0.838539,
		0.773805, -0.609393, 0.172816,
		-0.597955, -0.612750, 0.516708,
		43.359406, 30.973068, 31.122461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.977314, 30.666279, 30.592529>,  <43.777973, 31.401993, 30.760767>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.977314, 30.666279, 30.592529> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.604530, 30.659163, 30.737385>,  <43.380859, 30.654892, 30.824297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.604530, 30.659163, 30.737385>,  <43.977314, 30.666279, 30.592529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.604530, 30.659163, 30.737385> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252435, -0.685113, -0.683298,
		0.260263, -0.728219, 0.634003,
		-0.931955, -0.017792, 0.362138,
		43.324944, 30.653826, 30.846025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.833183, 29.886349, 30.655804>,  <43.977314, 30.666279, 30.592529>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.833183, 29.886349, 30.655804> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.481281, 30.076191, 30.644669>,  <43.270138, 30.190096, 30.637987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.481281, 30.076191, 30.644669>,  <43.833183, 29.886349, 30.655804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.481281, 30.076191, 30.644669> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357423, -0.698882, -0.619526,
		-0.313485, -0.535084, 0.784482,
		-0.879759, 0.474604, -0.027838,
		43.217354, 30.218573, 30.636316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.387360, 29.384714, 30.691975>,  <43.833183, 29.886349, 30.655804>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.387360, 29.384714, 30.691975> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.172043, 29.687332, 30.543446>,  <43.042850, 29.868902, 30.454329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.172043, 29.687332, 30.543446>,  <43.387360, 29.384714, 30.691975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.172043, 29.687332, 30.543446> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459853, -0.632905, -0.622869,
		-0.706240, -0.164533, 0.688588,
		-0.538294, 0.756545, -0.371322,
		43.010555, 29.914295, 30.432049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.617470, 29.232872, 30.817774>,  <43.387360, 29.384714, 30.691975>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.617470, 29.232872, 30.817774> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.623081, 29.495411, 30.516043>,  <42.626446, 29.652935, 30.335005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.623081, 29.495411, 30.516043>,  <42.617470, 29.232872, 30.817774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.623081, 29.495411, 30.516043> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454150, -0.667917, -0.589607,
		-0.890815, 0.350847, 0.288713,
		0.014025, 0.656349, -0.754327,
		42.627289, 29.692316, 30.289745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.915958, 29.174717, 30.491587>,  <42.617470, 29.232872, 30.817774>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.915958, 29.174717, 30.491587> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.144341, 29.363365, 30.222786>,  <42.281368, 29.476555, 30.061506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.144341, 29.363365, 30.222786>,  <41.915958, 29.174717, 30.491587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.144341, 29.363365, 30.222786> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475343, -0.477475, -0.738964,
		-0.669375, 0.741344, -0.048434,
		0.570952, 0.471621, -0.672002,
		42.315628, 29.504852, 30.021185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.467712, 29.248196, 29.953981>,  <41.915958, 29.174717, 30.491587>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.467712, 29.248196, 29.953981> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.833744, 29.311457, 29.805595>,  <42.053364, 29.349413, 29.716564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.833744, 29.311457, 29.805595>,  <41.467712, 29.248196, 29.953981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.833744, 29.311457, 29.805595> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301439, -0.342809, -0.889728,
		-0.267881, 0.925997, -0.266026,
		0.915081, 0.158151, -0.370964,
		42.108269, 29.358902, 29.694305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.363747, 29.572151, 29.355120>,  <41.467712, 29.248196, 29.953981>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.363747, 29.572151, 29.355120> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.722538, 29.397572, 29.327015>,  <41.937813, 29.292824, 29.310152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.722538, 29.397572, 29.327015>,  <41.363747, 29.572151, 29.355120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.722538, 29.397572, 29.327015> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304865, -0.495626, -0.813273,
		0.320127, 0.750912, -0.577625,
		0.896982, -0.436448, -0.070264,
		41.991634, 29.266638, 29.305935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<36.091118, 37.668770, 40.036221> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.972439, 37.287960, 40.066223>,  <35.901230, 37.059475, 40.084225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.972439, 37.287960, 40.066223>,  <36.091118, 37.668770, 40.036221>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.972439, 37.287960, 40.066223> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371678, -0.187473, -0.909236,
		0.879673, -0.241890, 0.409468,
		-0.296699, -0.952021, 0.075009,
		35.883430, 37.002354, 40.088726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.609322, 37.315926, 39.897743>,  <36.091118, 37.668770, 40.036221>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.609322, 37.315926, 39.897743> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.313366, 37.051830, 39.846123>,  <36.135792, 36.893375, 39.815151>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.313366, 37.051830, 39.846123>,  <36.609322, 37.315926, 39.897743>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.313366, 37.051830, 39.846123> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394841, -0.270881, -0.877909,
		0.544668, -0.700510, 0.461110,
		-0.739890, -0.660234, -0.129050,
		36.091400, 36.853760, 39.807407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.880043, 36.739368, 39.686527>,  <36.609322, 37.315926, 39.897743>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.880043, 36.739368, 39.686527> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.500221, 36.701061, 39.567078>,  <36.272327, 36.678078, 39.495407>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.500221, 36.701061, 39.567078>,  <36.880043, 36.739368, 39.686527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.500221, 36.701061, 39.567078> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311886, -0.188714, -0.931190,
		0.032819, -0.977352, 0.209061,
		-0.949553, -0.095764, -0.298629,
		36.215355, 36.672333, 39.477489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.877689, 36.079781, 39.291599>,  <36.880043, 36.739368, 39.686527>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.877689, 36.079781, 39.291599> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.537304, 36.258041, 39.180416>,  <36.333073, 36.364998, 39.113705>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.537304, 36.258041, 39.180416>,  <36.877689, 36.079781, 39.291599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.537304, 36.258041, 39.180416> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098532, -0.384371, -0.917905,
		-0.515906, -0.808489, 0.283174,
		-0.850960, 0.445651, -0.277961,
		36.282017, 36.391735, 39.097027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.457035, 35.563831, 38.956997>,  <36.877689, 36.079781, 39.291599>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.457035, 35.563831, 38.956997> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.291389, 35.909321, 38.842113>,  <36.192001, 36.116615, 38.773182>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.291389, 35.909321, 38.842113>,  <36.457035, 35.563831, 38.956997>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.291389, 35.909321, 38.842113> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023923, -0.305097, -0.952021,
		-0.909911, -0.401115, 0.105682,
		-0.414113, 0.863726, -0.287207,
		36.167156, 36.168438, 38.755951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.830486, 35.442001, 38.568077>,  <36.457035, 35.563831, 38.956997>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.830486, 35.442001, 38.568077> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.952660, 35.805637, 38.454746>,  <36.025963, 36.023819, 38.386749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.952660, 35.805637, 38.454746>,  <35.830486, 35.442001, 38.568077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.952660, 35.805637, 38.454746> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184499, -0.235404, -0.954225,
		-0.934168, 0.343726, 0.095825,
		0.305434, 0.909086, -0.283324,
		36.044289, 36.078362, 38.369747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.418785, 35.638256, 38.001171>,  <35.830486, 35.442001, 38.568077>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.418785, 35.638256, 38.001171> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.712040, 35.904644, 37.946045>,  <35.887993, 36.064476, 37.912971>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.712040, 35.904644, 37.946045>,  <35.418785, 35.638256, 38.001171>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.712040, 35.904644, 37.946045> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077884, -0.119092, -0.989824,
		-0.675602, 0.736415, -0.035443,
		0.733142, 0.665966, -0.137814,
		35.931984, 36.104435, 37.904701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.122131, 36.035824, 37.471302>,  <35.418785, 35.638256, 38.001171>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.122131, 36.035824, 37.471302> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.514359, 36.103531, 37.510963>,  <35.749695, 36.144154, 37.534760>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.514359, 36.103531, 37.510963>,  <35.122131, 36.035824, 37.471302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.514359, 36.103531, 37.510963> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095071, 0.032091, -0.994953,
		-0.171591, 0.985048, 0.015376,
		0.980570, 0.169263, 0.099156,
		35.808529, 36.154308, 37.540710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.375011, 36.670654, 37.094589>,  <35.122131, 36.035824, 37.471302>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.375011, 36.670654, 37.094589> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.682392, 36.417084, 37.129486>,  <35.866821, 36.264942, 37.150425>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.682392, 36.417084, 37.129486>,  <35.375011, 36.670654, 37.094589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.682392, 36.417084, 37.129486> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195794, 0.103127, -0.975208,
		0.609215, 0.766484, 0.203367,
		0.768454, -0.633929, 0.087246,
		35.912930, 36.226906, 37.155659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.709755, 36.795082, 36.438770>,  <35.375011, 36.670654, 37.094589>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.709755, 36.795082, 36.438770> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.925568, 36.498970, 36.599213>,  <36.055058, 36.321304, 36.695477>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.925568, 36.498970, 36.599213>,  <35.709755, 36.795082, 36.438770>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.925568, 36.498970, 36.599213> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390115, -0.202373, -0.898251,
		0.746132, 0.641115, 0.179608,
		0.539535, -0.740282, 0.401105,
		36.087429, 36.276886, 36.719543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.328362, 36.858086, 36.126526>,  <35.709755, 36.795082, 36.438770>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.328362, 36.858086, 36.126526> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.331421, 36.486893, 36.275539>,  <36.333256, 36.264175, 36.364948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.331421, 36.486893, 36.275539>,  <36.328362, 36.858086, 36.126526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.331421, 36.486893, 36.275539> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530925, -0.311930, -0.787920,
		0.847385, 0.203814, 0.490306,
		0.007648, -0.927987, 0.372535,
		36.333714, 36.208496, 36.387299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.962757, 36.694225, 36.025951>,  <36.328362, 36.858086, 36.126526>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.962757, 36.694225, 36.025951> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.712376, 36.382351, 36.032654>,  <36.562149, 36.195229, 36.036674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.712376, 36.382351, 36.032654>,  <36.962757, 36.694225, 36.025951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.712376, 36.382351, 36.032654> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383929, -0.326794, -0.863599,
		0.678810, -0.534137, 0.503900,
		-0.625952, -0.779682, 0.016761,
		36.524590, 36.148445, 36.037682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.409782, 36.040787, 35.787613>,  <36.962757, 36.694225, 36.025951>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.409782, 36.040787, 35.787613> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.015636, 35.988468, 35.743881>,  <36.779148, 35.957077, 35.717640>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.015636, 35.988468, 35.743881>,  <37.409782, 36.040787, 35.787613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.015636, 35.988468, 35.743881> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141210, -0.266964, -0.953305,
		0.095498, -0.954790, 0.281525,
		-0.985362, -0.130793, -0.109332,
		36.720028, 35.949230, 35.711082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.756718, 35.939247, 35.109867>,  <37.409782, 36.040787, 35.787613>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.756718, 35.939247, 35.109867> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.134018, 35.845104, 35.016159>,  <38.360397, 35.788620, 34.959934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.134018, 35.845104, 35.016159>,  <37.756718, 35.939247, 35.109867>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.134018, 35.845104, 35.016159> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030704, -0.764264, 0.644173,
		-0.330657, -0.600424, -0.728119,
		0.943251, -0.235357, -0.234274,
		38.416992, 35.774498, 34.945877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.741219, 35.225517, 34.933289>,  <37.756718, 35.939247, 35.109867>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.741219, 35.225517, 34.933289> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.077488, 35.366741, 35.097542>,  <38.279251, 35.451473, 35.196095>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.077488, 35.366741, 35.097542>,  <37.741219, 35.225517, 34.933289>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.077488, 35.366741, 35.097542> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113323, -0.626783, 0.770909,
		0.529550, -0.694618, -0.486911,
		0.840675, 0.353056, 0.410629,
		38.329689, 35.472656, 35.220730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.043987, 34.658875, 35.297531>,  <37.741219, 35.225517, 34.933289>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.043987, 34.658875, 35.297531> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.247444, 34.972458, 35.439903>,  <38.369518, 35.160606, 35.525326>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.247444, 34.972458, 35.439903>,  <38.043987, 34.658875, 35.297531>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.247444, 34.972458, 35.439903> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113173, -0.470701, 0.875004,
		0.853505, -0.404785, -0.328143,
		0.508646, 0.783958, 0.355935,
		38.400040, 35.207645, 35.546684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.491306, 34.440613, 35.704906>,  <38.043987, 34.658875, 35.297531>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.491306, 34.440613, 35.704906> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.506779, 34.821983, 35.824558>,  <38.516064, 35.050804, 35.896351>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.506779, 34.821983, 35.824558>,  <38.491306, 34.440613, 35.704906>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.506779, 34.821983, 35.824558> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056179, -0.300959, 0.951981,
		0.997671, -0.020022, -0.065205,
		0.038685, 0.953427, 0.299133,
		38.518383, 35.108013, 35.914299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.014599, 34.503765, 36.276043>,  <38.491306, 34.440613, 35.704906>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.014599, 34.503765, 36.276043> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.752396, 34.802475, 36.320999>,  <38.595074, 34.981701, 36.347973>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.752396, 34.802475, 36.320999>,  <39.014599, 34.503765, 36.276043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.752396, 34.802475, 36.320999> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137191, -0.264105, 0.954687,
		0.742623, 0.610385, 0.275574,
		-0.655507, 0.746779, 0.112392,
		38.555744, 35.026508, 36.354717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.195488, 34.884472, 36.881432>,  <39.014599, 34.503765, 36.276043>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.195488, 34.884472, 36.881432> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.805576, 34.944447, 36.815315>,  <38.571629, 34.980431, 36.775646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.805576, 34.944447, 36.815315>,  <39.195488, 34.884472, 36.881432>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.805576, 34.944447, 36.815315> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201060, -0.268613, 0.942031,
		0.096848, 0.951507, 0.291985,
		-0.974780, 0.149941, -0.165295,
		38.513142, 34.989429, 36.765728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.974255, 35.232292, 37.400211>,  <39.195488, 34.884472, 36.881432>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.974255, 35.232292, 37.400211> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.657021, 35.039833, 37.250805>,  <38.466679, 34.924358, 37.161160>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.657021, 35.039833, 37.250805>,  <38.974255, 35.232292, 37.400211>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.657021, 35.039833, 37.250805> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366600, -0.112665, 0.923532,
		-0.486434, 0.869371, -0.087034,
		-0.793087, -0.481144, -0.373516,
		38.419094, 34.895489, 37.138752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.576485, 35.325218, 37.943768>,  <38.974255, 35.232292, 37.400211>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.576485, 35.325218, 37.943768> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.338093, 35.073856, 37.743801>,  <38.195057, 34.923038, 37.623821>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.338093, 35.073856, 37.743801>,  <38.576485, 35.325218, 37.943768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.338093, 35.073856, 37.743801> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558674, -0.122697, 0.820261,
		-0.576795, 0.768148, -0.277949,
		-0.595979, -0.628405, -0.499916,
		38.159298, 34.885334, 37.593826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.928226, 35.555073, 38.113930>,  <38.576485, 35.325218, 37.943768>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.928226, 35.555073, 38.113930> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.898170, 35.178486, 37.982483>,  <37.880138, 34.952534, 37.903614>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.898170, 35.178486, 37.982483>,  <37.928226, 35.555073, 38.113930>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.898170, 35.178486, 37.982483> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538872, -0.238947, 0.807788,
		-0.839030, 0.237774, -0.489379,
		-0.075136, -0.941471, -0.328613,
		37.875629, 34.896046, 37.883900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.204407, 35.425056, 38.252670>,  <37.928226, 35.555073, 38.113930>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.204407, 35.425056, 38.252670> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.375866, 35.069878, 38.185963>,  <37.478741, 34.856770, 38.145939>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.375866, 35.069878, 38.185963>,  <37.204407, 35.425056, 38.252670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.375866, 35.069878, 38.185963> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519519, -0.393262, 0.758581,
		-0.739164, -0.238524, -0.629876,
		0.428647, -0.887948, -0.166767,
		37.504459, 34.803493, 38.135933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.648830, 35.052349, 38.227928>,  <37.204407, 35.425056, 38.252670>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.648830, 35.052349, 38.227928> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.942688, 34.797359, 38.320816>,  <37.119003, 34.644367, 38.376549>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.942688, 34.797359, 38.320816>,  <36.648830, 35.052349, 38.227928>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.942688, 34.797359, 38.320816> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593280, -0.437572, 0.675684,
		-0.329116, -0.634161, -0.699659,
		0.734644, -0.637472, 0.232223,
		37.163082, 34.606117, 38.390484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.386097, 34.370270, 38.167633>,  <36.648830, 35.052349, 38.227928>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.386097, 34.370270, 38.167633> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.693344, 34.374924, 38.423714>,  <36.877693, 34.377716, 38.577362>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.693344, 34.374924, 38.423714>,  <36.386097, 34.370270, 38.167633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.693344, 34.374924, 38.423714> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566245, -0.454435, 0.687645,
		0.298933, -0.890704, -0.342470,
		0.768118, 0.011638, 0.640203,
		36.923779, 34.378414, 38.615776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.249004, 33.759689, 38.468590>,  <36.386097, 34.370270, 38.167633>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.249004, 33.759689, 38.468590> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.504589, 33.932495, 38.723175>,  <36.657940, 34.036179, 38.875927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.504589, 33.932495, 38.723175>,  <36.249004, 33.759689, 38.468590>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.504589, 33.932495, 38.723175> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528612, -0.354487, 0.771303,
		0.558834, -0.829278, 0.001864,
		0.638964, 0.432016, 0.636465,
		36.696278, 34.062099, 38.914116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.336704, 33.263077, 38.946804>,  <36.249004, 33.759689, 38.468590>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.336704, 33.263077, 38.946804> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.445068, 33.611721, 39.110222>,  <36.510086, 33.820908, 39.208271>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.445068, 33.611721, 39.110222>,  <36.336704, 33.263077, 38.946804>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.445068, 33.611721, 39.110222> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474712, -0.248248, 0.844406,
		0.837411, -0.422700, 0.346509,
		0.270910, 0.871606, 0.408546,
		36.526340, 33.873203, 39.232784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.561043, 33.081078, 39.682682>,  <36.336704, 33.263077, 38.946804>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.561043, 33.081078, 39.682682> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.460762, 33.467999, 39.667328>,  <36.400593, 33.700153, 39.658115>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.460762, 33.467999, 39.667328>,  <36.561043, 33.081078, 39.682682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.460762, 33.467999, 39.667328> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455349, -0.082838, 0.886451,
		0.854288, 0.239710, 0.461228,
		-0.250698, 0.967304, -0.038384,
		36.385551, 33.758190, 39.655811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.193150, 32.700951, 39.494049>,  <36.561043, 33.081078, 39.682682>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.193150, 32.700951, 39.494049> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.140358, 32.315086, 39.585278>,  <37.108685, 32.083569, 39.640015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.140358, 32.315086, 39.585278>,  <37.193150, 32.700951, 39.494049>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.140358, 32.315086, 39.585278> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297268, -0.180976, -0.937486,
		0.945629, -0.191524, -0.262878,
		-0.131977, -0.964658, 0.228070,
		37.100765, 32.025688, 39.653698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.533184, 32.202225, 39.140228>,  <37.193150, 32.700951, 39.494049>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.533184, 32.202225, 39.140228> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.242096, 31.962839, 39.274246>,  <37.067444, 31.819208, 39.354656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.242096, 31.962839, 39.274246>,  <37.533184, 32.202225, 39.140228>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.242096, 31.962839, 39.274246> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254957, -0.217456, -0.942183,
		0.636723, -0.771071, 0.005665,
		-0.727723, -0.598466, 0.335050,
		37.023781, 31.783298, 39.374760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.546803, 31.492573, 38.740688>,  <37.533184, 32.202225, 39.140228>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.546803, 31.492573, 38.740688> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.182491, 31.511913, 38.904713>,  <36.963905, 31.523518, 39.003128>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.182491, 31.511913, 38.904713>,  <37.546803, 31.492573, 38.740688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.182491, 31.511913, 38.904713> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406891, -0.273940, -0.871434,
		0.070197, -0.960531, 0.269172,
		-0.910776, 0.048352, 0.410061,
		36.909260, 31.526419, 39.027733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.245232, 30.879761, 38.537338>,  <37.546803, 31.492573, 38.740688>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.245232, 30.879761, 38.537338> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.946445, 31.131464, 38.623207>,  <36.767174, 31.282486, 38.674728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.946445, 31.131464, 38.623207>,  <37.245232, 30.879761, 38.537338>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.946445, 31.131464, 38.623207> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404854, -0.174361, -0.897603,
		-0.527393, -0.757386, 0.384998,
		-0.746960, 0.629257, 0.214674,
		36.722359, 31.320242, 38.687611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.674221, 30.479254, 38.299030>,  <37.245232, 30.879761, 38.537338>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.674221, 30.479254, 38.299030> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.516529, 30.838562, 38.376686>,  <36.421913, 31.054148, 38.423279>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.516529, 30.838562, 38.376686>,  <36.674221, 30.479254, 38.299030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.516529, 30.838562, 38.376686> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663443, -0.131993, -0.736493,
		-0.635945, -0.419148, 0.647988,
		-0.394229, 0.898272, 0.194141,
		36.398262, 31.108044, 38.434929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.929920, 30.426701, 38.331280>,  <36.674221, 30.479254, 38.299030>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.929920, 30.426701, 38.331280> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.962830, 30.818012, 38.255173>,  <35.982574, 31.052799, 38.209507>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.962830, 30.818012, 38.255173>,  <35.929920, 30.426701, 38.331280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.962830, 30.818012, 38.255173> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742992, -0.067036, -0.665935,
		-0.664225, 0.196156, 0.721338,
		0.082271, 0.978278, -0.190269,
		35.987511, 31.111496, 38.198093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.209812, 30.700682, 38.387779>,  <35.929920, 30.426701, 38.331280>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.209812, 30.700682, 38.387779> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.436481, 30.926180, 38.147423>,  <35.572483, 31.061480, 38.003208>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.436481, 30.926180, 38.147423>,  <35.209812, 30.700682, 38.387779>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.436481, 30.926180, 38.147423> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694802, -0.065047, -0.716253,
		-0.442871, 0.823383, 0.354832,
		0.566670, 0.563746, -0.600896,
		35.606483, 31.095304, 37.967155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.731216, 31.113369, 38.127464>,  <35.209812, 30.700682, 38.387779>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.731216, 31.113369, 38.127464> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.048553, 31.180143, 37.893288>,  <35.238956, 31.220209, 37.752781>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.048553, 31.180143, 37.893288>,  <34.731216, 31.113369, 38.127464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.048553, 31.180143, 37.893288> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555053, -0.196654, -0.808235,
		-0.250054, 0.966157, -0.063355,
		0.793341, 0.166937, -0.585442,
		35.286556, 31.230225, 37.717655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.512569, 31.623188, 37.710655>,  <34.731216, 31.113369, 38.127464>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.512569, 31.623188, 37.710655> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.805508, 31.446186, 37.503635>,  <34.981270, 31.339985, 37.379421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.805508, 31.446186, 37.503635>,  <34.512569, 31.623188, 37.710655>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.805508, 31.446186, 37.503635> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586673, -0.024193, -0.809462,
		0.345670, 0.896440, -0.277322,
		0.732344, -0.442504, -0.517554,
		35.025211, 31.313435, 37.348370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.430874, 31.817310, 36.960522>,  <34.512569, 31.623188, 37.710655>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.430874, 31.817310, 36.960522> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.652126, 31.484081, 36.958138>,  <34.784878, 31.284143, 36.956707>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.652126, 31.484081, 36.958138>,  <34.430874, 31.817310, 36.960522>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.652126, 31.484081, 36.958138> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539577, -0.352786, -0.764460,
		0.634746, 0.426065, -0.644644,
		0.553131, -0.833073, -0.005965,
		34.818066, 31.234159, 36.956348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.012924, 32.147964, 37.184017>,  <34.430874, 31.817310, 36.960522>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.012924, 32.147964, 37.184017> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.321751, 32.281368, 37.400421>,  <35.507046, 32.361412, 37.530262>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.321751, 32.281368, 37.400421>,  <35.012924, 32.147964, 37.184017>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.321751, 32.281368, 37.400421> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414788, 0.909379, 0.031339,
		-0.481529, -0.248598, 0.840434,
		0.772063, 0.333511, 0.541007,
		35.553371, 32.381420, 37.562725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.747917, 32.539177, 37.755482>,  <35.012924, 32.147964, 37.184017>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.747917, 32.539177, 37.755482> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.123127, 32.677773, 37.752247>,  <35.348251, 32.760929, 37.750305>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.123127, 32.677773, 37.752247>,  <34.747917, 32.539177, 37.755482>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.123127, 32.677773, 37.752247> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337980, 0.919663, 0.199974,
		0.076723, -0.184848, 0.979768,
		0.938021, 0.346485, -0.008085,
		35.404533, 32.781719, 37.749821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.701347, 32.204559, 43.059769> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.349545, 32.018093, 43.098064>,  <38.138462, 31.906214, 43.121040>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.349545, 32.018093, 43.098064>,  <38.701347, 32.204559, 43.059769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.349545, 32.018093, 43.098064> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024034, -0.244425, -0.969370,
		0.475283, -0.850265, 0.226177,
		-0.879505, -0.466161, 0.095736,
		38.085693, 31.878244, 43.126785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.801773, 31.606401, 42.689953>,  <38.701347, 32.204559, 43.059769>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.801773, 31.606401, 42.689953> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.407063, 31.670204, 42.701462>,  <38.170235, 31.708487, 42.708366>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.407063, 31.670204, 42.701462>,  <38.801773, 31.606401, 42.689953>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.407063, 31.670204, 42.701462> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054477, -0.159221, -0.985739,
		-0.152603, -0.974280, 0.165804,
		-0.986785, 0.159460, 0.028778,
		38.111031, 31.718056, 42.710094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.516979, 30.983932, 42.435093>,  <38.801773, 31.606401, 42.689953>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.516979, 30.983932, 42.435093> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.273022, 31.297388, 42.387863>,  <38.126648, 31.485460, 42.359524>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.273022, 31.297388, 42.387863>,  <38.516979, 30.983932, 42.435093>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.273022, 31.297388, 42.387863> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110469, -0.231610, -0.966516,
		-0.784746, -0.576429, 0.227825,
		-0.609894, 0.783637, -0.118077,
		38.090054, 31.532478, 42.352440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.138111, 30.790190, 41.804558>,  <38.516979, 30.983932, 42.435093>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.138111, 30.790190, 41.804558> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.009529, 31.165340, 41.856800>,  <37.932381, 31.390430, 41.888145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.009529, 31.165340, 41.856800>,  <38.138111, 30.790190, 41.804558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.009529, 31.165340, 41.856800> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357200, 0.007635, -0.933997,
		-0.876969, -0.346890, 0.332555,
		-0.321455, 0.937875, 0.130605,
		37.913094, 31.446703, 41.895981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.420792, 30.760685, 41.544769>,  <38.138111, 30.790190, 41.804558>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.420792, 30.760685, 41.544769> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.539501, 31.142366, 41.559849>,  <37.610725, 31.371376, 41.568897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.539501, 31.142366, 41.559849>,  <37.420792, 30.760685, 41.544769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.539501, 31.142366, 41.559849> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414571, 0.164298, -0.895063,
		-0.860265, 0.250004, 0.444344,
		0.296774, 0.954204, 0.037696,
		37.628532, 31.428627, 41.571159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.857643, 31.198257, 41.353973>,  <37.420792, 30.760685, 41.544769>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.857643, 31.198257, 41.353973> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.173687, 31.427223, 41.266273>,  <37.363312, 31.564604, 41.213654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.173687, 31.427223, 41.266273>,  <36.857643, 31.198257, 41.353973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.173687, 31.427223, 41.266273> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373042, 0.165219, -0.912986,
		-0.486383, 0.803146, 0.344076,
		0.790109, 0.572415, -0.219247,
		37.410721, 31.598948, 41.200500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.513699, 31.663687, 41.026756>,  <36.857643, 31.198257, 41.353973>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.513699, 31.663687, 41.026756> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.897038, 31.716637, 40.925529>,  <37.127041, 31.748405, 40.864792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.897038, 31.716637, 40.925529>,  <36.513699, 31.663687, 41.026756>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.897038, 31.716637, 40.925529> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281131, 0.281125, -0.917570,
		-0.050318, 0.950498, 0.306630,
		0.958349, 0.132373, -0.253069,
		37.184544, 31.756350, 40.849609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610622, 32.400288, 40.721935>,  <36.513699, 31.663687, 41.026756>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.610622, 32.400288, 40.721935> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.907673, 32.168377, 40.587852>,  <37.085903, 32.029232, 40.507404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.907673, 32.168377, 40.587852>,  <36.610622, 32.400288, 40.721935>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.907673, 32.168377, 40.587852> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226398, 0.253722, -0.940409,
		0.630277, 0.774263, 0.057160,
		0.742627, -0.579777, -0.335207,
		37.130463, 31.994444, 40.487289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.949997, 32.769096, 40.220806>,  <36.610622, 32.400288, 40.721935>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.949997, 32.769096, 40.220806> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.038776, 32.386600, 40.144554>,  <37.092045, 32.157101, 40.098804>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.038776, 32.386600, 40.144554>,  <36.949997, 32.769096, 40.220806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.038776, 32.386600, 40.144554> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345711, 0.105628, -0.932377,
		0.911714, 0.272841, -0.307139,
		0.221948, -0.956243, -0.190626,
		37.105362, 32.099728, 40.087368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.034340, 33.504841, 40.306580>,  <36.949997, 32.769096, 40.220806>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.034340, 33.504841, 40.306580> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.719593, 33.731846, 40.209606>,  <36.530746, 33.868050, 40.151424>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.719593, 33.731846, 40.209606>,  <37.034340, 33.504841, 40.306580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.719593, 33.731846, 40.209606> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162896, 0.187903, 0.968585,
		0.595236, 0.801638, -0.055409,
		-0.786866, 0.567511, -0.242431,
		36.483532, 33.902100, 40.136875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.053215, 33.981747, 40.809063>,  <37.034340, 33.504841, 40.306580>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.053215, 33.981747, 40.809063> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.690678, 34.026001, 40.645939>,  <36.473156, 34.052555, 40.548065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.690678, 34.026001, 40.645939>,  <37.053215, 33.981747, 40.809063>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.690678, 34.026001, 40.645939> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357665, 0.313035, 0.879821,
		0.225001, 0.943275, -0.244144,
		-0.906339, 0.110638, -0.407810,
		36.418777, 34.059193, 40.523598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.746014, 34.638386, 41.011791>,  <37.053215, 33.981747, 40.809063>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.746014, 34.638386, 41.011791> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.437923, 34.404919, 40.908958>,  <36.253071, 34.264839, 40.847260>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.437923, 34.404919, 40.908958>,  <36.746014, 34.638386, 41.011791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.437923, 34.404919, 40.908958> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497148, 0.296962, 0.815265,
		-0.399496, 0.755745, -0.518895,
		-0.770225, -0.583663, -0.257082,
		36.206856, 34.229820, 40.831833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.161930, 35.046577, 41.173054>,  <36.746014, 34.638386, 41.011791>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.161930, 35.046577, 41.173054> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.963043, 34.701927, 41.132324>,  <35.843712, 34.495136, 41.107887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.963043, 34.701927, 41.132324>,  <36.161930, 35.046577, 41.173054>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.963043, 34.701927, 41.132324> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618104, 0.269419, 0.738486,
		-0.608869, 0.430124, -0.666537,
		-0.497218, -0.861630, -0.101821,
		35.813877, 34.443439, 41.101780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.419968, 35.144085, 41.278831>,  <36.161930, 35.046577, 41.173054>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.419968, 35.144085, 41.278831> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.437134, 34.750896, 41.350300>,  <35.447433, 34.514984, 41.393181>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.437134, 34.750896, 41.350300>,  <35.419968, 35.144085, 41.278831>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.437134, 34.750896, 41.350300> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588274, 0.119685, 0.799755,
		-0.807522, -0.139434, -0.573120,
		0.042919, -0.982972, 0.178674,
		35.450008, 34.456005, 41.403900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.778751, 34.960609, 41.539047>,  <35.419968, 35.144085, 41.278831>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.778751, 34.960609, 41.539047> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.024048, 34.673843, 41.671696>,  <35.171227, 34.501785, 41.751286>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.024048, 34.673843, 41.671696>,  <34.778751, 34.960609, 41.539047>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.024048, 34.673843, 41.671696> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542712, -0.077362, 0.836348,
		-0.573934, -0.692858, -0.436519,
		0.613240, -0.716913, 0.331622,
		35.208019, 34.458771, 41.771183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.346401, 34.528042, 42.080864>,  <34.778751, 34.960609, 41.539047>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.346401, 34.528042, 42.080864> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.714794, 34.405212, 42.176781>,  <34.935829, 34.331516, 42.234329>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.714794, 34.405212, 42.176781>,  <34.346401, 34.528042, 42.080864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.714794, 34.405212, 42.176781> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287406, -0.119946, 0.950269,
		-0.263042, -0.944097, -0.198723,
		0.920981, -0.307074, 0.239788,
		34.991089, 34.313091, 42.248718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.332272, 33.849632, 42.487320>,  <34.346401, 34.528042, 42.080864>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.332272, 33.849632, 42.487320> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.669979, 34.033424, 42.597652>,  <34.872604, 34.143700, 42.663853>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.669979, 34.033424, 42.597652>,  <34.332272, 33.849632, 42.487320>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.669979, 34.033424, 42.597652> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195190, -0.215705, 0.956751,
		0.499106, -0.861598, -0.092428,
		0.844272, 0.459479, 0.275835,
		34.923260, 34.171268, 42.680405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.623146, 33.372906, 42.887604>,  <34.332272, 33.849632, 42.487320>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.623146, 33.372906, 42.887604> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.797352, 33.720135, 42.982922>,  <34.901875, 33.928471, 43.040112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.797352, 33.720135, 42.982922>,  <34.623146, 33.372906, 42.887604>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.797352, 33.720135, 42.982922> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153815, -0.189059, 0.969844,
		0.886944, -0.459032, 0.051185,
		0.435513, 0.868070, 0.238291,
		34.928005, 33.980556, 43.054409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.833084, 33.235641, 43.645580>,  <34.623146, 33.372906, 42.887604>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.833084, 33.235641, 43.645580> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.890816, 33.629173, 43.603168>,  <34.925457, 33.865292, 43.577721>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.890816, 33.629173, 43.603168>,  <34.833084, 33.235641, 43.645580>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.890816, 33.629173, 43.603168> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090033, 0.093650, 0.991526,
		0.985425, -0.152655, -0.075061,
		0.144332, 0.983832, -0.106029,
		34.934116, 33.924324, 43.571362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.516365, 33.444126, 43.903088>,  <34.833084, 33.235641, 43.645580>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.516365, 33.444126, 43.903088> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.322212, 33.793270, 43.923176>,  <35.205719, 34.002754, 43.935230>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.322212, 33.793270, 43.923176>,  <35.516365, 33.444126, 43.903088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.322212, 33.793270, 43.923176> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289179, 0.106067, 0.951381,
		0.825093, 0.476307, -0.303895,
		-0.485383, 0.872858, 0.050222,
		35.176598, 34.055126, 43.938244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.958309, 33.967327, 44.208431>,  <35.516365, 33.444126, 43.903088>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.958309, 33.967327, 44.208431> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.590107, 34.116512, 44.255035>,  <35.369186, 34.206024, 44.282997>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.590107, 34.116512, 44.255035>,  <35.958309, 33.967327, 44.208431>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.590107, 34.116512, 44.255035> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204439, 0.205590, 0.957046,
		0.332986, 0.904784, -0.265494,
		-0.920503, 0.372960, 0.116514,
		35.313957, 34.228401, 44.289989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.142868, 34.601707, 44.703953>,  <35.958309, 33.967327, 44.208431>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.142868, 34.601707, 44.703953> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.748169, 34.536835, 44.701889>,  <35.511349, 34.497913, 44.700649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.748169, 34.536835, 44.701889>,  <36.142868, 34.601707, 44.703953>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.748169, 34.536835, 44.701889> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045758, 0.247620, 0.967776,
		-0.155674, 0.955187, -0.251760,
		-0.986748, -0.162178, -0.005160,
		35.452145, 34.488182, 44.700340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.883686, 35.177307, 45.010815>,  <36.142868, 34.601707, 44.703953>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.883686, 35.177307, 45.010815> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.604439, 34.892498, 45.040913>,  <35.436890, 34.721615, 45.058971>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.604439, 34.892498, 45.040913>,  <35.883686, 35.177307, 45.010815>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.604439, 34.892498, 45.040913> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036336, 0.069726, 0.996904,
		-0.715061, 0.698690, -0.022805,
		-0.698117, -0.712018, 0.075246,
		35.395004, 34.678894, 45.063488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<30.934216, 33.030098, 45.675449> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.314116, 33.133053, 45.746696>,  <31.542055, 33.194828, 45.789444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.314116, 33.133053, 45.746696>,  <30.934216, 33.030098, 45.675449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.314116, 33.133053, 45.746696> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116778, 0.236581, -0.964568,
		-0.290409, 0.936899, 0.194636,
		0.949750, 0.257390, 0.178114,
		31.599041, 33.210270, 45.800129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.026310, 33.640354, 45.291252>,  <30.934216, 33.030098, 45.675449>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.026310, 33.640354, 45.291252> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.390682, 33.487080, 45.352409>,  <31.609306, 33.395115, 45.389103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.390682, 33.487080, 45.352409>,  <31.026310, 33.640354, 45.291252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.390682, 33.487080, 45.352409> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205101, 0.099053, -0.973716,
		0.357966, 0.918346, 0.168821,
		0.910930, -0.383183, 0.152896,
		31.663961, 33.372124, 45.398277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.516136, 34.060257, 44.959381>,  <31.026310, 33.640354, 45.291252>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.516136, 34.060257, 44.959381> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.671495, 33.693607, 44.997204>,  <31.764711, 33.473618, 45.019897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.671495, 33.693607, 44.997204>,  <31.516136, 34.060257, 44.959381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.671495, 33.693607, 44.997204> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277026, 0.018281, -0.960688,
		0.878864, 0.399325, 0.261030,
		0.388399, -0.916627, 0.094558,
		31.788015, 33.418621, 45.025570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.014618, 34.084255, 44.544720>,  <31.516136, 34.060257, 44.959381>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.014618, 34.084255, 44.544720> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.964941, 33.690361, 44.593494>,  <31.935135, 33.454025, 44.622761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.964941, 33.690361, 44.593494>,  <32.014618, 34.084255, 44.544720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.964941, 33.690361, 44.593494> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462600, -0.166182, -0.870853,
		0.877825, -0.051745, 0.476178,
		-0.124195, -0.984737, 0.121942,
		31.927683, 33.394939, 44.630077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.590912, 33.875591, 44.270374>,  <32.014618, 34.084255, 44.544720>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.590912, 33.875591, 44.270374> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.377071, 33.537811, 44.283733>,  <32.248768, 33.335144, 44.291748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.377071, 33.537811, 44.283733>,  <32.590912, 33.875591, 44.270374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.377071, 33.537811, 44.283733> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304580, -0.229382, -0.924454,
		0.788313, -0.484038, 0.379829,
		-0.534596, -0.844447, 0.033396,
		32.216694, 33.284477, 44.293751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.035889, 33.425133, 43.941307>,  <32.590912, 33.875591, 44.270374>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.035889, 33.425133, 43.941307> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.694080, 33.220181, 43.907246>,  <32.488995, 33.097210, 43.886810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.694080, 33.220181, 43.907246>,  <33.035889, 33.425133, 43.941307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.694080, 33.220181, 43.907246> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304461, -0.361297, -0.881344,
		0.420823, -0.779055, 0.464738,
		-0.854524, -0.512384, -0.085150,
		32.437721, 33.066463, 43.881702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.154636, 32.748840, 43.529381>,  <33.035889, 33.425133, 43.941307>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.154636, 32.748840, 43.529381> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.761227, 32.814960, 43.500126>,  <32.525181, 32.854633, 43.482574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.761227, 32.814960, 43.500126>,  <33.154636, 32.748840, 43.529381>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.761227, 32.814960, 43.500126> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050905, -0.134945, -0.989545,
		-0.173447, -0.976967, 0.124307,
		-0.983527, 0.165306, -0.073138,
		32.466167, 32.864552, 43.478184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.869587, 32.120102, 43.193825>,  <33.154636, 32.748840, 43.529381>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.869587, 32.120102, 43.193825> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.642025, 32.446850, 43.155712>,  <32.505489, 32.642899, 43.132843>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.642025, 32.446850, 43.155712>,  <32.869587, 32.120102, 43.193825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.642025, 32.446850, 43.155712> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044801, -0.146468, -0.988200,
		-0.821184, -0.557921, 0.119922,
		-0.568903, 0.816867, -0.095282,
		32.471355, 32.691910, 43.127129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.455952, 31.936285, 42.745060>,  <32.869587, 32.120102, 43.193825>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.455952, 31.936285, 42.745060> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.403233, 32.330540, 42.702827>,  <32.371601, 32.567093, 42.677490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.403233, 32.330540, 42.702827>,  <32.455952, 31.936285, 42.745060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.403233, 32.330540, 42.702827> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153464, -0.125511, -0.980151,
		-0.979326, -0.112978, 0.167802,
		-0.131797, 0.985638, -0.105578,
		32.363693, 32.626232, 42.671154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.813971, 32.081692, 42.263905>,  <32.455952, 31.936285, 42.745060>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.813971, 32.081692, 42.263905> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.022610, 32.422890, 42.256550>,  <32.147793, 32.627609, 42.252136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.022610, 32.422890, 42.256550>,  <31.813971, 32.081692, 42.263905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.022610, 32.422890, 42.256550> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179799, 0.088832, -0.979684,
		-0.834032, 0.514306, 0.199702,
		0.521597, 0.852994, -0.018383,
		32.179089, 32.678787, 42.251034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.362888, 32.440563, 41.932262>,  <31.813971, 32.081692, 42.263905>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.362888, 32.440563, 41.932262> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.703890, 32.646198, 41.894432>,  <31.908491, 32.769581, 41.871735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.703890, 32.646198, 41.894432>,  <31.362888, 32.440563, 41.932262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.703890, 32.646198, 41.894432> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296503, 0.326574, -0.897460,
		-0.430489, 0.793133, 0.430836,
		0.852505, 0.514091, -0.094580,
		31.959641, 32.800426, 41.866058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.144114, 33.101391, 41.662594>,  <31.362888, 32.440563, 41.932262>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.144114, 33.101391, 41.662594> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.531492, 33.069885, 41.568012>,  <31.763920, 33.050983, 41.511265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.531492, 33.069885, 41.568012>,  <31.144114, 33.101391, 41.662594>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.531492, 33.069885, 41.568012> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218063, 0.191558, -0.956950,
		0.120666, 0.978316, 0.168338,
		0.968446, -0.078763, -0.236449,
		31.822025, 33.046257, 41.497078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.395206, 33.671356, 41.393799>,  <31.144114, 33.101391, 41.662594>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.395206, 33.671356, 41.393799> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.659664, 33.406116, 41.253407>,  <31.818338, 33.246971, 41.169170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.659664, 33.406116, 41.253407>,  <31.395206, 33.671356, 41.393799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.659664, 33.406116, 41.253407> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189788, 0.304781, -0.933322,
		0.725859, 0.683670, 0.075655,
		0.661143, -0.663101, -0.350980,
		31.858007, 33.207188, 41.148113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.712072, 33.971245, 40.921772>,  <31.395206, 33.671356, 41.393799>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.712072, 33.971245, 40.921772> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.824570, 33.597595, 40.833858>,  <31.892069, 33.373405, 40.781109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.824570, 33.597595, 40.833858>,  <31.712072, 33.971245, 40.921772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.824570, 33.597595, 40.833858> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204432, 0.165455, -0.964796,
		0.937608, 0.316274, -0.144433,
		0.281243, -0.934128, -0.219789,
		31.908943, 33.317356, 40.767921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.323040, 34.171692, 40.631981>,  <31.712072, 33.971245, 40.921772>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.323040, 34.171692, 40.631981> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.370461, 34.549984, 40.510960>,  <32.398914, 34.776958, 40.438347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.370461, 34.549984, 40.510960>,  <32.323040, 34.171692, 40.631981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.370461, 34.549984, 40.510960> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115029, 0.315731, 0.941851,
		0.986263, -0.076855, 0.146217,
		0.118551, 0.945731, -0.302553,
		32.406025, 34.833702, 40.420193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.706211, 34.517067, 41.150394>,  <32.323040, 34.171692, 40.631981>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.706211, 34.517067, 41.150394> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.535526, 34.817593, 40.949017>,  <32.433117, 34.997906, 40.828190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.535526, 34.817593, 40.949017>,  <32.706211, 34.517067, 41.150394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.535526, 34.817593, 40.949017> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118076, 0.505619, 0.854639,
		0.896649, 0.424125, -0.127040,
		-0.426708, 0.751310, -0.503442,
		32.407513, 35.042984, 40.797985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.005634, 35.007179, 41.582409>,  <32.706211, 34.517067, 41.150394>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.005634, 35.007179, 41.582409> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.686214, 35.181618, 41.416447>,  <32.494564, 35.286282, 41.316872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.686214, 35.181618, 41.416447>,  <33.005634, 35.007179, 41.582409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.686214, 35.181618, 41.416447> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095476, 0.588790, 0.802627,
		0.594311, 0.680549, -0.428540,
		-0.798547, 0.436095, -0.414901,
		32.446651, 35.312447, 41.291977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.090313, 35.651058, 41.725113>,  <33.005634, 35.007179, 41.582409>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.090313, 35.651058, 41.725113> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.695698, 35.638641, 41.660892>,  <32.458927, 35.631191, 41.622360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.695698, 35.638641, 41.660892>,  <33.090313, 35.651058, 41.725113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.695698, 35.638641, 41.660892> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149253, 0.572058, 0.806519,
		0.066802, 0.819625, -0.568992,
		-0.986540, -0.031046, -0.160547,
		32.399734, 35.629326, 41.612728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.862335, 36.363930, 41.773762>,  <33.090313, 35.651058, 41.725113>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.862335, 36.363930, 41.773762> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.572243, 36.108173, 41.875916>,  <32.398186, 35.954720, 41.937206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.572243, 36.108173, 41.875916>,  <32.862335, 36.363930, 41.773762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.572243, 36.108173, 41.875916> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079809, 0.446492, 0.891221,
		-0.683862, 0.625961, -0.374840,
		-0.725233, -0.639388, 0.255382,
		32.354671, 35.916355, 41.952530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.323746, 36.762936, 42.142998>,  <32.862335, 36.363930, 41.773762>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.323746, 36.762936, 42.142998> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.245171, 36.382439, 42.238113>,  <32.198025, 36.154140, 42.295181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.245171, 36.382439, 42.238113>,  <32.323746, 36.762936, 42.142998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.245171, 36.382439, 42.238113> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088833, 0.258781, 0.961842,
		-0.976485, 0.167815, -0.135336,
		-0.196434, -0.951247, 0.237788,
		32.186241, 36.097065, 42.309448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.842985, 36.777515, 42.787148>,  <32.323746, 36.762936, 42.142998>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.842985, 36.777515, 42.787148> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.982922, 36.403381, 42.766136>,  <32.066883, 36.178902, 42.753529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.982922, 36.403381, 42.766136>,  <31.842985, 36.777515, 42.787148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.982922, 36.403381, 42.766136> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191666, 0.016582, 0.981320,
		-0.916993, -0.353371, 0.185073,
		0.349839, -0.935336, -0.052524,
		32.087872, 36.122780, 42.750378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.650755, 36.528587, 43.382347>,  <31.842985, 36.777515, 42.787148>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.650755, 36.528587, 43.382347> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.910118, 36.234848, 43.302052>,  <32.065735, 36.058605, 43.253872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.910118, 36.234848, 43.302052>,  <31.650755, 36.528587, 43.382347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.910118, 36.234848, 43.302052> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215142, -0.076182, 0.973607,
		-0.730262, -0.674481, 0.108593,
		0.648406, -0.734351, -0.200742,
		32.104641, 36.014542, 43.241829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.460238, 36.087753, 43.904240>,  <31.650755, 36.528587, 43.382347>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.460238, 36.087753, 43.904240> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.830891, 36.003300, 43.779808>,  <32.053284, 35.952625, 43.705147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.830891, 36.003300, 43.779808>,  <31.460238, 36.087753, 43.904240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.830891, 36.003300, 43.779808> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299583, -0.085269, 0.950252,
		-0.227162, -0.973730, -0.015759,
		0.926632, -0.211140, -0.311082,
		32.108879, 35.939957, 43.686481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.711929, 35.556320, 44.326927>,  <31.460238, 36.087753, 43.904240>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.711929, 35.556320, 44.326927> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.047565, 35.716854, 44.180035>,  <32.248947, 35.813175, 44.091900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.047565, 35.716854, 44.180035>,  <31.711929, 35.556320, 44.326927>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.047565, 35.716854, 44.180035> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442956, -0.112204, 0.889495,
		0.315782, -0.909032, -0.271923,
		0.839090, 0.401336, -0.367229,
		32.299294, 35.837254, 44.069866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.246094, 35.126423, 44.508492>,  <31.711929, 35.556320, 44.326927>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.246094, 35.126423, 44.508492> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.408482, 35.489754, 44.468231>,  <32.505917, 35.707752, 44.444073>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.408482, 35.489754, 44.468231>,  <32.246094, 35.126423, 44.508492>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.408482, 35.489754, 44.468231> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472134, -0.114155, 0.874104,
		0.782481, -0.402384, -0.475195,
		0.405972, 0.908326, -0.100655,
		32.530273, 35.762253, 44.438034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.766373, 35.045750, 44.891258>,  <32.246094, 35.126423, 44.508492>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.766373, 35.045750, 44.891258> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.757511, 35.444885, 44.866520>,  <32.752193, 35.684368, 44.851677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.757511, 35.444885, 44.866520>,  <32.766373, 35.045750, 44.891258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.757511, 35.444885, 44.866520> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312014, 0.065669, 0.947805,
		0.949819, 0.001699, -0.312795,
		-0.022151, 0.997840, -0.061844,
		32.750866, 35.744236, 44.847965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.440434, 35.328381, 45.100037>,  <32.766373, 35.045750, 44.891258>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.440434, 35.328381, 45.100037> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.170666, 35.609028, 45.192024>,  <33.008804, 35.777416, 45.247219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.170666, 35.609028, 45.192024>,  <33.440434, 35.328381, 45.100037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.170666, 35.609028, 45.192024> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364168, 0.045141, 0.930239,
		0.642292, 0.711121, -0.285951,
		-0.674420, 0.701619, 0.229973,
		32.968338, 35.819515, 45.261017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.739567, 35.925755, 45.488640>,  <33.440434, 35.328381, 45.100037>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.739567, 35.925755, 45.488640> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.356827, 35.933941, 45.604584>,  <33.127182, 35.938854, 45.674149>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.356827, 35.933941, 45.604584>,  <33.739567, 35.925755, 45.488640>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.356827, 35.933941, 45.604584> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289770, -0.007093, 0.957070,
		0.021646, 0.999765, 0.000856,
		-0.956852, 0.020469, 0.289855,
		33.069771, 35.940083, 45.691540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.045929, 36.558048, 45.196980>,  <33.739567, 35.925755, 45.488640>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.045929, 36.558048, 45.196980> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.270603, 36.867599, 45.314030>,  <34.405407, 37.053329, 45.384258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.270603, 36.867599, 45.314030>,  <34.045929, 36.558048, 45.196980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.270603, 36.867599, 45.314030> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382048, 0.071114, -0.921403,
		-0.733860, 0.629333, -0.255714,
		0.561684, 0.773875, 0.292623,
		34.439110, 37.099762, 45.401817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.033684, 37.121143, 44.672779>,  <34.045929, 36.558048, 45.196980>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.033684, 37.121143, 44.672779> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.374115, 37.199867, 44.867485>,  <34.578373, 37.247101, 44.984306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.374115, 37.199867, 44.867485>,  <34.033684, 37.121143, 44.672779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.374115, 37.199867, 44.867485> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457140, 0.178247, -0.871350,
		-0.258251, 0.964104, 0.061734,
		0.851076, 0.196806, 0.486762,
		34.629436, 37.258907, 45.013515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.299007, 37.840557, 44.432796>,  <34.033684, 37.121143, 44.672779>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.299007, 37.840557, 44.432796> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.593674, 37.615551, 44.582939>,  <34.770473, 37.480545, 44.673023>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.593674, 37.615551, 44.582939>,  <34.299007, 37.840557, 44.432796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.593674, 37.615551, 44.582939> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548436, 0.172222, -0.818265,
		0.395645, 0.808648, 0.435376,
		0.736670, -0.562519, 0.375353,
		34.814674, 37.446796, 44.695545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.910572, 38.208862, 44.298302>,  <34.299007, 37.840557, 44.432796>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.910572, 38.208862, 44.298302> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.039833, 37.833874, 44.350037>,  <35.117390, 37.608883, 44.381077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.039833, 37.833874, 44.350037>,  <34.910572, 38.208862, 44.298302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.039833, 37.833874, 44.350037> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398672, 0.010911, -0.917029,
		0.858274, 0.347902, 0.377268,
		0.323152, -0.937468, 0.129334,
		35.136780, 37.552635, 44.388836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.684269, 38.075676, 43.956005>,  <34.910572, 38.208862, 44.298302>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.684269, 38.075676, 43.956005> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.540661, 37.707062, 44.015156>,  <35.454494, 37.485893, 44.050648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.540661, 37.707062, 44.015156>,  <35.684269, 38.075676, 43.956005>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.540661, 37.707062, 44.015156> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265358, -0.252690, -0.930448,
		0.894811, -0.294813, 0.335260,
		-0.359025, -0.921538, 0.147878,
		35.432953, 37.430599, 44.059521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.210804, 37.617481, 43.579697>,  <35.684269, 38.075676, 43.956005>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.210804, 37.617481, 43.579697> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.882591, 37.389935, 43.602039>,  <35.685665, 37.253407, 43.615444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.882591, 37.389935, 43.602039>,  <36.210804, 37.617481, 43.579697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.882591, 37.389935, 43.602039> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032427, -0.143888, -0.989062,
		0.570682, -0.809745, 0.136511,
		-0.820530, -0.568867, 0.055857,
		35.636433, 37.219273, 43.618797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.365772, 37.026733, 43.269894>,  <36.210804, 37.617481, 43.579697>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.365772, 37.026733, 43.269894> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.965843, 37.022053, 43.264118>,  <35.725883, 37.019245, 43.260654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.965843, 37.022053, 43.264118>,  <36.365772, 37.026733, 43.269894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.965843, 37.022053, 43.264118> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017584, -0.343634, -0.938939,
		0.006029, -0.939031, 0.343780,
		-0.999827, -0.011706, -0.014440,
		35.665894, 37.018539, 43.259785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.172729, 36.398762, 43.110439>,  <36.365772, 37.026733, 43.269894>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.172729, 36.398762, 43.110439> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.862606, 36.630703, 43.010296>,  <35.676533, 36.769867, 42.950211>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.862606, 36.630703, 43.010296>,  <36.172729, 36.398762, 43.110439>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.862606, 36.630703, 43.010296> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071519, -0.313240, -0.946977,
		-0.627526, -0.752100, 0.201386,
		-0.775304, 0.579850, -0.250355,
		35.630016, 36.804657, 42.935188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.791527, 36.043610, 42.630962>,  <36.172729, 36.398762, 43.110439>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.791527, 36.043610, 42.630962> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.720886, 36.433132, 42.573681>,  <35.678501, 36.666847, 42.539310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.720886, 36.433132, 42.573681>,  <35.791527, 36.043610, 42.630962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.720886, 36.433132, 42.573681> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014845, -0.148112, -0.988859,
		-0.984171, -0.172507, 0.040613,
		-0.176601, 0.973809, -0.143207,
		35.667908, 36.725273, 42.530720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.238907, 35.923111, 42.027134>,  <35.791527, 36.043610, 42.630962>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.238907, 35.923111, 42.027134> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.394291, 36.291409, 42.041752>,  <35.487522, 36.512386, 42.050522>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.394291, 36.291409, 42.041752>,  <35.238907, 35.923111, 42.027134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.394291, 36.291409, 42.041752> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149026, 0.101907, -0.983568,
		-0.909336, 0.376630, 0.176801,
		0.388458, 0.920741, 0.036540,
		35.510830, 36.567631, 42.052715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.725143, 36.330551, 41.604961>,  <35.238907, 35.923111, 42.027134>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.725143, 36.330551, 41.604961> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.080799, 36.513603, 41.606434>,  <35.294193, 36.623432, 41.607319>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.080799, 36.513603, 41.606434>,  <34.725143, 36.330551, 41.604961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.080799, 36.513603, 41.606434> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019208, 0.045363, -0.998786,
		-0.457238, 0.887986, 0.049124,
		0.889137, 0.457627, 0.003685,
		35.347542, 36.650890, 41.607540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.659523, 36.810375, 41.120358>,  <34.725143, 36.330551, 41.604961>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.659523, 36.810375, 41.120358> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.056931, 36.807789, 41.165752>,  <35.295376, 36.806236, 41.192989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.056931, 36.807789, 41.165752>,  <34.659523, 36.810375, 41.120358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.056931, 36.807789, 41.165752> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113648, 0.074477, -0.990726,
		-0.002050, 0.997202, 0.074729,
		0.993519, -0.006462, 0.113483,
		35.354988, 36.805851, 41.199799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.856285, 37.132877, 40.493195>,  <34.659523, 36.810375, 41.120358>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.856285, 37.132877, 40.493195> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.206749, 37.003231, 40.635910>,  <35.417027, 36.925442, 40.721539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.206749, 37.003231, 40.635910>,  <34.856285, 37.132877, 40.493195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.206749, 37.003231, 40.635910> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379932, 0.008819, -0.924973,
		0.296655, 0.945975, 0.130870,
		0.876155, -0.324119, 0.356790,
		35.469597, 36.905994, 40.742947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.410034, 37.655495, 40.295647>,  <34.856285, 37.132877, 40.493195>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.410034, 37.655495, 40.295647> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.534378, 37.280136, 40.356014>,  <35.608986, 37.054920, 40.392235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.534378, 37.280136, 40.356014>,  <35.410034, 37.655495, 40.295647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.534378, 37.280136, 40.356014> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418753, -0.007324, -0.908071,
		0.853236, 0.345481, 0.390680,
		0.310860, -0.938397, 0.150920,
		35.627636, 36.998615, 40.401291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.467171, 30.784184, 28.430122> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.469765, 31.128159, 28.225979>,  <29.471321, 31.334543, 28.103493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.469765, 31.128159, 28.225979>,  <29.467171, 30.784184, 28.430122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.469765, 31.128159, 28.225979> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644713, 0.393727, 0.655227,
		0.764397, 0.324785, 0.556967,
		0.006485, 0.859938, -0.510357,
		29.471710, 31.386141, 28.072872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.755775, 31.356762, 28.903296>,  <29.467171, 30.784184, 28.430122>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.755775, 31.356762, 28.903296> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.546724, 31.571692, 28.638525>,  <29.421293, 31.700649, 28.479664>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.546724, 31.571692, 28.638525>,  <29.755775, 31.356762, 28.903296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.546724, 31.571692, 28.638525> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319092, 0.596686, 0.736306,
		0.790595, 0.596030, -0.140389,
		-0.522628, 0.537322, -0.661925,
		29.389936, 31.732887, 28.439947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.809450, 32.065456, 29.076242>,  <29.755775, 31.356762, 28.903296>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.809450, 32.065456, 29.076242> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.494574, 32.070007, 28.829601>,  <29.305647, 32.072739, 28.681616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.494574, 32.070007, 28.829601>,  <29.809450, 32.065456, 29.076242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.494574, 32.070007, 28.829601> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448794, 0.675184, 0.585414,
		0.422981, 0.737561, -0.526394,
		-0.787192, 0.011376, -0.616603,
		29.258415, 32.073421, 28.644621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.828510, 32.696079, 28.754042>,  <29.809450, 32.065456, 29.076242>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.828510, 32.696079, 28.754042> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.448278, 32.575241, 28.725367>,  <29.220139, 32.502739, 28.708162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.448278, 32.575241, 28.725367>,  <29.828510, 32.696079, 28.754042>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.448278, 32.575241, 28.725367> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302961, 0.851993, 0.426993,
		-0.067915, 0.427609, -0.901409,
		-0.950580, -0.302091, -0.071685,
		29.163105, 32.484615, 28.703861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.450615, 33.373192, 28.703970>,  <29.828510, 32.696079, 28.754042>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.450615, 33.373192, 28.703970> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.200272, 33.080791, 28.812735>,  <29.050066, 32.905350, 28.877993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.200272, 33.080791, 28.812735>,  <29.450615, 33.373192, 28.703970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.200272, 33.080791, 28.812735> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324008, 0.560811, 0.761912,
		-0.709452, 0.388746, -0.587838,
		-0.625856, -0.731005, 0.271911,
		29.012514, 32.861488, 28.894308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.923557, 33.692600, 29.083998>,  <29.450615, 33.373192, 28.703970>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.923557, 33.692600, 29.083998> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.802221, 33.319530, 29.162079>,  <28.729420, 33.095688, 29.208927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.802221, 33.319530, 29.162079>,  <28.923557, 33.692600, 29.083998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.802221, 33.319530, 29.162079> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496195, 0.329497, 0.803257,
		-0.813496, 0.146802, -0.562738,
		-0.303341, -0.932674, 0.195202,
		28.711220, 33.039730, 29.220640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.183924, 33.654541, 28.976892>,  <28.923557, 33.692600, 29.083998>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.183924, 33.654541, 28.976892> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.283875, 33.371990, 29.241798>,  <28.343845, 33.202461, 29.400742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.283875, 33.371990, 29.241798>,  <28.183924, 33.654541, 28.976892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.283875, 33.371990, 29.241798> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522091, 0.477727, 0.706539,
		-0.815464, -0.522310, -0.249420,
		0.249878, -0.706377, 0.662263,
		28.358837, 33.160076, 29.440477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.525555, 33.382675, 29.326626>,  <28.183924, 33.654541, 28.976892>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.525555, 33.382675, 29.326626> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.845043, 33.325470, 29.560410>,  <28.036736, 33.291149, 29.700680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.845043, 33.325470, 29.560410>,  <27.525555, 33.382675, 29.326626>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.845043, 33.325470, 29.560410> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507507, 0.361688, 0.782060,
		-0.323235, -0.921265, 0.216309,
		0.798721, -0.143011, 0.584459,
		28.084660, 33.282566, 29.735746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.215937, 33.310982, 29.906477>,  <27.525555, 33.382675, 29.326626>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.215937, 33.310982, 29.906477> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.595028, 33.360481, 30.024117>,  <27.822483, 33.390182, 30.094700>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.595028, 33.360481, 30.024117>,  <27.215937, 33.310982, 29.906477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.595028, 33.360481, 30.024117> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317360, 0.270216, 0.908992,
		0.033020, -0.954814, 0.295365,
		0.947730, 0.123752, 0.294097,
		27.879347, 33.397606, 30.112345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.374107, 32.895699, 30.431961>,  <27.215937, 33.310982, 29.906477>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.374107, 32.895699, 30.431961> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.624062, 33.206009, 30.467030>,  <27.774035, 33.392197, 30.488071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.624062, 33.206009, 30.467030>,  <27.374107, 32.895699, 30.431961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.624062, 33.206009, 30.467030> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556110, 0.363479, 0.747412,
		0.547958, -0.515803, 0.658551,
		0.624887, 0.775777, 0.087671,
		27.811527, 33.438744, 30.493332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.667574, 32.900948, 31.171501>,  <27.374107, 32.895699, 30.431961>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.667574, 32.900948, 31.171501> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.775694, 33.266701, 31.050947>,  <27.840567, 33.486153, 30.978615>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.775694, 33.266701, 31.050947>,  <27.667574, 32.900948, 31.171501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.775694, 33.266701, 31.050947> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253896, 0.369656, 0.893807,
		0.928695, -0.165075, 0.332077,
		0.270299, 0.914388, -0.301386,
		27.856783, 33.541016, 30.960531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.118319, 33.128662, 31.668121>,  <27.667574, 32.900948, 31.171501>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.118319, 33.128662, 31.668121> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.999870, 33.465534, 31.487881>,  <27.928801, 33.667656, 31.379736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.999870, 33.465534, 31.487881>,  <28.118319, 33.128662, 31.668121>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.999870, 33.465534, 31.487881> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095083, 0.443426, 0.891253,
		0.950406, 0.306763, -0.051230,
		-0.296121, 0.842181, -0.450603,
		27.911034, 33.718189, 31.352699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.383419, 33.637360, 32.035606>,  <28.118319, 33.128662, 31.668121>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.383419, 33.637360, 32.035606> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.064211, 33.802010, 31.859547>,  <27.872686, 33.900799, 31.753912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.064211, 33.802010, 31.859547>,  <28.383419, 33.637360, 32.035606>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.064211, 33.802010, 31.859547> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301919, 0.359010, 0.883152,
		0.521545, 0.837661, -0.162219,
		-0.798020, 0.411626, -0.440145,
		27.824804, 33.925499, 31.727503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.305876, 34.248535, 32.430550>,  <28.383419, 33.637360, 32.035606>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.305876, 34.248535, 32.430550> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.962448, 34.218342, 32.227703>,  <27.756392, 34.200226, 32.105995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.962448, 34.218342, 32.227703>,  <28.305876, 34.248535, 32.430550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.962448, 34.218342, 32.227703> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484304, 0.444021, 0.753854,
		0.168263, 0.892831, -0.417781,
		-0.858567, -0.075487, -0.507113,
		27.704878, 34.195694, 32.075569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.978666, 34.881496, 32.558411>,  <28.305876, 34.248535, 32.430550>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.978666, 34.881496, 32.558411> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.697371, 34.636196, 32.414536>,  <27.528593, 34.489017, 32.328209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.697371, 34.636196, 32.414536>,  <27.978666, 34.881496, 32.558411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.697371, 34.636196, 32.414536> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630931, 0.305135, 0.713315,
		-0.327686, 0.728572, -0.601501,
		-0.703241, -0.613250, -0.359691,
		27.486399, 34.452221, 32.306629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.364666, 35.275768, 32.462833>,  <27.978666, 34.881496, 32.558411>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.364666, 35.275768, 32.462833> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.261110, 34.893944, 32.521885>,  <27.198977, 34.664848, 32.557316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.261110, 34.893944, 32.521885>,  <27.364666, 35.275768, 32.462833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.261110, 34.893944, 32.521885> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654718, 0.285791, 0.699763,
		-0.710155, 0.084507, -0.698955,
		-0.258890, -0.954559, 0.147627,
		27.183443, 34.607574, 32.566174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.605896, 35.342205, 32.553928>,  <27.364666, 35.275768, 32.462833>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.605896, 35.342205, 32.553928> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.694635, 34.979336, 32.696934>,  <26.747879, 34.761616, 32.782738>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.694635, 34.979336, 32.696934>,  <26.605896, 35.342205, 32.553928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.694635, 34.979336, 32.696934> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696058, 0.109430, 0.709598,
		-0.682852, -0.406275, -0.607169,
		0.221849, -0.907175, 0.357515,
		26.761190, 34.707184, 32.804188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.991554, 35.064484, 32.558079>,  <26.605896, 35.342205, 32.553928>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.991554, 35.064484, 32.558079> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.192860, 34.818783, 32.801197>,  <26.313643, 34.671360, 32.947067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.192860, 34.818783, 32.801197>,  <25.991554, 35.064484, 32.558079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.192860, 34.818783, 32.801197> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742490, 0.052454, 0.667800,
		-0.442082, -0.787362, -0.429680,
		0.503262, -0.614255, 0.607797,
		26.343838, 34.634506, 32.983536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.531706, 34.576740, 32.866405>,  <25.991554, 35.064484, 32.558079>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.531706, 34.576740, 32.866405> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.831837, 34.560211, 33.130314>,  <26.011915, 34.550293, 33.288658>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.831837, 34.560211, 33.130314>,  <25.531706, 34.576740, 32.866405>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.831837, 34.560211, 33.130314> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659976, -0.104128, 0.744035,
		0.037952, -0.993705, -0.105404,
		0.750327, -0.041327, 0.659774,
		26.056934, 34.547813, 33.328247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.452389, 33.944126, 33.298283>,  <25.531706, 34.576740, 32.866405>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.452389, 33.944126, 33.298283> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.667883, 34.206036, 33.510334>,  <25.797180, 34.363182, 33.637566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.667883, 34.206036, 33.510334>,  <25.452389, 33.944126, 33.298283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.667883, 34.206036, 33.510334> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658602, -0.065075, 0.749673,
		0.525366, -0.753016, 0.396178,
		0.538734, 0.654776, 0.530126,
		25.829504, 34.402470, 33.669373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.452463, 33.625298, 33.950691>,  <25.452389, 33.944126, 33.298283>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.452463, 33.625298, 33.950691> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.548250, 34.011173, 33.994576>,  <25.605722, 34.242699, 34.020905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.548250, 34.011173, 33.994576>,  <25.452463, 33.625298, 33.950691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.548250, 34.011173, 33.994576> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596271, 0.056950, 0.800761,
		0.766235, -0.257173, 0.588852,
		0.239469, 0.964686, 0.109707,
		25.620090, 34.300579, 34.027489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.858217, 33.068962, 34.231045>,  <25.452463, 33.625298, 33.950691>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.858217, 33.068962, 34.231045> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.940811, 32.738567, 34.440845>,  <25.990368, 32.540329, 34.566727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.940811, 32.738567, 34.440845>,  <25.858217, 33.068962, 34.231045>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.940811, 32.738567, 34.440845> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702120, -0.248267, -0.667376,
		0.681463, 0.506069, 0.528680,
		0.206484, -0.825989, 0.524506,
		26.002756, 32.490772, 34.598198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.538263, 33.039242, 34.238823>,  <25.858217, 33.068962, 34.231045>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.538263, 33.039242, 34.238823> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.407578, 32.663879, 34.283817>,  <26.329166, 32.438663, 34.310814>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.407578, 32.663879, 34.283817>,  <26.538263, 33.039242, 34.238823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.407578, 32.663879, 34.283817> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667830, -0.313432, -0.675102,
		0.668776, -0.145445, 0.729098,
		-0.326713, -0.938406, 0.112483,
		26.309565, 32.382359, 34.317562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.173565, 32.665703, 34.364124>,  <26.538263, 33.039242, 34.238823>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.173565, 32.665703, 34.364124> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.907776, 32.392700, 34.242359>,  <26.748302, 32.228901, 34.169300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.907776, 32.392700, 34.242359>,  <27.173565, 32.665703, 34.364124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.907776, 32.392700, 34.242359> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721814, -0.480645, -0.497961,
		0.193548, -0.550608, 0.812016,
		-0.664473, -0.682504, -0.304408,
		26.708433, 32.187950, 34.151035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.509995, 31.951153, 34.395458>,  <27.173565, 32.665703, 34.364124>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.509995, 31.951153, 34.395458> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.193825, 31.885469, 34.159401>,  <27.004124, 31.846060, 34.017765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.193825, 31.885469, 34.159401>,  <27.509995, 31.951153, 34.395458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.193825, 31.885469, 34.159401> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579142, -0.514193, -0.632613,
		-0.199567, -0.841808, 0.501529,
		-0.790422, -0.164208, -0.590143,
		26.956697, 31.836206, 33.982357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.582409, 31.237690, 34.202087>,  <27.509995, 31.951153, 34.395458>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.582409, 31.237690, 34.202087> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.334616, 31.390230, 33.927624>,  <27.185940, 31.481754, 33.762947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.334616, 31.390230, 33.927624>,  <27.582409, 31.237690, 34.202087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.334616, 31.390230, 33.927624> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531089, -0.440079, -0.724069,
		-0.578089, -0.812958, 0.070090,
		-0.619482, 0.381352, -0.686158,
		27.148771, 31.504637, 33.721775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.349199, 30.646477, 33.745750>,  <27.582409, 31.237690, 34.202087>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.349199, 30.646477, 33.745750> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.312441, 30.989672, 33.543598>,  <27.290386, 31.195589, 33.422306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.312441, 30.989672, 33.543598>,  <27.349199, 30.646477, 33.745750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.312441, 30.989672, 33.543598> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554752, -0.377360, -0.741519,
		-0.826925, -0.348503, -0.441293,
		-0.091895, 0.857989, -0.505381,
		27.284872, 31.247068, 33.391983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.339561, 30.412165, 32.981205>,  <27.349199, 30.646477, 33.745750>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.339561, 30.412165, 32.981205> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.411299, 30.805672, 32.983612>,  <27.454340, 31.041777, 32.985058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.411299, 30.805672, 32.983612>,  <27.339561, 30.412165, 32.981205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.411299, 30.805672, 32.983612> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664382, -0.116602, -0.738241,
		-0.725557, 0.136395, -0.674510,
		0.179341, 0.983769, 0.006017,
		27.465101, 31.100801, 32.985416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.256578, 30.623938, 32.296490>,  <27.339561, 30.412165, 32.981205>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.256578, 30.623938, 32.296490> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.499096, 30.899162, 32.455978>,  <27.644606, 31.064297, 32.551674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.499096, 30.899162, 32.455978>,  <27.256578, 30.623938, 32.296490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.499096, 30.899162, 32.455978> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615533, -0.088574, -0.783118,
		-0.503517, 0.720226, -0.477226,
		0.606292, 0.688062, 0.398724,
		27.680983, 31.105581, 32.575596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.191299, 31.232353, 31.836601>,  <27.256578, 30.623938, 32.296490>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.191299, 31.232353, 31.836601> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.531664, 31.212160, 32.045753>,  <27.735882, 31.200045, 32.171246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.531664, 31.212160, 32.045753>,  <27.191299, 31.232353, 31.836601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.531664, 31.212160, 32.045753> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522733, -0.017136, -0.852324,
		0.051988, 0.998578, 0.011808,
		0.850910, -0.050483, 0.522881,
		27.786938, 31.197016, 32.202618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.619286, 31.551500, 31.389786>,  <27.191299, 31.232353, 31.836601>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.619286, 31.551500, 31.389786> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.877436, 31.392979, 31.650991>,  <28.032326, 31.297865, 31.807714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.877436, 31.392979, 31.650991>,  <27.619286, 31.551500, 31.389786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.877436, 31.392979, 31.650991> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716744, 0.018570, -0.697089,
		0.264134, 0.917931, 0.296034,
		0.645377, -0.396306, 0.653016,
		28.071049, 31.274088, 31.846897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.274351, 32.027271, 31.521828>,  <27.619286, 31.551500, 31.389786>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.274351, 32.027271, 31.521828> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.375652, 31.647291, 31.594982>,  <28.436434, 31.419302, 31.638876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.375652, 31.647291, 31.594982>,  <28.274351, 32.027271, 31.521828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.375652, 31.647291, 31.594982> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726291, 0.061826, -0.684602,
		0.639033, 0.306209, 0.705601,
		0.253255, -0.949955, 0.182888,
		28.451630, 31.362305, 31.649849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.896446, 31.946650, 31.091991>,  <28.274351, 32.027271, 31.521828>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.896446, 31.946650, 31.091991> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.850517, 31.577902, 31.240030>,  <28.822960, 31.356653, 31.328854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.850517, 31.577902, 31.240030>,  <28.896446, 31.946650, 31.091991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.850517, 31.577902, 31.240030> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786621, -0.311900, -0.532866,
		0.606666, 0.229941, 0.760975,
		-0.114821, -0.921871, 0.370095,
		28.816071, 31.301340, 31.351059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.531029, 31.747725, 31.360855>,  <28.896446, 31.946650, 31.091991>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.531029, 31.747725, 31.360855> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.330553, 31.419939, 31.249649>,  <29.210268, 31.223269, 31.182924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.330553, 31.419939, 31.249649>,  <29.531029, 31.747725, 31.360855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.330553, 31.419939, 31.249649> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786913, -0.297952, -0.540364,
		0.359972, -0.489599, 0.794174,
		-0.501188, -0.819462, -0.278017,
		29.180197, 31.174101, 31.166245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.077589, 31.244864, 31.342628>,  <29.531029, 31.747725, 31.360855>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.077589, 31.244864, 31.342628> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.775156, 31.071299, 31.146645>,  <29.593697, 30.967159, 31.029055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.775156, 31.071299, 31.146645>,  <30.077589, 31.244864, 31.342628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.775156, 31.071299, 31.146645> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648513, -0.395881, -0.650160,
		0.088145, -0.809321, 0.580716,
		-0.756083, -0.433910, -0.489960,
		29.548330, 30.941126, 30.999657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.309963, 30.645674, 31.166609>,  <30.077589, 31.244864, 31.342628>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.309963, 30.645674, 31.166609> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.009773, 30.684278, 30.905085>,  <29.829659, 30.707441, 30.748169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.009773, 30.684278, 30.905085>,  <30.309963, 30.645674, 31.166609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.009773, 30.684278, 30.905085> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583736, -0.367079, -0.724227,
		-0.309895, -0.925170, 0.219149,
		-0.750478, 0.096509, -0.653811,
		29.784630, 30.713232, 30.708941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.315632, 30.034117, 30.779816>,  <30.309963, 30.645674, 31.166609>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.315632, 30.034117, 30.779816> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.109097, 30.276184, 30.537439>,  <29.985176, 30.421425, 30.392014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.109097, 30.276184, 30.537439>,  <30.315632, 30.034117, 30.779816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.109097, 30.276184, 30.537439> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634107, -0.205394, -0.745467,
		-0.575590, -0.769145, -0.277689,
		-0.516337, 0.605168, -0.605943,
		29.954195, 30.457735, 30.355656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.075884, 29.675732, 30.137419>,  <30.315632, 30.034117, 30.779816>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.075884, 29.675732, 30.137419> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.066881, 30.057196, 30.017399>,  <30.061480, 30.286074, 29.945387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.066881, 30.057196, 30.017399>,  <30.075884, 29.675732, 30.137419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.066881, 30.057196, 30.017399> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524545, -0.244232, -0.815600,
		-0.851085, -0.175743, -0.494740,
		-0.022504, 0.953659, -0.300048,
		30.060129, 30.343294, 29.927385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.846075, 29.699083, 29.403410>,  <30.075884, 29.675732, 30.137419>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.846075, 29.699083, 29.403410> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.033884, 30.042759, 29.484739>,  <30.146570, 30.248964, 29.533537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.033884, 30.042759, 29.484739>,  <29.846075, 29.699083, 29.403410>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.033884, 30.042759, 29.484739> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543303, -0.099633, -0.833604,
		-0.695967, 0.501861, -0.513581,
		0.469523, 0.859191, 0.203322,
		30.174742, 30.300516, 29.545736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.820799, 30.042015, 28.821373>,  <29.846075, 29.699083, 29.403410>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.820799, 30.042015, 28.821373> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.128426, 30.197893, 29.024027>,  <30.313002, 30.291420, 29.145618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.128426, 30.197893, 29.024027>,  <29.820799, 30.042015, 28.821373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.128426, 30.197893, 29.024027> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606065, -0.192816, -0.771691,
		-0.203036, 0.900534, -0.384468,
		0.769065, 0.389694, 0.506633,
		30.359146, 30.314802, 29.176018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.152998, 30.328522, 28.266502>,  <29.820799, 30.042015, 28.821373>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.152998, 30.328522, 28.266502> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.416695, 30.337729, 28.567135>,  <30.574913, 30.343252, 28.747515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.416695, 30.337729, 28.567135>,  <30.152998, 30.328522, 28.266502>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.416695, 30.337729, 28.567135> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750953, 0.030862, -0.659634,
		-0.038377, 0.999259, 0.003063,
		0.659240, 0.023015, 0.751580,
		30.614466, 30.344633, 28.792608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.713570, 30.811945, 28.076094>,  <30.152998, 30.328522, 28.266502>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.713570, 30.811945, 28.076094> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.864346, 30.557640, 28.345528>,  <30.954811, 30.405056, 28.507189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.864346, 30.557640, 28.345528>,  <30.713570, 30.811945, 28.076094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.864346, 30.557640, 28.345528> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842632, -0.066559, -0.534361,
		0.384560, 0.769009, 0.510626,
		0.376942, -0.635764, 0.673587,
		30.977428, 30.366911, 28.547604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<35.171738, 35.453758, 45.204769> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.174149, 35.071598, 45.322872>,  <35.175594, 34.842300, 45.393734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.174149, 35.071598, 45.322872>,  <35.171738, 35.453758, 45.204769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.174149, 35.071598, 45.322872> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000040, 0.295262, 0.955416,
		-0.999982, -0.005743, 0.001817,
		0.006023, -0.955399, 0.295256,
		35.175957, 34.784977, 45.411449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.617065, 35.396370, 45.694420>,  <35.171738, 35.453758, 45.204769>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.617065, 35.396370, 45.694420> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.867195, 35.098526, 45.787823>,  <35.017273, 34.919819, 45.843864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.867195, 35.098526, 45.787823>,  <34.617065, 35.396370, 45.694420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.867195, 35.098526, 45.787823> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160044, 0.170493, 0.972275,
		-0.763778, -0.645357, -0.012558,
		0.625323, -0.744612, 0.233505,
		35.054790, 34.875141, 45.857876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.317959, 34.993656, 46.218742>,  <34.617065, 35.396370, 45.694420>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.317959, 34.993656, 46.218742> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.706539, 34.898861, 46.223228>,  <34.939686, 34.841984, 46.225922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.706539, 34.898861, 46.223228>,  <34.317959, 34.993656, 46.218742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.706539, 34.898861, 46.223228> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002538, 0.057649, 0.998334,
		-0.237236, -0.969802, 0.056604,
		0.971449, -0.236984, 0.011215,
		34.997974, 34.827766, 46.226593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.327244, 34.463921, 46.766579>,  <34.317959, 34.993656, 46.218742>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.327244, 34.463921, 46.766579> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.701431, 34.589478, 46.701618>,  <34.925941, 34.664814, 46.662640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.701431, 34.589478, 46.701618>,  <34.327244, 34.463921, 46.766579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.701431, 34.589478, 46.701618> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185185, -0.043959, 0.981720,
		0.301018, -0.948439, -0.099251,
		0.935465, 0.313895, -0.162404,
		34.982071, 34.683647, 46.652897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.752041, 34.061443, 47.235588>,  <34.327244, 34.463921, 46.766579>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.752041, 34.061443, 47.235588> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.008179, 34.359074, 47.159374>,  <35.161861, 34.537651, 47.113647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.008179, 34.359074, 47.159374>,  <34.752041, 34.061443, 47.235588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.008179, 34.359074, 47.159374> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394551, -0.105818, 0.912761,
		0.659006, -0.659657, -0.361337,
		0.640345, 0.744081, -0.190533,
		35.200283, 34.582298, 47.102215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.313721, 33.844803, 47.600662>,  <34.752041, 34.061443, 47.235588>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.313721, 33.844803, 47.600662> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.361919, 34.233692, 47.520405>,  <35.390839, 34.467026, 47.472252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.361919, 34.233692, 47.520405>,  <35.313721, 33.844803, 47.600662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.361919, 34.233692, 47.520405> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502154, 0.114655, 0.857144,
		0.856342, -0.204036, -0.474392,
		0.120497, 0.972226, -0.200642,
		35.398067, 34.525360, 47.460213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.013271, 34.028282, 47.864796>,  <35.313721, 33.844803, 47.600662>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.013271, 34.028282, 47.864796> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.808208, 34.371422, 47.850460>,  <35.685173, 34.577305, 47.841858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.808208, 34.371422, 47.850460>,  <36.013271, 34.028282, 47.864796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.808208, 34.371422, 47.850460> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443669, 0.300417, 0.844338,
		0.735081, 0.416950, -0.534611,
		-0.512653, 0.857847, -0.035843,
		35.654411, 34.628777, 47.839706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.545338, 34.537510, 47.965504>,  <36.013271, 34.028282, 47.864796>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.545338, 34.537510, 47.965504> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.199360, 34.716164, 48.057056>,  <35.991772, 34.823357, 48.111988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.199360, 34.716164, 48.057056>,  <36.545338, 34.537510, 47.965504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.199360, 34.716164, 48.057056> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422322, 0.401376, 0.812737,
		0.271126, 0.799637, -0.535791,
		-0.864948, 0.446630, 0.228880,
		35.939877, 34.850151, 48.125721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.720825, 35.318844, 48.181004>,  <36.545338, 34.537510, 47.965504>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.720825, 35.318844, 48.181004> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.369045, 35.229034, 48.348888>,  <36.157978, 35.175148, 48.449619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.369045, 35.229034, 48.348888>,  <36.720825, 35.318844, 48.181004>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.369045, 35.229034, 48.348888> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304488, 0.412380, 0.858621,
		-0.365863, 0.882910, -0.294302,
		-0.879449, -0.224527, 0.419710,
		36.105209, 35.161678, 48.474800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.566551, 35.881527, 48.485870>,  <36.720825, 35.318844, 48.181004>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.566551, 35.881527, 48.485870> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.309338, 35.620163, 48.645653>,  <36.155010, 35.463345, 48.741524>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.309338, 35.620163, 48.645653>,  <36.566551, 35.881527, 48.485870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.309338, 35.620163, 48.645653> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194730, 0.364953, 0.910434,
		-0.740666, 0.663228, -0.107440,
		-0.643035, -0.653405, 0.399459,
		36.116428, 35.424141, 48.765491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.127052, 36.233944, 48.759495>,  <36.566551, 35.881527, 48.485870>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.127052, 36.233944, 48.759495> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.132996, 35.888405, 48.960911>,  <36.136562, 35.681080, 49.081760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.132996, 35.888405, 48.960911>,  <36.127052, 36.233944, 48.759495>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.132996, 35.888405, 48.960911> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302317, 0.483902, 0.821245,
		-0.953091, 0.140028, 0.268344,
		0.014855, -0.863846, 0.503536,
		36.137451, 35.629250, 49.111973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.024307, 36.372139, 49.448624>,  <36.127052, 36.233944, 48.759495>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.024307, 36.372139, 49.448624> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.170555, 36.001381, 49.482536>,  <36.258305, 35.778927, 49.502884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.170555, 36.001381, 49.482536>,  <36.024307, 36.372139, 49.448624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.170555, 36.001381, 49.482536> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507564, 0.274904, 0.816583,
		-0.780194, -0.255523, 0.570968,
		0.365617, -0.926896, 0.084785,
		36.280239, 35.723312, 49.507973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.175709, 36.449284, 50.149090>,  <36.024307, 36.372139, 49.448624>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.175709, 36.449284, 50.149090> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.381386, 36.117542, 50.061653>,  <36.504791, 35.918499, 50.009193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.381386, 36.117542, 50.061653>,  <36.175709, 36.449284, 50.149090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.381386, 36.117542, 50.061653> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447827, 0.042255, 0.893121,
		-0.731474, -0.557129, 0.393133,
		0.514196, -0.829350, -0.218589,
		36.535645, 35.868736, 49.996075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.705959, 36.581169, 50.887653>,  <36.175709, 36.449284, 50.149090>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.705959, 36.581169, 50.887653> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.668682, 36.182949, 50.893177>,  <35.646317, 35.944016, 50.896492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.668682, 36.182949, 50.893177>,  <35.705959, 36.581169, 50.887653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.668682, 36.182949, 50.893177> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.980171, 0.089297, -0.176895,
		0.174876, -0.030017, -0.984133,
		-0.093189, -0.995553, 0.013806,
		35.640724, 35.884285, 50.897320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.247749, 37.109764, 51.106300>,  <35.705959, 36.581169, 50.887653>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.247749, 37.109764, 51.106300> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.887085, 37.279346, 51.072193>,  <34.670685, 37.381096, 51.051727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.887085, 37.279346, 51.072193>,  <35.247749, 37.109764, 51.106300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.887085, 37.279346, 51.072193> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018471, -0.234753, -0.971879,
		-0.432052, -0.874729, 0.219498,
		-0.901659, 0.423957, -0.085268,
		34.616589, 37.406532, 51.046612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.038074, 36.706493, 50.618809>,  <35.247749, 37.109764, 51.106300>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.038074, 36.706493, 50.618809> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.795948, 37.022648, 50.656517>,  <34.650673, 37.212341, 50.679142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.795948, 37.022648, 50.656517>,  <35.038074, 36.706493, 50.618809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.795948, 37.022648, 50.656517> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104399, 0.038572, -0.993787,
		-0.789112, -0.611393, 0.059167,
		-0.605312, 0.790386, 0.094266,
		34.614353, 37.259766, 50.684795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.375950, 36.584541, 50.234276>,  <35.038074, 36.706493, 50.618809>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.375950, 36.584541, 50.234276> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.477417, 36.970367, 50.263302>,  <34.538300, 37.201862, 50.280716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.477417, 36.970367, 50.263302>,  <34.375950, 36.584541, 50.234276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.477417, 36.970367, 50.263302> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022229, 0.080811, -0.996482,
		-0.967035, 0.251167, 0.041941,
		0.253672, 0.964565, 0.072564,
		34.553520, 37.259735, 50.285072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.052067, 36.690849, 49.642853>,  <34.375950, 36.584541, 50.234276>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.052067, 36.690849, 49.642853> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.279442, 37.002834, 49.747566>,  <34.415867, 37.190025, 49.810394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.279442, 37.002834, 49.747566>,  <34.052067, 36.690849, 49.642853>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.279442, 37.002834, 49.747566> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009854, 0.311713, -0.950125,
		-0.822665, 0.542670, 0.169505,
		0.568442, 0.779964, 0.261783,
		34.449974, 37.236824, 49.826099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.596710, 37.260307, 49.536987>,  <34.052067, 36.690849, 49.642853>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.596710, 37.260307, 49.536987> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.986671, 37.343491, 49.505207>,  <34.220650, 37.393402, 49.486137>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.986671, 37.343491, 49.505207>,  <33.596710, 37.260307, 49.536987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.986671, 37.343491, 49.505207> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129092, 0.237324, -0.962815,
		-0.181371, 0.948910, 0.258215,
		0.974905, 0.207960, -0.079453,
		34.279144, 37.405880, 49.481373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.536346, 37.719635, 48.967262>,  <33.596710, 37.260307, 49.536987>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.536346, 37.719635, 48.967262> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.905903, 37.581486, 49.033161>,  <34.127636, 37.498596, 49.072701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.905903, 37.581486, 49.033161>,  <33.536346, 37.719635, 48.967262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.905903, 37.581486, 49.033161> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222374, 0.134231, -0.965677,
		0.311408, 0.928815, 0.200818,
		0.923891, -0.345377, 0.164744,
		34.183071, 37.477871, 49.082584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.850906, 38.212772, 48.504051>,  <33.536346, 37.719635, 48.967262>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.850906, 38.212772, 48.504051> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.113201, 37.926327, 48.599709>,  <34.270576, 37.754459, 48.657101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.113201, 37.926327, 48.599709>,  <33.850906, 38.212772, 48.504051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.113201, 37.926327, 48.599709> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154321, -0.182924, -0.970940,
		0.739052, 0.673583, -0.009437,
		0.655735, -0.716118, 0.239139,
		34.309921, 37.711491, 48.671452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.460552, 38.435425, 48.236809>,  <33.850906, 38.212772, 48.504051>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.460552, 38.435425, 48.236809> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.487637, 38.038181, 48.275051>,  <34.503887, 37.799835, 48.297997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.487637, 38.038181, 48.275051>,  <34.460552, 38.435425, 48.236809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.487637, 38.038181, 48.275051> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156800, -0.084045, -0.984048,
		0.985307, 0.081622, 0.150029,
		0.067710, -0.993114, 0.095608,
		34.507950, 37.740246, 48.303734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.754002, 38.316341, 47.659180>,  <34.460552, 38.435425, 48.236809>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.754002, 38.316341, 47.659180> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.633350, 37.946114, 47.750694>,  <34.560959, 37.723976, 47.805603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.633350, 37.946114, 47.750694>,  <34.754002, 38.316341, 47.659180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.633350, 37.946114, 47.750694> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046402, -0.253932, -0.966108,
		0.952294, -0.280793, 0.119543,
		-0.301633, -0.925567, 0.228789,
		34.542862, 37.668442, 47.819332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.282387, 37.818928, 47.490231>,  <34.754002, 38.316341, 47.659180>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.282387, 37.818928, 47.490231> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.916275, 37.658024, 47.481647>,  <34.696609, 37.561481, 47.476498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.916275, 37.658024, 47.481647>,  <35.282387, 37.818928, 47.490231>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.916275, 37.658024, 47.481647> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115707, -0.211501, -0.970504,
		0.385854, -0.890761, 0.240126,
		-0.915275, -0.402258, -0.021459,
		34.641693, 37.537346, 47.475208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.392441, 37.381817, 46.995510>,  <35.282387, 37.818928, 47.490231>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.392441, 37.381817, 46.995510> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.993755, 37.368221, 47.024925>,  <34.754543, 37.360065, 47.042576>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.993755, 37.368221, 47.024925>,  <35.392441, 37.381817, 46.995510>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.993755, 37.368221, 47.024925> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069498, -0.107815, -0.991739,
		0.041637, -0.993590, 0.105099,
		-0.996713, -0.033989, 0.073542,
		34.694740, 37.358025, 47.046989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.190594, 36.752670, 46.828091>,  <35.392441, 37.381817, 46.995510>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.190594, 36.752670, 46.828091> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.885220, 36.999134, 46.750614>,  <34.701996, 37.147011, 46.704128>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.885220, 36.999134, 46.750614>,  <35.190594, 36.752670, 46.828091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.885220, 36.999134, 46.750614> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104110, -0.178568, -0.978404,
		-0.637441, -0.767111, 0.072176,
		-0.763433, 0.616161, -0.193690,
		34.656189, 37.183983, 46.692509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.904205, 36.427738, 46.261978>,  <35.190594, 36.752670, 46.828091>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.904205, 36.427738, 46.261978> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.768604, 36.804050, 46.261833>,  <34.687244, 37.029839, 46.261745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.768604, 36.804050, 46.261833>,  <34.904205, 36.427738, 46.261978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.768604, 36.804050, 46.261833> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067104, -0.024565, -0.997444,
		-0.938388, -0.338114, 0.071458,
		-0.339005, 0.940785, -0.000363,
		34.666904, 37.086285, 46.261723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.347713, 36.353073, 45.830746>,  <34.904205, 36.427738, 46.261978>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.347713, 36.353073, 45.830746> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.462585, 36.736206, 45.834518>,  <34.531509, 36.966084, 45.836781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.462585, 36.736206, 45.834518>,  <34.347713, 36.353073, 45.830746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.462585, 36.736206, 45.834518> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084983, -0.015671, -0.996259,
		-0.954099, 0.286909, -0.085900,
		0.287182, 0.957830, 0.009430,
		34.548740, 37.023556, 45.837349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.678959, 36.415112, 46.174816>,  <34.347713, 36.353073, 45.830746>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.678959, 36.415112, 46.174816> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.352482, 36.184860, 46.154919>,  <33.156593, 36.046711, 46.142982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.352482, 36.184860, 46.154919>,  <33.678959, 36.415112, 46.174816>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.352482, 36.184860, 46.154919> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134079, 0.104963, 0.985396,
		-0.562001, 0.810947, -0.162850,
		-0.816197, -0.575629, -0.049741,
		33.107624, 36.012173, 46.139996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.142426, 36.711529, 46.633877>,  <33.678959, 36.415112, 46.174816>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.142426, 36.711529, 46.633877> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.034214, 36.328915, 46.590309>,  <32.969288, 36.099346, 46.564167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.034214, 36.328915, 46.590309>,  <33.142426, 36.711529, 46.633877>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.034214, 36.328915, 46.590309> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196925, -0.055766, 0.978831,
		-0.942357, 0.286249, -0.173279,
		-0.270526, -0.956531, -0.108921,
		32.953056, 36.041954, 46.557632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.738014, 36.724327, 47.125633>,  <33.142426, 36.711529, 46.633877>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.738014, 36.724327, 47.125633> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.760708, 36.337143, 47.027794>,  <32.774326, 36.104832, 46.969090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.760708, 36.337143, 47.027794>,  <32.738014, 36.724327, 47.125633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.760708, 36.337143, 47.027794> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159301, -0.250634, 0.954885,
		-0.985598, -0.015214, -0.168418,
		0.056739, -0.967963, -0.244600,
		32.777729, 36.046753, 46.954414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.214630, 36.383038, 47.546307>,  <32.738014, 36.724327, 47.125633>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.214630, 36.383038, 47.546307> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.442669, 36.068604, 47.450764>,  <32.579491, 35.879944, 47.393436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.442669, 36.068604, 47.450764>,  <32.214630, 36.383038, 47.546307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.442669, 36.068604, 47.450764> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100114, -0.355031, 0.929478,
		-0.815455, -0.505980, -0.281101,
		0.570097, -0.786090, -0.238856,
		32.613697, 35.832775, 47.379108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.831762, 35.715492, 47.562393>,  <32.214630, 36.383038, 47.546307>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.831762, 35.715492, 47.562393> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.222591, 35.655575, 47.622917>,  <32.457088, 35.619625, 47.659229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.222591, 35.655575, 47.622917>,  <31.831762, 35.715492, 47.562393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.222591, 35.655575, 47.622917> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179468, -0.197078, 0.963821,
		-0.114549, -0.968878, -0.219442,
		0.977072, -0.149788, 0.151308,
		32.515713, 35.610638, 47.668308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.779806, 35.229332, 48.092987>,  <31.831762, 35.715492, 47.562393>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.779806, 35.229332, 48.092987> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.174744, 35.291565, 48.105293>,  <32.411705, 35.328907, 48.112675>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.174744, 35.291565, 48.105293>,  <31.779806, 35.229332, 48.092987>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.174744, 35.291565, 48.105293> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028176, -0.018798, 0.999426,
		0.156075, -0.987644, -0.014176,
		0.987343, 0.155586, 0.030761,
		32.470947, 35.338242, 48.114521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.998484, 34.738831, 48.488598>,  <31.779806, 35.229332, 48.092987>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.998484, 34.738831, 48.488598> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.287300, 35.015430, 48.479820>,  <32.460590, 35.181393, 48.474552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.287300, 35.015430, 48.479820>,  <31.998484, 34.738831, 48.488598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.287300, 35.015430, 48.479820> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057136, -0.027985, 0.997974,
		0.689487, -0.721832, -0.059716,
		0.722041, 0.691502, -0.021947,
		32.503914, 35.222881, 48.473236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.667778, 34.251007, 48.259560>,  <31.998484, 34.738831, 48.488598>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.667778, 34.251007, 48.259560> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.738503, 33.871620, 48.364738>,  <32.780937, 33.643986, 48.427845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.738503, 33.871620, 48.364738>,  <32.667778, 34.251007, 48.259560>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.738503, 33.871620, 48.364738> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297563, -0.306167, -0.904278,
		0.938187, 0.081639, -0.336362,
		0.176808, -0.948471, 0.262949,
		32.791546, 33.587078, 48.443623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.161808, 34.038597, 47.843479>,  <32.667778, 34.251007, 48.259560>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.161808, 34.038597, 47.843479> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.960114, 33.713284, 47.959633>,  <32.839096, 33.518097, 48.029324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.960114, 33.713284, 47.959633>,  <33.161808, 34.038597, 47.843479>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.960114, 33.713284, 47.959633> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235394, -0.194087, -0.952323,
		0.830867, -0.548547, -0.093577,
		-0.504232, -0.813281, 0.290385,
		32.808846, 33.469299, 48.046749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.207775, 33.648506, 47.254616>,  <33.161808, 34.038597, 47.843479>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.207775, 33.648506, 47.254616> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.922592, 33.465099, 47.466820>,  <32.751480, 33.355053, 47.594143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.922592, 33.465099, 47.466820>,  <33.207775, 33.648506, 47.254616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.922592, 33.465099, 47.466820> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415009, -0.333906, -0.846330,
		0.565202, -0.823568, 0.047771,
		-0.712962, -0.458522, 0.530513,
		32.708702, 33.327541, 47.625973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.162170, 32.952499, 47.098866>,  <33.207775, 33.648506, 47.254616>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.162170, 32.952499, 47.098866> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.800755, 33.083111, 47.209854>,  <32.583904, 33.161476, 47.276447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.800755, 33.083111, 47.209854>,  <33.162170, 32.952499, 47.098866>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.800755, 33.083111, 47.209854> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391594, -0.366315, -0.844077,
		-0.173972, -0.871317, 0.458848,
		-0.903542, 0.326528, 0.277474,
		32.529694, 33.181068, 47.293095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.687504, 32.374371, 46.791367>,  <33.162170, 32.952499, 47.098866>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.687504, 32.374371, 46.791367> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.478519, 32.703548, 46.880630>,  <32.353127, 32.901054, 46.934189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.478519, 32.703548, 46.880630>,  <32.687504, 32.374371, 46.791367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.478519, 32.703548, 46.880630> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411500, -0.014132, -0.911300,
		-0.746794, -0.567949, 0.346024,
		-0.522463, 0.822942, 0.223157,
		32.321781, 32.950432, 46.947578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.140514, 32.208622, 46.419945>,  <32.687504, 32.374371, 46.791367>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.140514, 32.208622, 46.419945> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.075779, 32.589302, 46.524303>,  <32.036938, 32.817711, 46.586918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.075779, 32.589302, 46.524303>,  <32.140514, 32.208622, 46.419945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.075779, 32.589302, 46.524303> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503583, 0.147718, -0.851225,
		-0.848653, -0.269145, 0.455355,
		-0.161839, 0.951704, 0.260899,
		32.027225, 32.874813, 46.602573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.382469, 32.378139, 46.258068>,  <32.140514, 32.208622, 46.419945>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.382469, 32.378139, 46.258068> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.607830, 32.708569, 46.252590>,  <31.743048, 32.906826, 46.249306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.607830, 32.708569, 46.252590>,  <31.382469, 32.378139, 46.258068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.607830, 32.708569, 46.252590> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403528, 0.260682, -0.877046,
		-0.720931, 0.499656, 0.480211,
		0.563404, 0.826068, -0.013692,
		31.776852, 32.956390, 46.248482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<38.086239, 32.819824, 49.658550> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.903793, 33.174679, 49.630417>,  <37.794327, 33.387592, 49.613537>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.903793, 33.174679, 49.630417>,  <38.086239, 32.819824, 49.658550>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.903793, 33.174679, 49.630417> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185791, 0.017631, -0.982431,
		-0.870310, -0.461172, -0.172863,
		-0.456117, 0.887136, -0.070337,
		37.766956, 33.440819, 49.609314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.455242, 32.759377, 49.276791>,  <38.086239, 32.819824, 49.658550>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.455242, 32.759377, 49.276791> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.609962, 33.126095, 49.237034>,  <37.702793, 33.346127, 49.213181>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.609962, 33.126095, 49.237034>,  <37.455242, 32.759377, 49.276791>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.609962, 33.126095, 49.237034> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066388, -0.135184, -0.988594,
		-0.919771, 0.375788, -0.113153,
		0.386798, 0.916792, -0.099391,
		37.726002, 33.401131, 49.207218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.964878, 33.052490, 48.812080>,  <37.455242, 32.759377, 49.276791>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.964878, 33.052490, 48.812080> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.297062, 33.275307, 48.809593>,  <37.496372, 33.408997, 48.808102>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.297062, 33.275307, 48.809593>,  <36.964878, 33.052490, 48.812080>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.297062, 33.275307, 48.809593> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028194, -0.053173, -0.998187,
		-0.556362, 0.828781, -0.059863,
		0.830461, 0.557042, -0.006217,
		37.546200, 33.442421, 48.807728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.823231, 33.511829, 48.240734>,  <36.964878, 33.052490, 48.812080>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.823231, 33.511829, 48.240734> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.215946, 33.497845, 48.315430>,  <37.451576, 33.489456, 48.360245>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.215946, 33.497845, 48.315430>,  <36.823231, 33.511829, 48.240734>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.215946, 33.497845, 48.315430> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179834, -0.145915, -0.972815,
		0.061255, 0.988679, -0.136971,
		0.981788, -0.034957, 0.186736,
		37.510483, 33.487358, 48.371452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.207851, 33.954868, 47.764736>,  <36.823231, 33.511829, 48.240734>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.207851, 33.954868, 47.764736> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.493168, 33.697071, 47.874897>,  <37.664360, 33.542393, 47.940994>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.493168, 33.697071, 47.874897>,  <37.207851, 33.954868, 47.764736>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.493168, 33.697071, 47.874897> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235517, -0.149679, -0.960275,
		0.660109, 0.749819, 0.045023,
		0.713294, -0.644490, 0.275400,
		37.707157, 33.503723, 47.957516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.777802, 34.155384, 47.312496>,  <37.207851, 33.954868, 47.764736>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.777802, 34.155384, 47.312496> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.836243, 33.774818, 47.420918>,  <37.871307, 33.546478, 47.485970>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.836243, 33.774818, 47.420918>,  <37.777802, 34.155384, 47.312496>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.836243, 33.774818, 47.420918> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501092, -0.165068, -0.849505,
		0.852972, 0.259933, 0.452629,
		0.146100, -0.951413, 0.271049,
		37.880074, 33.489395, 47.502232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.313023, 33.991901, 46.966820>,  <37.777802, 34.155384, 47.312496>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.313023, 33.991901, 46.966820> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.141632, 33.642887, 47.060699>,  <38.038795, 33.433479, 47.117027>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.141632, 33.642887, 47.060699>,  <38.313023, 33.991901, 46.966820>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.141632, 33.642887, 47.060699> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253227, -0.365309, -0.895782,
		0.867342, -0.324391, 0.377477,
		-0.428480, -0.872537, 0.234703,
		38.013088, 33.381126, 47.131111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.776070, 33.551689, 46.687252>,  <38.313023, 33.991901, 46.966820>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.776070, 33.551689, 46.687252> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.481350, 33.294617, 46.771244>,  <38.304520, 33.140373, 46.821640>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.481350, 33.294617, 46.771244>,  <38.776070, 33.551689, 46.687252>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.481350, 33.294617, 46.771244> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170584, -0.477223, -0.862067,
		0.654240, -0.599350, 0.461248,
		-0.736798, -0.642680, 0.209979,
		38.260311, 33.101814, 46.834236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.010761, 32.870396, 46.665092>,  <38.776070, 33.551689, 46.687252>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.010761, 32.870396, 46.665092> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.616329, 32.853184, 46.600842>,  <38.379669, 32.842857, 46.562290>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.616329, 32.853184, 46.600842>,  <39.010761, 32.870396, 46.665092>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.616329, 32.853184, 46.600842> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151625, -0.629265, -0.762257,
		-0.068277, -0.775999, 0.627028,
		-0.986077, -0.043029, -0.160624,
		38.320507, 32.840275, 46.552654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.894215, 32.088318, 46.443848>,  <39.010761, 32.870396, 46.665092>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.894215, 32.088318, 46.443848> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.549149, 32.256325, 46.331142>,  <38.342110, 32.357132, 46.263519>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.549149, 32.256325, 46.331142>,  <38.894215, 32.088318, 46.443848>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.549149, 32.256325, 46.331142> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099687, -0.687368, -0.719436,
		-0.495857, -0.592542, 0.634838,
		-0.862664, 0.420022, -0.281767,
		38.290348, 32.382332, 46.246613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.383888, 31.525713, 46.285770>,  <38.894215, 32.088318, 46.443848>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.383888, 31.525713, 46.285770> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.232109, 31.843727, 46.096481>,  <38.141041, 32.034534, 45.982906>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.232109, 31.843727, 46.096481>,  <38.383888, 31.525713, 46.285770>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.232109, 31.843727, 46.096481> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258858, -0.582273, -0.770681,
		-0.888265, -0.169932, 0.426741,
		-0.379444, 0.795035, -0.473225,
		38.118275, 32.082237, 45.954514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.591217, 31.408321, 45.947639>,  <38.383888, 31.525713, 46.285770>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.591217, 31.408321, 45.947639> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.757042, 31.729216, 45.775803>,  <37.856537, 31.921753, 45.672699>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.757042, 31.729216, 45.775803>,  <37.591217, 31.408321, 45.947639>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.757042, 31.729216, 45.775803> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270708, -0.341987, -0.899868,
		-0.868823, 0.489349, 0.075396,
		0.414565, 0.802236, -0.429597,
		37.881413, 31.969887, 45.646923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.001671, 31.641958, 46.222897>,  <37.591217, 31.408321, 45.947639>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.001671, 31.641958, 46.222897> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.618908, 31.529160, 46.195175>,  <36.389252, 31.461479, 46.178543>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.618908, 31.529160, 46.195175>,  <37.001671, 31.641958, 46.222897>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.618908, 31.529160, 46.195175> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117607, 0.158131, 0.980389,
		-0.265509, 0.946293, -0.184482,
		-0.956908, -0.281999, -0.069305,
		36.331837, 31.444559, 46.174385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.553757, 32.116741, 46.707050>,  <37.001671, 31.641958, 46.222897>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.553757, 32.116741, 46.707050> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.337898, 31.781885, 46.671307>,  <36.208382, 31.580973, 46.649860>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.337898, 31.781885, 46.671307>,  <36.553757, 32.116741, 46.707050>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.337898, 31.781885, 46.671307> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299221, 0.091507, 0.949786,
		-0.786924, 0.539286, -0.299870,
		-0.539646, -0.837137, -0.089357,
		36.176003, 31.530745, 46.644501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.921898, 32.301247, 46.978260>,  <36.553757, 32.116741, 46.707050>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.921898, 32.301247, 46.978260> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.951908, 31.902533, 46.989479>,  <35.969913, 31.663303, 46.996212>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.951908, 31.902533, 46.989479>,  <35.921898, 32.301247, 46.978260>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.951908, 31.902533, 46.989479> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235530, 0.009618, 0.971820,
		-0.968967, -0.079521, -0.234052,
		0.075029, -0.996787, 0.028049,
		35.974419, 31.603497, 46.997894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.293037, 32.030029, 47.138809>,  <35.921898, 32.301247, 46.978260>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.293037, 32.030029, 47.138809> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.559784, 31.758390, 47.261517>,  <35.719833, 31.595406, 47.335140>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.559784, 31.758390, 47.261517>,  <35.293037, 32.030029, 47.138809>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.559784, 31.758390, 47.261517> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407036, 0.012863, 0.913322,
		-0.624184, -0.733931, -0.267841,
		0.666870, -0.679102, 0.306765,
		35.759846, 31.554661, 47.353546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.895508, 31.711746, 47.571991>,  <35.293037, 32.030029, 47.138809>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.895508, 31.711746, 47.571991> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.260708, 31.588577, 47.679039>,  <35.479828, 31.514675, 47.743267>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.260708, 31.588577, 47.679039>,  <34.895508, 31.711746, 47.571991>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.260708, 31.588577, 47.679039> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310217, -0.097970, 0.945604,
		-0.264956, -0.946353, -0.184970,
		0.912997, -0.307924, 0.267617,
		35.534607, 31.496201, 47.759323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.788887, 31.215305, 48.063068>,  <34.895508, 31.711746, 47.571991>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.788887, 31.215305, 48.063068> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.171356, 31.319326, 48.116901>,  <35.400837, 31.381739, 48.149200>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.171356, 31.319326, 48.116901>,  <34.788887, 31.215305, 48.063068>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.171356, 31.319326, 48.116901> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188009, 0.192878, 0.963042,
		0.224491, -0.946133, 0.233318,
		0.956167, 0.260060, 0.134582,
		35.458206, 31.397343, 48.157276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.969822, 31.045061, 48.707047>,  <34.788887, 31.215305, 48.063068>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.969822, 31.045061, 48.707047> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.309845, 31.250071, 48.658524>,  <35.513859, 31.373075, 48.629410>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.309845, 31.250071, 48.658524>,  <34.969822, 31.045061, 48.707047>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.309845, 31.250071, 48.658524> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021814, 0.195863, 0.980389,
		0.526232, -0.836037, 0.155315,
		0.850062, 0.512524, -0.121307,
		35.564865, 31.403828, 48.622131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.353329, 30.792423, 49.215542>,  <34.969822, 31.045061, 48.707047>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.353329, 30.792423, 49.215542> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.502720, 31.153048, 49.128178>,  <35.592354, 31.369421, 49.075760>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.502720, 31.153048, 49.128178>,  <35.353329, 30.792423, 49.215542>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.502720, 31.153048, 49.128178> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010944, 0.231149, 0.972857,
		0.927574, -0.365732, 0.076463,
		0.373479, 0.901560, -0.218411,
		35.614765, 31.423515, 49.062653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.946770, 30.841726, 49.570091>,  <35.353329, 30.792423, 49.215542>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.946770, 30.841726, 49.570091> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.843582, 31.220924, 49.495518>,  <35.781670, 31.448444, 49.450775>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.843582, 31.220924, 49.495518>,  <35.946770, 30.841726, 49.570091>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.843582, 31.220924, 49.495518> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076706, 0.212447, 0.974157,
		0.963104, 0.237000, -0.127522,
		-0.257967, 0.947996, -0.186429,
		35.766193, 31.505323, 49.439590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.491207, 31.235067, 49.861980>,  <35.946770, 30.841726, 49.570091>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.491207, 31.235067, 49.861980> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.163616, 31.464315, 49.850632>,  <35.967060, 31.601864, 49.843822>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.163616, 31.464315, 49.850632>,  <36.491207, 31.235067, 49.861980>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.163616, 31.464315, 49.850632> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066085, 0.143320, 0.987467,
		0.570003, 0.806842, -0.155251,
		-0.818981, 0.573119, -0.028373,
		35.917923, 31.636251, 49.842121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.739483, 31.759098, 50.330193>,  <36.491207, 31.235067, 49.861980>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.739483, 31.759098, 50.330193> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.342777, 31.794395, 50.293060>,  <36.104755, 31.815575, 50.270782>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.342777, 31.794395, 50.293060>,  <36.739483, 31.759098, 50.330193>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.342777, 31.794395, 50.293060> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073062, 0.205499, 0.975926,
		0.105195, 0.974671, -0.197359,
		-0.991764, 0.088243, -0.092829,
		36.045250, 31.820868, 50.265213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.574665, 32.331875, 50.778584>,  <36.739483, 31.759098, 50.330193>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.574665, 32.331875, 50.778584> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.227589, 32.143299, 50.715523>,  <36.019344, 32.030151, 50.677689>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.227589, 32.143299, 50.715523>,  <36.574665, 32.331875, 50.778584>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.227589, 32.143299, 50.715523> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218729, 0.077299, 0.972719,
		-0.446395, 0.878503, -0.170190,
		-0.867692, -0.471442, -0.157648,
		35.967281, 32.001865, 50.668228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.081799, 32.749237, 51.103638>,  <36.574665, 32.331875, 50.778584>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.081799, 32.749237, 51.103638> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.933506, 32.379414, 51.068424>,  <35.844532, 32.157520, 51.047295>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.933506, 32.379414, 51.068424>,  <36.081799, 32.749237, 51.103638>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.933506, 32.379414, 51.068424> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250686, 0.008348, 0.968032,
		-0.894269, 0.380945, -0.234869,
		-0.370727, -0.924560, -0.088033,
		35.822289, 32.102047, 51.042015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.341122, 32.679359, 51.023060>,  <36.081799, 32.749237, 51.103638>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.341122, 32.679359, 51.023060> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.439457, 32.321236, 51.171650>,  <35.498459, 32.106361, 51.260803>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.439457, 32.321236, 51.171650>,  <35.341122, 32.679359, 51.023060>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.439457, 32.321236, 51.171650> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636672, 0.139829, 0.758351,
		-0.730900, -0.422934, -0.535642,
		0.245834, -0.895307, 0.371472,
		35.513206, 32.052643, 51.283092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.727985, 33.052052, 50.686329>,  <35.341122, 32.679359, 51.023060>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.727985, 33.052052, 50.686329> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.386627, 33.195683, 50.837471>,  <34.181812, 33.281860, 50.928158>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.386627, 33.195683, 50.837471>,  <34.727985, 33.052052, 50.686329>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.386627, 33.195683, 50.837471> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390289, 0.040338, -0.919808,
		-0.345523, -0.932436, 0.105719,
		-0.853398, 0.359076, 0.377857,
		34.130608, 33.303406, 50.950829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.243290, 32.648808, 50.449310>,  <34.727985, 33.052052, 50.686329>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.243290, 32.648808, 50.449310> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.033302, 32.968357, 50.566757>,  <33.907310, 33.160088, 50.637226>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.033302, 32.968357, 50.566757>,  <34.243290, 32.648808, 50.449310>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.033302, 32.968357, 50.566757> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552947, -0.057857, -0.831205,
		-0.647040, -0.598709, 0.472108,
		-0.524965, 0.798874, 0.293619,
		33.875813, 33.208019, 50.654842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.598141, 32.383629, 50.323532>,  <34.243290, 32.648808, 50.449310>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.598141, 32.383629, 50.323532> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.604176, 32.783062, 50.343948>,  <33.607796, 33.022720, 50.356197>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.604176, 32.783062, 50.343948>,  <33.598141, 32.383629, 50.323532>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.604176, 32.783062, 50.343948> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586060, 0.050193, -0.808712,
		-0.810127, -0.017709, 0.585987,
		0.015091, 0.998582, 0.051042,
		33.608704, 33.082638, 50.359261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.864773, 32.647388, 50.376205>,  <33.598141, 32.383629, 50.323532>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.864773, 32.647388, 50.376205> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.081512, 32.938000, 50.207184>,  <33.211555, 33.112366, 50.105770>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.081512, 32.938000, 50.207184>,  <32.864773, 32.647388, 50.376205>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.081512, 32.938000, 50.207184> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613525, -0.001702, -0.789673,
		-0.574442, 0.687130, 0.444824,
		0.541851, 0.726532, -0.422549,
		33.244068, 33.155960, 50.080418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.412590, 33.180645, 50.106476>,  <32.864773, 32.647388, 50.376205>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.412590, 33.180645, 50.106476> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.746136, 33.275581, 49.907143>,  <32.946262, 33.332542, 49.787544>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.746136, 33.275581, 49.907143>,  <32.412590, 33.180645, 50.106476>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.746136, 33.275581, 49.907143> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533928, 0.117933, -0.837265,
		-0.139951, 0.964240, 0.225065,
		0.833868, 0.237344, -0.498330,
		32.996296, 33.346786, 49.757645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.235264, 33.687733, 49.725983>,  <32.412590, 33.180645, 50.106476>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.235264, 33.687733, 49.725983> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.565041, 33.576870, 49.528610>,  <32.762909, 33.510353, 49.410187>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.565041, 33.576870, 49.528610>,  <32.235264, 33.687733, 49.725983>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.565041, 33.576870, 49.528610> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500952, 0.048275, -0.864128,
		0.263323, 0.959610, -0.099045,
		0.824444, -0.277161, -0.493430,
		32.812374, 33.493721, 49.380581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.345825, 34.217506, 49.078987>,  <32.235264, 33.687733, 49.725983>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.345825, 34.217506, 49.078987> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.552139, 33.881763, 49.010345>,  <32.675926, 33.680317, 48.969162>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.552139, 33.881763, 49.010345>,  <32.345825, 34.217506, 49.078987>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.552139, 33.881763, 49.010345> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403905, -0.061595, -0.912725,
		0.755530, 0.540082, -0.370790,
		0.515785, -0.839355, -0.171605,
		32.706875, 33.629955, 48.958862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.024521, 34.416218, 48.952972>,  <32.345825, 34.217506, 49.078987>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.024521, 34.416218, 48.952972> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.985680, 34.813522, 48.927650>,  <32.962376, 35.051903, 48.912457>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.985680, 34.813522, 48.927650>,  <33.024521, 34.416218, 48.952972>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.985680, 34.813522, 48.927650> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245924, 0.085581, 0.965504,
		0.964413, 0.078186, -0.252577,
		-0.097105, 0.993259, -0.063308,
		32.956547, 35.111500, 48.908657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.593430, 34.769642, 49.317295>,  <33.024521, 34.416218, 48.952972>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.593430, 34.769642, 49.317295> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.294865, 35.035313, 49.300621>,  <33.115726, 35.194714, 49.290619>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.294865, 35.035313, 49.300621>,  <33.593430, 34.769642, 49.317295>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.294865, 35.035313, 49.300621> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028026, 0.093951, 0.995182,
		0.664894, 0.741648, -0.088740,
		-0.746412, 0.664177, -0.041682,
		33.070942, 35.234566, 49.288116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.788971, 35.189793, 49.864017>,  <33.593430, 34.769642, 49.317295>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.788971, 35.189793, 49.864017> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.404121, 35.293037, 49.828949>,  <33.173210, 35.354984, 49.807907>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.404121, 35.293037, 49.828949>,  <33.788971, 35.189793, 49.864017>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.404121, 35.293037, 49.828949> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041891, 0.177794, 0.983176,
		0.269360, 0.949613, -0.160248,
		-0.962128, 0.258116, -0.087671,
		33.115482, 35.370472, 49.802647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.754765, 35.556881, 50.357151>,  <33.788971, 35.189793, 49.864017>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.754765, 35.556881, 50.357151> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.369637, 35.517174, 50.256645>,  <33.138561, 35.493351, 50.196342>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.369637, 35.517174, 50.256645>,  <33.754765, 35.556881, 50.357151>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.369637, 35.517174, 50.256645> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267030, 0.208512, 0.940860,
		-0.041003, 0.972969, -0.227266,
		-0.962816, -0.099264, -0.251262,
		33.080791, 35.487396, 50.181267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.316311, 36.257309, 50.321827>,  <33.754765, 35.556881, 50.357151>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.316311, 36.257309, 50.321827> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.047375, 35.964825, 50.367950>,  <32.886013, 35.789333, 50.395622>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.047375, 35.964825, 50.367950>,  <33.316311, 36.257309, 50.321827>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.047375, 35.964825, 50.367950> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176732, 0.309823, 0.934225,
		-0.718836, 0.607738, -0.337533,
		-0.672340, -0.731207, 0.115305,
		32.845673, 35.745464, 50.402542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.731495, 36.626301, 50.487110>,  <33.316311, 36.257309, 50.321827>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.731495, 36.626301, 50.487110> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.654213, 36.251873, 50.604713>,  <32.607845, 36.027214, 50.675274>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.654213, 36.251873, 50.604713>,  <32.731495, 36.626301, 50.487110>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.654213, 36.251873, 50.604713> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264007, 0.338197, 0.903285,
		-0.944972, 0.096901, -0.312472,
		-0.193207, -0.936073, 0.294004,
		32.596252, 35.971050, 50.692913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.148083, 36.709332, 50.886353>,  <32.731495, 36.626301, 50.487110>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.148083, 36.709332, 50.886353> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.325943, 36.368073, 50.995480>,  <32.432659, 36.163319, 51.060955>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.325943, 36.368073, 50.995480>,  <32.148083, 36.709332, 50.886353>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.325943, 36.368073, 50.995480> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067536, 0.335654, 0.939561,
		-0.893155, -0.399351, 0.206867,
		0.444650, -0.853144, 0.272821,
		32.459339, 36.112129, 51.077324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.746307, 36.465141, 51.431992>,  <32.148083, 36.709332, 50.886353>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.746307, 36.465141, 51.431992> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.118206, 36.319038, 51.450581>,  <32.341347, 36.231377, 51.461735>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.118206, 36.319038, 51.450581>,  <31.746307, 36.465141, 51.431992>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.118206, 36.319038, 51.450581> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075821, 0.313430, 0.946579,
		-0.360313, -0.876554, 0.319105,
		0.929745, -0.365259, 0.046472,
		32.397129, 36.209461, 51.464523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.665777, 36.003178, 51.935261>,  <31.746307, 36.465141, 51.431992>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.665777, 36.003178, 51.935261> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.041565, 36.134209, 51.895081>,  <32.267036, 36.212826, 51.870972>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.041565, 36.134209, 51.895081>,  <31.665777, 36.003178, 51.935261>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.041565, 36.134209, 51.895081> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003125, 0.301360, 0.953505,
		0.342623, -0.895474, 0.284141,
		0.939468, 0.327580, -0.100454,
		32.323406, 36.232483, 51.864944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<33.755337, 33.495819, 36.052853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.112656, 33.656063, 36.134365>,  <34.327049, 33.752209, 36.183273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.112656, 33.656063, 36.134365>,  <33.755337, 33.495819, 36.052853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.112656, 33.656063, 36.134365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237780, 0.036478, 0.970634,
		0.381412, -0.915523, 0.127843,
		0.893301, 0.400609, 0.203780,
		34.380646, 33.776245, 36.195499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.008118, 33.107307, 36.589603>,  <33.755337, 33.495819, 36.052853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.008118, 33.107307, 36.589603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.165756, 33.474869, 36.582676>,  <34.260342, 33.695408, 36.578518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.165756, 33.474869, 36.582676>,  <34.008118, 33.107307, 36.589603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.165756, 33.474869, 36.582676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177214, 0.094468, 0.979628,
		0.901821, -0.383001, 0.200073,
		0.394098, 0.918905, -0.017320,
		34.283985, 33.750542, 36.577480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.465073, 33.144054, 37.181801>,  <34.008118, 33.107307, 36.589603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.465073, 33.144054, 37.181801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.381222, 33.525475, 37.095261>,  <34.330910, 33.754326, 37.043335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.381222, 33.525475, 37.095261>,  <34.465073, 33.144054, 37.181801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.381222, 33.525475, 37.095261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373380, 0.126434, 0.919022,
		0.903684, 0.273432, 0.329531,
		-0.209626, 0.953546, -0.216351,
		34.318333, 33.811539, 37.030354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.625404, 33.507732, 37.746128>,  <34.465073, 33.144054, 37.181801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.625404, 33.507732, 37.746128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.381104, 33.746681, 37.538231>,  <34.234524, 33.890049, 37.413494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.381104, 33.746681, 37.538231>,  <34.625404, 33.507732, 37.746128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.381104, 33.746681, 37.538231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521666, 0.190243, 0.831668,
		0.595691, 0.779074, 0.195436,
		-0.610751, 0.597370, -0.519742,
		34.197880, 33.925892, 37.382309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.717358, 34.243759, 38.006535>,  <34.625404, 33.507732, 37.746128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.717358, 34.243759, 38.006535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.356613, 34.207661, 37.837540>,  <34.140167, 34.186001, 37.736141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.356613, 34.207661, 37.837540>,  <34.717358, 34.243759, 38.006535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.356613, 34.207661, 37.837540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427478, 0.327868, 0.842476,
		0.062492, 0.940403, -0.334270,
		-0.901863, -0.090245, -0.422491,
		34.086056, 34.180588, 37.710793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.380432, 34.800446, 38.214779>,  <34.717358, 34.243759, 38.006535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.380432, 34.800446, 38.214779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.071850, 34.572376, 38.101814>,  <33.886700, 34.435535, 38.034035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.071850, 34.572376, 38.101814>,  <34.380432, 34.800446, 38.214779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.071850, 34.572376, 38.101814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501095, 0.270886, 0.821903,
		-0.392128, 0.775576, -0.494689,
		-0.771453, -0.570177, -0.282415,
		33.840412, 34.401321, 38.017090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.794281, 35.277088, 38.165466>,  <34.380432, 34.800446, 38.214779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.794281, 35.277088, 38.165466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.651909, 34.908272, 38.226318>,  <33.566486, 34.686981, 38.262829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.651909, 34.908272, 38.226318>,  <33.794281, 35.277088, 38.165466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.651909, 34.908272, 38.226318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643987, 0.359977, 0.675054,
		-0.677194, 0.142302, -0.721913,
		-0.355933, -0.922045, 0.152133,
		33.545128, 34.631657, 38.271957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.072945, 35.468033, 38.283836>,  <33.794281, 35.277088, 38.165466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.072945, 35.468033, 38.283836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.115128, 35.088268, 38.402161>,  <33.140438, 34.860409, 38.473156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.115128, 35.088268, 38.402161>,  <33.072945, 35.468033, 38.283836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.115128, 35.088268, 38.402161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600237, 0.176395, 0.780128,
		-0.792840, -0.259823, -0.551269,
		0.105454, -0.949409, 0.295809,
		33.146763, 34.803444, 38.490902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.516220, 35.354156, 38.614807>,  <33.072945, 35.468033, 38.283836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.516220, 35.354156, 38.614807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.714600, 35.034748, 38.751278>,  <32.833630, 34.843105, 38.833160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.714600, 35.034748, 38.751278>,  <32.516220, 35.354156, 38.614807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.714600, 35.034748, 38.751278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507409, 0.052347, 0.860114,
		-0.704676, -0.599690, -0.379214,
		0.495951, -0.798518, 0.341176,
		32.863384, 34.795193, 38.853630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.985737, 35.008862, 38.973034>,  <32.516220, 35.354156, 38.614807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.985737, 35.008862, 38.973034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.331886, 34.863552, 39.111111>,  <32.539577, 34.776367, 39.193958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.331886, 34.863552, 39.111111>,  <31.985737, 35.008862, 38.973034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.331886, 34.863552, 39.111111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309224, 0.154968, 0.938278,
		-0.394347, -0.918704, 0.021772,
		0.865373, -0.363275, 0.345196,
		32.591499, 34.754570, 39.214668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.748314, 34.559883, 39.463879>,  <31.985737, 35.008862, 38.973034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.748314, 34.559883, 39.463879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.119373, 34.655666, 39.578506>,  <32.342010, 34.713135, 39.647285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.119373, 34.655666, 39.578506>,  <31.748314, 34.559883, 39.463879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.119373, 34.655666, 39.578506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306423, 0.049418, 0.950612,
		0.213473, -0.969648, 0.119219,
		0.927650, 0.239461, 0.286573,
		32.397667, 34.727505, 39.664478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.883406, 34.119137, 40.053486>,  <31.748314, 34.559883, 39.463879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.883406, 34.119137, 40.053486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.127201, 34.435593, 40.032990>,  <32.273479, 34.625465, 40.020691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.127201, 34.435593, 40.032990>,  <31.883406, 34.119137, 40.053486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.127201, 34.435593, 40.032990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201915, 0.217404, 0.954969,
		0.766652, -0.571695, 0.292248,
		0.609487, 0.791138, -0.051239,
		32.310047, 34.672935, 40.017616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.532822, 33.829834, 39.945335>,  <31.883406, 34.119137, 40.053486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.532822, 33.829834, 39.945335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.324177, 33.511009, 40.067062>,  <32.198990, 33.319714, 40.140099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.324177, 33.511009, 40.067062>,  <32.532822, 33.829834, 39.945335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.324177, 33.511009, 40.067062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292594, -0.167931, -0.941376,
		0.801443, -0.580073, -0.145622,
		-0.521612, -0.797067, 0.304313,
		32.167694, 33.271889, 40.158356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.705067, 33.292122, 39.427544>,  <32.532822, 33.829834, 39.945335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.705067, 33.292122, 39.427544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.355251, 33.208221, 39.602448>,  <32.145363, 33.157883, 39.707390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.355251, 33.208221, 39.602448>,  <32.705067, 33.292122, 39.427544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.355251, 33.208221, 39.602448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354026, -0.340090, -0.871209,
		0.331442, -0.916703, 0.223165,
		-0.874535, -0.209749, 0.437256,
		32.092892, 33.145298, 39.733624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.419659, 32.725800, 39.023315>,  <32.705067, 33.292122, 39.427544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.419659, 32.725800, 39.023315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.098640, 32.853333, 39.225014>,  <31.906029, 32.929852, 39.346031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.098640, 32.853333, 39.225014>,  <32.419659, 32.725800, 39.023315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.098640, 32.853333, 39.225014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595207, -0.370448, -0.713090,
		-0.040560, -0.872419, 0.487073,
		-0.802548, 0.318832, 0.504245,
		31.857876, 32.948982, 39.376286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.962404, 32.144936, 38.870728>,  <32.419659, 32.725800, 39.023315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.962404, 32.144936, 38.870728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.750080, 32.461624, 38.991669>,  <31.622686, 32.651638, 39.064232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.750080, 32.461624, 38.991669>,  <31.962404, 32.144936, 38.870728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.750080, 32.461624, 38.991669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747093, -0.268702, -0.607990,
		-0.400117, -0.548612, 0.734120,
		-0.530810, 0.791723, 0.302352,
		31.590837, 32.699142, 39.082375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.337568, 31.779898, 39.146118>,  <31.962404, 32.144936, 38.870728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.337568, 31.779898, 39.146118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.290138, 32.155281, 39.016357>,  <31.261681, 32.380512, 38.938503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.290138, 32.155281, 39.016357>,  <31.337568, 31.779898, 39.146118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.290138, 32.155281, 39.016357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782527, -0.289425, -0.551257,
		-0.611222, 0.188486, 0.768688,
		-0.118573, 0.938459, -0.324398,
		31.254566, 32.436817, 38.919037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.618792, 31.806971, 39.116352>,  <31.337568, 31.779898, 39.146118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.618792, 31.806971, 39.116352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.760139, 32.087376, 38.868576>,  <30.844948, 32.255619, 38.719910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.760139, 32.087376, 38.868576>,  <30.618792, 31.806971, 39.116352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.760139, 32.087376, 38.868576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770280, -0.157710, -0.617897,
		-0.530846, 0.695491, 0.484247,
		0.353371, 0.701014, -0.619442,
		30.866150, 32.297680, 38.682743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.052282, 31.996105, 38.767887>,  <30.618792, 31.806971, 39.116352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.052282, 31.996105, 38.767887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.320345, 32.226543, 38.580692>,  <30.481182, 32.364807, 38.468376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.320345, 32.226543, 38.580692>,  <30.052282, 31.996105, 38.767887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.320345, 32.226543, 38.580692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645240, 0.140578, -0.750935,
		-0.366821, 0.805204, 0.465928,
		0.670155, 0.576094, -0.467983,
		30.521391, 32.399372, 38.440296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.697527, 32.592228, 38.543053>,  <30.052282, 31.996105, 38.767887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.697527, 32.592228, 38.543053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.025463, 32.567570, 38.315346>,  <30.222225, 32.552776, 38.178722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.025463, 32.567570, 38.315346>,  <29.697527, 32.592228, 38.543053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.025463, 32.567570, 38.315346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569507, 0.015293, -0.821844,
		0.059366, 0.997981, -0.022568,
		0.819840, -0.061643, -0.569265,
		30.271416, 32.549076, 38.144566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.505882, 32.900410, 37.841091>,  <29.697527, 32.592228, 38.543053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.505882, 32.900410, 37.841091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.835207, 32.687996, 37.760933>,  <30.032801, 32.560547, 37.712837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.835207, 32.687996, 37.760933>,  <29.505882, 32.900410, 37.841091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.835207, 32.687996, 37.760933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445981, -0.386862, -0.807118,
		0.351086, 0.753880, -0.555341,
		0.823310, -0.531039, -0.200394,
		30.082199, 32.528683, 37.700813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.651169, 33.086861, 37.179081>,  <29.505882, 32.900410, 37.841091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.651169, 33.086861, 37.179081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.852089, 32.742828, 37.214760>,  <29.972641, 32.536407, 37.236168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.852089, 32.742828, 37.214760>,  <29.651169, 33.086861, 37.179081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.852089, 32.742828, 37.214760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440619, -0.343348, -0.829438,
		0.744009, 0.377325, -0.551431,
		0.502300, -0.860080, 0.089197,
		30.002779, 32.484806, 37.241520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.023170, 32.917583, 36.559929>,  <29.651169, 33.086861, 37.179081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.023170, 32.917583, 36.559929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.983841, 32.570965, 36.755653>,  <29.960243, 32.362991, 36.873089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.983841, 32.570965, 36.755653>,  <30.023170, 32.917583, 36.559929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.983841, 32.570965, 36.755653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367783, -0.425238, -0.826988,
		0.924699, -0.261271, -0.276893,
		-0.098323, -0.866551, 0.489308,
		29.954344, 32.311001, 36.902447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.272861, 32.451546, 36.092838>,  <30.023170, 32.917583, 36.559929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.272861, 32.451546, 36.092838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.028322, 32.256756, 36.342354>,  <29.881599, 32.139881, 36.492062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.028322, 32.256756, 36.342354>,  <30.272861, 32.451546, 36.092838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.028322, 32.256756, 36.342354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423787, -0.464232, -0.777749,
		0.668327, -0.739826, 0.077432,
		-0.611346, -0.486976, 0.623787,
		29.844919, 32.110664, 36.529491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.309500, 31.851759, 35.854588>,  <30.272861, 32.451546, 36.092838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.309500, 31.851759, 35.854588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.960131, 31.827318, 36.047836>,  <29.750509, 31.812653, 36.163784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.960131, 31.827318, 36.047836>,  <30.309500, 31.851759, 35.854588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.960131, 31.827318, 36.047836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409236, -0.445619, -0.796210,
		0.263937, -0.893135, 0.364207,
		-0.873421, -0.061103, 0.483118,
		29.698105, 31.808987, 36.192772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.218719, 31.111660, 35.854824>,  <30.309500, 31.851759, 35.854588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.218719, 31.111660, 35.854824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.355984, 31.060902, 36.227089>,  <30.438341, 31.030447, 36.450447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.355984, 31.060902, 36.227089>,  <30.218719, 31.111660, 35.854824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.355984, 31.060902, 36.227089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293841, -0.955602, -0.021950,
		0.892132, -0.265935, -0.365211,
		0.343159, -0.126896, 0.930666,
		30.458931, 31.022833, 36.506290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.947927, 30.785505, 35.945450>,  <30.218719, 31.111660, 35.854824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.947927, 30.785505, 35.945450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.700724, 30.709841, 36.250679>,  <30.552402, 30.664442, 36.433819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.700724, 30.709841, 36.250679>,  <30.947927, 30.785505, 35.945450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.700724, 30.709841, 36.250679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065173, -0.954954, -0.289509,
		0.783466, -0.228651, 0.577840,
		-0.618007, -0.189161, 0.763076,
		30.515322, 30.653091, 36.479603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.196079, 30.325003, 36.459274>,  <30.947927, 30.785505, 35.945450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.196079, 30.325003, 36.459274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.803886, 30.295694, 36.386299>,  <30.568571, 30.278109, 36.342514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.803886, 30.295694, 36.386299>,  <31.196079, 30.325003, 36.459274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.803886, 30.295694, 36.386299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129708, -0.938428, -0.320200,
		-0.147744, -0.337615, 0.929617,
		-0.980484, -0.073271, -0.182438,
		30.509741, 30.273712, 36.331566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.726040, 29.704847, 36.735386>,  <31.196079, 30.325003, 36.459274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.726040, 29.704847, 36.735386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.117107, 29.642418, 36.679096>,  <32.351749, 29.604961, 36.645321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.117107, 29.642418, 36.679096>,  <31.726040, 29.704847, 36.735386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.117107, 29.642418, 36.679096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093848, -0.274918, 0.956877,
		-0.188027, -0.948716, -0.254132,
		0.977670, -0.156069, -0.140727,
		32.410408, 29.595596, 36.636879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.006496, 29.046989, 37.017349>,  <31.726040, 29.704847, 36.735386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.006496, 29.046989, 37.017349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.291569, 29.326506, 37.041912>,  <32.462612, 29.494215, 37.056652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.291569, 29.326506, 37.041912>,  <32.006496, 29.046989, 37.017349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.291569, 29.326506, 37.041912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040845, -0.128735, 0.990837,
		0.700296, -0.703645, -0.120290,
		0.712684, 0.698792, 0.061412,
		32.505375, 29.536144, 37.060337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.528328, 28.801048, 37.499245>,  <32.006496, 29.046989, 37.017349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.528328, 28.801048, 37.499245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.613556, 29.191299, 37.478260>,  <32.664692, 29.425449, 37.465672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.613556, 29.191299, 37.478260>,  <32.528328, 28.801048, 37.499245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.613556, 29.191299, 37.478260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156250, 0.018973, 0.987535,
		0.964461, -0.218614, -0.148399,
		0.213074, 0.975627, -0.052458,
		32.677479, 29.483988, 37.462524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.210762, 28.866051, 37.867653>,  <32.528328, 28.801048, 37.499245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.210762, 28.866051, 37.867653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.015598, 29.215139, 37.860741>,  <32.898499, 29.424593, 37.856594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.015598, 29.215139, 37.860741>,  <33.210762, 28.866051, 37.867653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.015598, 29.215139, 37.860741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254236, 0.161022, 0.953644,
		0.835048, 0.460901, -0.300442,
		-0.487913, 0.872721, -0.017283,
		32.869225, 29.476955, 37.855556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.656170, 29.322987, 38.063538>,  <33.210762, 28.866051, 37.867653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.656170, 29.322987, 38.063538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.296005, 29.477390, 38.143787>,  <33.079906, 29.570032, 38.191936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.296005, 29.477390, 38.143787>,  <33.656170, 29.322987, 38.063538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.296005, 29.477390, 38.143787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360355, 0.403438, 0.841060,
		0.243716, 0.829599, -0.502361,
		-0.900415, 0.386009, 0.200626,
		33.025879, 29.593193, 38.203976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.838120, 30.009314, 38.316467>,  <33.656170, 29.322987, 38.063538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.838120, 30.009314, 38.316467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.461758, 29.985323, 38.449795>,  <33.235939, 29.970928, 38.529793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.461758, 29.985323, 38.449795>,  <33.838120, 30.009314, 38.316467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.461758, 29.985323, 38.449795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306169, 0.270096, 0.912857,
		-0.144781, 0.960963, -0.235771,
		-0.940903, -0.059979, 0.333322,
		33.179485, 29.967329, 38.549789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.731644, 30.574072, 38.752434>,  <33.838120, 30.009314, 38.316467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.731644, 30.574072, 38.752434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.438442, 30.333687, 38.879906>,  <33.262524, 30.189457, 38.956390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.438442, 30.333687, 38.879906>,  <33.731644, 30.574072, 38.752434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.438442, 30.333687, 38.879906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153148, 0.310665, 0.938101,
		-0.662765, 0.736432, -0.135682,
		-0.732999, -0.600961, 0.318681,
		33.218544, 30.153399, 38.975510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.281025, 30.971247, 39.097977>,  <33.731644, 30.574072, 38.752434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.281025, 30.971247, 39.097977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.214447, 30.606358, 39.247719>,  <33.174500, 30.387424, 39.337566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.214447, 30.606358, 39.247719>,  <33.281025, 30.971247, 39.097977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.214447, 30.606358, 39.247719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218122, 0.336186, 0.916189,
		-0.961623, 0.234149, 0.143020,
		-0.166443, -0.912224, 0.374357,
		33.164513, 30.332691, 39.360027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.041573, 31.254995, 39.698689>,  <33.281025, 30.971247, 39.097977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.041573, 31.254995, 39.698689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.127766, 30.865942, 39.733452>,  <33.179482, 30.632511, 39.754311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.127766, 30.865942, 39.733452>,  <33.041573, 31.254995, 39.698689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.127766, 30.865942, 39.733452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313732, 0.153237, 0.937065,
		-0.924737, -0.174658, 0.338166,
		0.215485, -0.972632, 0.086908,
		33.192410, 30.574152, 39.759525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.864353, 31.083363, 40.274059>,  <33.041573, 31.254995, 39.698689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.864353, 31.083363, 40.274059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.125774, 30.785835, 40.218056>,  <33.282627, 30.607319, 40.184456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.125774, 30.785835, 40.218056>,  <32.864353, 31.083363, 40.274059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.125774, 30.785835, 40.218056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448941, 0.232040, 0.862907,
		-0.609361, -0.626809, 0.485582,
		0.653553, -0.743819, -0.140005,
		33.321838, 30.562689, 40.176056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.906036, 30.744280, 40.926640>,  <32.864353, 31.083363, 40.274059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.906036, 30.744280, 40.926640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.232712, 30.637814, 40.721825>,  <33.428715, 30.573935, 40.598934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.232712, 30.637814, 40.721825>,  <32.906036, 30.744280, 40.926640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.232712, 30.637814, 40.721825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534038, 0.012325, 0.845370,
		-0.218697, -0.963849, 0.152208,
		0.816685, -0.266165, -0.512037,
		33.477718, 30.557964, 40.568214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.174305, 30.122765, 41.275597>,  <32.906036, 30.744280, 40.926640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.174305, 30.122765, 41.275597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.477493, 30.291275, 41.076397>,  <33.659409, 30.392382, 40.956875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.477493, 30.291275, 41.076397>,  <33.174305, 30.122765, 41.275597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.477493, 30.291275, 41.076397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569966, -0.056482, 0.819725,
		0.317201, -0.905173, -0.282924,
		0.757972, 0.421275, -0.498001,
		33.704884, 30.417658, 40.926998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.822594, 29.669199, 41.240551>,  <33.174305, 30.122765, 41.275597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.822594, 29.669199, 41.240551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.932301, 30.045580, 41.161171>,  <33.998127, 30.271408, 41.113544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.932301, 30.045580, 41.161171>,  <33.822594, 29.669199, 41.240551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.932301, 30.045580, 41.161171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539519, 0.020263, 0.841729,
		0.796049, -0.337930, -0.502105,
		0.274271, 0.940953, -0.198450,
		34.014584, 30.327866, 41.101635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.486595, 29.666388, 41.325260>,  <33.822594, 29.669199, 41.240551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.486595, 29.666388, 41.325260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.397221, 30.054010, 41.367222>,  <34.343597, 30.286585, 41.392399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.397221, 30.054010, 41.367222>,  <34.486595, 29.666388, 41.325260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.397221, 30.054010, 41.367222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716630, 0.090369, 0.691574,
		0.660695, 0.229699, -0.714647,
		-0.223436, 0.969057, 0.104903,
		34.330189, 30.344728, 41.398693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.090031, 30.024488, 41.302460>,  <34.486595, 29.666388, 41.325260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.090031, 30.024488, 41.302460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.841671, 30.270178, 41.497280>,  <34.692657, 30.417591, 41.614170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.841671, 30.270178, 41.497280>,  <35.090031, 30.024488, 41.302460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.841671, 30.270178, 41.497280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704370, 0.164481, 0.690514,
		0.344022, 0.771798, -0.534768,
		-0.620897, 0.614226, 0.487046,
		34.655403, 30.454445, 41.643394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.594784, 30.538355, 41.675949>,  <35.090031, 30.024488, 41.302460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.594784, 30.538355, 41.675949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.243423, 30.630953, 41.843197>,  <35.032608, 30.686512, 41.943546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.243423, 30.630953, 41.843197>,  <35.594784, 30.538355, 41.675949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.243423, 30.630953, 41.843197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457582, 0.154855, 0.875579,
		0.137943, 0.960433, -0.241952,
		-0.878402, 0.231493, 0.418116,
		34.979904, 30.700401, 41.968632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.577129, 31.169846, 42.039841>,  <35.594784, 30.538355, 41.675949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.577129, 31.169846, 42.039841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.267574, 30.989868, 42.218124>,  <35.081841, 30.881882, 42.325092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.267574, 30.989868, 42.218124>,  <35.577129, 31.169846, 42.039841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.267574, 30.989868, 42.218124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340725, 0.297442, 0.891872,
		-0.533864, 0.842068, -0.076878,
		-0.773883, -0.449944, 0.445707,
		35.035408, 30.854885, 42.351837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.236805, 31.663038, 42.476395>,  <35.577129, 31.169846, 42.039841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.236805, 31.663038, 42.476395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.147743, 31.302378, 42.624691>,  <35.094307, 31.085981, 42.713669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.147743, 31.302378, 42.624691>,  <35.236805, 31.663038, 42.476395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.147743, 31.302378, 42.624691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251662, 0.314240, 0.915379,
		-0.941855, 0.297115, 0.156944,
		-0.222655, -0.901652, 0.370741,
		35.080948, 31.031881, 42.735912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.753677, 31.764101, 43.071224>,  <35.236805, 31.663038, 42.476395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.753677, 31.764101, 43.071224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.931187, 31.409311, 43.122356>,  <35.037693, 31.196438, 43.153034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.931187, 31.409311, 43.122356>,  <34.753677, 31.764101, 43.071224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.931187, 31.409311, 43.122356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186976, 0.231148, 0.954783,
		-0.876415, -0.399809, 0.268421,
		0.443776, -0.886974, 0.127827,
		35.064320, 31.143219, 43.160706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.621941, 31.534891, 43.761772>,  <34.753677, 31.764101, 43.071224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.621941, 31.534891, 43.761772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.899822, 31.260820, 43.674206>,  <35.066551, 31.096378, 43.621666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.899822, 31.260820, 43.674206>,  <34.621941, 31.534891, 43.761772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.899822, 31.260820, 43.674206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254637, -0.050375, 0.965724,
		-0.672719, -0.726633, 0.139475,
		0.694700, -0.685177, -0.218916,
		35.108231, 31.055267, 43.608532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.508999, 30.940170, 44.120674>,  <34.621941, 31.534891, 43.761772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.508999, 30.940170, 44.120674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.900826, 30.948502, 44.040665>,  <35.135921, 30.953501, 43.992661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.900826, 30.948502, 44.040665>,  <34.508999, 30.940170, 44.120674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.900826, 30.948502, 44.040665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200584, -0.029851, 0.979222,
		0.014429, -0.999337, -0.033420,
		0.979570, 0.020833, -0.200020,
		35.194698, 30.954750, 43.980659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.779274, 30.479959, 44.615402>,  <34.508999, 30.940170, 44.120674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.779274, 30.479959, 44.615402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.114254, 30.675854, 44.518383>,  <35.315243, 30.793390, 44.460171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.114254, 30.675854, 44.518383>,  <34.779274, 30.479959, 44.615402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.114254, 30.675854, 44.518383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256273, 0.040074, 0.965773,
		0.482696, -0.870948, -0.091947,
		0.837453, 0.489738, -0.242544,
		35.365490, 30.822775, 44.445621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.249153, 30.256226, 45.073765>,  <34.779274, 30.479959, 44.615402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.249153, 30.256226, 45.073765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.427704, 30.583389, 44.928562>,  <35.534832, 30.779688, 44.841442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.427704, 30.583389, 44.928562>,  <35.249153, 30.256226, 45.073765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.427704, 30.583389, 44.928562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340835, 0.219685, 0.914095,
		0.827395, -0.531753, -0.180711,
		0.446373, 0.817910, -0.363007,
		35.561615, 30.828762, 44.819660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.920231, 30.183453, 45.455696>,  <35.249153, 30.256226, 45.073765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.920231, 30.183453, 45.455696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.918789, 30.554840, 45.307137>,  <35.917923, 30.777672, 45.218002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.918789, 30.554840, 45.307137>,  <35.920231, 30.183453, 45.455696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.918789, 30.554840, 45.307137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369997, 0.346281, 0.862086,
		0.929026, -0.134309, -0.344779,
		-0.003605, 0.928467, -0.371398,
		35.917709, 30.833380, 45.195717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.619125, 30.468489, 45.487724>,  <35.920231, 30.183453, 45.455696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.619125, 30.468489, 45.487724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.352169, 30.766197, 45.477543>,  <36.191994, 30.944822, 45.471436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.352169, 30.766197, 45.477543>,  <36.619125, 30.468489, 45.487724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.352169, 30.766197, 45.477543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338496, 0.333618, 0.879840,
		0.663329, 0.578586, -0.474587,
		-0.667394, 0.744270, -0.025450,
		36.151951, 30.989479, 45.469910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.924362, 31.016508, 45.823147>,  <36.619125, 30.468489, 45.487724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.924362, 31.016508, 45.823147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.552574, 31.164045, 45.825359>,  <36.329498, 31.252567, 45.826687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.552574, 31.164045, 45.825359>,  <36.924362, 31.016508, 45.823147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.552574, 31.164045, 45.825359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111075, 0.265539, 0.957680,
		0.351766, 0.890754, -0.287781,
		-0.929475, 0.368844, 0.005533,
		36.273731, 31.274698, 45.827019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.099255, 31.452930, 45.388084>,  <36.924362, 31.016508, 45.823147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.099255, 31.452930, 45.388084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.399143, 31.698368, 45.288956>,  <37.579075, 31.845631, 45.229477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.399143, 31.698368, 45.288956>,  <37.099255, 31.452930, 45.388084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.399143, 31.698368, 45.288956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214438, -0.129027, -0.968178,
		-0.626045, 0.779009, 0.034843,
		0.749723, 0.613594, -0.247825,
		37.624062, 31.882446, 45.214607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.909046, 32.063663, 44.874641>,  <37.099255, 31.452930, 45.388084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.909046, 32.063663, 44.874641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.295189, 31.982710, 44.808746>,  <37.526875, 31.934139, 44.769211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.295189, 31.982710, 44.808746>,  <36.909046, 32.063663, 44.874641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.295189, 31.982710, 44.808746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185518, -0.088305, -0.978665,
		0.183516, 0.975317, -0.122791,
		0.965352, -0.202381, -0.164734,
		37.584793, 31.921995, 44.759327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.090038, 32.389450, 44.193630>,  <36.909046, 32.063663, 44.874641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.090038, 32.389450, 44.193630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.420994, 32.171066, 44.246323>,  <37.619568, 32.040035, 44.277939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.420994, 32.171066, 44.246323>,  <37.090038, 32.389450, 44.193630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.420994, 32.171066, 44.246323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141066, -0.025004, -0.989684,
		0.543624, 0.837437, 0.056329,
		0.827390, -0.545962, 0.131727,
		37.669212, 32.007278, 44.285839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.531574, 32.708755, 43.795525>,  <37.090038, 32.389450, 44.193630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.531574, 32.708755, 43.795525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.674225, 32.338367, 43.845169>,  <37.759815, 32.116135, 43.874954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.674225, 32.338367, 43.845169>,  <37.531574, 32.708755, 43.795525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.674225, 32.338367, 43.845169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134986, -0.080378, -0.987582,
		0.924445, 0.368948, 0.096328,
		0.356623, -0.925968, 0.124108,
		37.781212, 32.060577, 43.882401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.104473, 32.710056, 43.321262>,  <37.531574, 32.708755, 43.795525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.104473, 32.710056, 43.321262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.030453, 32.325871, 43.404461>,  <37.986042, 32.095360, 43.454380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.030453, 32.325871, 43.404461>,  <38.104473, 32.710056, 43.321262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.030453, 32.325871, 43.404461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261532, -0.252154, -0.931675,
		0.947290, -0.118008, 0.297853,
		-0.185050, -0.960465, 0.208000,
		37.974937, 32.037731, 43.466862>
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
